using Godot;
using System;

public partial class TopBar : Panel
{
    [Export]
    public Label ascentText;
    [Export]
    public Label titleText;
    [Export]
    public Label nameText;
    [Export]
    public Label coinText;
    [Export]
    public Label greenCoinText;
    [Export]
    public Label blueCoinText;
    public LevelStar levelStar;
}
