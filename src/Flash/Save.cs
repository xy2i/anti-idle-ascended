using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using Godot;

namespace aitg.flash;

/// <summary>
///     A sparse array backed by a Dictionary<int, T>.
/// </summary>
public class SparseArray<T> : Dictionary<int, T> where T : notnull
{
    public SparseArray()
    {
    }

    public SparseArray(List<T> values)
    {
        var i = 0;
        foreach (var value in values)
        {
            this[i] = value;
            i++;
        }
    }


    public SparseArray(List<T> values, Dictionary<int, T> extra)
    {
        var i = 0;
        foreach (var value in values)
        {
            this[i] = value;
            i++;
        }

        foreach (var kv in extra) this[kv.Key] = kv.Value;
    }


    public new T this[int key]
    {
        get => TryGetValue(key, out var value) ? value : default;
        set => base[key] = value;
    }

    public T this[double key]
    {
        get => this[(int)key];
        set => this[(int)key] = value;
    }

    //set => this[key] = value;
    public override string ToString()
    {
        var sb = new StringBuilder("{ ");
        var first = true;
        foreach (var kvp in this)
        {
            if (!first)
            {
                sb.Append(", ");
            }

            sb.Append($"{kvp.Key}: {kvp.Value}");
            first = false;
        }

        sb.Append(" }");
        return sb.ToString();
    }
}

/// <summary>
///     Discriminated union representing the various AMF0 value types.
/// </summary>
public abstract record Amf0Value
{
    // Optionally, helper methods to construct each variant more succinctly
    public static Amf0Value Number(double value)
    {
        return new NumberValue(value);
    }

    public static Amf0Value Boolean(bool value)
    {
        return new BooleanValue(value);
    }

    public static Amf0Value String(string value)
    {
        return new StringValue(value);
    }

    public static Amf0Value Null()
    {
        return new NullValue();
    }

    public static Amf0Value Undefined()
    {
        return new UndefinedValue();
    }

    public static Amf0Value EcmaArray(SparseArray<Amf0Value> arr)
    {
        return new EcmaArrayValue(arr);
    }
    // Each possible variant is a nested record.
    // The "sealed" keyword ensures no further inheritance from each variant.

    public sealed record NumberValue(double Value) : Amf0Value;

    public sealed record BooleanValue(bool Value) : Amf0Value;

    public sealed record StringValue(string Value) : Amf0Value;

    public sealed record NullValue : Amf0Value;

    public sealed record UndefinedValue : Amf0Value;

    public sealed record EcmaArrayValue(SparseArray<Amf0Value> Value)
        : Amf0Value;
}

/// <summary>
///     Internal class that parses the SOL file.
/// </summary>
internal class Parser(byte[] data)
{
    private static readonly byte[] EndOfObject = { 0x00, 0x00, 0x09 };

    private int _pos;

    private bool HasRemainingData => _pos < data.Length;

    private byte[] ReadBytes(int len)
    {
        if (_pos + len > data.Length)
        {
            throw new Exception("Unexpected end of data.");
        }

        var result = new byte[len];
        Array.Copy(data, _pos, result, 0, len);
        _pos += len;
        return result;
    }

    private byte ReadU8()
    {
        return ReadBytes(1)[0];
    }

    private ushort ReadU16()
    {
        var bytes = ReadBytes(2);
        Array.Reverse(bytes);
        return BitConverter.ToUInt16(bytes, 0);
    }

    private uint ReadU32()
    {
        var bytes = ReadBytes(4);
        Array.Reverse(bytes);
        return BitConverter.ToUInt32(bytes, 0);
    }

    private double ReadF64()
    {
        var bytes = ReadBytes(8);
        Array.Reverse(bytes);
        return BitConverter.ToDouble(bytes, 0);
    }

    private bool ReadBool()
    {
        return ReadU8() != 0;
    }

    private string ReadStr()
    {
        var len = ReadU16();
        var bytes = ReadBytes(len);
        return Encoding.UTF8.GetString(bytes);
    }

    private bool CheckEndOfObject()
    {
        return data[_pos] == EndOfObject[0]
               && data[_pos + 1] == EndOfObject[1]
               && data[_pos + 2] == EndOfObject[2];
    }

    private bool ReadEndOfObject()
    {
        var check = ReadBytes(3);
        return check[0] == EndOfObject[0]
               && check[1] == EndOfObject[1]
               && check[2] == EndOfObject[2];
    }

    private (string key, Amf0Value value) ReadKeyValuePair()
    {
        var key = ReadStr();
        var value = ReadAmf0Value();
        return (key, value);
    }

    private SparseArray<Amf0Value> ReadEcmaArray()
    {
        // Skip array length
        ReadU32();

        var map = new SparseArray<Amf0Value>();
        while (!CheckEndOfObject())
        {
            var (key, value) = ReadKeyValuePair();

            // Some real saves store "undefined" as a key - discard it
            if (key == "undefined")
            {
                continue;
            }

            // Try parse the key as an index
            if (!int.TryParse(key, out var index))
            {
                throw new Exception($"Cannot parse '{key}' as an integer index for ECMA array.");
            }

            map[index] = value;
        }

        if (!ReadEndOfObject())
        {
            throw new Exception("ECMA array did not end with the expected marker.");
        }

        return map;
    }

    private Amf0Value ReadAmf0Value()
    {
        var tag = ReadU8();
        return tag switch
        {
            0x0 => Amf0Value.Number(ReadF64()),
            0x1 => Amf0Value.Boolean(ReadBool()),
            0x2 => Amf0Value.String(ReadStr()),
            0x5 => Amf0Value.Null(),
            0x6 => Amf0Value.Undefined(),
            0x8 => Amf0Value.EcmaArray(ReadEcmaArray()),

            _ => throw new Exception($"Unexpected AMF0 tag: 0x{tag:X2}")
        };
    }

