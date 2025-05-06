using Godot;
using static aitg.Globals;

public partial class NameText : Label
{
    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        Text = save.displayName;
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
    }
}