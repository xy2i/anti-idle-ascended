using Godot;
namespace AntiIdle.BattleArena.LootMechanics;

//TO DO attach to asset
// MATCH: DefineSprite_1328_newLoot15/frame_1/DoAction.as
public partial class NewLoot15 : Control
{
    private int i;
    private int yy;
    private int mm;
    private int dd;
    private double amntToGain;
    private double lootValue;
    private double x;
    private double y;
    private double _X;
    private double _Y;
    private double leftChance;
    private double magneticChance;
    private bool magnetic;
    private double yVel = -5;
    private double xalpha = 250;
    private double del = 0;
    private double xVel = Math.random() * 2;
    private double _xmouse;
    private double _ymouse;
    private double _alpha;

    // MATCH: DefineSprite_1328_newLoot15/frame_1/DoAction.as:getLoot()
    public void getLoot()
    {
        if (_root.save.questType == "Loot")
        {
            if (_root.save.questSubtype == "Any" || _root.save.questSubtype == "Chaotic Fragment of Chaos")
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
            if (_root.eventList[yy][mm][dd][i] == "4x Chaotic Fragment of Chaos from loot drops in Battle Arena")
            {
                lootValue *= 4;
            }
            i++;
        }
        amntToGain = lootValue;
        if (_root.clock_year == 2013 && _root.clock_month == 12 && _root.saveid < 10)
        {
            if (_root.clock_date == 4 || _root.clock_date == 18)
            {
                amntToGain = Math.floor(amntToGain * 4);
            }
        }
        if (isNaN(amntToGain))
        {
            amntToGain = 1;
        }
        _root.gainCareerEXP(4, 66 * amntToGain, true);
        _root.save.arenaChaoticFragment += amntToGain;
        _root.dispNews(39, "Found " + amntToGain + " [Chaotic Fragment of Chaos]!");
        _root.house.arena.showDamage("Chaotic Fragment of Chaos +" + _root.withComma(amntToGain), 16721703, _X, _Y - 20);
    }

    public override void _Ready()
    {
        leftChance = 0.3;
        magneticChance = 1;
        _X = x;
        _Y = y - 50;
        xVel = Math.random() * 2;
        if (Math.random() < leftChance)
        {
            xVel = (-Math.random()) * 2;
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
                _X = 80;
            }
            else if (_root.save.activityLoot == true && (_root.cursoridle < 5 || _root.arenaBot > 0 && _root.arenaBot < 2400))
            {
                _X = 80;
            }
            else if (x > 85)
            {
                _X = x + xVel * 100;
            }
            else
            {
                _X = x;
            }
            _Y = y;
        }
        yVel = -5;
        xalpha = 250;
        del = 0;
    }

    public override void _Process(double delta)
    {
        del += 1;
        if (del >= 2)
        {
            del = 0;
            xVel *= 0.98;
            if (_root.save.activityLoot == true && (_root.cursoridle < 5 || _root.arenaBot > 0 && _root.arenaBot < 2400))
            {
                xVel -= 1;
                if (_root.save.bouncyLoot == false)
                {
                    _X = 80;
                }
            }
            yVel += 1;
            if (_Y > y)
            {
                yVel *= -0.6;
            }
            if (_root.save.bouncyLoot != false)
            {
                if (magnetic == true)
                {
                    xVel -= 1;
                }
                _X = _X + xVel;
                _Y = _Y + yVel;
            }
            if (_X > 500)
            {
                _X = 500;
            }
            if (xalpha > 0)
            {
                xalpha -= 100 / _root.fps;
                if (_X < 85 || _xmouse >= -25 && _xmouse <= 25 && _ymouse >= -50 && _ymouse <= 5 && _root.cursoridle < 60)
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
                _alpha = xalpha;
            }
        }
    }
}
