using Godot;

namespace AntiIdle.Common.Nodes;

public partial class File1Select : FlashButton
{
    AnimationPlayer anim;
    // MATCH: frame_11/PlaceObject2_2379_52/CLIPACTIONRECORD onClipEvent(load).as:checkFrame()
    public void checkFrame()
    {
        if (_root.saveGlobal.selectedSave == 1)
        {
            anim.AssignedAnimation = "clicked";
        }
        else if (_xmouse >= 0 && _xmouse < 120 && _ymouse >= 0 && _ymouse < 80)
        {
            anim.AssignedAnimation = "hover";
        }
        else
        {
            anim.AssignedAnimation = "idle";
        }
        anim.Play();
    }
    // MATCH: frame_11/PlaceObject2_2379_52/CLIPACTIONRECORD onClipEvent(enterFrame).as
    public override void _Process(double delta)
    {
        checkFrame();
    }
    // MATCH: frame_11/PlaceObject2_2379_52/CLIPACTIONRECORD onClipEvent(load).as
    public override void _Ready()
    {
        anim = GetNode<AnimationPlayer>("Alpha");
        FocusMode = FocusModeEnum.All; // focusable by tab
        checkFrame();
    }

    // MATCH: frame_11/PlaceObject2_2379_52/CLIPACTIONRECORD on(release).as
    public override void _Input(InputEvent @event)
    {
        if (Input.IsMouseButtonPressed(MouseButton.Left) && _xmouse >= 0 && _xmouse < 120 && _ymouse >= 0 && _ymouse < 80)
        {
            if (_root.saveGlobal.selectedSave != 1)
            {
                _root.saveGlobal.selectedSave = 1;
            }
            else
            {
                _root.selectSavefile(_root.saveGlobal.selectedSave);
            }
        }
    }
}
