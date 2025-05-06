using System.Collections.Generic;
using aitg.flash;
using aitg.lib.feature.main;
using Godot;
using static aitg.Globals;

namespace aitg.lib.feature.ba;

public class ArenaSet
{
    public List<double> bonusAmnt;
    public List<double> bonusReq;
    public List<string> bonusStat;
    public List<string> setItems;
    public string setNameD;
}

public static class Ba
{
    private static readonly List<ArenaSet> setArray =
    [
        new(),
        new()
        {
            setNameD = "Gem of Constancy\n(Gem of Constancy must be equipped)",
            bonusReq = [2, 3, 4, 5, 6, 7, 8],
            bonusStat =
            [
                "Spawn Rate", "Spawn Rate", "Spawn Rate", "Spawn Rate", "Spawn Rate", "Spawn Rate", "Spawn Rate"
            ],
            bonusAmnt = [5, 5, 5, 5, 5, 5, 10],
            setItems =
            [
                "Gem of Constancy", "Any Finalized Weapon", "Any Finalized Hat", "Any Finalized Shirt",
                "Any Finalized Gloves", "Any Finalized Pants", "Any Finalized Shoes", "Any Finalized Skin"
            ]
        }
    ];

    public static bool filterItem(string name, double? sell = null)
    {
        var autoSell = false;
        var checkWhitelist = false;
        var whitelisted = false;
        var filterArr = save.arenaFilter.Split(",");
        List<string> whiteList = [];
        var i = 0;
        while (i < filterArr.Length)
        {
            var tmpFilter = filterArr[i];
            if (tmpFilter.IndexOf("%") == 0)
            {
                tmpFilter = tmpFilter.Split("%").Join("");
                checkWhitelist = true;
            }

            if (tmpFilter.IndexOf("*") != -1)
            {
                tmpFilter = tmpFilter.Split("*").Join("");
                if (name.IndexOf(tmpFilter) != -1)
                {
                    autoSell = true;
                    if (checkWhitelist)
                    {
                        whitelisted = true;
                    }
                }
            }

            if (tmpFilter == name)
            {
                autoSell = true;
                if (checkWhitelist)
                {
                    whitelisted = true;
                }
            }

            checkWhitelist = false;
            i += 1;
        }

        if (autoSell && whitelisted == false)
        {
            if (sell != null)
            {
                save.arenaPixel += sell.Value;
            }

            return true;
        }

        return false;
    }


    public static void deleteArenaItem(int k)
    {
        save.inventoryExist[k] = -1;
        save.inventoryName[k] = "";
        save.inventoryReqRank[k] = -1;
        save.inventoryType[k] = "";
        save.inventorySubtype[k] = "";
        save.inventoryFrame[k] = -1;
        save.inventoryRange[k] = false;
        save.inventoryAttack[k] = -1;
        save.inventorySpeed[k] = -1;
        save.inventoryDefense[k] = -1;
        save.inventoryBonus[k] = "";
        save.inventoryAbility[k] = "";
        save.inventoryMoreBonus[k] = "";
        save.inventoryLevel[k] = -1;
        save.inventoryMaxLevel[k] = -1;
        save.inventoryExp[k] = -1;
        save.inventoryExpTNL[k] = -1;
        save.inventoryEnhance[k] = -1;
        save.inventoryBonusPow[k] = -1;
        save.inventorySell[k] = -1;
        save.inventoryExpiry[k] = -1;
        save.inventoryObtainTime[k] = -1;
        save.inventoryNoBonus[k] = false;
        save.inventoryNoRecycle[k] = false;
        save.inventoryNoFuse[k] = false;
        save.inventoryNoUnique[k] = false;
        save.inventoryUnob[k] = -1;
        save.inventorySpirit[k] = false;
        save.inventoryCrit[k] = -1;
        save.inventoryDexterity[k] = -1;
        save.inventoryHealth[k] = -1;
        save.inventoryDesc[k] = "";
        save.inventorySet[k] = -1;
        save.inventoryGuard[k] = false;
        checkFullInventory();
    }

    public static void checkFullInventory()
    {
        _root.emptyWeaponSlot = 0;
        _root.emptyArmorSlot = 0;
        _root.emptyAccessorySlot = 0;
        _root.emptyEnhancerSlot = 0;
        _root.emptyPotionSlot = 0;
        _root.emptyOutfitSlot = 0;
        _root.emptyChipSlot = 0;
        var i = 1;
        while (i <= 30)
        {
            if (save.inventoryExist[i] != 1)
            {
                _root.emptyWeaponSlot += 1;
            }

            i += 1;
        }

        i = 101;
        while (i <= 130)
        {
            if (save.inventoryExist[i] != 1)
            {
                _root.emptyArmorSlot += 1;
            }

            i += 1;
        }

        i = 201;
        while (i <= 230)
        {
            if (save.inventoryExist[i] != 1)
            {
                _root.emptyEnhancerSlot += 1;
            }

            i += 1;
        }

        i = 401;
        while (i <= 430)
        {
            if (save.inventoryExist[i] != 1)
            {
                _root.emptyPotionSlot += 1;
            }

            i += 1;
        }

        i = 501;
        while (i <= 530)
        {
            if (save.inventoryExist[i] != 1)
            {
                _root.emptyAccessorySlot += 1;
            }

            i += 1;
        }

        i = 601;
        while (i <= 630)
        {
            if (save.inventoryExist[i] != 1)
            {
                _root.emptyOutfitSlot += 1;
            }

            i += 1;
        }

        i = 701;
        while (i <= 730)
        {
            if (save.inventoryExist[i] != 1)
            {
                _root.emptyChipSlot += 1;
            }

            i += 1;
        }
    }

