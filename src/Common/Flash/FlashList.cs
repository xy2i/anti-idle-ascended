using System.Collections.Generic;

namespace AntiIdle.Common.Flash;

public class FlashList<T> : Dictionary<int, T> where T : notnull
{
    public FlashList()
    {
    }

    public FlashList(List<T> values)
    {
        var i = 0;
        foreach (var value in values)
        {
            this[i] = value;
            i++;
        }
    }

    public FlashList(List<T> values, Dictionary<int, T> extra)
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
        get => base[key];
        set => base[key] = value;
    }

    public T this[double key]
    {
        get => this[(int)key];
        set => this[(int)key] = value;
    }
}