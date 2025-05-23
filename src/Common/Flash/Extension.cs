using System.Collections.Generic;
using Godot;

namespace AntiIdle.Common.Flash;

public static class Extension
{
    public static int indexOf(this string str, string value) => str.IndexOf(value);
    public static string substr(this string str, int start, int len) => str.Substr(start, len);
}