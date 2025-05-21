using Godot;

namespace AntiIdle.Popup;

public partial class Popup : Control
{
    public RichTextLabel popTitle;
    public RichTextLabel popDesc;
    // TODO figure the frame stuff out.
    public double Frame;

    public override void _Ready()
    {
        popTitle = GetNode<RichTextLabel>("popTitle");
        popDesc = GetNode<RichTextLabel>("popDesc");
    }
}