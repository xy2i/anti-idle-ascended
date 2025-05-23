using Godot;
namespace AntiIdle.BattleArena.LootMechanics;

//TO DO attach to asset
// MATCH: DefineSprite_1307_newLoot9/frame_1/DoAction.as
public partial class NewLoot9 : Node2D
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

    // MATCH: DefineSprite_1307_newLoot9/frame_1/DoAction.as:getLoot()
    public void getLoot()
    {
        var pos = Position;
        if (lootValue == 1)
        {
            _root.save.boostPotion += 1;
            _root.dispNews(181, "Found 1 [Regular Boost Potion]!");
            _root.house.arena.showDamage("Regular Boost Potion +1", 15790080, pos.X, pos.Y - 20);
            if (_root.save.questType == "Loot")
            {
                if (_root.save.questSubtype == "Any" || _root.save.questSubtype == "Regular Boost Potion")
                {
                    _root.save.questCount += 1;
                }
            }
        }
        else if (lootValue == 2)
        {
            _root.save.megaBoostPotion += 1;
            _root.dispNews(182, "Found 1 [Mega Boost Potion]!");
            _root.house.arena.showDamage("Mega Boost Potion +1", 9175240, pos.X, pos.Y - 20);
            if (_root.save.questType == "Loot")
            {
                if (_root.save.questSubtype == "Any" || _root.save.questSubtype == "Mega Boost Potion")
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
        var pos = Position;
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
        var pos = Position;
        var color = Modulate;
        var mousepos = ToLocal(GetViewport().GetMousePosition());
        color.A = 250;
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
