using Godot;
using System;

// MATCH: frame_19/DoAction.as
public partial class StorageCheck : Control
{
    public double storeDel;

    // MATCH: frame_19/DoAction.as:checkStorage()
    public void checkStorage()
    {
        GetTree().ChangeSceneToFile("src/Pages/MainLoader/MainLoader.tscn");
    }

    public override void _Ready()
    {
        storeDel = 0;
    }

    public override void _Process(double delta)
    {
        checkStorage();
        storeDel += 1;
        if (storeDel >= 600)
        {
            storeDel = 0;
            checkStorage();
        }
    }
}
