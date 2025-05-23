using Godot;
namespace AntiIdle.BattleArena.LootMechanics;

//TO DO attach to asset
// MATCH: DefineSprite_155_newLoot1/frame_1/DoAction.as
public partial class NewLoot1 : Node2D
{
    private int i;
    private int yy;
    private int mm;
    private int dd;
    private double amntToGain;
    private double lootValue;
    private float x;
    private float y;
    private double leftChance;
    private double magneticChance;
    private bool magnetic;
    private double yVel = -5;
    private double del = 0;
    private double xVel = Math.random() * 2;
    private double _alpha;

    // MATCH: DefineSprite_155_newLoot1/frame_1/DoAction.as:getLoot()
    public void getLoot()
    {
        if (_root.save.questType == "Loot")
        {
            if (_root.save.questSubtype == "Any" || _root.save.questSubtype == "Coin")
            {
                _root.save.questCount += 1;
            }
        }
        i = 1;
        while (i <= _root.todayEvent)
        {
            yy = _root.clock_year % 10;
            mm = _root.clock_month;
            dd = _root.clock_date;
            if (_root.eventList[yy][mm][dd][i] == "2x Coin from loot drops in Battle Arena")
            {
                lootValue *= 2;
            }
            i++;
        }
        amntToGain = lootValue;
        _root.gainCoin(amntToGain);
        var pos = Position;
        _root.house.arena.showDamage("Coin +" + _root.withComma(amntToGain), 16776960, pos.X, pos.Y - 20);
    }

    public override void _Ready()
    {
        leftChance = 0.3;
        magneticChance = 1;
        var pos = Position;
        pos.X = x;
        pos.Y = y - 50;
        if (Math.random() < leftChance)
        {
            xVel = -Math.random() * 2;
        }
        magnetic = false;
        if (_root.lootMagnet == true && Math.random() < magneticChance)
        {
            magnetic = true;
        }
        if (_root.save.bouncyLoot == false)
        {
            if (magnetic == true)
            {
                pos.X = 80;
            }
            else if (_root.save.activityLoot == true && (_root.cursoridle < 5 || _root.arenaBot > 0 && _root.arenaBot < 2400))
            {
                pos.X = 80;
            }
            else if (x > 85)
            {
                pos.X = x + (float)xVel * 100;
            }
            else
            {
                pos.X = x;
            }
            pos.Y = y;
        }
        Position = pos;
    }

    public override void _Process(double delta)
    {
        var pos = Position;
        var color = Modulate;
        var mousepos = ToLocal(GetViewport().GetMousePosition());
        color.A = 250;
        del += 1;
        if (del >= 2)
        {
            del = 0;
            if (pos.Y > 0)
            {
                xVel *= 0.98;
                if (_root.save.activityLoot == true && (_root.cursoridle < 5 || _root.arenaBot > 0 && _root.arenaBot < 2400))
                {
                    xVel -= 1;
                    if (_root.save.bouncyLoot == false)
                    {
                        pos.X = 80;
                    }
                }
            }
            yVel += 1;
            if (pos.Y > 150 && yVel > 0)
            {
                yVel *= -0.6;
            }
            if (_root.save.bouncyLoot != false)
            {
                if (magnetic == true)
                {
                    xVel -= 1;
                }
                if (pos.Y > 0)
                {
                    pos.X += (float)xVel;
                }
                pos.Y += (float)yVel;
            }
            if (pos.X > 500)
            {
                pos.X = 500;
            }
            if (color.A > 0)
            {
                color.A -= 100 / _root.fps;
                if (pos.X < 85 || mousepos.X >= -25 && mousepos.X <= 25 && mousepos.Y >= -50 && mousepos.Y <= 5 && _root.cursoridle < 60)
                {
                    _root.save.arenaLoot += 1;
                    getLoot();
                    QueueFree();
                }
            }
            else
            {
                QueueFree();
            }
            if (_root._quality == "HIGH" || _root._quality == "BEST")
            {
                _alpha = color.A;
            }
        }
        Position = pos;
        Modulate = color;
    }
}
