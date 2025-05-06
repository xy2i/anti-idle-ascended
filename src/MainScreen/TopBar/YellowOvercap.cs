using aitg;
using Godot;
using static aitg.Globals;

public partial class YellowOvercap : AnimatedSprite2D
{
    public Label timText;

    public override void _Ready()
    {
        timText = GetNode<Label>("timText");
    }

    public override void _Process(double delta)
    {
        var tim = save.coinOvercap;
        if (tim >= 300)
        {
            Frame = 1;
        }
        else if (tim > 0)
        {
            Frame = 0;
            timText.Text = Format.convertSecCD(300 - tim);
        }
        else
        {
            Frame = 2;
        }
    }
}