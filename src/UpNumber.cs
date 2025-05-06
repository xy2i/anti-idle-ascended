using System;
using Godot;
using static aitg.Globals;

namespace aitg.ui;

public partial class UpNumber : Label
{
    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        var upNumber = Math.Floor(_root.upNumber);
        Text = "1861"; //upNumber.ToString();
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
    }
}