    public static int checkArenaSet(string itemName)
    {
        var tempSetID = 0;
        var i = 1;
        while (i <= setArray.Count - 1)
        {
            var j = 0;
            while (j <= setArray[i].setItems.Count - 1)
            {
                var tempName = setArray[i].setItems[j];
                if (itemName == tempName)
                {
                    tempSetID = i;
                }

                if (tempName == "Any Weapon of DOOOOOOM")
                {
                    if (itemName.IndexOf("DOOOOOOM") != -1)
                    {
                        tempSetID = i;
                    }
                }

                if (tempName == "Any Meteoric Weapon")
                {
                    if (itemName.IndexOf("Meteoric") != -1)
                    {
                        tempSetID = i;
                    }
                }

                if (tempName == "Any Dragon Slayer Weapon")
                {
                    if (itemName.IndexOf("Dragon Slayer") != -1)
                    {
                        tempSetID = i;
                    }
                }

                if (tempName == "Any Demon Slayer Weapon")
                {
                    if (itemName.IndexOf("Demon Slayer") != -1)
                    {
                        tempSetID = i;
                    }
                }

                if (tempName == "Any Tukkonium Weapon")
                {
                    if (itemName.IndexOf("Tukkonium") != -1)
                    {
                        tempSetID = i;
                    }
                }

                if (tempName == "Any Pickaxe")
                {
                    if (itemName.IndexOf("Pickaxe") != -1)
                    {
                        tempSetID = i;
                    }
                }

                if (tempName.IndexOf("Any Alien") != -1)
                {
                    if (itemName.IndexOf("Alien") != -1)
                    {
                        tempSetID = i;
                    }
                }

                if (tempName.IndexOf("Dragon Slayer") != -1)
                {
                    if (itemName.IndexOf("Dragon Slayer") != -1)
                    {
                        tempSetID = i;
                    }
                }

                if (tempName.IndexOf("Demon Slayer") != -1)
                {
                    if (itemName.IndexOf("Demon Slayer") != -1)
                    {
                        tempSetID = i;
                    }
                }

                j += 1;
            }

            i += 1;
        }

        return tempSetID;
    }

