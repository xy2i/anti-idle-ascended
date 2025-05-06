using Godot;
using static aitg.Globals;

namespace aitg.ui;

public partial class AwesomeButton : Button
{
    private AnimationPlayer alphaAnimation;
    private PackedScene mainScene;

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        alphaAnimation = GetNode<AnimationPlayer>("AlphaAnimation");
        mainScene = GD.Load<PackedScene>("res://src/MainScene.tscn");
        MouseEntered += OnMouseEntered;
        MouseExited += OnMouseExited;
        ButtonUp += OnButtonUp;
    }

    private void OnMouseEntered()
    {
        alphaAnimation.Stop();
    }

    private void OnMouseExited()
    {
        alphaAnimation.Play();
    }

    private void OnButtonUp()
    {
        LoadGame(0);
        GetTree().ChangeSceneToPacked(mainScene);
    }
}