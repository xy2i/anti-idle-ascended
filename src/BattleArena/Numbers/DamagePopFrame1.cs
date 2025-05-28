using System;
using AntiIdle.Common.Nodes;
using Godot;
namespace AntiIdle.BattleArena.Numbers;

// MATCH: DefineSprite_133_damagePop/frame_1/DoAction.as
public partial class DamagePopFrame1 : FlashNode2D
{
    private Label disp;
    private Color damageColor;
    float Xalpha;
    bool alt;
    double tsc;

    public override void _Ready()
    {
        disp.LabelSettings = new();
        _root.damageNumCount += 1;
        tsc = _root.damageNumCount;
        var damageNum = "";
        disp.Text = damageNum;
        disp.LabelSettings.FontColor = damageColor;
        stop();
        Xalpha = 180;
        if (damageColor == c(10027229) || damageColor == c(12255453))
        {
            Xalpha = 240;
        }
        if (damageColor == c(14522624))
        {
            Xalpha = 120;
        }
        alt = false;
    }

    public override void _Process(double delta)
    {
        alt = !alt;
        var tsc = _root.damageNumCount;
        if (alt == true)
        {
            _Y = _Y - 1;
            Xalpha -= 200 / _root.fps;
            if (_root.damageNumCount - tsc > 10)
            {
                _Y = _Y - 2;
                Xalpha -= 800 / _root.fps;
            }
            if (_root.save.arenaZone == 20)
            {
                _Y = _Y - 4;
                Xalpha -= 1600 / _root.fps;
            }
            if (_root._quality == "BEST")
            {
                _alpha = Xalpha;
                if (Xalpha > 100)
                {
                    _alpha = 100;
                }
            }
            if (_root._quality != "BEST" || Xalpha > 100)
            {
                Xalpha -= 400 / _root.fps;
            }
            if (_root.save.damageDisplay == false)
            {
                Xalpha -= 1600 / _root.fps;
            }
            if (_root.save.damageDisplay != false && (_root._quality == "HIGH" || _root._quality == "BEST"))
            {
                if (Xalpha > 150)
                {
                    _xscale = 150;
                    _yscale = 150;
                }
                else if (Xalpha > 100)
                {
                    _xscale = Xalpha;
                    _yscale = Xalpha;
                }
                else
                {
                    _xscale = 100;
                    _yscale = 100;
                }
            }
            if (Xalpha < 10)
            {
                gotoAndStop(8);
            }
        }
    }
}
