using Godot;
namespace AntiIdle.BattleArena.Numbers;

// MATCH: DefineSprite_133_damagePop/frame_2/DoAction.as
public partial class DamagePopFrame2 : Control
{
    public override void _Process(double delta)
    {
        QueueFree();
    }
}
