using AntiIdle.Common.Nodes;
using Godot;

public partial class test : FlashNode2D
{
    public override void _Process(double delta)
    {
        _X += 1;
    }
}