    public static void getArenaWeapon(
        int reqRank,
        string subtype,
        int frame,
        bool range,
        double attack,
        double speed,
        double defense,
        double? crit = null,
        double? dexterity = null,
        double? health = null,
        double? maxLevel = null,
        double? expTNL = null,
        double? level = null,
        double? exp = null,
        double? enhance = null,
        double? bonusPow = null,
        string bonus = null,
        string ability = null,
        string moreBonus = null,
        double? sell = null,
        double? expiry = null,
        bool? noBonus = null,
        bool? noLife = null,
        bool? noFuse = null,
        bool? noUnique = null,
        bool? spirit = null,
        double? unob = null,
        string name = null,
        string desc = null,
        bool? guard = null,
        bool? filter = null)
    {
        if (filter == true && filterItem(name, sell))
        {
            return;
        }

        var k = 9999;
        var i = 1;
        while (i <= 30)
        {
            if (save.inventoryExist[i] != 1)
            {
                if (k > i)
                {
                    k = i;
                }
            }

            i += 1;
        }

        if (k == 9999)
        {
            k = (int)save.arenaDeletedSlot;
            save.arenaDeletedSlot += 1;
            if (save.arenaDeletedSlot > 830)
            {
                save.arenaDeletedSlot = 801;
            }

            deleteArenaItem(k);
        }

        if (name != null)
        {
            noBonus ??= false;
            noLife ??= true;
            noFuse ??= false;
            noUnique ??= false;
            spirit ??= false;
            guard ??= false;
            if (level == null)
            {
                level = 1;
                GD.PrintErr("[Error]", "ERROR: " + name + " / [level] not defined.");
            }

            if (exp == null)
            {
                exp = 0;
                GD.PrintErr("[Error]", "ERROR: " + name + " / [exp] not defined.");
            }

            if (crit == null)
            {
                crit = 10;
                dexterity = 0;
                health = 0;
                GD.PrintErr("[Error]", "ERROR: " + name + " / [crit] not defined.");
            }

            if (unob == null)
            {
                unob = 0;
                GD.PrintErr("[Error]", "ERROR: " + name + " / [unob] not defined.");
            }

            var itemSet = checkArenaSet(name);
            if (moreBonus == null)
            {
                moreBonus = "";
                GD.PrintErr("[Error]", "ERROR: " + name + " / [moreBonus] not defined.");
            }

            if (desc == null)
            {
                desc = "";
                GD.PrintErr("[Error]", "ERROR: " + name + " / [desc] not defined.");
            }

            save.inventoryExist[k] = 1;
            save.inventoryName[k] = name;
            save.inventoryReqRank[k] = reqRank;
            save.inventoryType[k] = "Weapon";
            save.inventorySubtype[k] = subtype;
            save.inventoryFrame[k] = frame;
            save.inventoryRange[k] = range;
            save.inventoryAttack[k] = attack;
            save.inventorySpeed[k] = speed;
            save.inventoryDefense[k] = defense;
            save.inventoryBonus[k] = bonus;
            save.inventoryAbility[k] = ability;
            save.inventoryMoreBonus[k] = moreBonus;
            save.inventoryLevel[k] = level ?? 0;
            save.inventoryMaxLevel[k] = maxLevel ?? 0;
            save.inventoryExp[k] = exp ?? 0;
            save.inventoryExpTNL[k] = expTNL ?? 0;
            save.inventoryEnhance[k] = enhance ?? 0;
            save.inventoryBonusPow[k] = bonusPow ?? 0;
            save.inventorySell[k] = sell ?? 0;
            save.inventoryExpiry[k] = expiry ?? 0 + _root.systemtimenow;
            if (noLife == false)
            {
                save.inventoryExpiry[k] = float.PositiveInfinity;
            }

            save.inventoryObtainTime[k] = _root.systemtimenow;
            save.inventoryDesc[k] = desc;
            save.inventoryCrit[k] = crit ?? 0;
            save.inventoryDexterity[k] = dexterity ?? 0;
            save.inventoryHealth[k] = health ?? 0;
            save.inventoryNoBonus[k] = noBonus ?? false;
            save.inventoryNoFuse[k] = noFuse ?? false;
            save.inventoryNoUnique[k] = noUnique ?? false;
            save.inventorySpirit[k] = spirit ?? false;
            save.inventoryGuard[k] = guard ?? false;
            save.inventoryUnob[k] = unob ?? 0;
            save.inventorySet[k] = itemSet;
            if (save.inventoryBonus[k] == "Random")
            {
                var bonusToGet = FlashRand.random(22) + 1;
                if (bonusToGet == 1 || bonusToGet == 2)
                {
                    save.inventoryBonus[k] = "Reward";
                }

                if (bonusToGet == 3 || bonusToGet == 4)
                {
                    save.inventoryBonus[k] = "EXP";
                }

                if (bonusToGet == 5 || bonusToGet == 6)
                {
                    save.inventoryBonus[k] = "Coin";
                }

                if (bonusToGet == 7 || bonusToGet == 8)
                {
                    save.inventoryBonus[k] = "Pixel";
                }

                if (bonusToGet == 9 || bonusToGet == 10)
                {
                    save.inventoryBonus[k] = "Drop Rate";
                }

                if (bonusToGet == 11 || bonusToGet == 12)
                {
                    save.inventoryBonus[k] = "Spawn Rate";
                }

                if (bonusToGet == 13)
                {
                    save.inventoryBonus[k] = "Fire Element";
                }

                if (bonusToGet == 14)
                {
                    save.inventoryBonus[k] = "Ice Element";
                }

                if (bonusToGet == 15)
                {
                    save.inventoryBonus[k] = "Wind Element";
                }

                if (bonusToGet == 16)
                {
                    save.inventoryBonus[k] = "Earth Element";
                }

                if (bonusToGet == 17)
                {
                    save.inventoryBonus[k] = "Thunder Element";
                }

                if (bonusToGet == 18)
                {
                    save.inventoryBonus[k] = "Water Element";
                }

                if (bonusToGet == 19)
                {
                    save.inventoryBonus[k] = "Light Element";
                }

                if (bonusToGet == 20)
                {
                    save.inventoryBonus[k] = "Dark Element";
                }

                if (bonusToGet == 21)
                {
                    save.inventoryBonus[k] = "Rare Monster Rate";
                }

                if (bonusToGet == 22)
                {
                    save.inventoryBonus[k] = "Epic Monster Rate";
                }

                if (save.arenaBonusPreference1 != "None" && FlashRand.random() < 0.2)
                {
                    save.inventoryBonus[k] = save.arenaBonusPreference1;
                }
                else if (save.arenaBonusPreference2 != "None" && FlashRand.random() < 0.07)
                {
                    save.inventoryBonus[k] = save.arenaBonusPreference2;
                }
            }

            if (save.inventoryAbility[k] == "Random")
            {
                var bonusToGet = FlashRand.random(47) + 1;
                if (bonusToGet == 1)
                {
                    save.inventoryAbility[k] = "Attack";
                }

                if (bonusToGet == 2)
                {
                    save.inventoryAbility[k] = "Attack Speed";
                }

                if (bonusToGet == 3)
                {
                    save.inventoryAbility[k] = "Ignore Defense";
                }

                if (bonusToGet == 4)
                {
                    save.inventoryAbility[k] = "Mastery";
                }

                if (bonusToGet == 5)
                {
                    save.inventoryAbility[k] = "Critical Chance";
                }

                if (bonusToGet == 6)
                {
                    save.inventoryAbility[k] = "Critical Damage";
                }

                if (bonusToGet == 7)
                {
                    save.inventoryAbility[k] = "Defense";
                }

                if (bonusToGet == 8)
                {
                    save.inventoryAbility[k] = "Damage Taken";
                }

                if (bonusToGet == 9)
                {
                    save.inventoryAbility[k] = "Reflect";
                }

                if (bonusToGet == 10)
                {
                    save.inventoryAbility[k] = "Accuracy";
                }

                if (bonusToGet == 11)
                {
                    save.inventoryAbility[k] = "Hit Chance";
                }

                if (bonusToGet == 12)
                {
                    save.inventoryAbility[k] = "Evasion";
                }

                if (bonusToGet == 13)
                {
                    save.inventoryAbility[k] = "Dodge Chance";
                }

                if (bonusToGet == 14)
                {
                    save.inventoryAbility[k] = "Poison Chance";
                }

                if (bonusToGet == 15)
                {
                    save.inventoryAbility[k] = "Weaken Chance";
                }

                if (bonusToGet == 16)
                {
                    save.inventoryAbility[k] = "Blind Chance";
                }

                if (bonusToGet == 17)
                {
                    save.inventoryAbility[k] = "Stun Chance";
                }

                if (bonusToGet == 18)
                {
                    save.inventoryAbility[k] = "HP";
                }

                if (bonusToGet == 19)
                {
                    save.inventoryAbility[k] = "MP";
                }

                if (bonusToGet == 20)
                {
                    save.inventoryAbility[k] = "HP Regen";
                }

                if (bonusToGet == 21)
                {
                    save.inventoryAbility[k] = "MP Regen";
                }

                if (bonusToGet == 22)
                {
                    save.inventoryAbility[k] = "Rage Depletion";
                }

                if (bonusToGet == 23)
                {
                    save.inventoryAbility[k] = "Drain";
                }

                if (bonusToGet == 24)
                {
                    save.inventoryAbility[k] = "Mana Eater";
                }

                if (bonusToGet == 25)
                {
                    save.inventoryAbility[k] = "Autosteal";
                }

                if (bonusToGet == 26)
                {
                    save.inventoryAbility[k] = "Double Hit Chance";
                }

                if (bonusToGet == 27)
                {
                    save.inventoryAbility[k] = "Rage Attack";
                }

                if (bonusToGet == 28)
                {
                    save.inventoryAbility[k] = "Rage Speed";
                }

                if (bonusToGet == 29)
                {
                    save.inventoryAbility[k] = "Poison Damage";
                }

                if (bonusToGet == 30)
                {
                    save.inventoryAbility[k] = "Poison Duration";
                }

                if (bonusToGet == 31)
                {
                    save.inventoryAbility[k] = "Weaken Effect";
                }

                if (bonusToGet == 32)
                {
                    save.inventoryAbility[k] = "Weaken Duration";
                }

                if (bonusToGet == 33)
                {
                    save.inventoryAbility[k] = "Blind Effect";
                }

                if (bonusToGet == 34)
                {
                    save.inventoryAbility[k] = "Blind Duration";
                }

                if (bonusToGet == 35)
                {
                    save.inventoryAbility[k] = "Potion Efficiency";
                }

                if (bonusToGet == 36)
                {
                    save.inventoryAbility[k] = "Boss Damage";
                }

                if (bonusToGet == 37)
                {
                    save.inventoryAbility[k] = "Magic Resist";
                }

                if (bonusToGet == 38)
                {
                    save.inventoryAbility[k] = "Instant Kill";
                }

                if (bonusToGet == 39)
                {
                    save.inventoryAbility[k] = "Negate Effect";
                }

                if (bonusToGet == 40)
                {
                    save.inventoryAbility[k] = "Non-Boss Damage";
                }

                if (bonusToGet == 41)
                {
                    save.inventoryAbility[k] = "Damage";
                }

                if (bonusToGet == 42)
                {
                    save.inventoryAbility[k] = "Extra Combo";
                }

                if (bonusToGet == 43)
                {
                    save.inventoryAbility[k] = "Magic Reflect";
                }

                if (bonusToGet == 44)
                {
                    save.inventoryAbility[k] = "Nullify Death Penalty";
                }

                if (bonusToGet == 45)
                {
                    save.inventoryAbility[k] = "Buff Effect";
                }

                if (bonusToGet == 46)
                {
                    save.inventoryAbility[k] = "All Elements";
                }

                if (bonusToGet == 47)
                {
                    save.inventoryAbility[k] = "Max Spirit";
                }

                if (save.arenaAbilityPreference1 != "None" && FlashRand.random() < 0.2)
                {
                    save.inventoryAbility[k] = save.arenaAbilityPreference1;
                }
                else if (save.arenaAbilityPreference2 != "None" && FlashRand.random() < 0.1)
                {
                    save.inventoryAbility[k] = save.arenaAbilityPreference2;
                }
                else if (save.arenaAbilityPreference3 != "None" && FlashRand.random() < 0.05)
                {
                    save.inventoryAbility[k] = save.arenaAbilityPreference3;
                }
            }

            if (save.inventoryMoreBonus[k] == "Random")
            {
                var bonusToGet = FlashRand.random(11) + 1;
                if (bonusToGet == 1)
                {
                    save.inventoryMoreBonus[k] = "Equipment Attack";
                }

                if (bonusToGet == 2)
                {
                    save.inventoryMoreBonus[k] = "Equipment Defense";
                }

                if (bonusToGet == 3)
                {
                    save.inventoryMoreBonus[k] = "Attack Power";
                }

                if (bonusToGet == 4)
                {
                    save.inventoryMoreBonus[k] = "Defense Power";
                }

                if (bonusToGet == 5)
                {
                    save.inventoryMoreBonus[k] = "MaxHP";
                }

                if (bonusToGet == 6)
                {
                    save.inventoryMoreBonus[k] = "MaxMP";
                }

                if (bonusToGet == 7)
                {
                    save.inventoryMoreBonus[k] = "Accuracy";
                }

                if (bonusToGet == 8)
                {
                    save.inventoryMoreBonus[k] = "Evasion";
                }

                if (bonusToGet == 9)
                {
                    save.inventoryMoreBonus[k] = "EXP / Boss Kill";
                }

                if (bonusToGet == 10)
                {
                    save.inventoryMoreBonus[k] = "EXP / Rare Kill";
                }

                if (bonusToGet == 11)
                {
                    save.inventoryMoreBonus[k] = "EXP / Epic Kill";
                }

                if (save.arenaMoreBonusPreference1 != "None" && FlashRand.random() < 0.2)
                {
                    save.inventoryMoreBonus[k] = save.arenaMoreBonusPreference1;
                }
                else if (save.arenaMoreBonusPreference2 != "None" && FlashRand.random() < 0.07)
                {
                    save.inventoryMoreBonus[k] = save.arenaMoreBonusPreference2;
                }
            }

            if (k <= 30)
            {
                _root.dispNews(49, "Weapon GET! [" + name + "]");
            }
            else
            {
                _root.dispNews(55, "Weapon inventory full! [" + name + "] moved to Recently Deleted tab.");
            }
        }
        else
        {
            _root.dispNews(55, "Weapon inventory full! [" + name + "] deleted :(");
        }

        checkFullInventory();
    }

