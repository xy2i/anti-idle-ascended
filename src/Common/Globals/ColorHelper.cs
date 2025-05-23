using Godot;

namespace AntiIdle.Common.Globals;

public static class ColorHelper
{
    public static Color c(uint value)
    {
        return new Color(value);
    }

}
