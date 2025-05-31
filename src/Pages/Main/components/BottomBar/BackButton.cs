using Godot;

namespace AntiIdle.Common.Nodes;

public partial class BackButton : FlashButton
{
    // MATCH: frame_13/PlaceObject2_1602_3742/CLIPACTIONRECORD on(dragOver,rollOver).as
    private void onMouseEntered() {
        _root.actiondescription = "<b><font color=\'#FFFF00\'>Back to Menu</font></b>\nGo back to the main menu.";
    }
    
    // MATCH: frame_13/PlaceObject2_1602_3742/CLIPACTIONRECORD on(rollOut,dragOut).as
    private void OnMouseExited() {
        _root.actiondescription = "";
    }
    
    // MATCH: frame_13/PlaceObject2_1602_3742/CLIPACTIONRECORD on(release).as
    public override void _Input(InputEvent @event)
    {
        if (Input.IsMouseButtonPressed(MouseButton.Left) && _xmouse >= 0 && _xmouse <= 52 && _ymouse >= 0 && _ymouse <= 20)
        {
            GetTree().ChangeSceneToFile("src/MainMenu/MainMenu.tscn");
        }
    }
}