    public static void getArenaArmor(
        int reqRank,
        string subtype,
        int frame,
        double attack,
        double speed,
        double defense,
        double? crit = null,
        double? dexterity = null,
        double? health = null,
        double? maxLevel = null,
        double? expTNL = null,
        double? level = null,
        double? exp = null,
        double? enhance = null,
        double? bonusPow = null,
        string bonus = null,
        string ability = null,
        string moreBonus = null,
        double? sell = null,
        double? expiry = null,
        bool? noBonus = null,
        bool? noLife = null,
        bool? noFuse = null,
        bool? noUnique = null,
        bool? spirit = null,
        double? unob = null,
        string name = null,
        string desc = null,
        bool? guard = null,
        bool? filter = null)
    {
        if (filter == true && filterItem(name, sell))
        {
            return;
        }

        var k = 9999;
        var i = 101;
        while (i <= 130)
        {
            if (save.inventoryExist[i] != 1)
            {
                if (k > i)
                {
                    k = i;
                }
            }

            i += 1;
        }

        if (k == 9999)
        {
            k = (int)save.arenaDeletedSlot;
            save.arenaDeletedSlot += 1;
            if (save.arenaDeletedSlot > 830)
            {
                save.arenaDeletedSlot = 801;
            }

            deleteArenaItem(k);
        }

        if (name != null)
        {
            noBonus ??= false;
            noLife ??= true;
            noFuse ??= false;
            noUnique ??= false;
            spirit ??= false;
            guard ??= false;
            if (level == null)
            {
                level = 1;
                GD.PrintErr("[Error]", "ERROR: " + name + " / [level] not defined.");
            }

            if (exp == null)
            {
                exp = 0;
                GD.PrintErr("[Error]", "ERROR: " + name + " / [exp] not defined.");
            }

            if (crit == null)
            {
                crit = 10;
                dexterity = 0;
                health = 0;
                GD.PrintErr("[Error]", "ERROR: " + name + " / [crit] not defined.");
            }

            if (unob == null)
            {
                unob = 0;
                GD.PrintErr("[Error]", "ERROR: " + name + " / [unob] not defined.");
            }

            var itemSet = checkArenaSet(name);
            if (moreBonus == null)
            {
                moreBonus = "";
                GD.PrintErr("[Error]", "ERROR: " + name + " / [moreBonus] not defined.");
            }

            if (desc == null)
            {
                desc = "";
                GD.PrintErr("[Error]", "ERROR: " + name + " / [desc] not defined.");
            }

            save.inventoryExist[k] = 1;
            save.inventoryName[k] = name;
            save.inventoryReqRank[k] = reqRank;
            save.inventoryType[k] = "Armor";
            save.inventorySubtype[k] = subtype;
            save.inventoryFrame[k] = frame;
            save.inventoryRange[k] = false;
            save.inventoryAttack[k] = attack;
            save.inventorySpeed[k] = speed;
            save.inventoryDefense[k] = defense;
            save.inventoryBonus[k] = bonus;
            save.inventoryAbility[k] = ability;
            save.inventoryMoreBonus[k] = moreBonus;
            save.inventoryLevel[k] = level ?? 0;
            save.inventoryMaxLevel[k] = maxLevel ?? 0;
            save.inventoryExp[k] = exp ?? 0;
            save.inventoryExpTNL[k] = expTNL ?? 0;
            save.inventoryEnhance[k] = enhance ?? 0;
            save.inventoryBonusPow[k] = bonusPow ?? 0;
            save.inventorySell[k] = sell ?? 0;
            save.inventoryExpiry[k] = expiry ?? 0 + _root.systemtimenow;
            if (noLife == false)
            {
                save.inventoryExpiry[k] = float.PositiveInfinity;
            }

            save.inventoryObtainTime[k] = _root.systemtimenow;
            save.inventoryDesc[k] = desc;
            save.inventoryCrit[k] = crit ?? 0;
            save.inventoryDexterity[k] = dexterity ?? 0;
            save.inventoryHealth[k] = health ?? 0;
            save.inventoryNoBonus[k] = noBonus ?? false;
            save.inventoryNoFuse[k] = noFuse ?? false;
            save.inventoryNoUnique[k] = noUnique ?? false;
            save.inventorySpirit[k] = spirit ?? false;
            save.inventoryGuard[k] = guard ?? false;
            save.inventoryUnob[k] = unob ?? 0;
            save.inventorySet[k] = itemSet;
            if (save.inventoryBonus[k] == "Random")
            {
                var bonusToGet = FlashRand.random(15) + 1;
                if (FlashRand.random() < 0.2)
                {
                    bonusToGet = FlashRand.random(22) + 1;
                }

                if (bonusToGet == 1 || bonusToGet == 2)
                {
                    save.inventoryBonus[k] = "Reward";
                }

                if (bonusToGet == 3 || bonusToGet == 4)
                {
                    save.inventoryBonus[k] = "EXP";
                }

                if (bonusToGet == 5 || bonusToGet == 6)
                {
                    save.inventoryBonus[k] = "Coin";
                }

                if (bonusToGet == 7 || bonusToGet == 8)
                {
                    save.inventoryBonus[k] = "Pixel";
                }

                if (bonusToGet == 9 || bonusToGet == 10)
                {
                    save.inventoryBonus[k] = "Drop Rate";
                }

                if (bonusToGet == 11 || bonusToGet == 12)
                {
                    save.inventoryBonus[k] = "Spawn Rate";
                }

                if (bonusToGet == 13)
                {
                    save.inventoryBonus[k] = "Fire Element";
                }

                if (bonusToGet == 14)
                {
                    save.inventoryBonus[k] = "Ice Element";
                }

                if (bonusToGet == 15)
                {
                    save.inventoryBonus[k] = "Wind Element";
                }

                if (bonusToGet == 16)
                {
                    save.inventoryBonus[k] = "Earth Element";
                }

                if (bonusToGet == 17)
                {
                    save.inventoryBonus[k] = "Thunder Element";
                }

                if (bonusToGet == 18)
                {
                    save.inventoryBonus[k] = "Water Element";
                }

                if (bonusToGet == 19)
                {
                    save.inventoryBonus[k] = "Light Element";
                }

                if (bonusToGet == 20)
                {
                    save.inventoryBonus[k] = "Dark Element";
                }

                if (bonusToGet == 21)
                {
                    save.inventoryBonus[k] = "Rare Monster Rate";
                }

                if (bonusToGet == 22)
                {
                    save.inventoryBonus[k] = "Epic Monster Rate";
                }

                if (save.arenaBonusPreference1 != "None" && FlashRand.random() < 0.2)
                {
                    save.inventoryBonus[k] = save.arenaBonusPreference1;
                }
                else if (save.arenaBonusPreference2 != "None" && FlashRand.random() < 0.07)
                {
                    save.inventoryBonus[k] = save.arenaBonusPreference2;
                }
            }

            if (save.inventoryAbility[k] == "Random")
            {
                var bonusToGet = FlashRand.random(25) + 1;
                if (bonusToGet == 1)
                {
                    save.inventoryAbility[k] = "Attack";
                }

                if (bonusToGet == 2)
                {
                    save.inventoryAbility[k] = "Attack Speed";
                }

                if (bonusToGet == 3)
                {
                    save.inventoryAbility[k] = "Ignore Defense";
                }

                if (bonusToGet == 4)
                {
                    save.inventoryAbility[k] = "Mastery";
                }

                if (bonusToGet == 5)
                {
                    save.inventoryAbility[k] = "Critical Chance";
                }

                if (bonusToGet == 6)
                {
                    save.inventoryAbility[k] = "Critical Damage";
                }

                if (bonusToGet == 7)
                {
                    save.inventoryAbility[k] = "Defense";
                }

                if (bonusToGet == 8)
                {
                    save.inventoryAbility[k] = "Damage Taken";
                }

                if (bonusToGet == 9)
                {
                    save.inventoryAbility[k] = "Reflect";
                }

                if (bonusToGet == 10)
                {
                    save.inventoryAbility[k] = "Accuracy";
                }

                if (bonusToGet == 11)
                {
                    save.inventoryAbility[k] = "Hit Chance";
                }

                if (bonusToGet == 12)
                {
                    save.inventoryAbility[k] = "Evasion";
                }

                if (bonusToGet == 13)
                {
                    save.inventoryAbility[k] = "Dodge Chance";
                }

                if (bonusToGet == 14)
                {
                    save.inventoryAbility[k] = "Poison Chance";
                }

                if (bonusToGet == 15)
                {
                    save.inventoryAbility[k] = "Weaken Chance";
                }

                if (bonusToGet == 16)
                {
                    save.inventoryAbility[k] = "Blind Chance";
                }

                if (bonusToGet == 17)
                {
                    save.inventoryAbility[k] = "Stun Chance";
                }

                if (bonusToGet == 18)
                {
                    save.inventoryAbility[k] = "HP";
                }

                if (bonusToGet == 19)
                {
                    save.inventoryAbility[k] = "MP";
                }

                if (bonusToGet == 20)
                {
                    save.inventoryAbility[k] = "HP Regen";
                }

                if (bonusToGet == 21)
                {
                    save.inventoryAbility[k] = "MP Regen";
                }

                if (bonusToGet == 22)
                {
                    save.inventoryAbility[k] = "Rage Depletion";
                }

                if (bonusToGet == 23)
                {
                    save.inventoryAbility[k] = "Drain";
                }

                if (bonusToGet == 24)
                {
                    save.inventoryAbility[k] = "Mana Eater";
                }

                if (bonusToGet == 25)
                {
                    save.inventoryAbility[k] = "Autosteal";
                }

                if (save.arenaAbilityPreference2 != "None" && FlashRand.random() < 0.2)
                {
                    save.inventoryAbility[k] = save.arenaAbilityPreference2;
                }
                else if (save.arenaAbilityPreference3 != "None" && FlashRand.random() < 0.07)
                {
                    save.inventoryAbility[k] = save.arenaAbilityPreference3;
                }
            }

            if (save.inventoryMoreBonus[k] == "Random")
            {
                var bonusToGet = FlashRand.random(11) + 1;
                if (bonusToGet == 1)
                {
                    save.inventoryMoreBonus[k] = "Equipment Attack";
                }

                if (bonusToGet == 2)
                {
                    save.inventoryMoreBonus[k] = "Equipment Defense";
                }

                if (bonusToGet == 3)
                {
                    save.inventoryMoreBonus[k] = "Attack Power";
                }

                if (bonusToGet == 4)
                {
                    save.inventoryMoreBonus[k] = "Defense Power";
                }

                if (bonusToGet == 5)
                {
                    save.inventoryMoreBonus[k] = "MaxHP";
                }

                if (bonusToGet == 6)
                {
                    save.inventoryMoreBonus[k] = "MaxMP";
                }

                if (bonusToGet == 7)
                {
                    save.inventoryMoreBonus[k] = "Accuracy";
                }

                if (bonusToGet == 8)
                {
                    save.inventoryMoreBonus[k] = "Evasion";
                }

                if (bonusToGet == 9)
                {
                    save.inventoryMoreBonus[k] = "EXP / Boss Kill";
                }

                if (bonusToGet == 10)
                {
                    save.inventoryMoreBonus[k] = "EXP / Rare Kill";
                }

                if (bonusToGet == 11)
                {
                    save.inventoryMoreBonus[k] = "EXP / Epic Kill";
                }

                if (save.arenaMoreBonusPreference1 != "None" && FlashRand.random() < 0.2)
                {
                    save.inventoryMoreBonus[k] = save.arenaMoreBonusPreference1;
                }
                else if (save.arenaMoreBonusPreference2 != "None" && FlashRand.random() < 0.07)
                {
                    save.inventoryMoreBonus[k] = save.arenaMoreBonusPreference2;
                }
            }

            if (k <= 130)
            {
                _root.dispNews(50, "Armor GET! [" + name + "]");
            }
            else
            {
                _root.dispNews(56, "Armor inventory full! [" + name + "] moved to Recently Deleted tab.");
            }
        }
        else
        {
            _root.dispNews(56, "Armor inventory full! [" + name + "] deleted :(");
        }

        checkFullInventory();
    }

