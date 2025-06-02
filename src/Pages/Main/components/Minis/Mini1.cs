using System.Reflection.Metadata.Ecma335;
using AntiIdle.Common.Nodes;
using Godot;

namespace AntiIdle.Pages.Main;

public partial class Mini1 : FlashColorRect
{
    public void gotoAndStop(int i) { }

    [Export]
    public Label miniGardenText;
}