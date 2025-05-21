using Godot;
namespace AntiIdle.BattleArena.LootMechanics;

//TO DO attach to asset
// MATCH: DefineSprite_1322_newLoot12/frame_1/DoAction.as
public partial class NewLoot12 : Control
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

    // MATCH: DefineSprite_1322_newLoot12/frame_1/DoAction.as:getLoot()
    public void getLoot()
    {
        if (lootValue == 1)
        {
            if (_root.save.recipeLevel < 4)
            {
                _root.save.recipeLevel += 1;
                _root.dispNews(46, "Found recipe! [\'lrn2craft\' Recipe Lv. " + (_root.save.recipeLevel + 1) + "]");
            }
            if (_root.save.questType == "Loot")
            {
                if (_root.save.questSubtype == "Any")
                {
                    _root.save.questCount += 1;
                }
            }
        }
        else if (lootValue == 2)
        {
            if (_root.save.secretRecipeLevel < 4)
            {
                _root.save.secretRecipeLevel += 1;
                _root.dispNews(46, "Found recipe! [Secret Recipe Lv. " + (_root.save.secretRecipeLevel + 1) + "]");
            }
            if (_root.save.questType == "Loot")
            {
                if (_root.save.questSubtype == "Any")
                {
                    _root.save.questCount += 1;
                }
            }
        }
        else if (lootValue == 3)
        {
            if (_root.save.arenaSkill[101] < 30)
            {
                _root.save.arenaSkill[101] += 1;
                _root.dispNews(47, "You have learned [Limit Break] Lv. " + _root.save.arenaSkill[101] + "!");
            }
            if (_root.save.questType == "Loot")
            {
                if (_root.save.questSubtype == "Any")
                {
                    _root.save.questCount += 1;
                }
            }
        }
        else if (lootValue == 4)
        {
            if (_root.save.arenaSkill[104] < 30)
            {
                _root.save.arenaSkill[104] += 1;
                _root.dispNews(47, "You have learned [Enrage] Lv. " + _root.save.arenaSkill[104] + "!");
            }
            if (_root.save.questType == "Loot")
            {
                if (_root.save.questSubtype == "Any")
                {
                    _root.save.questCount += 1;
                }
            }
        }
        else if (lootValue == 5)
        {
            if (_root.save.arenaSkill[105] < 30)
            {
                _root.save.arenaSkill[105] += 1;
                _root.dispNews(47, "You have learned [Elemental Boost] Lv. " + _root.save.arenaSkill[105] + "!");
            }
            if (_root.save.questType == "Loot")
            {
                if (_root.save.questSubtype == "Any")
                {
                    _root.save.questCount += 1;
                }
            }
        }
        else if (lootValue == 6)
        {
            if (_root.save.arenaSkill[106] < 30)
            {
                _root.save.arenaSkill[106] += 1;
                _root.dispNews(47, "You have learned [Invincibility] Lv. " + _root.save.arenaSkill[106] + "!");
            }
            if (_root.save.questType == "Loot")
            {
                if (_root.save.questSubtype == "Any")
                {
                    _root.save.questCount += 1;
                }
            }
        }
        else if (lootValue == 7)
        {
            var spCap = 150 + Math.floor(_root.save.battlePoint / 10000);
            if (_root.save.arenaUltimateSP < spCap)
            {
                _root.save.arenaUltimateSP += 1;
                _root.save.arenaSP += 10;
                _root.dispNews(47, "You have gained 10 SP! (" + _root.withComma(_root.save.arenaUltimateSP * 10) + " / 2,500)");
            }
            if (_root.save.questType == "Loot")
            {
                if (_root.save.questSubtype == "Any")
                {
                    _root.save.questCount += 1;
                }
            }
        }
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
        gotoAndStop(lootValue);
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
