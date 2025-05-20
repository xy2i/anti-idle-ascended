using Godot;
using System;

public partial class Loading1OutOf8 : Control
{
    public override void _Ready()
    {
            GetTree().ChangeSceneToFile("src/Loader/Loading2OutOf8.tscn");
    }

}
