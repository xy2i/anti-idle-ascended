using Godot;

namespace aitg.ui;

public partial class FpsDisplay : Label
{
    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
        var fps = Engine.GetFramesPerSecond();
        Text = fps.ToString();
        switch (fps)
        {
            case > 30:
                AddThemeColorOverride("font_color", new Color("00ff00"));
                break;
            case > 20:
                AddThemeColorOverride("font_color", new Color("ffff00"));
                break;
            default:
                AddThemeColorOverride("font_color", new Color("ff0000"));
                break;
        }
    }
}