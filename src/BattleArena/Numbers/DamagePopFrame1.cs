using Godot;
namespace AntiIdle.BattleArena.Numbers;

// MATCH: DefineSprite_133_damagePop/frame_1/DoAction.as
public partial class DamagePopFrame1 : Control
{
    private Label disp;
    private Godot.Color damageColor;

    public override void _Ready()
    {
        disp.LabelSettings = new();
        _root.damageNumCount += 1;
        var damageNum = "";
        disp.Text = damageNum;
        disp.LabelSettings.FontColor = damageColor;
        stop();
        var color = Modulate;
        color.A = 180;
        if (damageColor == c(10027229) || damageColor == c(12255453))
        {
            color.A = 240;
        }
        if (damageColor == c(14522624))
        {
            color.A = 120;
        }
        Modulate = color;
    }

    public override void _Process(double delta)
    {
        var alt = false;
        var tsc = _root.damageNumCount;
        if (alt == true)
        {
            var pos = Position;
            var color = Modulate;
            var scale = Scale;
            pos.Y -= 1;
            color.A -= 200 / _root.fps;
            if (_root.damageNumCount - tsc > 10)
            {
                pos.Y -= 2;
                color.A -= 800 / _root.fps;
            }
            if (_root.save.arenaZone == 20)
            {
                pos.Y -= 4;
                color.A -= 1600 / _root.fps;
            }
            if (_root._quality == "BEST")
            {
                var _alpha = color.A;
                if (color.A > 100)
                {
                    _alpha = 100;
                }
            }
            if (_root._quality != "BEST" || color.A > 100)
            {
                color.A -= 400 / _root.fps;
            }
            if (_root.save.damageDisplay == false)
            {
                color.A -= 1600 / _root.fps;
            }
            if (_root.save.damageDisplay != false && (_root._quality == "HIGH" || _root._quality == "BEST"))
            {
                if (color.A > 150)
                {
                    scale.X = 150;
                    scale.Y = 150;
                }
                else if (color.A > 100)
                {
                    scale.X = color.A;
                    scale.Y = color.A;
                }
                else
                {
                    scale.X = 100;
                    scale.Y = 100;
                }
            }
            Position = pos;
            Modulate = color;
            Scale = scale;
            if (Modulate.A < 10)
            {
                gotoAndStop(8);
            }
        }
    }
}
