namespace aitg.lib;

using System;
using System.Collections.Generic;

/// <summary>
/// Stores news data.
/// </summary>
public class NewsData
{
    private readonly Dictionary<string, object> _data = new Dictionary<string, object>();

    public object this[string key]
    {
        get => _data.TryGetValue(key, out var value) ? value : throw new ArgumentException($"Property `{key}` not found");
        set => _data[key] = value;
    }

    public NewsData()
    {
        // Initialize with default values
        for (int i = 1; i <= 30; i++)
        {
            for (int j = 0; j <= 30; j++)
            {
                _data[$"F{i}breakColor{j}"] = 0.0;
                _data[$"F{i}breakNews{j}"] = "";
                _data[$"F{i}breakStamp{j}"] = "";

                _data[$"X{i}breakColor{j}"] = 0.0;
                _data[$"X{i}breakNews{j}"] = "";
                _data[$"X{i}breakStamp{j}"] = "";
            }
        }
    }
}
