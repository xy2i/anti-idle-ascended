using System;
using AntiIdle.Common.Globals;
using Godot;

namespace AntiIdle.Common;

/// <summary>
/// Global variables.
/// </summary>
public class Global
{
    public static Root _root = new();
    
    public static String undefined = null;

    public static UnderscoreGlobal _global = new();
}