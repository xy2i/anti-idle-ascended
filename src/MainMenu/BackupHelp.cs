using Godot;
using System;

public partial class BackupHelp : Control
{
    // MATCH: DefineSprite_2407/frame_2/PlaceObject2_2382_1/CLIPACTIONRECORD on(release).as
    public override void _Process(double delta)
    {
        if (Input.IsActionPressed("leftclick"))
        {
            QueueFree();
        }
    }

}
