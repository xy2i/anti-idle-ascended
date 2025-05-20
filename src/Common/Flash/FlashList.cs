using System.Collections.Generic;

namespace AntiIdle.Common.Flash;

public class FlashList<T> : Dictionary<int, T> where T : notnull
{
    public T this[double key]
    {
        get => this[(int)key];
        set => this[(int)key] = value;
    }
}