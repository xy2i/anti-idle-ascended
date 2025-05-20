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

public class Save
{
    public string questType;
    public string questSubtype;
    public double questCount;
    public bool activityLoot;
    public bool bouncyLoot;
    public double arenaLoot;
}

public class House
{
    public Arena arena = new();
}

public class Arena
{
    public double showDamage(string index, double x, double y, double z)
    {
        return 0;
    }
}
