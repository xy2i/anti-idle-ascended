using Godot;
namespace AntiIdle.BattleArena.LootMechanics;

//TO DO attach to asset
// MATCH: DefineSprite_1304_newLoot8/frame_1/DoAction.as
public partial class NewLoot8 : Node2D
{
    private double amntToGain;
    private float x;
    private float y;
    private double leftChance;
    private double magneticChance;
    private bool magnetic;
    private double yVel = -5;
    private double del = 0;
    private double xVel = Math.random() * 2;
    private double _alpha;
    private double ringType = random(16) + 1;
    private FlashList<string> ringArray;

    // MATCH: DefineSprite_1304_newLoot8/frame_1/DoAction.as:getLoot()
    public void getLoot()
    {
        if (_root.save.questType == "Loot")
        {
            if (_root.save.questSubtype == "Any" || _root.save.questSubtype == "Ring")
            {
                _root.save.questCount += 1;
            }
        }
        if (_root.save.arenaZone == 44 && _root.save.questType == "Loot" && _root.save.questSubtype == "Roflhunter\'s Ring" && Math.random() < 0.5)
        {
            _root.save.questCount += 1;
            _root.dispNews(44, "Found new Ring! [Roflhunter\'s Ring]");
        }
        else
        {
            if (_root.save.arenaZone >= 50 && _root.save.arenaZone <= 54 || _root.save.arenaZone == 78 || _root.save.arenaZone >= 85 && _root.save.arenaZone <= 91)
            {
                ringType = random(22) + 1;
            }
            if (_root.save.arenaRingOwned[ringType] > 0)
            {
                ringType = 0;
            }
            if (ringType != 0)
            {
                _root.save.arenaRingOwned[ringType] = 1;
                _root.dispNews(44, "Found new Ring! [Ring of " + ringArray[ringType] + "]");
                _root.checkBestiary();
            }
            else
            {
                var pixelToGain = Math.floor(100 * _root.save.arenaLevel);
                _root.save.arenaPixel += pixelToGain;
                _root.dispNews(45, "Found Ring! (+" + _root.withComma(pixelToGain) + " Pixels)");
                var powerType = random(4) + 1;
                if (Math.random() < 0.25)
                {
                    powerType = random(7) + 1;
                }
                amntToGain = 5 + random(6);
                var pos = Position;
                if (powerType == 1)
                {
                    _root.save.arenaAttack += amntToGain;
                    _root.house.arena.showDamage("Attack +" + _root.withComma(amntToGain), 16711680, pos.X, pos.Y - 50);
                }
                else if (powerType == 2)
                {
                    _root.save.arenaDefense += amntToGain;
                    _root.house.arena.showDamage("Defense +" + _root.withComma(amntToGain), 16711680, pos.X, pos.Y - 50);
                }
                else if (powerType == 3)
                {
                    _root.save.arenaMaxHealth += 10 * amntToGain;
                    _root.house.arena.showDamage("MaxHP +" + _root.withComma(10 * amntToGain), 16711680, pos.X, pos.Y - 50);
                }
                else if (powerType == 4)
                {
                    _root.save.arenaMaxMana += 4 * amntToGain;
                    _root.house.arena.showDamage("MaxMP +" + _root.withComma(4 * amntToGain), 16711680, pos.X, pos.Y - 50);
                }
                else if (powerType == 5)
                {
                    _root.save.arenaAccuracy += 2 * Math.ceil(amntToGain / 4.5);
                    _root.house.arena.showDamage("Accuracy +" + _root.withComma(Math.ceil(amntToGain / 4.5)), 16711680, pos.X, pos.Y - 50);
                }
                else if (powerType == 6)
                {
                    _root.save.arenaEvasion += 2 * Math.ceil(amntToGain / 4.5);
                    _root.house.arena.showDamage("Evasion +" + _root.withComma(Math.ceil(amntToGain / 4.5)), 16711680, pos.X, pos.Y - 50);
                }
                else if (powerType == 7)
                {
                    if (_root.save.arenaBuffType == 0 && Math.random() < 0.3)
                    {
                        _root.save.arenaBuffType = random(3) + 1;
                        _root.save.arenaBuffDuration = 10;
                        if (_root.save.arenaBuffType == 1)
                        {
                            _root.house.arena.showDamage("Power Buff +10s", 16711680, pos.X, pos.Y - 50);
                        }
                        else if (_root.save.arenaBuffType == 2)
                        {
                            _root.house.arena.showDamage("Master Buff +10s", 16711680, pos.X, pos.Y - 50);
                        }
                        else if (_root.save.arenaBuffType == 3)
                        {
                            _root.house.arena.showDamage("Reward Buff +10s", 16711680, pos.X, pos.Y - 50);
                        }
                    }
                    else if (_root.save.arenaBuffDuration < 6000 && _root.save.arenaBuffType < 4 && Math.random() < 0.3)
                    {
                        _root.save.arenaBuffDuration += 1;
                        _root.house.arena.showDamage("Buff Duration +1s", 16711680, pos.X, pos.Y - 50);
                    }
                    else
                    {
                        _root.save.arenaExp += 1000 * amntToGain;
                        _root.house.arena.showDamage("A.EXP +" + _root.withComma(1000 * amntToGain), 10092288, pos.X, pos.Y - 50);
                    }
                }
            }
        }
    }

    public override void _Ready()
    {
        var pos = Position;
        leftChance = 0.3;
        magneticChance = 1;
        ringArray = new(["", "Health", "Mana", "Power", "Speed", "Mastery", "Critical", "Defense", "Reflection", "Accuracy", "Evasion", "Leech", "Chaos", "Encounter", "Experience", "Greed", "Protection", "Luck", "Combo", "Chronos", "Rage", "Resistance", "Cruelty"]);
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
