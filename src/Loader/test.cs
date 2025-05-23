using Godot;

public partial class test : Node2D
{
    public override void _Process(double delta)
    {
        var pos = GetViewport().GetMousePosition();
        GD.Print(ToLocal(pos));
    }
}