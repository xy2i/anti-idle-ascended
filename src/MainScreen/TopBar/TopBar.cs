using Godot;

public partial class TopBar : ColorRect
{
    public Label coinText;

    public override void _Ready()
    {
        coinText = GetNode<Label>("coinText");
    }
}