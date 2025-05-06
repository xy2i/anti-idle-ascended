using System.Collections.Generic;

namespace aitg.lib;

/// <summary>
///     https://stackoverflow.com/questions/15622622/analogue-of-pythons-defaultdict
/// </summary>
public class DefaultDictionary<TKey, TValue> : Dictionary<TKey, TValue> where TValue : new()
{
    public new TValue this[TKey key]
    {
        get
        {
            if (!TryGetValue(key, out var val))
            {
                val = new TValue();
                Add(key, val);
            }

            return val;
        }
        set => base[key] = value;
    }
}