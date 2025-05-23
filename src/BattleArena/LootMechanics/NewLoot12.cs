using Godot;
namespace AntiIdle.BattleArena.LootMechanics;

//TO DO attach to asset
// MATCH: DefineSprite_1322_newLoot12/frame_1/DoAction.as
public partial class NewLoot12 : Node2D
{
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
        var pos = Position;
        leftChance = 0.3;
        magneticChance = 1;
        pos.X = x;
        pos.Y = y - 50;
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
        yVel = -5;
        del = 0;
        Position = pos;
        gotoAndStop(lootValue);
    }

    public override void _Process(double delta)
    {
        del += 1;
        var pos = Position;
        var color = Modulate;
        var mousepos = ToLocal(GetViewport().GetMousePosition());
        color.A = 250;
        if (del >= 2)
        {
            del = 0;
            xVel *= 0.98;
            if (_root.save.activityLoot == true && (_root.cursoridle < 5 || _root.arenaBot > 0 && _root.arenaBot < 2400))
            {
                xVel -= 1;
                if (_root.save.bouncyLoot == false)
                {
                    pos.X = 80;
                }
            }
            yVel += 1;
            if (pos.Y > y)
            {
                yVel *= -0.6;
            }
            if (_root.save.bouncyLoot != false)
            {
                if (magnetic == true)
                {
                    xVel -= 1;
                }
                pos.X = pos.X + (float)xVel;
                pos.Y = pos.Y + (float)yVel;
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
