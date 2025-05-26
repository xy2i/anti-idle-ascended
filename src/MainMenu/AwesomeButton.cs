using Godot;
using System;

// MATCH: DefineSprite_2380/frame_1/DoAction.as
public partial class AwesomeButton : ColorRect
{
    AnimationPlayer anim;
    double position;

    public override void _Ready()
    {
        anim = GetNode<AnimationPlayer>("Alpha");
        FocusMode = FocusModeEnum.All; // focusable by tab
        MouseEntered += OnMouseEntered;
        MouseExited += OnMouseExited;
    }

    private void OnMouseEntered()
    {
        position = anim.CurrentAnimationPosition;
        anim.AssignedAnimation = "hover";
    }

    private void OnMouseExited()
    {
        anim.AssignedAnimation = "idle";
        anim.Seek(position);
    }

    public override void _Input(InputEvent @event)
    {
        if (Input.IsMouseButtonPressed(MouseButton.Left)) {
            anim.AssignedAnimation = "clicked";
        }
    }

}