    /// <summary>
    ///     Reads the SOL header data. Returns the "internal" name used in the SOL.
    /// </summary>
    public string ReadHeader()
    {
        // Skip magic marker (00 BF)
        var magic = ReadBytes(2);
        if (magic[0] != 0x00 || magic[1] != 0xBF)
        {
            throw new Exception("Invalid SOL file: wrong magic bytes.");
        }

        // Length (unused, but must skip)
        ReadU32();

        // Validate TCSO magic
        var tcso = ReadBytes(4);
        if (tcso[0] != 'T' || tcso[1] != 'C' || tcso[2] != 'S' || tcso[3] != 'O')
        {
            throw new Exception("Invalid SOL file: TCSO magic not found or corrupted.");
        }

        // Skip unknown 6 bytes
        ReadBytes(6);

        // Read SOL name
        var solName = ReadStr();

        // Check version (must be 0 for AMF0)
        var version = ReadU32();
        if (version != 0)
        {
            throw new Exception("Invalid SOL file: AMF3 found, expected AMF0.");
        }

        return solName;
    }

    /// <summary>
    ///     Reads the file of key-value pairs until no more data remains.
    ///     Each pair is followed by a trailing 0x00.
    /// </summary>
    public Dictionary<string, Amf0Value> Read()
    {
        ReadHeader();

        var dict = new Dictionary<string, Amf0Value>();

        while (HasRemainingData)
        {
            var (key, value) = ReadKeyValuePair();
            dict[key] = value;

            // Each key-value pair is followed by a trailing byte (must be 0x00)
            var trailing = ReadU8();
            if (trailing != 0)
            {
                throw new Exception($"Invalid trailing byte: must be 0x00, got 0x{trailing:X2}");
            }
        }

        return dict;
    }
}

/// <summary>
///     Deserializes an AMF0 value to the given class, using reflection.
/// </summary>
internal static class Amf0ReflectionDeserializer
{
    /// <summary>
    ///     Deserializes a Dictionary of (string -> Amf0Value) into a new instance of T,
    ///     by matching dictionary keys to T's property names via reflection.
    /// </summary>
    public static T Deserialize<T>(Dictionary<string, Amf0Value> data)
        where T : new()
    {
        // Create a fresh instance of T, which might already have default values via property initializers
        T instance = new();

        // Iterate over all *writable* public instance properties
        var fields = typeof(T)
            .GetFields(BindingFlags.Public | BindingFlags.Instance);

        foreach (var field in fields)
        {
            if (!data.TryGetValue(field.Name, out var value))
            {
                continue;
            }

            var convertedValue = ConvertAmf0Value(value, field.FieldType);
            field.SetValue(instance, convertedValue);
        }

        return instance;
    }

    /// <summary>
    ///     Converts an Amf0Value variant into a .NET object of the desired targetType,
    ///     if possible. Returns null on unsupported conversions.
    /// </summary>
    private static object ConvertAmf0Value(Amf0Value value, Type targetType)
    {
        switch (value)
        {
            case Amf0Value.StringValue s: return s.Value;
            case Amf0Value.NumberValue n:
            {
                if (targetType == typeof(string))
                {
                    return n.Value.ToString();
                }

                return n.Value;
            }
            case Amf0Value.BooleanValue b: return b.Value;
            case Amf0Value.EcmaArrayValue ecmaarray:
            {
                // We assume the type of each value in the ecmaarray
                // will always be the same, so we can use the same type
                // for all elements.
                var sparse = ecmaarray.Value;
                var innerDict = sparse;
                var t = targetType.GenericTypeArguments.FirstOrDefault();
                var newSparse = Activator.CreateInstance(
                    typeof(SparseArray<>).MakeGenericType(t)
                );


                foreach (var kv in innerDict)
                {
                    if (kv.Value is Amf0Value.UndefinedValue)
                        // Skip this value.
                        // An array can have an undefined key,
                        // for example save.mainQuestRank[2] = undefined,
                        // but this is most likely a leftover and unused.
                    {
                        continue;
                    }

                    var converted = ConvertAmf0Value(kv.Value, t);
                    newSparse.GetType().GetMethod("Add").Invoke(
                        newSparse, [kv.Key, converted]
                    );
                }

                return newSparse;
            }
            default:
            {
                GD.PrintErr($"Unhandled type: value={value}, targetType={targetType}");
                throw new Exception("Unhandled type");
            }
        }
    }
}

/// <summary>
///     Public interface for reading a SOL save file.
/// </summary>
public static class SaveReader
{
    /// <summary>
    ///     Reads a SOL (SharedObject) file from a byte array and returns the
    ///     data as a Dictionary. If the save does not exist, creates the object
    ///     with default values instead.
    /// </summary>
    public static T ReadSave<T>(string saveName) where T : new()
    {
        var path = $"user://{saveName}.sol";
        if (!FileAccess.FileExists(path))
            // File was not found. Return a default of the desired object
            // instead.
        {
            return new T();
        }

        using var file = FileAccess.Open(path, FileAccess.ModeFlags.Read);
        if (file == null)
        {
            GD.PrintErr($"Failed to open file: {path}");
            throw new Exception();
        }

        var buf = file.GetBuffer((long)file.GetLength());
        var parsed = new Parser(buf).Read();
        return Amf0ReflectionDeserializer.Deserialize<T>(parsed);
    }
}