    public static void getArenaAccessory(
        int reqRank,
        string subtype,
        int frame,
        double attack,
        double speed,
        double defense,
        double? crit = null,
        double? dexterity = null,
        double? health = null,
        double? maxLevel = null,
        double? expTNL = null,
        double? level = null,
        double? exp = null,
        double? enhance = null,
        double? bonusPow = null,
        string bonus = null,
        string ability = null,
        string moreBonus = null,
        double? sell = null,
        double? expiry = null,
        bool? noBonus = null,
        bool? noLife = null,
        bool? noUnique = null,
        bool? spirit = null,
        double? unob = null,
        string name = null,
        string desc = null,
        bool? guard = null,
        bool? filter = null)
    {
        if (filter == true && filterItem(name, sell))
        {
            return;
        }

        var k = 9999;
        var i = 501;
        while (i <= 530)
        {
            if (save.inventoryExist[i] != 1)
            {
                if (k > i)
                {
                    k = i;
                }
            }

            i += 1;
        }

        if (k == 9999)
        {
            k = (int)save.arenaDeletedSlot;
            save.arenaDeletedSlot += 1;
            if (save.arenaDeletedSlot > 830)
            {
                save.arenaDeletedSlot = 801;
            }

            deleteArenaItem(k);
        }

        if (name != null)
        {
            noBonus ??= false;
            noLife ??= true;
            noUnique ??= false;
            spirit ??= false;
            guard ??= false;
            if (level == null)
            {
                level = 1;
                GD.PrintErr("[Error]", "ERROR: " + name + " / [level] not defined.");
            }

            if (exp == null)
            {
                exp = 0;
                GD.PrintErr("[Error]", "ERROR: " + name + " / [exp] not defined.", 16711680, 9002);
            }

            if (crit == null)
            {
                crit = 10;
                dexterity = 0;
                health = 0;
                GD.PrintErr("[Error]", "ERROR: " + name + " / [crit] not defined.");
            }

            if (unob == null)
            {
                unob = 0;
                GD.PrintErr("[Error]", "ERROR: " + name + " / [unob] not defined.", 16711680, 9002);
            }

            var itemSet = checkArenaSet(name);
            if (desc ==
                "This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works.")
            {
                itemSet = 0;
            }

            if (desc == "Thank you for your donation and your continued support!")
            {
                itemSet = 0;
            }

            if (moreBonus == null)
            {
                moreBonus = "";
                GD.PrintErr("[Error]", "ERROR: " + name + " / [moreBonus] not defined.");
            }

            if (desc == null)
            {
                desc = "";
                GD.PrintErr("[Error]", "ERROR: " + name + " / [desc] not defined.");
            }

            save.inventoryExist[k] = 1;
            save.inventoryName[k] = name;
            save.inventoryReqRank[k] = reqRank;
            save.inventoryType[k] = "Accessory";
            save.inventorySubtype[k] = subtype;
            save.inventoryFrame[k] = frame;
            save.inventoryRange[k] = false;
            save.inventoryAttack[k] = attack;
            save.inventorySpeed[k] = speed;
            save.inventoryDefense[k] = defense;
            save.inventoryBonus[k] = bonus;
            save.inventoryAbility[k] = ability;
            moreBonus ??= "";
            save.inventoryMoreBonus[k] = moreBonus;
            save.inventoryLevel[k] = level ?? 0;
            save.inventoryMaxLevel[k] = maxLevel ?? 0;
            save.inventoryExp[k] = exp ?? 0;
            if (level == null)
            {
                save.inventoryLevel[k] = 1;
            }

            if (exp == null)
            {
                save.inventoryExp[k] = 0;
            }

            save.inventoryExpTNL[k] = expTNL ?? 0;
            save.inventoryEnhance[k] = enhance ?? 0;
            save.inventoryBonusPow[k] = bonusPow ?? 0;
            save.inventorySell[k] = sell ?? 0;
            save.inventoryExpiry[k] = expiry ?? 0 + _root.systemtimenow;
            if (noLife == false)
            {
                save.inventoryExpiry[k] = float.PositiveInfinity;
            }

            save.inventoryObtainTime[k] = _root.systemtimenow;
            save.inventoryDesc[k] = desc;
            save.inventoryCrit[k] = crit ?? 0;
            save.inventoryDexterity[k] = dexterity ?? 0;
            save.inventoryHealth[k] = health ?? 0;
            save.inventoryNoBonus[k] = noBonus ?? false;
            save.inventoryNoFuse[k] = false;
            save.inventoryNoUnique[k] = noUnique ?? false;
            save.inventorySpirit[k] = spirit ?? false;
            save.inventoryGuard[k] = guard ?? false;
            save.inventoryUnob[k] = unob ?? 0;
            save.inventorySet[k] = itemSet;
            if (save.inventoryBonus[k] == "Random")
            {
                var bonusToGet = FlashRand.random(22) + 1;
                if (bonusToGet == 1 || bonusToGet == 2)
                {
                    save.inventoryBonus[k] = "Reward";
                }

                if (bonusToGet == 3 || bonusToGet == 4)
                {
                    save.inventoryBonus[k] = "EXP";
                }

                if (bonusToGet == 5 || bonusToGet == 6)
                {
                    save.inventoryBonus[k] = "Coin";
                }

                if (bonusToGet == 7 || bonusToGet == 8)
                {
                    save.inventoryBonus[k] = "Pixel";
                }

                if (bonusToGet == 9 || bonusToGet == 10)
                {
                    save.inventoryBonus[k] = "Drop Rate";
                }

                if (bonusToGet == 11 || bonusToGet == 12)
                {
                    save.inventoryBonus[k] = "Spawn Rate";
                }

                if (bonusToGet == 13)
                {
                    save.inventoryBonus[k] = "Fire Element";
                }

                if (bonusToGet == 14)
                {
                    save.inventoryBonus[k] = "Ice Element";
                }

                if (bonusToGet == 15)
                {
                    save.inventoryBonus[k] = "Wind Element";
                }

                if (bonusToGet == 16)
                {
                    save.inventoryBonus[k] = "Earth Element";
                }

                if (bonusToGet == 17)
                {
                    save.inventoryBonus[k] = "Thunder Element";
                }

                if (bonusToGet == 18)
                {
                    save.inventoryBonus[k] = "Water Element";
                }

                if (bonusToGet == 19)
                {
                    save.inventoryBonus[k] = "Light Element";
                }

                if (bonusToGet == 20)
                {
                    save.inventoryBonus[k] = "Dark Element";
                }

                if (bonusToGet == 21)
                {
                    save.inventoryBonus[k] = "Rare Monster Rate";
                }

                if (bonusToGet == 22)
                {
                    save.inventoryBonus[k] = "Epic Monster Rate";
                }

                if (save.arenaBonusPreference1 != "None" && FlashRand.random() < 0.2)
                {
                    save.inventoryBonus[k] = save.arenaBonusPreference1;
                }
                else if (save.arenaBonusPreference2 != "None" && FlashRand.random() < 0.07)
                {
                    save.inventoryBonus[k] = save.arenaBonusPreference2;
                }
            }

            if (save.inventoryAbility[k] == "Random")
            {
                var bonusToGet = FlashRand.random(25) + 1;
                if (bonusToGet == 1)
                {
                    save.inventoryAbility[k] = "Attack";
                }

                if (bonusToGet == 2)
                {
                    save.inventoryAbility[k] = "Attack Speed";
                }

                if (bonusToGet == 3)
                {
                    save.inventoryAbility[k] = "Ignore Defense";
                }

                if (bonusToGet == 4)
                {
                    save.inventoryAbility[k] = "Mastery";
                }

                if (bonusToGet == 5)
                {
                    save.inventoryAbility[k] = "Critical Chance";
                }

                if (bonusToGet == 6)
                {
                    save.inventoryAbility[k] = "Critical Damage";
                }

                if (bonusToGet == 7)
                {
                    save.inventoryAbility[k] = "Defense";
                }

                if (bonusToGet == 8)
                {
                    save.inventoryAbility[k] = "Damage Taken";
                }

                if (bonusToGet == 9)
                {
                    save.inventoryAbility[k] = "Reflect";
                }

                if (bonusToGet == 10)
                {
                    save.inventoryAbility[k] = "Accuracy";
                }

                if (bonusToGet == 11)
                {
                    save.inventoryAbility[k] = "Hit Chance";
                }

                if (bonusToGet == 12)
                {
                    save.inventoryAbility[k] = "Evasion";
                }

                if (bonusToGet == 13)
                {
                    save.inventoryAbility[k] = "Dodge Chance";
                }

                if (bonusToGet == 14)
                {
                    save.inventoryAbility[k] = "Poison Chance";
                }

                if (bonusToGet == 15)
                {
                    save.inventoryAbility[k] = "Weaken Chance";
                }

                if (bonusToGet == 16)
                {
                    save.inventoryAbility[k] = "Blind Chance";
                }

                if (bonusToGet == 17)
                {
                    save.inventoryAbility[k] = "Stun Chance";
                }

                if (bonusToGet == 18)
                {
                    save.inventoryAbility[k] = "HP";
                }

                if (bonusToGet == 19)
                {
                    save.inventoryAbility[k] = "MP";
                }

                if (bonusToGet == 20)
                {
                    save.inventoryAbility[k] = "HP Regen";
                }

                if (bonusToGet == 21)
                {
                    save.inventoryAbility[k] = "MP Regen";
                }

                if (bonusToGet == 22)
                {
                    save.inventoryAbility[k] = "Rage Depletion";
                }

                if (bonusToGet == 23)
                {
                    save.inventoryAbility[k] = "Drain";
                }

                if (bonusToGet == 24)
                {
                    save.inventoryAbility[k] = "Mana Eater";
                }

                if (bonusToGet == 25)
                {
                    save.inventoryAbility[k] = "Autosteal";
                }

                if (save.arenaAbilityPreference2 != "None" && FlashRand.random() < 0.2)
                {
                    save.inventoryAbility[k] = save.arenaAbilityPreference2;
                }
                else if (save.arenaAbilityPreference3 != "None" && FlashRand.random() < 0.07)
                {
                    save.inventoryAbility[k] = save.arenaAbilityPreference3;
                }
            }

            if (save.inventoryMoreBonus[k] == "Random")
            {
                var bonusToGet = FlashRand.random(11) + 1;
                if (bonusToGet == 1)
                {
                    save.inventoryMoreBonus[k] = "Equipment Attack";
                }

                if (bonusToGet == 2)
                {
                    save.inventoryMoreBonus[k] = "Equipment Defense";
                }

                if (bonusToGet == 3)
                {
                    save.inventoryMoreBonus[k] = "Attack Power";
                }

                if (bonusToGet == 4)
                {
                    save.inventoryMoreBonus[k] = "Defense Power";
                }

                if (bonusToGet == 5)
                {
                    save.inventoryMoreBonus[k] = "MaxHP";
                }

                if (bonusToGet == 6)
                {
                    save.inventoryMoreBonus[k] = "MaxMP";
                }

                if (bonusToGet == 7)
                {
                    save.inventoryMoreBonus[k] = "Accuracy";
                }

                if (bonusToGet == 8)
                {
                    save.inventoryMoreBonus[k] = "Evasion";
                }

                if (bonusToGet == 9)
                {
                    save.inventoryMoreBonus[k] = "EXP / Boss Kill";
                }

                if (bonusToGet == 10)
                {
                    save.inventoryMoreBonus[k] = "EXP / Rare Kill";
                }

                if (bonusToGet == 11)
                {
                    save.inventoryMoreBonus[k] = "EXP / Epic Kill";
                }

                if (save.arenaMoreBonusPreference1 != "None" && FlashRand.random() < 0.2)
                {
                    save.inventoryMoreBonus[k] = save.arenaMoreBonusPreference1;
                }
                else if (save.arenaMoreBonusPreference2 != "None" && FlashRand.random() < 0.07)
                {
                    save.inventoryMoreBonus[k] = save.arenaMoreBonusPreference2;
                }
            }

            if (k <= 530)
            {
                _root.dispNews(51, "Accessory GET! [" + name + "]");
            }
            else
            {
                _root.dispNews(57, "Accessory inventory full! [" + name + "] moved to Recently Deleted tab.");
            }
        }
        else
        {
            _root.dispNews(57, "Accessory inventory full! [" + name + "] deleted :(");
        }

        checkFullInventory();
    }

