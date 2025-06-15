using Godot;
using System;


// MATCH: frame_11/PlaceObject2_1602_40/CLIPACTIONRECORD on(release).as
public partial class BackupHelpButton : TextureButton
{

    [Export]
    public MainMenu mainMenu;

    public override void _Pressed()
    {
        var scene = GD.Load<PackedScene>("res://src/MainMenu/BackupHelp.tscn");
        mainMenu.AddChild(scene.Instantiate());
    }

}
