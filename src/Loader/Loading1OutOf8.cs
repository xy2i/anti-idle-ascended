using Godot;

public partial class Loading1OutOf8 : Control
{
    public override void _Process(double delta)
    {
        GetTree().ChangeSceneToFile("src/Loader/Loading2OutOf8.tscn");
    }
}