    public static void trackZoneKill()
    {
        _root.treasureHunterKill = save.arenaBestiary[240];
        _root.crystalKill = save.arenaBestiary[322];
        if (double.IsNaN(_root.crystalKill))
        {
            _root.crystalKill = 0;
        }

        double value;
        if (save.arenaBestiary.TryGetValue(435, out value))
        {
            _root.crystalKill += value;
        }

        if (save.arenaBestiaryExtra.TryGetValue(322, out value))
        {
            _root.crystalKill -= value;
        }

        if (save.arenaBestiaryExtra.TryGetValue(435, out value))
        {
            _root.crystalKill -= value;
        }

        if (save.arenaBestiaryExtra.TryGetValue(240, out value))
        {
            _root.treasureHunterKill -= value;
        }

        if (double.IsNaN(_root.treasureHunterKill))
        {
            _root.treasureHunterKill = 0;
        }

        var i = 1;
        while (i <= 91)
        {
            _root.zonekill["zoneKill" + i] = save.arenaZoneKill[i];
            i += 1;
        }
    }

    public static void checkBestiary()
    {
        _root.totalRing = 0;
        var i = 1;
        while (i <= 22)
        {
            if (save.arenaRingOwned[i] == 1)
            {
                _root.totalRing += 1;
            }

            i += 1;
        }

        _root.bestiaryLevel = 0;
        _root.totalAllyTamed = 0;
        _root.totalAllyMastered = 0;
        _root.totalAllyMaxed = 0;
        _root.totalUltra = 0;
        _root.uniqueKill = 0;
        _root.uniqueUlt1 = 0;
        _root.uniqueUlt2 = 0;
        _root.uniqueUlt3 = 0;
        i = 1;
        while (i <= 500)
        {
            if (save.arenaBestiary.ContainsKey(i))
            {
                _root.uniqueKill += 1;
            }

            if (save.arenaBestiaryUlt1.ContainsKey(i))
            {
                _root.uniqueUlt1 += 1;
            }

            if (save.arenaBestiaryUlt2.ContainsKey(i))
            {
                _root.uniqueUlt2 += 1;
            }

            if (save.arenaBestiaryUlt3.ContainsKey(i))
            {
                _root.uniqueUlt3 += 1;
            }

            if (save.arenaAllyEXP.ContainsKey(i))
            {
                _root.totalAllyTamed += 1;
                if (save.arenaAllyEXP[i] >= 10000)
                {
                    _root.totalAllyMastered += 1;
                }

                if (save.arenaAllyUpgrade[i] >= 10)
                {
                    _root.totalAllyMaxed += 1;
                }

                if (save.arenaAllyUpgrade[i] == 15)
                {
                    _root.totalUltra += 1;
                }
            }

            if (save.arenaBestiary.ContainsKey(i))
            {
                if (save.arenaBestiary[i] >= 100000)
                {
                    _root.bestiaryLevel += 6;
                }
                else if (save.arenaBestiary[i] >= 10000)
                {
                    _root.bestiaryLevel += 5;
                }
                else if (save.arenaBestiary[i] >= 1000)
                {
                    _root.bestiaryLevel += 4;
                }
                else if (save.arenaBestiary[i] >= 100)
                {
                    _root.bestiaryLevel += 3;
                }
                else if (save.arenaBestiary[i] >= 10)
                {
                    _root.bestiaryLevel += 2;
                }
                else if (save.arenaBestiary[i] >= 1)
                {
                    _root.bestiaryLevel += 1;
                }
            }

            i += 1;
        }

        if (_root.saveid == 26 && _root.totalAllyTamed >= 200)
        {
            ExpCoin.clearChallenge();
        }
    }
}