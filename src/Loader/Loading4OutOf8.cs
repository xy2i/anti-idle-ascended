using Godot;
using System;
using System.Linq;
using Math = AntiIdle.Common.Flash.Math;

// MATCH: frame_5/DoAction.as
public partial class Loading4OutOf8 : Control
{
    // MATCH: frame_5/DoAction.as:addSaveVar()
    void addSaveVar(double varName, double varValue)
    {
        // NOTE: This function is stubbed out! Instead, see
        // Root.cs for the initialization values of each save.var.
    }

    public override void _Ready()
    {
        _root.autoBanned = 0;
        _root.systemclock = DateTimeOffset.Now;
        _root.systemtimenow = _root.systemclock.ToUnixTimeMilliseconds();
        var globalSetting = SharedObject.getLocal("ATG_Global", "/");
        var my_so = SharedObject.getLocal("antiIdle_file0", "/");
        var another_so = SharedObject.getLocal("antiIdle_temp", "/");

        if (isNaN(_root.saveid))
        {
            _root.saveid = -1;
        }
        if (_root.saveid == 0)
        {
            my_so = SharedObject.getLocal("antiIdle_file0", "/");
        }
        if (_root.saveid == 1)
        {
            my_so = SharedObject.getLocal("antiIdle_file1", "/");
        }
        if (_root.saveid == 2)
        {
            my_so = SharedObject.getLocal("antiIdle_file2", "/");
        }
        if (_root.saveid == 3)
        {
            my_so = SharedObject.getLocal("antiIdle_file3", "/");
        }
        if (_root.saveid == 4)
        {
            my_so = SharedObject.getLocal("antiIdle_file4", "/");
        }
        if (_root.saveid == 10)
        {
            my_so = SharedObject.getLocal("antiIdle_file10", "/");
        }
        if (_root.saveid == 11)
        {
            my_so = SharedObject.getLocal("antiIdle_file11", "/");
        }
        if (_root.saveid == 12)
        {
            my_so = SharedObject.getLocal("antiIdle_file12", "/");
        }
        if (_root.saveid == 13)
        {
            my_so = SharedObject.getLocal("antiIdle_file13", "/");
        }
        if (_root.saveid >= 20)
        {
            my_so = SharedObject.getLocal("antiIdle_file" + _root.saveid, "/");
        }
        if (_root.craftTool == true)
        {
            my_so = SharedObject.getLocal("tukkun_craftSim", "/");
        }
        // TODO: add save loading code here
        var save = my_so;
        var saveGlobal = _root.globalSetting;
        if (_root.saveGlobal.graphicQuality == undefined)
        {
            _root.saveGlobal.graphicQuality = "HIGH";
            _root.saveGlobal.keyboardLayout = "qwerty";
        }
        if (_root.saveGlobal.showTitle == null)
        {
            _root.saveGlobal.showTitle = true;
        }
        if (_root.saveGlobal.aurianMode == null)
        {
            _root.saveGlobal.aurianMode = false;
        }
        if (isNaN(_root.saveGlobal.latestVersion))
        {
            _root.saveGlobal.latestVersion = 1380;
        }
        if (_root.saveGlobal.speedrunUnlock0 == null)
        {
            _root.saveGlobal.speedrunUnlock0 = false;
            _root.saveGlobal.speedrunUnlock1 = false;
            _root.saveGlobal.speedrunUnlock2 = false;
            _root.saveGlobal.speedrunUnlock3 = false;
        }
        if (_root.saveGlobal.challengePerfect == null)
        {
            _root.saveGlobal.challengeTime = new();
            _root.saveGlobal.challengeAttempted = new();
            _root.saveGlobal.challengePerfect = new();
        }
        if (_root.saveGlobal.breakTab1 == null)
        {
            _root.saveGlobal.breakTab1 = new();
            _root.saveGlobal.breakTab2 = new();
            _root.saveGlobal.breakTab3 = new();
            _root.saveGlobal.breakTab4 = new();
            _root.saveGlobal.breakAll = new();
            _root.saveGlobal.breakFeature = new();
            _root.saveGlobal.breakR = new();
            _root.saveGlobal.breakG = new();
            _root.saveGlobal.breakB = new();
        }
        if (_root.saveGlobal.adminMode == null)
        {
            _root.saveGlobal.adminMode = "";
        }
        if (_root.saveGlobal.defTab == null)
        {
            _root.saveGlobal.defTab = 2;
        }
        if (_root.saveGlobal.selectedSave == null)
        {
            _root.saveGlobal.selectedSave = 0;
            _root.saveGlobal.playTime = new(["?", "?", "?", "?"]);
            _root.saveGlobal.curLevel = new(["", "", "", ""]);
            _root.saveGlobal.ascCount = new(["", "", "", ""]);
        }
        if (_root.saveGlobal.skipMenu == null)
        {
            _root.saveGlobal.skipMenu = false;
        }
        if (_root.saveGlobal.keyArenaZ == null)
        {
            _root.saveGlobal.keyArenaZ = 90;
            _root.saveGlobal.keyArenaX = 88;
            _root.saveGlobal.keyArenaC = 67;
            _root.saveGlobal.keyArenaV = 86;
            _root.saveGlobal.keyArenaB = 66;
            _root.saveGlobal.keyArenaA = 65;
            _root.saveGlobal.keyArenaS = 83;
            _root.saveGlobal.keyArenaD = 68;
            _root.saveGlobal.keyArenaF = 70;
            _root.saveGlobal.keyArenaQ = 81;
            _root.saveGlobal.keyArenaW = 87;
            _root.saveGlobal.keyPongUp1 = 38;
            _root.saveGlobal.keyPongUp2 = 87;
            _root.saveGlobal.keyPongDown1 = 40;
            _root.saveGlobal.keyPongDown2 = 83;
            _root.saveGlobal.keyMmrLeft1 = 37;
            _root.saveGlobal.keyMmrLeft2 = 65;
            _root.saveGlobal.keyMmrDown1 = 40;
            _root.saveGlobal.keyMmrDown2 = 83;
            _root.saveGlobal.keyMmrRight1 = 39;
            _root.saveGlobal.keyMmrRight2 = 68;
            _root.saveGlobal.keyBalLeft1 = 37;
            _root.saveGlobal.keyBalLeft2 = 65;
            _root.saveGlobal.keyBalDown1 = 40;
            _root.saveGlobal.keyBalDown2 = 83;
            _root.saveGlobal.keyBalRight1 = 39;
            _root.saveGlobal.keyBalRight2 = 68;
        }
        if (_root.saveid <= 3)
        {
            if (_root.save.dbExp > 100 || _root.save.dbCoin > 100 || _root.save.dbGreenCoin > 100 || _root.save.dbBlueCoin > 100)
            {
                if (_root.save.safeHacking == false && _root.save.submitScore == true)
                {
                    //_root.my_so.clear();
                    GetTree().ChangeSceneToFile("src/Loader/Loading1OutOf8.tscn");
                }
            }
        }
        if (_root.save.ver < 1)
        {
            if (_root.save.boostMax > 1300)
            {
                _root.save.boostMax = 1300;
            }
            _root.save.ver = 1;
        }
        if (_root.save.event_explosionTour == 1 && _root.save.ver < 2)
        {
            _root.save.mysteryBox[4] += 4;
            _root.save.ver = 2;
        }
        if (_root.save.ver < 4)
        {
            if (_root.save.careerLevel[3] > 30)
            {
                _root.save.careerLevel[3] = 30;
            }
            _root.save.ver = 4;
        }
        if (_root.save.ver < 7)
        {
            if (_root.save.arcadeToken > 100)
            {
                _root.save.greenCoin += 1000 * (_root.save.arcadeToken - 100);
            }
            _root.save.arcadeToken = 25;
            _root.save.ver = 7;
        }
        var i = 0;
        if (_root.save.ver < 8)
        {
            i = 1;
            while (i <= 24)
            {
                if (_root.save.inventoryName[i] == "Pre-Explosion Trophy")
                {
                    _root.save.inventoryExpiry[i] = 7776000000 + _root.systemtimenow;
                }
                i++;
            }
            i = 101;
            while (i <= 124)
            {
                if (_root.save.inventoryName[i] == "Pre-Explosion Hat" || _root.save.inventoryName[i] == "Pre-Explosion Shirt" || _root.save.inventoryName[i] == "Pre-Explosion Gloves" || _root.save.inventoryName[i] == "Pre-Explosion Pants" || _root.save.inventoryName[i] == "Pre-Explosion Shoes")
                {
                    _root.save.inventoryExpiry[i] = 7776000000 + _root.systemtimenow;
                }
                i++;
            }
            _root.save.ver = 8;
        }
        if (_root.save.ver < 9)
        {
            i = 101;
            while (i <= 124)
            {
                if (_root.save.inventoryName[i] == "Stripped Nurse Hat")
                {
                    _root.save.inventoryName[i] = "Stripper Nurse Hat";
                }
                if (_root.save.inventoryName[i] == "Stripped Nurse Shirt")
                {
                    _root.save.inventoryName[i] = "Stripper Nurse Shirt";
                }
                if (_root.save.inventoryName[i] == "Stripped Nurse Gloves")
                {
                    _root.save.inventoryName[i] = "Stripper Nurse Gloves";
                }
                if (_root.save.inventoryName[i] == "Stripped Nurse Pants")
                {
                    _root.save.inventoryName[i] = "Stripper Nurse Pants";
                }
                if (_root.save.inventoryName[i] == "Stripped Nurse Shoes")
                {
                    _root.save.inventoryName[i] = "Stripper Nurse Shoes";
                }
                i++;
            }
            _root.save.ver = 9;
        }
        if (_root.save.ver < 10)
        {
            i = 1;
            while (i <= 12)
            {
                if (_root.save.ripoffCard[i] > 5)
                {
                    _root.save.ripoffCard[i] = 5;
                    _root.save.blueCoin += 250;
                }
                i++;
            }
            _root.save.ver = 10;
        }
        if (_root.save.ver < 11)
        {
            if (_root.save.mysteryBox[4] > 100)
            {
                _root.save.mysteryBox[4] = 100;
            }
            _root.save.ver = 11;
        }
        if (_root.save.ver < 12)
        {
            var bcToRefund = 0.0;
            bcToRefund += _root.save.ripoffCard[5] * 2500;
            bcToRefund += _root.save.ripoffCard[6] * 2000;
            bcToRefund += _root.save.ripoffCard[7] * 1500;
            bcToRefund += _root.save.ripoffCard[8] * 1000;
            bcToRefund += _root.save.ripoffCard[9] * 750;
            bcToRefund += _root.save.ripoffCard[10] * 1250;
            bcToRefund += _root.save.ripoffCard[11] * 1750;
            bcToRefund += _root.save.ripoffCard[12] * 2250;
            if (bcToRefund < 0)
            {
                bcToRefund = 0;
            }
            if (bcToRefund > 100000)
            {
                bcToRefund = 100000;
            }
            _root.save.blueCoin += bcToRefund;
            i = 5;
            while (i <= 12)
            {
                if (_root.save.ripoffCard[i] > 0)
                {
                    _root.save.ripoffCard[i] = 0;
                }
                i++;
            }
            i = 1;
            while (i <= 24)
            {
                if (_root.save.inventoryName[i] == "Pre-Explosion Trophy" && _root.save.inventoryBonusPow[i] >= 175)
                {
                    _root.save.inventoryAttack[i] -= 175;
                    _root.save.inventoryBonusPow[i] -= 175;
                    _root.save.inventoryEnhance[i] -= 1;
                    _root.save.refund_relic = 1;
                }
                i++;
            }
            _root.save.ver = 12;
        }
        if (_root.save.ver < 13)
        {
            i = 1;
            while (i <= 24)
            {
                if (_root.save.inventoryName[i] == "Pre-Explosion Trophy" && _root.save.inventoryBonusPow[i] >= 100)
                {
                    _root.save.inventoryAttack[i] -= _root.save.inventoryBonusPow[i];
                    _root.save.inventoryEnhance[i] = 10;
                }
                i++;
            }
            _root.save.ver = 13;
        }
        if (_root.save.ver < 15)
        {
            i = 1;
            while (i <= 24)
            {
                if (_root.save.inventoryName[i] == "Pre-Explosion Trophy")
                {
                    _root.save.inventoryAttack[i] += 150;
                }
                i++;
            }
            _root.save.ver = 15;
        }
        if (_root.save.ver < 16)
        {
            _root.save.ver = 16;
        }
        if (_root.save.ver < 17)
        {
            if (_root.save.stadiumBestTime < 7000)
            {
                _root.save.stadiumBestTime = 8000;
            }
            _root.save.ver = 17;
        }
        if (_root.save.ver < 18)
        {
            _root.save.arenaFreeReset += Math.floor(_root.save.arenaKommanderComplete / 10);
            _root.save.ver = 18;
        }
        if (_root.save.ver < 19)
        {
            if (_root.save.arenaLevel >= 180)
            {
                _root.save.arenaFreeReset += 1;
            }
            _root.save.mysteryBox[6] = 0;
            _root.save.mysteryBoxCollect6 = new();
            _root.save.ver = 19;
        }
        if (_root.save.ver < 20)
        {
            if (_root.save.arenaLevel >= 180)
            {
                _root.save.arenaSP += _root.save.arenaLevel - 180;
            }
            _root.save.ver = 20;
        }
        if (_root.save.ver < 21)
        {
            if (_root.save.arenaLevel > 250)
            {
                _root.save.arenaSP -= _root.save.arenaLevel - 250;
                if (_root.save.arenaSP < 0)
                {
                    i = 1;
                    while (i <= 100)
                    {
                        if (_root.save.arenaSkill[i] > 0)
                        {
                            _root.save.arenaSP += _root.save.arenaSkill[i];
                            _root.save.arenaSkill[i] = 0;
                        }
                        i++;
                    }
                }
            }
            _root.save.ver = 21;
        }
        if (_root.save.ver < 23)
        {
            i = 1;
            while (i <= 24)
            {
                if (_root.save.inventoryName[i] == "Elite Grenades")
                {
                    _root.save.inventorySpeed[i] = 2;
                    _root.save.inventorySell[i] = 1000000;
                }
                i++;
            }
            _root.save.ver = 23;
        }
        if (_root.save.ver < 26)
        {
            _root.save.stupidity = _root.save.banned;
            _root.save.banPenalty = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
            _root.save.ver = 26;
        }
        if (_root.save.ver < 28)
        {
            i = 1;
            while (i <= 24)
            {
                if (_root.save.inventoryName[i] == "Elite Grenades" || _root.save.inventoryName[i] == "Sword of Ascendant")
                {
                    _root.save.inventoryNoLife[i] = true;
                }
                if (_root.save.inventoryName[i] == "Bronze Trophy" || _root.save.inventoryName[i] == "Silver Trophy" || _root.save.inventoryName[i] == "Gold Trophy" || _root.save.inventoryName[i] == "Bronze Endurance Trophy" || _root.save.inventoryName[i] == "Silver Endurance Trophy" || _root.save.inventoryName[i] == "Gold Endurance Trophy")
                {
                    _root.save.inventoryNoLife[i] = true;
                }
                if (_root.save.inventoryBonusPow[i] > 1000)
                {
                    _root.save.inventoryAttack[i] = 10;
                }
                i++;
            }
            i = 201;
            while (i <= 224)
            {
                if (_root.save.inventoryName[i] == "Weapon Alien Rock Lv. 1" || _root.save.inventoryName[i] == "Weapon Alien Rock Lv. 2" || _root.save.inventoryName[i] == "Weapon Alien Rock Lv. 3" || _root.save.inventoryName[i] == "Weapon Alien Rock Lv. 4" || _root.save.inventoryName[i] == "Weapon Alien Rock Lv. 5" || _root.save.inventoryName[i] == "Weapon Alien Rock Lv. 6" || _root.save.inventoryName[i] == "Weapon Alien Rock Lv. 7" || _root.save.inventoryName[i] == "Armor Alien Rock Lv. 1" || _root.save.inventoryName[i] == "Armor Alien Rock Lv. 2" || _root.save.inventoryName[i] == "Armor Alien Rock Lv. 3" || _root.save.inventoryName[i] == "Armor Alien Rock Lv. 4" || _root.save.inventoryName[i] == "Armor Alien Rock Lv. 5" || _root.save.inventoryName[i] == "Armor Alien Rock Lv. 6" || _root.save.inventoryName[i] == "Armor Alien Rock Lv. 7")
                {
                    _root.save.inventoryAbility[i] = "";
                    _root.save.inventorySell[i] = 4000;
                }
                i++;
            }
            _root.save.ver = 28;
        }
        if (_root.save.ver < 29)
        {
            _root.save.raidTower = 0;
            _root.save.ver = 29;
        }
        if (_root.save.ver < 31)
        {
            i = 101;
            while (i <= 124)
            {
                if (_root.save.inventoryName[i] == "Anniversary Hat")
                {
                    _root.save.inventoryFrame[i] = 13;
                }
                if (_root.save.inventoryName[i] == "Halloween Hat")
                {
                    _root.save.inventoryFrame[i] = 12;
                }
                if (_root.save.inventoryName[i] == "Halloween Shirt")
                {
                    _root.save.inventoryFrame[i] = 11;
                }
                if (_root.save.inventoryName[i] == "Halloween Gloves")
                {
                    _root.save.inventoryFrame[i] = 10;
                }
                if (_root.save.inventoryName[i] == "Halloween Pants")
                {
                    _root.save.inventoryFrame[i] = 10;
                }
                if (_root.save.inventoryName[i] == "Halloween Shoes")
                {
                    _root.save.inventoryFrame[i] = 10;
                }
                i++;
            }
            _root.save.ver = 31;
        }
        if (_root.save.ver < 32)
        {
            i = 1;
            while (i <= 24)
            {
                if (_root.save.inventoryMaxLevel[i] > 22 && _root.save.inventoryMaxLevel[i] < 100)
                {
                    _root.save.inventoryAttack[i] -= _root.save.inventoryMaxLevel[i] * 4;
                    _root.save.inventoryEnhance[i] = 9;
                    _root.save.inventoryBonusPow[i] -= _root.save.inventoryMaxLevel[i] * 4;
                    _root.save.inventoryMaxLevel[i] = 1;
                    _root.save.inventoryLevel[i] = 1;
                }
                i++;
            }
            _root.save.ver = 32;
        }
        if (_root.save.ver < 36)
        {
            _root.save.buttonPurple = _root.save.buttonPerfect;
            _root.save.totalMMR = _root.save.highMMR[1] + _root.save.highMMR[2] + _root.save.highMMR[3] + _root.save.highMMR[4];
            _root.save.arcade100kMedal = Math.floor((_root.save.totalPong + _root.save.totalAvoidance + _root.save.totalMath + _root.save.totalWhack + _root.save.totalMind + _root.save.totalMMR) / 133700);
            _root.save.ver = 36;
        }
        if (_root.save.ver < 37)
        {
            if (_root.save.petBestLevel > 0 && _root.save.petExist == 0)
            {
                _root.save.coinLag += 250000000;
            }
            _root.save.ver = 37;
        }
        if (_root.save.ver < 38)
        {
            if (_root.save.arenaZoneKill[49] > 0)
            {
                i = 1;
                while (i <= 16)
                {
                    _root.save.arenaRingOwned[i] = 1;
                    i++;
                }
            }
            _root.save.ver = 38;
        }
        if (_root.save.ver < 39)
        {
            if (_root.save.petBestLevel > 0 && _root.save.petStat[1] + _root.save.petStat[2] + _root.save.petStat[3] + _root.save.petStat[4] + _root.save.petStat[5] + _root.save.petStat[6] + _root.save.petStat[7] + _root.save.petStat[8] < _root.save.petBestLevel * 8)
            {
                _root.save.petExist = 1;
                _root.save.petHealth = 100;
                _root.save.petFullness = 100;
                _root.save.petStat[1] = _root.save.petBestLevel;
                _root.save.petStat[2] = _root.save.petBestLevel;
                _root.save.petStat[3] = _root.save.petBestLevel;
                _root.save.petStat[4] = _root.save.petBestLevel;
                _root.save.petStat[5] = _root.save.petBestLevel;
                _root.save.petStat[6] = _root.save.petBestLevel;
                _root.save.petStat[7] = _root.save.petBestLevel;
                _root.save.petStat[8] = _root.save.petBestLevel;
                _root.save.coinLag += 1000000000;
                _root.save.blueCoin += 10000;
            }
            _root.save.ver = 39;
        }
        if (_root.save.ver < 41)
        {
            i = 1;
            while (i <= 24)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    _root.save.inventoryNoRecycle[i] = false;
                    _root.save.inventorySpirit[i] = false;
                    _root.save.inventoryCrit[i] = 10;
                    _root.save.inventoryDexterity[i] = 0;
                    _root.save.inventoryHealth[i] = 0;
                }
                i++;
            }
            i = 101;
            while (i <= 124)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    _root.save.inventoryNoRecycle[i] = false;
                    _root.save.inventorySpirit[i] = false;
                    _root.save.inventoryCrit[i] = 10;
                    _root.save.inventoryDexterity[i] = 0;
                    _root.save.inventoryHealth[i] = 0;
                }
                i++;
            }
            i = 201;
            while (i <= 224)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    _root.save.inventoryNoRecycle[i] = false;
                    _root.save.inventorySpirit[i] = false;
                    _root.save.inventoryCrit[i] = 0;
                    _root.save.inventoryDexterity[i] = 0;
                    _root.save.inventoryHealth[i] = 0;
                }
                i++;
            }
            _root.save.ver = 41;
        }
        if (_root.save.ver < 42)
        {
            _root.save.lolProfit += Math.floor(_root.save.petStat[7] * (0.5 + _root.save.petStat[7] / 2) * _root.save.lolPrice[10] * 0.92);
            _root.save.ver = 42;
        }
        if (_root.save.ver < 43)
        {
            if (_root.save.expGraph[5] >= 210000000000 || _root.save.expGraph[6] >= 210000000000 || _root.save.expGraph[7] >= 210000000000 || _root.save.lolProfit >= 2500000000 || isNaN(_root.save.lolProfit))
            {
                _root.save.currentExp -= _root.save.expGraph[5] + _root.save.expGraph[6] + _root.save.expGraph[7];
                if (_root.save.lolProfit > 200000000)
                {
                    _root.save.lolProfit = 200000000;
                }
                if (_root.save.blueCoin > 100000)
                {
                    _root.save.blueCoin = 100000;
                }
                _root.save.mysteryBox[6] += 1;
            }
            _root.save.greenCoin += Math.floor(_root.save.lolGems[10] * _root.save.lolPrice[10]);
            _root.save.lolProfit += Math.floor(_root.save.lolGems[10] * _root.save.lolPrice[10]);
            _root.save.lolSpent[10] = 0;
            _root.save.lolGems[10] = 0;
            if (_root.save.petExist == 1)
            {
                _root.save.petFullness += 24;
                _root.save.petHealth += 12;
            }
            _root.save.ver = 43;
        }
        if (_root.save.ver < 46)
        {
            i = 1;
            while (i <= 24)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    _root.save.inventoryCrit[i] = 10;
                    _root.save.inventoryDesc[i] = "";
                    var tempSS = _root.save.inventoryName[i].substr(1, 4);
                    if (tempSS == "[O] ")
                    {
                        _root.save.inventoryName[i] = _root.save.inventoryName[i].substr(5, _root.save.inventoryName[i].Length);
                        _root.save.inventoryDesc[i] = "Item obtained before The Explosion update.";
                    }
                }
                i++;
            }
            i = 101;
            while (i <= 124)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    _root.save.inventoryCrit[i] = 10;
                    _root.save.inventoryDesc[i] = "";
                    var tempSS = _root.save.inventoryName[i].substr(1, 4);
                    if (tempSS == "[O] ")
                    {
                        _root.save.inventoryName[i] = _root.save.inventoryName[i].substr(5, _root.save.inventoryName[i].Length);
                        _root.save.inventoryDesc[i] = "Item obtained before The Explosion update.";
                    }
                }
                i++;
            }
            i = 201;
            while (i <= 224)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    _root.save.inventoryDesc[i] = "";
                }
                i++;
            }
            _root.save.ver = 46;
        }
        if (_root.save.ver < 47)
        {
            _root.save.ver = 47;
        }
        if (_root.save.ver < 48)
        {
            i = 1;
            while (i <= 24)
            {
                if (_root.save.inventoryExist[i] == 1 && isNaN(_root.save.inventoryDexterity[i]))
                {
                    _root.save.inventoryDexterity[i] = 0;
                    _root.save.inventoryHealth[i] = 0;
                }
                i++;
            }
            i = 101;
            while (i <= 124)
            {
                if (_root.save.inventoryExist[i] == 1 && isNaN(_root.save.inventoryDexterity[i]))
                {
                    _root.save.inventoryDexterity[i] = 0;
                    _root.save.inventoryHealth[i] = 0;
                }
                i++;
            }
            i = 201;
            while (i <= 224)
            {
                if (_root.save.inventoryExist[i] == 1 && isNaN(_root.save.inventoryDexterity[i]))
                {
                    _root.save.inventoryDexterity[i] = 0;
                    _root.save.inventoryHealth[i] = 0;
                }
                i++;
            }
            _root.save.ver = 48;
        }
        if (_root.save.ver < 51)
        {
            i = 101;
            while (i <= 124)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    _root.save.inventoryCrit[i] = 10;
                }
                i++;
            }
            _root.save.ver = 51;
        }
        if (_root.save.ver < 101)
        {
            if (_root.save.arenaZoneKill.ContainsKey(100))
            {
                i = 50;
                while (i <= 100)
                {
                    _root.save.arenaZoneKill[i] = 0;
                    i++;
                }
            }
            _root.save.arenaAttack += 60 * (_root.save.arenaLevel - 1);
            _root.save.arenaDefense += 60 * (_root.save.arenaLevel - 1);
            _root.save.arenaAccuracy += 6 * (_root.save.arenaLevel - 1);
            _root.save.arenaEvasion += 6 * (_root.save.arenaLevel - 1);
            i = 201;
            while (i <= 224)
            {
                if (_root.save.inventoryFrame[i] >= 151 && _root.save.inventoryFrame[i] <= 170)
                {
                    _root.save.inventoryFrame[i] += 50;
                }
                if (_root.save.inventoryFrame[i] >= 101 && _root.save.inventoryFrame[i] <= 106)
                {
                    _root.save.inventoryFrame[i] += 200;
                }
                if (_root.save.inventoryFrame[i] >= 51 && _root.save.inventoryFrame[i] <= 100)
                {
                    _root.save.inventoryFrame[i] += 50;
                }
                if (_root.save.inventoryFrame[i] >= 8 && _root.save.inventoryFrame[i] <= 9)
                {
                    _root.save.inventoryFrame[i] += 43;
                }
                if (_root.save.inventoryFrame[i] >= 108 && _root.save.inventoryFrame[i] <= 109)
                {
                    _root.save.inventoryFrame[i] += 43;
                }
                i++;
            }
            _root.save.mysteryBoxCollect[3] = new();
            _root.save.questCount = _root.save.bestLevel;
            if (!isNaN(_root.save.totalQuests))
            {
                _root.save.questTotal = _root.save.totalQuests;
                _root.save.questToken += _root.save.questTotal * 5;
            }
            _root.save.ver = 101;
        }
        if (_root.save.ver < 104)
        {
            if (_root.save.fishLevel > 1 && _root.kongregate_username != undefined)
            {
                //_root.my_so.clear();
                GetTree().ChangeSceneToFile("src/Loader/Loading1OutOf8.tscn");
            }
            _root.save.ver = 104;
        }
        if (_root.save.ver < 106)
        {
            var resetPoint = 0.0;
            i = 1;
            while (i <= 100)
            {
                if (_root.save.arenaSkill[i] > 0)
                {
                    resetPoint += _root.save.arenaSkill[i];
                }
                i++;
            }
            _root.save.arenaSP += resetPoint;
            _root.save.arenaTotalSkill = 0;
            i = 1;
            while (i <= 100)
            {
                if (_root.save.arenaSkill[i] > 0)
                {
                    _root.save.arenaSkill[i] = 0;
                }
                i++;
            }
            _root.save.ver = 106;
        }
        if (_root.save.ver < 107)
        {
            _root.save.ver = 107;
        }
        if (_root.save.ver < 108)
        {
            _root.save.ver = 108;
        }
        if (_root.save.ver < 110)
        {
            i = 201;
            while (i <= 224)
            {
                if (_root.save.inventorySubtype[i] == "Enhancer Protection Enhancer")
                {
                    _root.save.inventorySubtype[i] = "Enhancer Destruction Enhancer";
                }
                if (_root.save.inventoryName[i] == "Small Master Potion")
                {
                    _root.save.inventoryFrame[i] = 6;
                }
                if (_root.save.inventoryName[i] == "Small Reward Potion")
                {
                    _root.save.inventoryFrame[i] = 11;
                }
                if (_root.save.questSubtype == "Another Graden Tree")
                {
                    _root.save.questSubtype = "Another Garden Tree";
                }
                i++;
            }
            if (_root.save.questSubtype == "Another Graden Tree")
            {
                _root.save.questSubtype = "Another Garden Tree";
            }
            _root.save.ver = 110;
        }
        if (_root.save.ver < 111)
        {
            _root.save.arenaPixel = _root.save.arenaPixelMax;
            _root.save.ver = 111;
        }
        if (_root.save.ver < 112)
        {
            if (_root.save.inventoryExist[_root.save.arenaPendant] == 0)
            {
                _root.save.arenaPendant = 0;
            }
            _root.save.ver = 112;
        }
        if (_root.save.ver < 113)
        {
            _root.save.arenaCraft = _root.save.arenaCraftMax;
            _root.save.ver = 113;
        }
        if (_root.save.ver < 114)
        {
            _root.save.ver = 114;
        }
        if (_root.save.ver < 115)
        {
            if (_root.save.stadiumToken < 0)
            {
                _root.save.stadiumToken = 0;
                _root.save.ver = 116;
            }
        }
        if (_root.save.ver < 116)
        {
            if (_root.save.inventoryExist[_root.save.arenaPendant] == 0)
            {
                _root.save.arenaPendant = 0;
            }
            _root.save.ver = 116;
        }
        if (_root.save.ver < 117)
        {
            _root.save.ver = 117;
        }
        if (_root.save.ver < 118)
        {
            if (_root.save.arenaMaxDamage > 700000000000)
            {
                _root.save.arenaMaxDamage = 0;
                _root.save.arenaWeakenAffected = 1;
            }
            _root.save.ver = 118;
        }
        if (_root.save.ver < 119)
        {
            if (_root.save.gDifficulty >= 2)
            {
                _root.save.achEarnTime[1800] = _root.systemtimenow;
                _root.save.achEarnTime[1801] = _root.systemtimenow;
                _root.save.achEarnTime[1802] = _root.systemtimenow;
                _root.save.achEarnTime[1803] = _root.systemtimenow;
                _root.save.achEarnTime[1850] = _root.systemtimenow;
                _root.save.achEarnTime[1851] = _root.systemtimenow;
                _root.save.achEarnTime[1852] = _root.systemtimenow;
                _root.save.achEarnTime[1900] = _root.systemtimenow;
                _root.save.achEarnTime[1901] = _root.systemtimenow;
                _root.save.achEarnTime[1902] = _root.systemtimenow;
                _root.save.achEarnTime[1903] = _root.systemtimenow;
                _root.save.achEarnTime[1904] = _root.systemtimenow;
                _root.save.achEarnTime[1905] = _root.systemtimenow;
                _root.save.achEarnTime[1906] = _root.systemtimenow;
                _root.save.achEarnTime[1907] = _root.systemtimenow;
                _root.save.achEarnTime[1950] = _root.systemtimenow;
                _root.save.achEarnTime[1951] = _root.systemtimenow;
                _root.save.achEarnTime[1952] = _root.systemtimenow;
                _root.save.achEarnTime[1953] = _root.systemtimenow;
                _root.save.achEarnTime[1954] = _root.systemtimenow;
                _root.save.achEarnTime[1955] = _root.systemtimenow;
            }
            if (_root.save.gDifficulty >= 3)
            {
                _root.save.achEarnTime[2300] = _root.systemtimenow;
                _root.save.achEarnTime[2301] = _root.systemtimenow;
                _root.save.achEarnTime[2302] = _root.systemtimenow;
                _root.save.achEarnTime[2303] = _root.systemtimenow;
                _root.save.achEarnTime[2304] = _root.systemtimenow;
                _root.save.achEarnTime[2305] = _root.systemtimenow;
                _root.save.achEarnTime[3200] = _root.systemtimenow;
                _root.save.achEarnTime[3201] = _root.systemtimenow;
                _root.save.achEarnTime[3202] = _root.systemtimenow;
                _root.save.achEarnTime[3203] = _root.systemtimenow;
                _root.save.achEarnTime[3204] = _root.systemtimenow;
                _root.save.achEarnTime[3205] = _root.systemtimenow;
                _root.save.achEarnTime[4900] = _root.systemtimenow;
                _root.save.achEarnTime[4910] = _root.systemtimenow;
                _root.save.achEarnTime[4920] = _root.systemtimenow;
                _root.save.achEarnTime[4930] = _root.systemtimenow;
                _root.save.achEarnTime[4940] = _root.systemtimenow;
                _root.save.achEarnTime[4950] = _root.systemtimenow;
                _root.save.achEarnTime[4960] = _root.systemtimenow;
                _root.save.achEarnTime[4970] = _root.systemtimenow;
            }
            _root.save.ver = 119;
        }
        if (_root.save.ver < 120)
        {
            i = 1;
            while (i <= 30)
            {
                if (_root.save.inventoryDesc[i] == "Explosion Crate Reward" && _root.save.inventoryName[i] == "Elite Grenades")
                {
                    _root.save.inventoryAttack[i] -= 500;
                    _root.save.inventoryNoLife[i] = true;
                }
                i++;
            }
            _root.save.ver = 120;
        }
        if (_root.save.ver < 121)
        {
            i = 201;
            while (i <= 224)
            {
                if (_root.save.inventorySubtype[i] == "Enhancer Protection Enhancer")
                {
                    _root.save.inventorySubtype[i] = "Enhancer Destruction Enhancer";
                }
                i++;
            }
            _root.save.ver = 121;
        }
        if (_root.save.ver < 122)
        {
            i = 1;
            while (i <= 430)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Burned Rope" || _root.save.inventoryName[i] == "Special Wand" || _root.save.inventoryName[i] == "Bronze Pickaxe")
                    {
                        _root.save.inventoryNoFuse[i] = true;
                    }
                    else
                    {
                        _root.save.inventoryNoFuse[i] = false;
                    }
                }
                i++;
            }
            i = 401;
            while (i <= 430)
            {
                if (_root.save.inventoryName[i] == "Large Power Potion")
                {
                    _root.save.inventoryFrame[i] = 3;
                    _root.save.inventoryAttack[i] = 1800;
                }
                if (_root.save.inventoryName[i] == "Large Reward Potion")
                {
                    _root.save.inventoryFrame[i] = 13;
                    _root.save.inventoryAttack[i] = 1800;
                }
                i++;
            }
            _root.save.ver = 122;
        }
        if (_root.save.ver < 123)
        {
            i = 1;
            while (i <= 30)
            {
                if (_root.save.inventoryNoFuse[i] == true)
                {
                    if (_root.save.inventoryName[i] == "Silver Pickaxe")
                    {
                        _root.save.inventorySpeed[i] = 6;
                        _root.save.inventoryLevel[i] = 2;
                        _root.save.inventoryEnhance[i] = 9;
                        _root.save.inventoryMaxLevel[i] = 2;
                        _root.save.inventoryCrit[i] = 6;
                    }
                    if (_root.save.inventoryName[i] == "Golden Pickaxe")
                    {
                        _root.save.inventorySpeed[i] = 7;
                        _root.save.inventoryLevel[i] = 3;
                        _root.save.inventoryEnhance[i] = 9;
                        _root.save.inventoryMaxLevel[i] = 3;
                        _root.save.inventoryCrit[i] = 9;
                    }
                    if (_root.save.inventoryName[i] == "Diamond Pickaxe")
                    {
                        _root.save.inventorySpeed[i] = 8;
                        _root.save.inventoryLevel[i] = 3;
                        _root.save.inventoryEnhance[i] = 9;
                        _root.save.inventoryMaxLevel[i] = 3;
                        _root.save.inventoryCrit[i] = 12;
                    }
                    if (_root.save.inventoryName[i] == "Master\'s Pickaxe")
                    {
                        _root.save.inventorySpeed[i] = 9;
                        _root.save.inventoryLevel[i] = 4;
                        _root.save.inventoryEnhance[i] = 10;
                        _root.save.inventoryMaxLevel[i] = 4;
                        _root.save.inventoryCrit[i] = 15;
                    }
                }
                i++;
            }
            i = 301;
            while (i <= 330)
            {
                if (_root.save.inventoryNoFuse[i] == true)
                {
                    if (_root.save.inventoryName[i] == "Silver Pickaxe")
                    {
                        _root.save.inventorySpeed[i] = 6;
                        _root.save.inventoryLevel[i] = 2;
                        _root.save.inventoryEnhance[i] = 9;
                        _root.save.inventoryLevel[i] = 2;
                        _root.save.inventoryMaxLevel[i] = 2;
                        _root.save.inventoryCrit[i] = 6;
                    }
                    if (_root.save.inventoryName[i] == "Golden Pickaxe")
                    {
                        _root.save.inventorySpeed[i] = 7;
                        _root.save.inventoryLevel[i] = 3;
                        _root.save.inventoryEnhance[i] = 9;
                        _root.save.inventoryMaxLevel[i] = 3;
                        _root.save.inventoryCrit[i] = 9;
                    }
                    if (_root.save.inventoryName[i] == "Diamond Pickaxe")
                    {
                        _root.save.inventorySpeed[i] = 8;
                        _root.save.inventoryLevel[i] = 3;
                        _root.save.inventoryEnhance[i] = 9;
                        _root.save.inventoryLevel[i] = 3;
                        _root.save.inventoryMaxLevel[i] = 3;
                        _root.save.inventoryCrit[i] = 12;
                    }
                    if (_root.save.inventoryName[i] == "Master\'s Pickaxe")
                    {
                        _root.save.inventorySpeed[i] = 9;
                        _root.save.inventoryLevel[i] = 4;
                        _root.save.inventoryEnhance[i] = 10;
                        _root.save.inventoryLevel[i] = 4;
                        _root.save.inventoryMaxLevel[i] = 4;
                        _root.save.inventoryCrit[i] = 15;
                    }
                }
                i++;
            }
            _root.save.ver = 123;
        }
        if (_root.save.ver < 124)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryNoFuse[i] == true)
                {
                    if (_root.save.inventoryAttack[i] > 0)
                    {
                        _root.save.inventoryAttack[i] = Math.floor(_root.save.inventoryAttack[i] * 0.9);
                        _root.save.inventorySpeed[i] = Math.floor(_root.save.inventorySpeed[i] * 0.9);
                        _root.save.inventoryDefense[i] = Math.floor(_root.save.inventoryDefense[i] * 0.9);
                        _root.save.inventoryCrit[i] = Math.floor(_root.save.inventoryCrit[i] * 0.9);
                        _root.save.inventoryDexterity[i] = Math.floor(_root.save.inventoryDexterity[i] * 0.9);
                    }
                    if (_root.save.inventoryName[i] == "Sword of Ascendant")
                    {
                        _root.save.inventoryNoLife[i] = true;
                        _root.save.inventoryExpiry[i] = 0;
                    }
                }
                i++;
            }
            _root.save.ver = 124;
        }
        if (_root.save.ver < 125)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryNoFuse[i] == true)
                {
                    if (_root.save.inventoryName[i] == "Silver Pickaxe")
                    {
                        _root.save.inventorySpeed[i] = 6;
                        _root.save.inventoryLevel[i] = 2;
                        _root.save.inventoryEnhance[i] = 9;
                        _root.save.inventoryLevel[i] = 2;
                        _root.save.inventoryMaxLevel[i] = 2;
                        _root.save.inventoryCrit[i] = 6;
                    }
                    if (_root.save.inventoryName[i] == "Golden Pickaxe")
                    {
                        _root.save.inventorySpeed[i] = 7;
                        _root.save.inventoryLevel[i] = 3;
                        _root.save.inventoryEnhance[i] = 9;
                        _root.save.inventoryMaxLevel[i] = 3;
                        _root.save.inventoryCrit[i] = 9;
                    }
                    if (_root.save.inventoryName[i] == "Diamond Pickaxe")
                    {
                        _root.save.inventorySpeed[i] = 8;
                        _root.save.inventoryLevel[i] = 3;
                        _root.save.inventoryEnhance[i] = 9;
                        _root.save.inventoryLevel[i] = 3;
                        _root.save.inventoryMaxLevel[i] = 3;
                        _root.save.inventoryCrit[i] = 12;
                    }
                    if (_root.save.inventoryName[i] == "Master\'s Pickaxe")
                    {
                        _root.save.inventorySpeed[i] = 9;
                        _root.save.inventoryLevel[i] = 4;
                        _root.save.inventoryEnhance[i] = 10;
                        _root.save.inventoryLevel[i] = 4;
                        _root.save.inventoryMaxLevel[i] = 4;
                        _root.save.inventoryCrit[i] = 15;
                    }
                }
                if (_root.save.inventorySubtype[i] == "Mining Tool")
                {
                    _root.save.inventoryNoFuse[i] = true;
                }
                i++;
            }
            _root.save.ver = 125;
        }
        if (_root.save.ver < 126)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryNoFuse[i] == true)
                {
                    if (_root.save.inventoryDesc[i].indexOf("Elite Grenades") != -1)
                    {
                        _root.save.inventoryNoLife[i] = true;
                    }
                    if (_root.save.inventoryDesc[i].indexOf("Sword of Ascendant") != -1)
                    {
                        _root.save.inventoryNoLife[i] = true;
                        _root.save.inventoryExpiry[i] = 0;
                    }
                    if (_root.save.inventoryDesc[i].indexOf("DOOOOOOM") != -1)
                    {
                        _root.save.inventoryNoLife[i] = true;
                    }
                    if (_root.save.inventoryDesc[i].indexOf("Trophy") != -1)
                    {
                        _root.save.inventoryNoLife[i] = true;
                    }
                    if (_root.save.inventoryDesc[i].indexOf("Alien") != -1)
                    {
                        _root.save.inventoryNoLife[i] = true;
                    }
                }
                i++;
            }
            _root.save.ver = 126;
        }
        if (_root.save.ver < 127)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryName[i] == "Special Wand" && _root.save.inventoryNoLife[i] == true)
                {
                    _root.save.inventoryNoLife[i] = false;
                    _root.save.inventoryExpiry[i] = Infinity;
                }
                i++;
            }
            _root.save.ver = 127;
        }
        if (_root.save.ver < 128)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryDesc[i] == "Explosion Crate Reward" && _root.save.inventoryName[i] == "Elite Grenades")
                {
                    _root.save.inventoryAttack[i] += 500;
                }
                if (_root.save.inventoryName[i] == "Elite Grenades")
                {
                    if (_root.save.inventorySpeed[i] > 2)
                    {
                        _root.save.inventoryAttack[i] += _root.save.inventorySpeed[i] * 5;
                        _root.save.inventorySpeed[i] = 2;
                    }
                }
                i++;
            }
            _root.save.ver = 128;
        }
        if (_root.save.ver < 129)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryName[i] == "Elite Grenades")
                {
                    if (_root.save.inventorySpeed[i] > 2)
                    {
                        _root.save.inventoryAttack[i] += _root.save.inventorySpeed[i] * 5;
                        _root.save.inventorySpeed[i] = 2;
                    }
                    _root.save.inventoryNoFuse[i] = true;
                }
                i++;
            }
            _root.save.ver = 129;
        }
        if (_root.save.ver < 131)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryNoFuse[i] == true)
                {
                    if (_root.save.inventoryDesc[i].indexOf("Pickaxe") != -1 && _root.save.inventorySpeed[i] > 15)
                    {
                        _root.save.inventorySpeed[i] = 7;
                    }
                }
                if (_root.save.inventorySubtype[i] == "Mining Tool")
                {
                    _root.save.inventoryNoFuse[i] = true;
                }
                i++;
            }
            _root.save.ver = 131;
        }
        if (_root.save.ver < 132)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryName[i] == "Special Wand" && _root.save.inventorySpeed[i] < 8 + Math.floor(_root.save.inventoryBonusPow[i] / 10))
                {
                    _root.save.inventorySpeed[i] = 8 + Math.floor(_root.save.inventoryBonusPow[i] / 10);
                }
                i++;
            }
            _root.save.ver = 132;
        }
        if (_root.save.ver < 133)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryName[i] == "Burned Rope" && _root.save.inventoryNoLife[i] == true)
                {
                    _root.save.inventoryNoLife[i] = false;
                    _root.save.inventoryExpiry[i] = Infinity;
                }
                i++;
            }
            _root.save.ver = 133;
        }
        if (_root.save.ver < 134)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryName[i] == "Special Wand" && _root.save.inventorySpeed[i] > 9 + Math.floor(_root.save.inventoryBonusPow[i] / 20 - _root.save.inventoryCrit[i] / 10 - _root.save.inventoryDexterity[i] / 10 - _root.save.inventoryHealth[i] / 10))
                {
                    _root.save.inventorySpeed[i] = 9 + Math.floor(_root.save.inventoryBonusPow[i] / 20 - _root.save.inventoryCrit[i] / 10 - _root.save.inventoryDexterity[i] / 10 - _root.save.inventoryHealth[i] / 10);
                }
                i++;
            }
            _root.save.ver = 134;
        }
        if (_root.save.ver < 135)
        {
            _root.save.ver = 135;
        }
        if (_root.save.ver < 136)
        {
            _root.save.fishScore = Math.floor(_root.save.fishScore / 5) * 5;
            _root.save.fishScoreToday = Math.floor(_root.save.fishScoreToday / 5) * 5;
            _root.save.fishScoreRecord = Math.floor(_root.save.fishScoreRecord / 5) * 5;
            _root.save.ver = 136;
        }
        if (_root.save.ver < 137)
        {
            i = 201;
            while (i <= 224)
            {
                if (_root.save.inventorySubtype[i] == "Enhancer Protection Enhancer")
                {
                    _root.save.inventorySubtype[i] = "Enhancer Destruction Enhancer";
                }
                i++;
            }
            i = 301;
            while (i <= 324)
            {
                if (_root.save.inventorySubtype[i] == "Enhancer Protection Enhancer")
                {
                    _root.save.inventorySubtype[i] = "Enhancer Destruction Enhancer";
                }
                i++;
            }
            _root.save.ver = 137;
        }
        if (_root.save.ver < 139)
        {
            _root.save.arenaSpookyPenalty = _root.save.arenaZoneKill[52];
            _root.save.ver = 139;
        }
        if (_root.save.ver < 201)
        {
            _root.save.arenaSpookyPenalty = 0;
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryLevel[i] > 1 && _root.save.inventorySubtype[i] != "Pendant")
                {
                    if (_root.save.inventoryType[i] == "Weapon")
                    {
                        _root.save.inventoryDefense[i] += Math.floor(_root.save.inventoryLevel[i] / 2) * 2;
                        _root.save.inventoryBonusPow[i] += Math.floor(_root.save.inventoryLevel[i] / 2) * 4;
                    }
                    if (_root.save.inventoryType[i] == "Armor")
                    {
                        _root.save.inventoryAttack[i] += Math.floor(_root.save.inventoryLevel[i] / 2) * 1;
                        _root.save.inventoryBonusPow[i] += Math.floor(_root.save.inventoryLevel[i] / 2) * 4;
                    }
                    _root.save.inventoryDexterity[i] += Math.floor(_root.save.inventoryLevel[i] / 3) * 1;
                    _root.save.inventoryBonusPow[i] += Math.floor(_root.save.inventoryLevel[i] / 3) * 10;
                    _root.save.inventoryHealth[i] += Math.floor(_root.save.inventoryLevel[i] / 4) * 1;
                    _root.save.inventoryBonusPow[i] += Math.floor(_root.save.inventoryLevel[i] / 4) * 10;
                    _root.save.inventoryCrit[i] += Math.floor(_root.save.inventoryLevel[i] / 5) * 1;
                    _root.save.inventoryBonusPow[i] += Math.floor(_root.save.inventoryLevel[i] / 5) * 10;
                }
                i++;
            }
            _root.save.ver = 201;
        }
        if (_root.save.ver < 202)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryName[i] == "Epic Fire Staff" || _root.save.inventoryName[i] == "Epic Ice Staff" || _root.save.inventoryName[i] == "Epic Wind Staff" || _root.save.inventoryName[i] == "Epic Earth Staff" || _root.save.inventoryName[i] == "Epic Thunder Staff" || _root.save.inventoryName[i] == "Epic Water Staff" || _root.save.inventoryName[i] == "Light Glaive" || _root.save.inventoryName[i] == "Dark Glaive")
                {
                    if (_root.save.inventoryNoFuse[i] == true)
                    {
                        _root.save.inventoryAttack[i] = 675;
                        _root.save.inventoryBonusPow[i] = 0;
                        _root.save.inventoryEnhance[i] = 0;
                    }
                    _root.save.inventoryMaxLevel[i] = 60;
                    _root.save.inventoryNoFuse[i] = true;
                }
                i++;
            }
            _root.save.ver = 202;
        }
        if (_root.save.ver < 203)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryName[i] == "Glaive of Smiting" || _root.save.inventoryName[i] == "Darkglaive of Smiting")
                {
                    _root.save.inventoryRange[i] = true;
                }
                i++;
            }
            _root.save.ver = 203;
        }
        if (_root.save.ver < 301)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryName[i] == "Epic Fire Staff" || _root.save.inventoryName[i] == "Epic Ice Staff" || _root.save.inventoryName[i] == "Epic Wind Staff" || _root.save.inventoryName[i] == "Epic Earth Staff" || _root.save.inventoryName[i] == "Epic Thunder Staff" || _root.save.inventoryName[i] == "Epic Water Staff" || _root.save.inventoryName[i] == "Light Glaive" || _root.save.inventoryName[i] == "Dark Glaive")
                {
                    _root.save.inventoryAttack[i] = 750;
                    _root.save.inventorySpeed[i] = 6;
                    _root.save.inventoryDefense[i] = 0;
                    _root.save.inventoryCrit[i] = 0;
                    _root.save.inventoryDexterity[i] = 0;
                    _root.save.inventoryHealth[i] = 0;
                    _root.save.inventoryBonusPow[i] = 100;
                    _root.save.inventoryEnhance[i] = 0;
                    _root.save.inventoryMaxLevel[i] = 60;
                    _root.save.inventoryNoFuse[i] = true;
                }
                if (_root.save.inventoryName[i] == "Glaive of Smiting")
                {
                    _root.save.inventoryDesc[i] = "When equipped with Holy Glory Armor (5 pieces): Damage +350%, Spawn Rate +20%\nShoots invisible projectiles!\nCannot be enhanced with Attack enhancers.";
                }
                if (_root.save.inventoryName[i] == "Darkglaive of Smiting")
                {
                    _root.save.inventoryDesc[i] = "When equipped with Dark Angel Armor (5 pieces): Damage +350%, Spawn Rate +25%\nShoots invisible projectiles!\nCannot be enhanced with Attack enhancers.";
                }
                if (_root.save.inventoryName[i] == "Fiend Glaive")
                {
                    _root.save.inventoryDesc[i] = "When equipped with Chaos Armor (5 pieces): Damage +350%, Spawn Rate +35%\n\nCannot be enhanced with Attack enhancers.";
                }
                i++;
            }
            _root.save.ver = 301;
        }
        if (_root.save.ver < 401)
        {
            i = 1;
            while (i <= 330)
            {
                if (_root.save.inventoryName[i] == "Ultimate Lightning Sword")
                {
                    _root.save.inventoryFrame[i] = 246;
                }
                if (_root.save.inventoryName[i] == "Ultimate Lightning Spear")
                {
                    _root.save.inventoryFrame[i] = 247;
                }
                if (_root.save.inventoryName[i] == "Ultimate Lightning Polearm")
                {
                    _root.save.inventoryFrame[i] = 248;
                }
                i++;
            }
            _root.save.ver = 401;
        }
        if (_root.save.ver < 402)
        {
            if (_root.save.bestLevel >= 200)
            {
                _root.save.eventToken += 3000;
            }
            _root.save.ver = 402;
        }
        if (_root.save.ver < 404)
        {
            _root.save.arenaRingOwned[16] = 1;
            _root.save.ver = 404;
        }
        if (_root.save.ver < 405)
        {
            if (_root.save.activeDeal1 == true)
            {
                _root.save.eventToken += 1000;
            }
            _root.save.ver = 405;
        }
        if (_root.save.ver < 406)
        {
            i = 1;
            while (i <= 400)
            {
                _root.save.inventoryNoUnique[i] = false;
                i++;
            }
            _root.save.ver = 406;
        }
        if (_root.save.ver < 407)
        {
            _root.save.speedRunAscend = 2147483647;
            _root.save.speedRunAscendHard = 2147483647;
            _root.save.speedRunAscendImpossible = 2147483647;
            _root.save.speedRun9001 = 2147483647;
            _root.save.ver = 407;
        }
        if (_root.save.ver < 409)
        {
            i = 17;
            while (i <= 22)
            {
                _root.save.arenaRingOwned[i] = 0;
                i++;
            }
            _root.save.ver = 409;
        }
        if (_root.save.ver < 411)
        {
            var k = 1;
            while (k <= 500)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[k].indexOf("Meteoric") != -1)
                    {
                        _root.save.inventoryNoUnique[k] = true;
                    }
                    else if (_root.save.inventoryNoUnique[k] == true)
                    {
                        _root.save.inventoryNoUnique[k] = false;
                    }
                }
                k++;
            }
            _root.save.ver = 411;
        }
        if (_root.save.ver < 412)
        {
            var k = 1;
            while (k <= 500)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[k].indexOf("Censor") != -1)
                    {
                        _root.save.inventoryExpiry[k] = Infinity;
                        _root.save.inventoryEnhance[k] -= 3;
                    }
                }
                k++;
            }
            _root.save.ver = 412;
        }
        if (_root.save.ver < 413)
        {
            if (_root.save.bestLevel > 1)
            {
                if (_root.save.inventoryExist[_root.save.arenaHat] != 1)
                {
                    _root.save.arenaHat = 0;
                }
                if (_root.save.inventoryExist[_root.save.arenaShirt] != 1)
                {
                    _root.save.arenaShirt = 0;
                }
                if (_root.save.inventoryExist[_root.save.arenaGloves] != 1)
                {
                    _root.save.arenaGloves = 0;
                }
                if (_root.save.inventoryExist[_root.save.arenaPants] != 1)
                {
                    _root.save.arenaPants = 0;
                }
                if (_root.save.inventoryExist[_root.save.arenaShoes] != 1)
                {
                    _root.save.arenaShoes = 0;
                }
            }
            _root.save.ver = 413;
        }
        if (_root.save.ver < 415)
        {
            _root.save.permaStupidity = _root.save.banned;
            _root.save.permaStupidityHard = _root.save.bannedHard;
            _root.save.permaStupidityImpossible = _root.save.bannedImpossible;
            _root.save.ver = 415;
        }
        if (_root.save.ver < 418)
        {
            _root.save.fcgExp += _root.save.fcgWin * 20;
            _root.save.fcgExp += _root.save.fcgLevel6 * 10;
            _root.save.fcgExp += _root.save.fcgLevel7 * 20;
            _root.save.fcgExp += _root.save.fcgLevel8 * 30;
            _root.save.fcgCash += _root.save.fcgWin * 30;
            _root.save.fcgCash += _root.save.fcgLevel6 * 15;
            _root.save.fcgCash += _root.save.fcgLevel7 * 30;
            _root.save.fcgCash += _root.save.fcgLevel8 * 45;
            _root.save.fcgLevel8 = 0;
            _root.save.ver = 418;
        }
        if (_root.save.ver < 419)
        {
            _root.save.fcgLegendDeck = 13 + Math.floor(_root.systemtimenow / 86400000 % 21);
            _root.save.fcgLegendLife = 10;
            _root.save.ver = 419;
        }
        if (_root.save.ver < 424)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryName[i] == "2nd Anniversary Medal")
                {
                    _root.save.inventoryFrame[i] = 4;
                }
                i++;
            }
            _root.save.ver = 424;
        }
        if (_root.save.ver < 425)
        {
            _root.save.fcgStreak8 = 0;
            _root.save.fcgMaxStreak8 = 0;
            _root.save.ver = 425;
        }
        if (_root.save.ver < 426)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryName[i] == "First Medal" || _root.save.inventoryName[i] == "Arena Champion")
                {
                    _root.save.inventoryNoUnique[i] = false;
                }
                i++;
            }
            _root.save.ver = 426;
        }
        if (_root.save.ver < 427)
        {
            if (_root.save.gDifficulty >= 3 && _root.save.level < 9000)
            {
                _root.save.bankGardenFruit = Math.floor(_root.save.gardenFruit * 0.95);
                _root.save.gardenFruit = Math.ceil(_root.save.gardenFruit * 0.05);
            }
            _root.save.robaconBacon += Math.floor(_root.save.arenaCraft / 50000);
            if (_root.save.robaconBacon > 2000)
            {
                _root.save.robaconBacon = 2000;
            }
            _root.save.ver = 427;
        }
        if (_root.save.ver < 429)
        {
            if (_root.save.arenaLevel >= 50 && _root.save.totalPlayTime >= 300000)
            {
                _root.save.arenaTutorial = 2;
            }
        }
        if (_root.save.ver < 436)
        {
            var k = 1;
            while (k <= 500)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[k].indexOf("Meteoric") != -1)
                    {
                        _root.save.inventoryNoUnique[k] = true;
                        if (_root.save.inventoryAttack[k] > 550)
                        {
                            _root.save.inventoryAttack[k] = 550;
                        }
                    }
                    else if (_root.save.inventoryNoUnique[k] == true)
                    {
                        _root.save.inventoryNoUnique[k] = false;
                    }
                    if (_root.save.inventoryName[k] == "Dark Ruler")
                    {
                        _root.save.inventoryEnhance[k] = 2005;
                    }
                }
                k++;
            }
            _root.save.ver = 436;
        }
        if (_root.save.ver < 457)
        {
            _root.save.arenaSP = 1 + _root.save.arenaLevel * 15 + _root.save.arenaUltimateSP * 10;
            i = 1;
            while (i <= 80)
            {
                _root.save.arenaSkill[i] = 0;
                i++;
            }
            _root.save.arenaTotalSkill = 0;
            _root.save.arenaSkillMax = new([0, 30, 30, 30, 30, 10, 0, 0, 0, 10, 10, 20, 20, 30, 30, 30, 20, 0, 30, 10, 30, 10, 30, 30, 10, 30, 1, 10, 10, 20, 30, 10, 30, 30, 50, 50, 30, 10, 30, 10, 20, 10, 20, 10, 20, 30, 0, 0, 0, 1, 30, 10, 10, 30, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
            i = 26;
            while (i <= 100)
            {
                if (i != 26 && i != 51 && i != 76)
                {
                    _root.save.gardenBreedTotal += Math.floor(_root.save.gardenSeed[i] * 1.2 + _root.save.gardenMastery[i]);
                }
                i++;
            }
            _root.save.arenaKillEpic += _root.save.arenaUnobtainium;
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryName[i] == "Loot Magnet")
                {
                    _root.save.arenaKillEpic += 2500;
                }
                if (_root.save.inventoryName[i] == "Unobtainium Pickaxe")
                {
                    if (_root.save.inventoryExpiry[i] != Infinity || _root.save.inventoryCrit[i] == 21)
                    {
                        _root.save.arenaKillEpic += 1500;
                    }
                    else
                    {
                        _root.save.arenaKillEpic += 7500;
                    }
                }
                i++;
            }
            _root.save.boostAutoMax = 150;
            _root.save.ver = 457;
        }
        if (_root.save.ver < 460)
        {
            if (_root.save.level >= 9000 || _root.save.gDifficulty != 3)
            {
                _root.save.arenaPixel += Math.floor(_root.save.arenaPixelMax * 0.2);
                _root.save.arenaCraft += Math.floor(_root.save.arenaCraftMax * 0.45);
            }
            else
            {
                _root.save.bankArenaPixel += Math.floor(_root.save.arenaPixelMax * 0.25);
                _root.save.bankArenaCraft += Math.floor(_root.save.arenaCraftMax * 0.55);
            }
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    _root.save.inventoryUnob[i] = 0;
                    if (_root.save.inventoryName[i] == "Glaive-Glaive-Glaive-Guisarme-Glaive")
                    {
                        _root.save.inventoryCrit[i] += 10;
                        _root.save.inventoryDexterity[i] += 10;
                        _root.save.inventoryAttack[i] += 40;
                        _root.save.inventoryBonusPow[i] += 40;
                    }
                    if (_root.save.inventoryName[i] == "Greatsword")
                    {
                        _root.save.inventoryCrit[i] += 15;
                        _root.save.inventoryDexterity[i] += 15;
                        _root.save.inventoryAttack[i] += 50;
                        _root.save.inventoryBonusPow[i] += 50;
                    }
                    if (_root.save.inventoryName[i] == "Greatersword")
                    {
                        _root.save.inventoryCrit[i] += 20;
                        _root.save.inventoryDexterity[i] += 20;
                        _root.save.inventoryAttack[i] += 60;
                        _root.save.inventoryBonusPow[i] += 60;
                    }
                    if (_root.save.inventoryName[i] == "Gold Cannon")
                    {
                        _root.save.inventoryAttack[i] += 100;
                        _root.save.inventoryBonusPow[i] += 100;
                    }
                    if (_root.save.inventoryName[i].indexOf("Berserker") != -1)
                    {
                        _root.save.inventoryCrit[i] += 7;
                    }
                    if (_root.save.inventoryName[i].indexOf("Defensive") != -1)
                    {
                        _root.save.inventoryCrit[i] += 8;
                    }
                    if (_root.save.inventoryName[i].indexOf("Pure Darkness") != -1)
                    {
                        _root.save.inventoryCrit[i] += 9;
                    }
                    if (_root.save.inventoryName[i].indexOf("Crimson") != -1)
                    {
                        _root.save.inventoryCrit[i] += 10;
                    }
                    if (_root.save.inventoryName[i].indexOf("Meteoric") != -1)
                    {
                        _root.save.inventoryUnob[i] = 10;
                        _root.save.inventoryBonusPow[i] += 500;
                    }
                    if (_root.save.inventoryName[i] == "Cursed Sword")
                    {
                        _root.save.inventoryEnhance[i] -= 6;
                    }
                    if (_root.save.inventoryName[i] == "Unobtainium Pickaxe")
                    {
                        _root.save.inventoryUnob[i] = 10;
                        _root.save.inventoryBonusPow[i] += 500;
                    }
                    if (_root.save.inventoryName[i] == "Loot Magnet")
                    {
                        _root.save.inventoryBonusPow[i] += 156;
                    }
                    if (_root.save.inventoryName[i] == "Arena Champion")
                    {
                        _root.save.inventoryBonusPow[i] += 156;
                    }
                    if (_root.save.inventoryName[i] == "Censor Sword")
                    {
                        _root.save.inventoryAttack[i] += 100;
                    }
                    if (_root.save.inventoryName[i] == "Rain Bow")
                    {
                        _root.save.inventoryAttack[i] += 100;
                        _root.save.inventoryMoreBonus[i] = "Accuracy";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Fire Sword")
                    {
                        _root.save.inventoryAttack[i] += 150;
                        _root.save.inventoryAbility[i] = "Poison Damage";
                        _root.save.inventoryMoreBonus[i] = "MaxMP";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Fire Spear")
                    {
                        _root.save.inventoryAttack[i] += 100;
                        _root.save.inventoryAbility[i] = "Poison Damage";
                        _root.save.inventoryMoreBonus[i] = "MaxMP";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Fire Polearm")
                    {
                        _root.save.inventoryAttack[i] += 50;
                        _root.save.inventoryAbility[i] = "Poison Damage";
                        _root.save.inventoryMoreBonus[i] = "MaxMP";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Ice Sword")
                    {
                        _root.save.inventoryAttack[i] += 150;
                        _root.save.inventoryAbility[i] = "Weaken Effect";
                        _root.save.inventoryMoreBonus[i] = "MaxMP";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Ice Spear")
                    {
                        _root.save.inventoryAttack[i] += 100;
                        _root.save.inventoryAbility[i] = "Weaken Effect";
                        _root.save.inventoryMoreBonus[i] = "MaxMP";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Ice Polearm")
                    {
                        _root.save.inventoryAttack[i] += 50;
                        _root.save.inventoryAbility[i] = "Weaken Effect";
                        _root.save.inventoryMoreBonus[i] = "MaxMP";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Lightning Sword")
                    {
                        _root.save.inventoryAttack[i] += 150;
                        _root.save.inventoryAbility[i] = "Blind Effect";
                        _root.save.inventoryMoreBonus[i] = "MaxMP";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Lightning Spear")
                    {
                        _root.save.inventoryAttack[i] += 100;
                        _root.save.inventoryAbility[i] = "Blind Effect";
                        _root.save.inventoryMoreBonus[i] = "MaxMP";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Lightning Polearm")
                    {
                        _root.save.inventoryAttack[i] += 50;
                        _root.save.inventoryAbility[i] = "Blind Effect";
                        _root.save.inventoryMoreBonus[i] = "MaxMP";
                    }
                }
                i++;
            }
            _root.save.arenaZone = 0;
            _root.save.ver = 460;
        }
        if (_root.save.ver < 461)
        {
            i = 1;
            while (i <= 60)
            {
                if (_root.save.arenaZoneKill[i] > 0)
                {
                    _root.save.arenaZoneFound[i] = 1;
                }
                i++;
            }
            _root.save.ver = 461;
        }
        if (_root.save.ver < 462)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    _root.save.inventoryMoreBonus[i] = "";
                    if (_root.save.inventoryDesc[i] == undefined)
                    {
                        _root.save.inventoryDesc[i] = "";
                    }
                }
                i++;
            }
            _root.save.ver = 462;
        }
        if (_root.save.ver < 465)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryName[i] == "Glaive of Smiting")
                {
                    _root.save.inventoryDesc[i] = "When equipped with Holy Glory Armor (5 pieces): Damage +200%, Spawn Rate +20%\nShoots invisible projectiles!\nCannot be enhanced with Attack enhancers.";
                }
                if (_root.save.inventoryName[i] == "Darkglaive of Smiting")
                {
                    _root.save.inventoryDesc[i] = "When equipped with Dark Angel Armor (5 pieces): Damage +225%, Spawn Rate +25%\nShoots invisible projectiles!\nCannot be enhanced with Attack enhancers.";
                }
                if (_root.save.inventoryName[i] == "Fiend Glaive")
                {
                    _root.save.inventoryDesc[i] = "When equipped with Chaos Armor (5 pieces): Damage +250%, Spawn Rate +35%\n\nCannot be enhanced with Attack enhancers.";
                }
                if (_root.save.inventoryName[i] == "Pendant of Selectivity")
                {
                    _root.save.inventoryName[i] = "Pendant of Epicness";
                }
                i++;
            }
            _root.save.breakignore9002 = true;
            if (_root.kongregate_username == "Tukkun" || _root.kongregate_username == undefined || _root.saveid == 4)
            {
                _root.save.breakignore9002 = false;
            }
            _root.save.mysteryBoxCollect3 = new();
            _root.save.mysteryBox[2] = Math.ceil(_root.save.mysteryBox[2] * 0.1);
            i = 1;
            while (i <= 12)
            {
                if (!isNaN(_root.save.mysteryBoxCollect4[i]))
                {
                    _root.save.legendaryBoxOpened += _root.save.mysteryBoxCollect4[i];
                }
                i++;
            }
            _root.save.ver = 465;
        }
        if (_root.save.ver < 466)
        {
            _root.save.highCount = 0;
            _root.save.totalCount = 0;
            if (_root.save.bestLevel >= 500)
            {
                _root.save.mysteryBox[8] += 3;
            }
            _root.save.ver = 466;
        }
        if (_root.save.ver < 470)
        {
            if (_root.save.gDifficulty >= 3 && _root.save.level >= 9000)
            {
                _root.save.stadiumAbilityCost = 400;
            }
            _root.save.arenaEnhancerFragment += _root.save.bestLevel;
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryDesc[i].indexOf("Well, it WAS immortal") != -1)
                    {
                        _root.save.inventoryExpiry[i] = _root.systemtimenow + 604800000;
                    }
                    if (_root.save.inventoryDesc[i].indexOf("The more you use it,") != -1)
                    {
                        _root.save.inventoryExpiry[i] = _root.systemtimenow + 2592000000;
                    }
                }
                i++;
            }
            _root.save.ver = 470;
        }
        if (_root.save.ver < 471)
        {
            _root.save.stadiumAbilityCost = _root.save.stadiumEnergy + _root.save.stadiumAccel + _root.save.stadiumMaxSpeed + _root.save.stadiumStartSpeed + _root.save.stadiumDash + _root.save.stadiumJump + _root.save.stadiumBoost + _root.save.stadiumReward;
            _root.save.ver = 471;
        }
        if (_root.save.ver < 472)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryDesc[i] == undefined)
                    {
                        _root.save.inventoryDesc[i] = "";
                        _root.save.inventoryExpiry[i] = Infinity;
                    }
                }
                i++;
            }
            _root.save.ver = 472;
        }
        if (_root.save.ver < 473)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Ultimate Thunder Sword")
                    {
                        _root.save.inventoryName[i] = "Ultimate Lightning Sword";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Thunder Spear")
                    {
                        _root.save.inventoryName[i] = "Ultimate Lightning Spear";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Thunder Polearm")
                    {
                        _root.save.inventoryName[i] = "Ultimate Lightning Polearm";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Fire Sword")
                    {
                        _root.save.inventoryAttack[i] += 150;
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Fire Spear")
                    {
                        _root.save.inventoryAttack[i] += 150;
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Fire Polearm")
                    {
                        _root.save.inventoryAttack[i] += 150;
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Ice Sword")
                    {
                        _root.save.inventoryAttack[i] += 150;
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Ice Spear")
                    {
                        _root.save.inventoryAttack[i] += 150;
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Ice Polearm")
                    {
                        _root.save.inventoryAttack[i] += 150;
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Lightning Sword")
                    {
                        _root.save.inventoryAttack[i] += 150;
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Lightning Spear")
                    {
                        _root.save.inventoryAttack[i] += 150;
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Lightning Polearm")
                    {
                        _root.save.inventoryAttack[i] += 150;
                    }
                }
                i++;
            }
            _root.save.ver = 473;
        }
        if (_root.save.ver < 475)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryBonus[i] == "Enhancer Filter" || _root.save.inventoryBonus[i] == "Enhancer Level" || _root.save.inventoryBonus[i] == "Enhancer Rarity")
                {
                    _root.save.inventoryBonus[i] = "Epic Monster Rate";
                }
                _root.save.ver = 475;
                i++;
            }
        }
        if (_root.save.ver < 476)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryNoFuse[i] == false && _root.save.inventoryDesc[i].indexOf("Fused Item") != -1)
                    {
                        _root.save.inventoryNoFuse[i] = true;
                        var TFP = _root.save.inventoryAttack[i] + _root.save.inventoryDefense[i] * 1.6 - _root.save.inventoryEnhance[i] * 50;
                        if (TFP >= 600)
                        {
                            _root.save.inventorySell[i] = Math.floor(_root.save.inventorySell[i] * 5);
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 476;
        }
        if (_root.save.ver < 480)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Triangle Gem")
                    {
                        _root.save.inventorySpirit[i] = false;
                        _root.save.inventoryEnhance[i] = 0;
                    }
                }
                i++;
            }
            _root.save.ver = 480;
        }
        if (_root.save.ver < 482)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Immortal Pendant")
                    {
                        _root.save.inventoryNoBonus[i] = false;
                    }
                }
                i++;
            }
            _root.save.ver = 482;
        }
        if (_root.save.ver < 486)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Fairy Godmother Wand")
                    {
                        _root.save.inventoryAttack[i] += 25;
                        _root.save.inventoryUnob[i] = 10;
                        _root.save.inventoryDesc[i] = "When equipped: Magic Resist +15%, Negate Effect Chance +15%\n\nWhen equipped with Fairy Godmother Armor (5 pieces): Potion Efficiency +500%, Spawn Rate +30%";
                    }
                    if (_root.save.inventoryBonusPow[i] >= 7000 || _root.save.inventoryAttack[i] >= 3100 || _root.save.inventoryDefense[i] >= 1900 || _root.save.inventoryCrit[i] >= 250 || _root.save.inventoryDexterity[i] >= 250 || _root.save.inventoryHealth[i] >= 250)
                    {
                        _root.save.inventoryNoLife[i] = true;
                        _root.save.inventoryExpiry[i] = 0;
                        _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                    }
                    if (_root.save.inventoryType[i] == "Enhancer")
                    {
                        if (_root.save.inventorySubtype[i] == "Weapon Attack Enhancer" && _root.save.inventoryAttack[i] >= 56 && _root.save.inventoryName[i] != "Relic")
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Armor Attack Enhancer" && _root.save.inventoryAttack[i] >= 23)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Weapon Speed Enhancer" && _root.save.inventoryAttack[i] >= 4)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Armor Speed Enhancer" && _root.save.inventoryAttack[i] >= 4)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Weapon Defense Enhancer" && _root.save.inventoryAttack[i] >= 100)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Armor Defense Enhancer" && _root.save.inventoryAttack[i] >= 34)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Weapon Critical Enhancer" && _root.save.inventoryAttack[i] >= 12)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Armor Critical Enhancer" && _root.save.inventoryAttack[i] >= 12)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Weapon Dexterity Enhancer" && _root.save.inventoryAttack[i] >= 12)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Armor Dexterity Enhancer" && _root.save.inventoryAttack[i] >= 12)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Weapon Health Enhancer" && _root.save.inventoryAttack[i] >= 12)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Armor Health Enhancer" && _root.save.inventoryAttack[i] >= 12)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Weapon Mystery Enhancer" && _root.save.inventoryAttack[i] >= 12)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Armor Mystery Enhancer" && _root.save.inventoryAttack[i] >= 12)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Weapon Unique Enhancer" && _root.save.inventoryAttack[i] >= 101)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Armor Unique Enhancer" && _root.save.inventoryAttack[i] >= 101)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                        if (_root.save.inventorySubtype[i] == "Accessory Unique Enhancer" && _root.save.inventoryAttack[i] >= 101)
                        {
                            _root.save.inventoryNoLife[i] = true;
                            _root.save.inventoryExpiry[i] = 0;
                            _root.save.inventoryDesc[i] += "\n\nThis item is blocked to be further investigated. If you believe your item is wrongfully blocked, please post in the forum thread.";
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 486;
        }
        if (_root.save.ver < 487)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Alien Core")
                    {
                        _root.save.inventoryNoLife[i] = false;
                        _root.save.inventoryExpiry[i] = Infinity;
                        _root.save.inventoryDesc[i] = "";
                    }
                }
                i++;
            }
            _root.save.ver = 487;
        }
        if (_root.save.ver < 489)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Fairy Godmother Wand")
                    {
                        _root.save.inventoryAttack[i] += 25;
                        _root.save.inventoryDesc[i] = "When equipped: Magic Resist +15%, Negate Effect Chance +15%\n\nWhen equipped with Fairy Godmother Armor (5 pieces): Potion Efficiency +500%, Spawn Rate +40%";
                    }
                    if (_root.save.inventoryName[i].indexOf("Crimson") != -1)
                    {
                        _root.save.inventoryDefense[i] += 15;
                        _root.save.inventoryBonusPow[i] += 30;
                    }
                }
                i++;
            }
            _root.save.ver = 489;
        }
        if (_root.save.ver < 489)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Pure Darkness Hat")
                    {
                        _root.save.inventoryHealth[i] += 6;
                        _root.save.inventoryDefense[i] += 40;
                    }
                    else if (_root.save.inventoryName[i] == "Crimson Hat")
                    {
                        _root.save.inventorySpeed[i] += 1;
                        _root.save.inventoryHealth[i] += 15;
                        _root.save.inventoryDefense[i] += 80;
                    }
                    else if (_root.save.inventoryName[i] == "Pure Darkness Shoes")
                    {
                        _root.save.inventoryDexterity[i] += 6;
                        _root.save.inventoryDefense[i] += 40;
                    }
                    else if (_root.save.inventoryName[i] == "Crimson Shoes")
                    {
                        _root.save.inventorySpeed[i] += 1;
                        _root.save.inventoryDexterity[i] += 15;
                        _root.save.inventoryDefense[i] += 80;
                    }
                    else if (_root.save.inventoryName[i].indexOf("Pure Darkness") != -1)
                    {
                        _root.save.inventoryCrit[i] += 6;
                        _root.save.inventoryDefense[i] += 40;
                    }
                    else if (_root.save.inventoryName[i].indexOf("Crimson") != -1)
                    {
                        _root.save.inventorySpeed[i] += 1;
                        _root.save.inventoryCrit[i] += 15;
                        _root.save.inventoryDefense[i] += 80;
                    }
                    else if (_root.save.inventoryName[i].indexOf("Berserker") != -1)
                    {
                        _root.save.inventoryDefense[i] += 10;
                    }
                }
                i++;
            }
            _root.save.ver = 490;
        }
        if (_root.save.ver < 491)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Defensive") != -1)
                    {
                        _root.save.inventoryDefense[i] += 20;
                    }
                    else if (_root.save.inventoryName[i].indexOf("Epic") != -1 && _root.save.inventoryName[i].indexOf("Staff") != -1 && _root.save.inventoryReqRank[i] < 500)
                    {
                        _root.save.inventoryReqRank[i] = (_root.save.inventoryReqRank[i] - 200) * 10 + 200;
                    }
                }
                i++;
            }
            _root.save.ver = 491;
        }
        if (_root.save.ver < 492)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Defensive") != -1)
                    {
                        _root.save.inventoryDefense[i] += 20;
                    }
                    else if (_root.save.inventoryName[i] == "Light Glaive" || _root.save.inventoryName[i] == "Dark Glaive")
                    {
                        if (_root.save.inventoryReqRank[i] < 500)
                        {
                            _root.save.inventoryReqRank[i] = (_root.save.inventoryReqRank[i] - 200) * 10 + 200;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 492;
        }
        if (_root.save.ver < 493)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryReqRank[i] > 500)
                    {
                        _root.save.inventoryReqRank[i] = 500;
                    }
                }
                i++;
            }
            _root.save.ver = 493;
        }
        if (_root.save.ver < 494)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Epic") != -1 && _root.save.inventoryName[i].indexOf("Staff") != -1)
                    {
                        if (_root.save.inventoryReqRank[i] > _root.save.arenaLevel)
                        {
                            _root.save.inventoryReqRank[i] = _root.save.arenaLevel;
                        }
                    }
                    else if (_root.save.inventoryName[i] == "Light Glaive" || _root.save.inventoryName[i] == "Dark Glaive")
                    {
                        if (_root.save.inventoryReqRank[i] > _root.save.arenaLevel)
                        {
                            _root.save.inventoryReqRank[i] = _root.save.arenaLevel;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 494;
        }
        if (_root.save.ver < 495)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Special Loot Magnet")
                    {
                        _root.save.inventoryExpiry[i] = Infinity;
                        _root.save.inventoryNoLife[i] = false;
                        _root.save.inventoryDesc[i] = "A one-of-a-kind Loot Magnet awarded for winning an auction. Now to place it in the Storage and never use it.";
                    }
                }
                i++;
            }
            _root.save.ver = 495;
        }
        if (_root.save.ver < 497)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Dark Ruler")
                    {
                        _root.save.inventoryAttack[i] += 1705;
                        if (_root.save.inventoryAttack[i] > 3000)
                        {
                            _root.save.inventoryAttack[i] = 3000;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 497;
        }
        if (_root.save.ver < 499)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryExist[i] != 1)
                {
                    _root.save.inventoryExpiry[i] = 0;
                }
                i++;
            }
            _root.save.ver = 499;
        }
        if (_root.save.ver < 500)
        {
            i = 1;
            while (i <= 600)
            {
                if (_root.save.inventoryReqRank[i] < 0 && !isNaN(_root.save.inventoryReqRank[i]))
                {
                    _root.save.inventoryReqRank[i] = 1;
                }
                i++;
            }
            _root.save.ver = 500;
        }
        if (_root.save.ver < 502)
        {
            _root.save.dominatorBonus = 0;
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    _root.save.inventorySell[i] = Math.floor(_root.save.inventorySell[i] * 4);
                    if (_root.save.inventoryReqRank[i] < 0 && !isNaN(_root.save.inventoryReqRank[i]))
                    {
                        _root.save.inventoryReqRank[i] = 1;
                    }
                    if (_root.save.inventoryMoreBonus[i] == "Pixel / Loot" || _root.save.inventoryMoreBonus[i] == "Material / Loot")
                    {
                        _root.save.inventoryMoreBonus[i] = "EXP / Rare Kill";
                    }
                    if (_root.save.inventoryName[i] == "Dominator Gem")
                    {
                        _root.save.inventoryEnhance[i] = 0;
                        _root.save.inventorySpirit[i] = false;
                        var g2ku = true;
                        if (g2ku != true)
                        {
                            g2ku = true;
                            _root.save.arenaUnobtainium += 2000;
                        }
                    }
                    if (_root.save.inventoryName[i] == "Dominator Gem" && _root.save.inventoryDefense[i] > 81)
                    {
                        _root.save.dominatorBonus += _root.save.inventoryDefense[i] - 81;
                        _root.save.inventoryDefense[i] = 81;
                    }
                    if (_root.save.inventoryExist[i] != 1)
                    {
                        _root.save.inventoryExpiry[i] = 1;
                    }
                    if (_root.save.inventoryName[i] == "Hero Sword")
                    {
                        _root.save.inventoryBonusPow[i] -= 50;
                    }
                    if (_root.save.inventoryName[i] == "Triangle Sword")
                    {
                        _root.save.inventoryBonusPow[i] -= 100;
                    }
                    if (_root.save.inventoryName[i] == "Legendary Sword")
                    {
                        _root.save.inventoryBonusPow[i] -= 150;
                    }
                    if (_root.save.inventoryName[i] == "Spirit Sword")
                    {
                        _root.save.inventoryBonusPow[i] -= 500;
                    }
                    if (_root.save.inventoryName[i] == "Advanced Fire Gun")
                    {
                        _root.save.inventoryBonusPow[i] -= 100;
                    }
                    if (_root.save.inventoryName[i] == "Advanced Water Gun")
                    {
                        _root.save.inventoryBonusPow[i] -= 100;
                    }
                    if (_root.save.inventoryName[i] == "Glaive")
                    {
                        _root.save.inventoryBonusPow[i] -= 10;
                    }
                    if (_root.save.inventoryName[i] == "Guisarme")
                    {
                        _root.save.inventoryBonusPow[i] -= 20;
                    }
                    if (_root.save.inventoryName[i] == "Longspear")
                    {
                        _root.save.inventoryBonusPow[i] -= 30;
                    }
                    if (_root.save.inventoryName[i] == "Lucerne Hammer")
                    {
                        _root.save.inventoryBonusPow[i] -= 40;
                    }
                    if (_root.save.inventoryName[i] == "Glaive-Guisarme")
                    {
                        _root.save.inventoryBonusPow[i] -= 50;
                    }
                    if (_root.save.inventoryName[i] == "Guisarme-Glaive")
                    {
                        _root.save.inventoryBonusPow[i] -= 60;
                    }
                    if (_root.save.inventoryName[i] == "Glaive-Guisarme-Glaive")
                    {
                        _root.save.inventoryBonusPow[i] -= 70;
                    }
                    if (_root.save.inventoryName[i] == "Glaive-Glaive-Glaive-Guisarme-Glaive")
                    {
                        _root.save.inventoryBonusPow[i] -= 80;
                    }
                    if (_root.save.inventoryName[i] == "Greatsword")
                    {
                        _root.save.inventoryBonusPow[i] -= 90;
                        _root.save.inventoryAttack[i] += 30;
                    }
                    if (_root.save.inventoryName[i] == "Greatersword")
                    {
                        _root.save.inventoryBonusPow[i] -= 100;
                        _root.save.inventoryAttack[i] += 30;
                    }
                    if (_root.save.inventoryName[i] == "Mystic Bow")
                    {
                        _root.save.inventoryBonusPow[i] -= 100;
                    }
                    if (_root.save.inventoryName[i] == "Mystic Crossbow")
                    {
                        _root.save.inventoryBonusPow[i] -= 110;
                    }
                    if (_root.save.inventoryName[i] == "Slingshot")
                    {
                        _root.save.inventoryBonusPow[i] -= 120;
                    }
                    if (_root.save.inventoryName[i] == "Oversized Slingshot")
                    {
                        _root.save.inventoryBonusPow[i] -= 130;
                    }
                    if (_root.save.inventoryName[i] == "Cannon")
                    {
                        _root.save.inventoryBonusPow[i] -= 140;
                    }
                    if (_root.save.inventoryName[i] == "Gold Cannon")
                    {
                        _root.save.inventoryBonusPow[i] -= 150;
                    }
                    if (_root.save.inventoryName[i] == "Premium Sword (1)" || _root.save.inventoryName[i] == "Premium Sword (2)" || _root.save.inventoryName[i] == "Premium Sword (3)" || _root.save.inventoryName[i] == "Cursed Sword (1)" || _root.save.inventoryName[i] == "Cursed Sword (2)" || _root.save.inventoryName[i] == "Cursed Sword (3)")
                    {
                        _root.save.inventoryBonusPow[i] -= 66;
                    }
                    if (_root.save.inventoryName[i] == "Elite Hat" || _root.save.inventoryName[i] == "Elite Shirt" || _root.save.inventoryName[i] == "Elite Gloves" || _root.save.inventoryName[i] == "Elite Pants" || _root.save.inventoryName[i] == "Elite Shoes")
                    {
                        _root.save.inventoryBonusPow[i] -= 60;
                    }
                    if (_root.save.inventoryName[i] == "Defensive Hat" || _root.save.inventoryName[i] == "Defensive Shirt" || _root.save.inventoryName[i] == "Defensive Gloves" || _root.save.inventoryName[i] == "Defensive Pants" || _root.save.inventoryName[i] == "Defensive Shoes")
                    {
                        _root.save.inventoryBonusPow[i] -= 30;
                        _root.save.inventoryDefense[i] += 10;
                    }
                    if (_root.save.inventoryName[i] == "Pure Darkness Hat" || _root.save.inventoryName[i] == "Pure Darkness Shirt" || _root.save.inventoryName[i] == "Pure Darkness Gloves" || _root.save.inventoryName[i] == "Pure Darkness Pants" || _root.save.inventoryName[i] == "Pure Darkness Shoes")
                    {
                        _root.save.inventoryBonusPow[i] -= 60;
                        _root.save.inventoryDefense[i] += 20;
                    }
                    if (_root.save.inventoryName[i] == "Crimson Hat" || _root.save.inventoryName[i] == "Crimson Shirt" || _root.save.inventoryName[i] == "Crimson Gloves" || _root.save.inventoryName[i] == "Crimson Pants" || _root.save.inventoryName[i] == "Crimson Shoes")
                    {
                        _root.save.inventoryBonusPow[i] -= 120;
                        _root.save.inventoryDefense[i] += 40;
                    }
                    if (_root.save.inventoryName[i] == "Unobtainium Pickaxe")
                    {
                        _root.save.inventoryEnhance[i] -= 1;
                    }
                    if (_root.save.inventoryName[i].indexOf("Meteoric") != -1 && _root.save.inventoryType[i] == "Weapon")
                    {
                        _root.save.inventoryUnob[i] = 20;
                        _root.save.inventoryDesc[i] = "When equipped with Meteoric Armor (5 pieces): Spawn Rate +70%";
                    }
                }
                i++;
            }
            if (_root.save.dominatorBonus > 1800)
            {
                _root.save.dominatorBonus = 1800;
            }
            _root.save.ver = 502;
        }
        if (_root.save.ver < 503)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Meteoric") != -1 && _root.save.inventoryType[i] == "Weapon")
                    {
                        _root.save.inventoryUnob[i] = 20;
                        _root.save.inventoryDesc[i] = "When equipped with Meteoric Armor (5 pieces): Spawn Rate +70%";
                    }
                }
                i++;
            }
            _root.save.ver = 503;
        }
        if (_root.save.ver < 504)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Newbie Shirt")
                    {
                        _root.save.inventorySubtype[i] = "Shirt";
                    }
                    if (_root.save.inventoryName[i] == "Newbie Gloves")
                    {
                        _root.save.inventorySubtype[i] = "Gloves";
                    }
                    if (_root.save.inventoryName[i] == "Newbie Pants")
                    {
                        _root.save.inventorySubtype[i] = "Pants";
                    }
                    if (_root.save.inventoryName[i] == "Newbie Shoes")
                    {
                        _root.save.inventorySubtype[i] = "Shoes";
                    }
                }
                i++;
            }
            _root.save.ver = 504;
        }
        if (_root.save.ver < 505)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Dominator Gem")
                    {
                        _root.save.inventoryEnhance[i] = 0;
                        _root.save.inventorySpirit[i] = false;
                        if (_root.save.inventoryDefense[i] > 81)
                        {
                            _root.save.dominatorBonus += _root.save.inventoryDefense[i] - 81;
                            _root.save.inventoryDefense[i] = 81;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 505;
        }
        if (_root.save.ver < 506)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Gem of Constancy")
                    {
                        _root.save.inventoryExpTNL[i] = 25000;
                    }
                }
                i++;
            }
            _root.save.ver = 506;
        }
        if (_root.save.ver < 509)
        {
            _root.save.rankedPong = _root.save.highPong;
            _root.save.rankedAvoidance = _root.save.highAvoidance;
            _root.save.rankedMath = _root.save.highMath;
            _root.save.rankedWhack = _root.save.highWhack;
            _root.save.rankedMind = _root.save.highMind;
            _root.save.rankedBalance = _root.save.highBalance;
            _root.save.rankedCount = _root.save.highCount;
            i = 1;
            while (i <= 40)
            {
                _root.save.unrankedPower[i] = 0;
                i++;
            }
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Meteoric Axe")
                    {
                        _root.save.inventoryAttack[i] += 25;
                        _root.save.inventoryCrit[i] += 12;
                    }
                    if (_root.save.inventoryName[i] == "Meteoric Sword")
                    {
                        _root.save.inventoryCrit[i] += 10;
                        _root.save.inventoryDexterity[i] += 10;
                    }
                    if (_root.save.inventoryName[i] == "Meteoric Cleaver")
                    {
                        _root.save.inventorySpeed[i] += 2;
                        _root.save.inventoryCrit[i] += 7;
                        _root.save.inventoryDexterity[i] += 15;
                    }
                    if (_root.save.inventoryName[i] == "Meteoric Glaive")
                    {
                        _root.save.inventoryAttack[i] += 50;
                        _root.save.inventoryCrit[i] += 10;
                    }
                    if (_root.save.inventoryName[i] == "Meteoric Scythe")
                    {
                        _root.save.inventoryAttack[i] += 25;
                        _root.save.inventoryHealth[i] += 20;
                    }
                    if (_root.save.inventoryName[i] == "Meteoric Voulge")
                    {
                        _root.save.inventoryAttack[i] += 25;
                    }
                    if (_root.save.inventoryName[i] == "Glaive of Smiting")
                    {
                        _root.save.inventoryDesc[i] = "When equipped with Holy Glory Armor (5 pieces): Damage +200%, Spawn Rate +10%\nShoots invisible projectiles!\nCannot be enhanced with Attack enhancers.";
                    }
                    if (_root.save.inventoryName[i] == "Darkglaive of Smiting")
                    {
                        _root.save.inventoryDesc[i] = "When equipped with Dark Angel Armor (5 pieces): Damage +225%, Spawn Rate +15%\nShoots invisible projectiles!\nCannot be enhanced with Attack enhancers.";
                    }
                    if (_root.save.inventoryName[i] == "Fiend Glaive")
                    {
                        _root.save.inventoryDesc[i] = "When equipped with Chaos Armor (5 pieces): Damage +250%, Spawn Rate +25%\n\nCannot be enhanced with Attack enhancers.";
                    }
                    if (_root.save.inventoryName[i] == "Pirate Sword")
                    {
                        _root.save.inventoryDesc[i] = "A Pirate Sword. It allows you to get extra Coins and Pixels as you damage the monsters - the higher level the Pirate Sword gets, the more Coins and Pixels you get. The worst part is that before you attack, you must shout the skill name in pirate language. That\'s why you attack so slowly with this.";
                        if (_root.save.inventoryLevel[i] == 300)
                        {
                            _root.save.inventorySpeed[i] += 3;
                            _root.save.inventoryDesc[i] = "Congratulations! You have mastered the pirate language (for this particular sword, at least), and as a result, you can attack twice as fast with this Pirate Sword equipped!";
                        }
                    }
                    if (_root.save.inventorySubtype[i] == "Trinket" && _root.save.inventoryMaxLevel[i] == 500)
                    {
                        _root.save.inventoryBonusPow[i] += _root.save.inventoryReqRank[i] - 1;
                        if (_root.save.inventoryReqRank[i] == 500)
                        {
                            _root.save.inventoryBonusPow[i] += 250;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 509;
        }
        if (_root.save.ver < 511)
        {
            if (_root.save.arenaLevel >= 3)
            {
                i = 2;
                while (i <= _root.save.arenaLevel)
                {
                    _root.save.arenaPixel += 100 * i * i;
                    _root.save.arenaCraft += 10 * i * i;
                    i++;
                }
            }
            _root.save.ver = 511;
        }
        if (_root.save.ver < 512)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Glaive of Smiting")
                    {
                        _root.save.inventoryEnhance[i] -= 5;
                    }
                    if (_root.save.inventoryName[i] == "Darkglaive of Smiting")
                    {
                        _root.save.inventoryEnhance[i] -= 5;
                    }
                    if (_root.save.inventoryName[i] == "Fiend Glaive")
                    {
                        _root.save.inventoryEnhance[i] -= 5;
                    }
                    if (_root.save.inventoryExist[i] == 1)
                    {
                        _root.save.inventoryGuard[i] = false;
                    }
                    if (_root.save.inventoryName[i] == "Gem of Constancy")
                    {
                        _root.save.inventoryDesc[i] = "This gem gets more and more powerful as you fight with it equipped, but whenever you equip or unequip an item (including the Gem of Constancy itself), it will go back to its original state. Rumor says that something will happen when it reaches level 500...\n\nSpawn Rate +5% per piece of Finalized equipment equipped.";
                    }
                }
                i++;
            }
            _root.save.ver = 512;
        }
        if (_root.save.ver < 513)
        {
            if (_root.save.fcgLevel > 200)
            {
                _root.save.fcgLevel = 200;
            }
            _root.save.ver = 513;
        }
        if (_root.save.ver < 514)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "(MYSTERIOUS ITEM)")
                    {
                        _root.save.inventoryEnhance[i] = 10;
                        if (_root.save.inventoryNoFuse[i] == true)
                        {
                            _root.save.inventoryExpiry[i] = 0;
                        }
                        else
                        {
                            _root.save.inventoryNoFuse[i] = true;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 514;
        }
        if (_root.save.ver < 515)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "(MYSTERIOUS ITEM)" || _root.save.inventoryName[i] == "CHAOS GLOVES")
                    {
                        _root.save.inventoryDexterity[i] += 50;
                    }
                }
                i++;
            }
            _root.save.ver = 515;
        }
        if (_root.save.ver < 517)
        {
            _root.save.arenaSpookyScore = 0;
            _root.save.arenaSpookyToday = 0;
            _root.save.ver = 517;
        }
        if (_root.save.ver < 518)
        {
            if (_root.save.eventToken < 0)
            {
                _root.save.eventToken += 500;
            }
            _root.save.ver = 518;
        }
        if (_root.save.ver < 519)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Ghost Shoes" && _root.save.inventoryEnhance[i] > 0)
                    {
                        _root.save.inventoryAttack[i] = 27;
                        _root.save.inventorySpeed[i] = 7;
                        _root.save.inventoryDefense[i] = 900;
                        _root.save.inventoryCrit[i] = 10;
                        _root.save.inventoryDexterity[i] = 100;
                        _root.save.inventoryHealth[i] = 0;
                        _root.save.inventoryEnhance[i] = 11;
                        _root.save.inventoryBonusPow[i] = 114;
                        _root.save.inventorySpirit[i] = true;
                    }
                }
                i++;
            }
            _root.save.ver = 519;
        }
        if (_root.save.ver < 520)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Humblebee") != -1)
                    {
                        _root.save.inventoryExpTNL[i] = 90000000;
                    }
                    if (_root.save.inventoryName[i].indexOf("Ghost") != -1 && _root.save.inventoryType[i] == "Armor")
                    {
                        _root.save.inventoryDefense[i] += 200;
                    }
                    if (_root.save.inventoryName[i] == "Empowering Gem")
                    {
                        _root.save.inventoryDesc[i] += "This gem allows you to deal extra damage to monsters. The more you use it, the better it becomes!\n\nWhen equipped with a Rank 200+ weapon: Damage +50%";
                    }
                }
                i++;
            }
            _root.save.ver = 520;
        }
        if (_root.save.ver < 521)
        {
            _root.save.arenaSkillMax[6] = 1;
            _root.save.arenaSkillMax[7] = 1;
            _root.save.arenaSkillMax[8] = 1;
            _root.save.ver = 521;
        }
        if (_root.save.ver < 522)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Empowering Gem")
                    {
                        _root.save.inventoryDesc[i] = "This gem allows you to deal extra damage to monsters. The more you use it, the better it becomes!\n\nWhen equipped with a Rank 200+ weapon: Damage +50%";
                    }
                }
                i++;
            }
            _root.save.ver = 522;
        }
        if (_root.save.ver < 523)
        {
            if (_root.save.anniversary3Deal2 == true)
            {
                _root.save.mysteryBox[6] += 3;
            }
            _root.save.ver = 523;
        }
        if (_root.save.ver < 524)
        {
            if (_root.save.mainQuestRank[520] == 4)
            {
                _root.save.mainQuestS -= 1;
                _root.save.mainQuestA -= 1;
                _root.save.mainQuestB -= 1;
                _root.save.mainQuestC -= 1;
            }
            else if (_root.save.mainQuestRank[520] == 3)
            {
                _root.save.mainQuestA -= 1;
                _root.save.mainQuestB -= 1;
                _root.save.mainQuestC -= 1;
            }
            else if (_root.save.mainQuestRank[520] == 2)
            {
                _root.save.mainQuestB -= 1;
                _root.save.mainQuestC -= 1;
            }
            else if (_root.save.mainQuestRank[520] == 1)
            {
                _root.save.mainQuestC -= 1;
            }
            _root.save.ver = 524;
        }
        if (_root.save.ver < 525)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryType[i] == "Armor" && _root.save.inventoryReqRank[i] >= 450)
                    {
                        if (!_root.save.inventorySell.ContainsKey(i) || _root.save.inventoryName[i].Length <= 2)
                        {
                            _root.save.inventorySell[i] = _root.save.inventoryExpiry[i];
                            if (isNaN(_root.save.inventorySell[i]))
                            {
                                _root.save.inventorySell[i] = 4000000;
                            }
                            _root.save.inventoryExpiry[i] = Convert.ToDouble(_root.save.inventoryNoBonus[i]);
                            if (isNaN(_root.save.inventoryExpiry[i]))
                            {
                                _root.save.inventoryExpiry[i] = Infinity;
                            }
                            _root.save.inventoryNoBonus[i] = _root.save.inventoryNoLife[i];
                            _root.save.inventoryNoLife[i] = _root.save.inventoryNoFuse[i];
                            _root.save.inventoryNoFuse[i] = false;
                            _root.save.inventoryNoUnique[i] = false;
                            _root.save.inventorySpirit[i] = false;
                            _root.save.inventoryUnob[i] = Convert.ToDouble(_root.save.inventoryName[i]);
                            if (isNaN(_root.save.inventoryUnob[i]))
                            {
                                _root.save.inventoryUnob[i] = 0;
                            }
                            var tempName = "";
                            if (_root.save.inventoryReqRank[i] >= 550)
                            {
                                tempName = "Dress";
                            }
                            else
                            {
                                tempName = "Samurai";
                            }
                            _root.save.inventoryName[i] = tempName + " " + _root.save.inventorySubtype[i];
                            _root.save.inventoryDesc[i] = "";
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 525;
        }
        if (_root.save.ver < 526)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Samurai") != -1 || _root.save.inventoryName[i].indexOf("Dress") != -1)
                    {
                        _root.save.inventorySell[i] = 5000000;
                    }
                }
                i++;
            }
            _root.save.ver = 526;
        }
        if (_root.save.ver < 527)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryType[i] == "Armor" && _root.save.inventorySubtype[i] == "Shoes" && _root.save.inventoryFrame[i] == 150)
                    {
                        if (!_root.save.inventorySell.ContainsKey(i) || _root.save.inventoryName[i].Length <= 2)
                        {
                            _root.save.inventorySell[i] = 0;
                            _root.save.inventoryExpiry[i] = Infinity;
                            _root.save.inventoryNoBonus[i] = _root.save.inventoryNoLife[i];
                            _root.save.inventoryNoLife[i] = _root.save.inventoryNoFuse[i];
                            if (_root.save.inventoryNoFuse[i] == true)
                            {
                                _root.save.inventoryExpiry[i] = 0;
                                _root.save.inventoryNoLife[i] = false;
                            }
                            _root.save.inventoryNoFuse[i] = false;
                            _root.save.inventoryNoUnique[i] = false;
                            _root.save.inventorySpirit[i] = false;
                            //_root.save.inventoryUnob[i] = _root.save.inventoryName[i];
                            if (isNaN(_root.save.inventoryUnob[i]))
                            {
                                _root.save.inventoryUnob[i] = 0;
                            }
                            _root.save.inventoryName[i] = "Knightmare Shoes";
                            _root.save.inventoryDesc[i] = "";
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 527;
        }
        if (_root.save.ver < 528)
        {
            if (_root.save.printerCharge > 400)
            {
                if (_root.save.printerCharge > 5000000)
                {
                    _root.save.printerCharge = 5000000;
                }
                _root.save.mysteryBox[4] += Math.floor(_root.save.printerCharge / 10000);
                _root.save.printerCharge = 400;
            }
            _root.save.ver = 528;
        }
        if (_root.save.ver < 529)
        {
            _root.save.arcade100kMedal = Math.ceil(_root.save.arcade100kMedal / 2);
            _root.save.ver = 529;
        }
        if (_root.save.ver < 530)
        {
            _root.save.pirateSwordPenalty = 0;
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Pirate Sword" && _root.save.inventoryLevel[i] == 9999)
                    {
                        _root.save.pirateSwordPenalty += _root.save.inventoryExp[i] * 10;
                    }
                }
                i++;
            }
            if (_root.save.pirateSwordPenalty > 6500000000)
            {
                _root.save.pirateSwordPenalty = 6500000000;
            }
            _root.save.ver = 530;
        }
        if (_root.save.ver < 533)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Crystal ") != -1)
                    {
                        _root.save.inventoryDefense[i] += _root.save.inventoryReqRank[i] - 400;
                        _root.save.inventoryBonusPow[i] += _root.save.inventoryReqRank[i] * 2 - 1000;
                    }
                }
                i++;
            }
            _root.save.ver = 533;
        }
        if (_root.save.ver < 535)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Crystal ") != -1)
                    {
                        if (_root.save.inventoryLevel[i] == 9999)
                        {
                            _root.save.inventoryCrit[i] -= 24;
                            _root.save.inventoryDexterity[i] -= 24;
                            _root.save.inventoryHealth[i] -= 24;
                            _root.save.inventoryDefense[i] -= 120;
                        }
                        else
                        {
                            _root.save.inventoryCrit[i] -= 20;
                            _root.save.inventoryDexterity[i] -= 20;
                            _root.save.inventoryHealth[i] -= 20;
                            _root.save.inventoryDefense[i] -= 100;
                        }
                        _root.save.inventoryDesc[i] = "When equipped with a Mining Tool: Drop Rate +50%, Spawn Rate +15%\n\nDropped by: Secret Crystal";
                    }
                    if (_root.save.inventoryName[i] == "Nerf Accepted!")
                    {
                        _root.save.inventoryEnhance[i] = 1;
                        _root.save.inventoryCrit[i] = 5;
                        _root.save.inventoryDexterity[i] = 5;
                        _root.save.inventoryHealth[i] = 5;
                        _root.save.inventoryReqRank[i] = 10;
                        _root.save.inventoryBonusPow[i] -= 600;
                    }
                }
                i++;
            }
            _root.save.ver = 535;
        }
        if (_root.save.ver < 537)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Yellow Madness Gem")
                    {
                        _root.save.inventoryDesc[i] = "With this, you no longer suffer a 10% EXP penalty when fighting yellow-named monsters! It also increases your EXP gain rate and makes rare monsters more likely to appear! Isn\'t it awesome?";
                    }
                    if (_root.save.inventoryType[i] == "Outfit")
                    {
                        if (_root.save.inventoryName[i] == "Transparent Earrings" || _root.save.inventoryName[i] == "Yellow Skin" || _root.save.inventoryName[i] == "Invisible Skin")
                        {
                            _root.save.inventoryBonusPow[i] = 16;
                        }
                        else
                        {
                            _root.save.inventoryBonusPow[i] = 706;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 537;
        }
        if (_root.save.ver < 539)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Ghost Hat" || _root.save.inventoryName[i] == "Ghost Shirt" || _root.save.inventoryName[i] == "Ghost Gloves" || _root.save.inventoryName[i] == "Ghost Pants" || _root.save.inventoryName[i] == "Ghost Shoes")
                    {
                        _root.save.inventoryAttack[i] += 60;
                        _root.save.inventorySpeed[i] += 3;
                        _root.save.inventoryCrit[i] += 20;
                        _root.save.inventoryDexterity[i] += 20;
                        _root.save.inventoryHealth[i] += 20;
                    }
                    if (_root.save.inventoryName[i].indexOf("Elm") != -1)
                    {
                        _root.save.inventoryEnhance[i] -= 1;
                    }
                }
                i++;
            }
            _root.save.ver = 539;
        }
        if (_root.save.ver < 543)
        {
            _root.save.ripoffCard[1] += _root.save.ripoffCard[2] * 3;
            _root.save.ripoffCard[3] += _root.save.ripoffCard[4] * 3;
            _root.save.ripoffCard[4] = 0;
            var speedrunRefund = _root.save.speedRunCoin * 10;
            if (speedrunRefund > 200000)
            {
                speedrunRefund = 200000;
            }
            if (isNaN(speedrunRefund) || speedrunRefund < 0)
            {
                speedrunRefund = 0;
            }
            _root.save.eventToken += speedrunRefund;
            _root.save.ver = 543;
        }
        if (_root.save.ver < 544)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventorySubtype[i] == "Enhancer Success Enhancer" || _root.save.inventorySubtype[i] == "Enhancer Destruction Enhancer")
                    {
                        _root.save.eventToken += 100;
                    }
                }
                i++;
            }
            _root.save.ver = 544;
        }
        if (_root.save.ver < 545)
        {
            if (_root.save.serviceRewardBot == true)
            {
                _root.save.ripoffCard[5] += 1;
            }
            if (_root.save.serviceAutoHarvest == true)
            {
                _root.save.ripoffCard[6] += 1;
            }
            if (_root.save.serviceDemandMaster == true)
            {
                _root.save.ripoffCard[11] += 1;
            }
            if (_root.save.serviceQuickAdventures == true)
            {
                _root.save.ripoffCard[12] += 1;
            }
            _root.save.ver = 545;
        }
        if (_root.save.ver < 546)
        {
            if (_root.save.serviceBatteryCharger == true)
            {
                _root.save.ripoffCard[8] += 1;
            }
            _root.save.ver = 546;
        }
        if (_root.save.ver < 547)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Worst Moon Gem" && _root.save.inventoryNoLife[i] == false)
                    {
                        _root.save.inventoryExpiry[i] = Infinity;
                    }
                }
                i++;
            }
            _root.save.ver = 547;
        }
        if (_root.save.ver < 548)
        {
            _root.save.mysteryBox[3] += _root.save.arenaFreeReset;
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryLevel[i] < 9999 && _root.save.inventoryNoLife[i] == false)
                    {
                        _root.save.inventoryExpiry[i] = Infinity;
                    }
                    if (_root.save.inventoryNoLife.ContainsKey(i))
                    {
                        _root.save.inventoryNoLife[i] = false;
                    }
                    if (!_root.save.inventoryExist.ContainsKey(i) || !_root.save.inventoryExist.ContainsKey(i) || !_root.save.inventoryName.ContainsKey(i) || _root.save.inventorySubtype[i] == "Weapon Lifespan Extender" || _root.save.inventorySubtype[i] == "Armor Lifespan Extender" || _root.save.inventorySubtype[i] == "Accessory Lifespan Extender" || _root.save.inventorySubtype[i] == "Enhancer Success Enhancer" || _root.save.inventorySubtype[i] == "Enhancer Destruction Enhancer")
                    {
                        if (!_root.save.inventoryExist.ContainsKey(i))
                        {
                            _root.save.inventoryExist[i] = 0;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 548;
        }
        if (_root.save.ver < 550)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Nerf Accepted!" && _root.save.inventoryEnhance[i] > 5)
                    {
                        _root.save.inventoryEnhance[i] = 5;
                        _root.save.inventoryLevel[i] = 5;
                        _root.save.inventoryMaxLevel[i] = 5;
                        _root.save.inventoryCrit[i] = 25;
                        _root.save.inventoryDexterity[i] = 25;
                        _root.save.inventoryHealth[i] = 25;
                    }
                    if (_root.save.inventoryName[i] == "Anti-Nerfer")
                    {
                        if (!_root.save.inventoryExist.ContainsKey(i))
                        {
                            _root.save.inventoryExist[i] = 0;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 550;
        }
        if (_root.save.ver < 551)
        {
            i = 0;
            while (i <= 66)
            {
                if (isNaN(_root.save.arenaSkill[i]))
                {
                    _root.save.arenaSkill[i] = 0;
                }
                i++;
            }
            _root.save.ver = 551;
        }
        if (_root.save.ver < 552)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Nerf Accepted!")
                    {
                        _root.save.inventoryReqRank[i] = _root.save.inventoryEnhance[i] * 10;
                    }
                }
                i++;
            }
            _root.save.ver = 552;
        }
        if (_root.save.ver < 553)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Loot Magnet")
                    {
                        _root.save.inventoryAttack[i] = 1200;
                    }
                }
                i++;
            }
            _root.save.ver = 553;
        }
        if (_root.save.ver < 554)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Neon Skin" && _root.save.inventoryUnob[i] == 6)
                    {
                        _root.save.inventoryUnob[i] = 7;
                    }
                }
                i++;
            }
            _root.save.ver = 554;
        }
        if (_root.save.ver < 555)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Meteoric") != -1)
                    {
                        _root.save.inventoryUnob[i] = 20;
                    }
                }
                i++;
            }
            _root.save.ver = 555;
        }
        if (_root.save.ver < 556)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Meteoric") != -1)
                    {
                        _root.save.inventoryUnob[i] = 20;
                    }
                }
                i++;
            }
            _root.save.ver = 556;
        }
        if (_root.save.ver < 557)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Newbie Fighter")
                    {
                        _root.save.inventoryAttack[i] = 5;
                        _root.save.inventoryBonus[i] = "EXP";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Fighter")
                    {
                        _root.save.inventoryAttack[i] = 10;
                        _root.save.inventoryBonus[i] = "EXP";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Veteran Fighter")
                    {
                        _root.save.inventoryAttack[i] = 15;
                        _root.save.inventoryBonus[i] = "EXP";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Heroic Fighter")
                    {
                        _root.save.inventoryAttack[i] = 20;
                        _root.save.inventoryBonus[i] = "EXP";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Elite Fighter")
                    {
                        _root.save.inventoryAttack[i] = 25;
                        _root.save.inventoryBonus[i] = "EXP";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Master Fighter")
                    {
                        _root.save.inventoryAttack[i] = 30;
                        _root.save.inventoryBonus[i] = "EXP";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Fighter")
                    {
                        _root.save.inventoryAttack[i] = 35;
                        _root.save.inventoryBonus[i] = "EXP";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Arena Champion")
                    {
                        _root.save.inventoryAttack[i] = 40;
                        _root.save.inventoryBonus[i] = "EXP";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Combo King")
                    {
                        _root.save.inventoryBonus[i] = "";
                        _root.save.inventoryAbility[i] = "Double Hit Chance";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Bestiary Master")
                    {
                        _root.save.inventoryDexterity[i] = 10;
                        _root.save.inventoryHealth[i] = 10;
                        _root.save.inventoryBonus[i] = "Spawn Rate";
                        _root.save.inventoryAbility[i] = "Instant Kill";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Bestiary King")
                    {
                        _root.save.inventoryDexterity[i] = 15;
                        _root.save.inventoryHealth[i] = 15;
                        _root.save.inventoryBonus[i] = "Spawn Rate";
                        _root.save.inventoryAbility[i] = "Instant Kill";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Mad Scientist")
                    {
                        _root.save.inventoryDexterity[i] = 20;
                        _root.save.inventoryHealth[i] = 20;
                        _root.save.inventoryBonus[i] = "Spawn Rate";
                        _root.save.inventoryAbility[i] = "Instant Kill";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "THE BESTiary")
                    {
                        _root.save.inventoryDexterity[i] = 25;
                        _root.save.inventoryHealth[i] = 25;
                        _root.save.inventoryBonus[i] = "Spawn Rate";
                        _root.save.inventoryAbility[i] = "Instant Kill";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Bottomless Bag")
                    {
                        _root.save.inventoryHealth[i] = 30;
                        _root.save.inventoryBonus[i] = "Drop Rate";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Novice Tamer")
                    {
                        _root.save.inventoryCrit[i] = 10;
                        _root.save.inventoryBonus[i] = "Rare Monster Rate";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "EXP / Rare Kill";
                    }
                    if (_root.save.inventoryName[i] == "Veteran Tamer")
                    {
                        _root.save.inventoryCrit[i] = 15;
                        _root.save.inventoryBonus[i] = "Rare Monster Rate";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "EXP / Rare Kill";
                    }
                    if (_root.save.inventoryName[i] == "Master Tamer")
                    {
                        _root.save.inventoryCrit[i] = 20;
                        _root.save.inventoryBonus[i] = "Rare Monster Rate";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "EXP / Rare Kill";
                    }
                    if (_root.save.inventoryName[i] == "Legendary Tamer")
                    {
                        _root.save.inventoryCrit[i] = 25;
                        _root.save.inventoryBonus[i] = "Rare Monster Rate";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "EXP / Rare Kill";
                    }
                    if (_root.save.inventoryName[i] == "Novice Trainer")
                    {
                        _root.save.inventoryCrit[i] = 10;
                        _root.save.inventoryHealth[i] = 10;
                        _root.save.inventoryBonus[i] = "Epic Monster Rate";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "EXP / Epic Kill";
                    }
                    if (_root.save.inventoryName[i] == "Veteran Trainer")
                    {
                        _root.save.inventoryCrit[i] = 15;
                        _root.save.inventoryHealth[i] = 15;
                        _root.save.inventoryBonus[i] = "Epic Monster Rate";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "EXP / Epic Kill";
                    }
                    if (_root.save.inventoryName[i] == "Master Trainer")
                    {
                        _root.save.inventoryCrit[i] = 20;
                        _root.save.inventoryHealth[i] = 20;
                        _root.save.inventoryBonus[i] = "Epic Monster Rate";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "EXP / Epic Kill";
                    }
                    if (_root.save.inventoryName[i] == "Legendary Trainer")
                    {
                        _root.save.inventoryCrit[i] = 25;
                        _root.save.inventoryHealth[i] = 25;
                        _root.save.inventoryBonus[i] = "Epic Monster Rate";
                        _root.save.inventoryAbility[i] = "";
                        _root.save.inventoryMoreBonus[i] = "EXP / Epic Kill";
                    }
                    if (_root.save.inventoryName[i].indexOf("of Loot") > 0)
                    {
                        if (_root.save.inventoryLevel[i] == 9999)
                        {
                            _root.save.inventoryCrit[i] -= 6;
                            _root.save.inventoryDexterity[i] -= 6;
                            _root.save.inventoryHealth[i] -= 6;
                        }
                        else
                        {
                            _root.save.inventoryCrit[i] -= 5;
                            _root.save.inventoryDexterity[i] -= 5;
                            _root.save.inventoryHealth[i] -= 5;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 557;
        }
        if (_root.save.ver < 558)
        {
            i = 1;
            while (i <= 1337)
            {
                if (!_root.save.inventoryName.ContainsKey(i))
                {
                    _root.save.inventoryExist[i] = 0;
                }
                i++;
            }
            _root.save.ver = 558;
        }
        if (_root.save.ver < 559)
        {
            _root.save.raidPyramid = 0;
            _root.save.raidDefend = 0;
            _root.save.ver = 559;
        }
        if (_root.save.ver < 560)
        {
            _root.save.raidPyramid = 0;
            _root.save.raidDefend = 0;
            _root.save.ver = 560;
        }
        if (_root.save.ver < 561)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryType[i] == "Armor")
                    {
                        if (_root.save.inventoryName[i].indexOf("Ghost") != -1)
                        {
                            _root.save.inventoryEnhance[i] -= 1;
                            if (_root.save.inventoryLevel[i] == 9999)
                            {
                                _root.save.inventoryAttack[i] += 24;
                                _root.save.inventoryCrit[i] += 24;
                                _root.save.inventoryDexterity[i] += 24;
                                _root.save.inventoryHealth[i] += 24;
                            }
                            else
                            {
                                _root.save.inventoryAttack[i] += 20;
                                _root.save.inventoryCrit[i] += 20;
                                _root.save.inventoryDexterity[i] += 20;
                                _root.save.inventoryHealth[i] += 20;
                            }
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 561;
        }
        if (_root.save.ver < 562)
        {
            if (_root.save.gDifficulty >= 3)
            {
                _root.save.arenaAttack = 90000;
                _root.save.arenaDefense = 90000;
                _root.save.arenaMaxHealth = 900000;
                _root.save.arenaMaxMana = 360000;
                _root.save.arenaAccuracy = 18000;
                _root.save.arenaEvasion = 18000;
                _root.save.arenaPixel += _root.save.bankArenaPixel;
                _root.save.arenaCraft += _root.save.bankArenaCraft;
            }
            _root.save.ver = 562;
        }
        if (_root.save.ver < 563)
        {
            var hadHB = false;
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Humblebee") != -1)
                    {
                        hadHB = true;
                    }
                }
                i++;
            }
            if (hadHB == true)
            {
                _root.save.arenaPixel += 20000000000;
                _root.save.arenaCraft += 4000000000;
            }
            _root.save.ver = 563;
        }
        if (_root.save.ver < 564)
        {
            var hadHB = false;
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Humblebee") != -1 && _root.save.inventoryExist[i] == 1)
                    {
                        hadHB = true;
                    }
                }
                i++;
            }
            if (hadHB == false)
            {
                _root.save.arenaPixel -= 20000000000;
                _root.save.arenaCraft -= 4000000000;
            }
            if (_root.save.arenaPixel < 0)
            {
                _root.save.arenaPixel *= 4;
            }
            if (_root.save.arenaCraft < 0)
            {
                _root.save.arenaCraft *= 4;
            }
            _root.save.ver = 564;
        }
        if (_root.save.ver < 566)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Collector\'s Pendant")
                    {
                        _root.save.inventoryEnhance[i] = 10;
                    }
                }
                i++;
            }
            _root.save.ver = 566;
        }
        if (_root.save.ver < 570)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Glaive of Smiting")
                    {
                        _root.save.inventoryReqRank[i] = 258;
                    }
                    if (_root.save.inventoryName[i] == "Darkglaive of Smiting")
                    {
                        _root.save.inventoryReqRank[i] = 278;
                    }
                    if (_root.save.inventoryName[i] == "Fiend Glaive")
                    {
                        _root.save.inventoryReqRank[i] = 298;
                    }
                }
                i++;
            }
            if (_root.save.arenaPixel < 0)
            {
                _root.save.arenaCraft += Math.floor(_root.save.arenaPixel / 20);
                _root.save.arenaPixel = 0;
            }
            _root.save.ver = 570;
        }
        if (_root.save.ver < 571)
        {
            if (_root.save.bestLevel >= 2)
            {
                _root.save.eventToken += 1500;
            }
            _root.save.ver = 571;
        }
        if (_root.save.ver < 572)
        {
            if (_root.save.inventoryExist[i] == 1)
            {
                if (_root.save.inventorySubtype[i] == "Enhancer Destruction Enhancer")
                {
                    if (!_root.save.inventoryExist.ContainsKey(i))
                    {
                        _root.save.inventoryExist[i] = 0;
                    }
                }
            }
            _root.save.ver = 572;
        }
        if (_root.save.ver < 574)
        {
            _root.save.battlePoint += Math.floor(_root.save.arenaExp / 100000000);
            _root.save.arenaExp -= _root.save.battlePoint * 100000000;
            _root.save.battlePoint += _root.save.arenaLevel;
            if (_root.save.gDifficulty >= 3)
            {
                _root.save.stadiumEnergy = 50;
                _root.save.stadiumAccel = 50;
                _root.save.stadiumMaxSpeed = 50;
                _root.save.stadiumStartSpeed = 50;
                _root.save.stadiumDash = 50;
                _root.save.stadiumJump = 50;
                _root.save.stadiumBoost = 50;
                _root.save.stadiumReward = 50;
                _root.save.stadiumAbilityCost = 400;
                _root.save.stadiumToken += _root.save.bankStadiumToken;
            }
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventorySubtype[i] == "Trinket" && _root.save.inventoryMaxLevel[i] == 500)
                    {
                        _root.save.inventoryReqRank[i] = 1;
                        _root.save.inventoryUnob[i] = Math.floor(_root.save.inventoryLevel[i] / 10) + 10;
                        if (_root.save.inventoryUnob[i] < 0)
                        {
                            _root.save.inventoryUnob[i] = 0;
                        }
                        if (_root.save.inventoryLevel[i] == 500)
                        {
                            _root.save.inventoryUnob[i] = 99;
                        }
                    }
                }
                i++;
            }
            _root.save.arenaSpookyScore = 0;
            _root.save.ver = 574;
        }
        if (_root.save.ver < 575)
        {
            _root.save.arenaExpExcess = _root.save.battlePoint - _root.save.arenaLevel - _root.save.bannedB * 1000;
            _root.save.ver = 575;
        }
        if (_root.save.ver < 578)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Nerf Accepted!" && _root.save.inventoryEnhance[i] > 7)
                    {
                        _root.save.inventoryEnhance[i] = 7;
                        _root.save.inventoryLevel[i] = 7;
                        _root.save.inventoryMaxLevel[i] = 7;
                        _root.save.inventoryCrit[i] = 35;
                        _root.save.inventoryDexterity[i] = 35;
                        _root.save.inventoryHealth[i] = 35;
                    }
                    if (_root.save.inventoryName[i] == "Anti-Nerfer")
                    {
                        _root.save.inventoryExpiry[i] = 0;
                    }
                }
                i++;
            }
            _root.save.ver = 578;
        }
        if (_root.save.ver < 580)
        {
            if (_root.save.printerLevel >= 25)
            {
                _root.save.coinLag += 250000 * _root.save.bestLevel;
            }
            _root.save.ver = 580;
        }
        if (_root.save.ver < 581)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventorySubtype[i] == "Trinket" && _root.save.inventoryMaxLevel[i] == 500)
                    {
                        _root.save.inventoryReqRank[i] = 400;
                        _root.save.inventoryUnob[i] = Math.floor(_root.save.inventoryLevel[i] / 10) + 10;
                    }
                }
                i++;
            }
            _root.save.arenaSpookyScore = 0;
            _root.save.ver = 581;
        }
        if (_root.save.ver < 582)
        {
            if (_root.save.arenaLevel < _root.save.inventoryReqRank[_root.save.arenaTrinket])
            {
                _root.save.arenaTrinket = 0;
            }
            _root.save.ver = 582;
        }
        if (_root.save.ver < 583)
        {
            if (_root.save.bestLevel < 25 || _root.save.arenaAccuracy < 50)
            {
                _root.save.arenaMaxHealth = 500;
                _root.save.arenaMaxMana = 300;
                _root.save.arenaAttack = 100;
                _root.save.arenaDefense = 100;
                _root.save.arenaAccuracy = 50;
                _root.save.arenaEvasion = 50;
            }
            _root.save.ver = 583;
        }
        if (_root.save.ver < 585)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryType[i] == "Outfit")
                    {
                        _root.save.inventoryReqRank[i] = 1;
                    }
                    if (_root.save.inventoryName[i] == "Fighter")
                    {
                        _root.save.inventoryAttack[i] = 15;
                        _root.save.inventoryDefense[i] = 15;
                    }
                    if (_root.save.inventoryName[i] == "Veteran Fighter")
                    {
                        _root.save.inventoryAttack[i] = 30;
                        _root.save.inventoryDefense[i] = 30;
                    }
                    if (_root.save.inventoryName[i] == "Heroic Fighter")
                    {
                        _root.save.inventoryAttack[i] = 50;
                        _root.save.inventoryDefense[i] = 50;
                    }
                    if (_root.save.inventoryName[i] == "Elite Fighter")
                    {
                        _root.save.inventoryAttack[i] = 75;
                        _root.save.inventoryDefense[i] = 75;
                    }
                    if (_root.save.inventoryName[i] == "Master Fighter")
                    {
                        _root.save.inventoryAttack[i] = 105;
                        _root.save.inventoryDefense[i] = 105;
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Fighter")
                    {
                        _root.save.inventoryAttack[i] = 140;
                        _root.save.inventoryDefense[i] = 140;
                    }
                    if (_root.save.inventoryName[i] == "Arena Champion")
                    {
                        _root.save.inventoryAttack[i] = 180;
                        _root.save.inventoryDefense[i] = 180;
                    }
                    if (_root.save.inventoryName[i] == "Combo King")
                    {
                        _root.save.inventorySpeed[i] = 5;
                    }
                    if (_root.save.inventoryName[i] == "Bestiary King")
                    {
                        _root.save.inventoryDexterity[i] = 25;
                        _root.save.inventoryHealth[i] = 25;
                    }
                    if (_root.save.inventoryName[i] == "Mad Scientist")
                    {
                        _root.save.inventoryDexterity[i] = 50;
                        _root.save.inventoryHealth[i] = 50;
                    }
                    if (_root.save.inventoryName[i] == "THE BESTiary")
                    {
                        _root.save.inventoryDexterity[i] = 100;
                        _root.save.inventoryHealth[i] = 100;
                    }
                    if (_root.save.inventoryName[i] == "Bottomless Bag")
                    {
                        _root.save.inventoryHealth[i] = 150;
                    }
                    if (_root.save.inventoryName[i] == "Veteran Tamer")
                    {
                        _root.save.inventoryCrit[i] = 25;
                    }
                    if (_root.save.inventoryName[i] == "Master Tamer")
                    {
                        _root.save.inventoryCrit[i] = 50;
                    }
                    if (_root.save.inventoryName[i] == "Legendary Tamer")
                    {
                        _root.save.inventoryCrit[i] = 100;
                    }
                    if (_root.save.inventoryName[i] == "Veteran Trainer")
                    {
                        _root.save.inventoryCrit[i] = 25;
                        _root.save.inventoryHealth[i] = 25;
                    }
                    if (_root.save.inventoryName[i] == "Master Trainer")
                    {
                        _root.save.inventoryCrit[i] = 50;
                        _root.save.inventoryHealth[i] = 50;
                    }
                    if (_root.save.inventoryName[i] == "Legendary Trainer")
                    {
                        _root.save.inventoryCrit[i] = 100;
                        _root.save.inventoryHealth[i] = 100;
                    }
                }
                i++;
            }
            _root.save.ver = 585;
        }
        if (_root.save.ver < 586)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Fairy Godmother Wand")
                    {
                        _root.save.inventoryReqRank[i] = 300;
                    }
                }
                i++;
            }
            _root.save.ver = 586;
        }
        if (_root.save.ver < 587)
        {
            _root.save.ver = 587;
        }
        if (_root.save.ver < 589)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Nerf Accepted!")
                    {
                        _root.save.inventoryReqRank[i] = _root.save.inventoryEnhance[i] * 10;
                        if (_root.save.inventoryReqRank[i] > 100)
                        {
                            _root.save.inventoryReqRank[i] = 100;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 589;
        }
        if (_root.save.ver < 591)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Fairy Godmother Wand")
                    {
                        _root.save.inventoryDesc[i] = "When equipped: Magic Resist +15%, Negate Effect Chance +15%";
                    }
                    if (_root.save.inventoryName[i] == "Pure Darkness Claw")
                    {
                        _root.save.inventoryDesc[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Crimson Bow")
                    {
                        _root.save.inventoryDesc[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Censor Sword")
                    {
                        _root.save.inventoryDesc[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Glaive of Smiting")
                    {
                        _root.save.inventoryDesc[i] = "Shoots invisible projectiles!\nCannot be enhanced with Attack enhancers.";
                    }
                    if (_root.save.inventoryName[i] == "Darkglaive of Smiting")
                    {
                        _root.save.inventoryDesc[i] = "Shoots invisible projectiles!\nCannot be enhanced with Attack enhancers.";
                    }
                    if (_root.save.inventoryName[i] == "Fiend Glaive")
                    {
                        _root.save.inventoryDesc[i] = "Cannot be enhanced with Attack enhancers.";
                    }
                    if (_root.save.inventoryName[i].indexOf("Meteoric") != -1)
                    {
                        _root.save.inventoryDesc[i] = "";
                    }
                    if (_root.save.inventoryName[i].indexOf("DOOOOOOM") != -1)
                    {
                        _root.save.inventoryDesc[i] = "";
                    }
                    if (_root.save.inventoryName[i].indexOf("Crystal") != -1)
                    {
                        _root.save.inventoryDesc[i] = "";
                    }
                    if (_root.save.inventoryName[i].indexOf("Hat of Loot") != -1)
                    {
                        _root.save.inventoryDesc[i] = "";
                    }
                    if (_root.save.inventoryName[i].indexOf("Ultimate") != -1)
                    {
                        _root.save.inventoryDesc[i] = "";
                    }
                    if (_root.save.inventoryName[i] == "Ultimate Weapon")
                    {
                        _root.save.inventoryDesc[i] = "Also shoots projectiles at monsters from a far distance!";
                    }
                    if (_root.save.inventoryName[i] == "Gem of Constancy")
                    {
                        _root.save.inventoryDesc[i] = "This gem gets more and more powerful as you fight with it equipped, but whenever you unequip it, it goes back to its original state. Also, you cannot change equipment when Gem of Constancy is equipped!";
                    }
                    if (_root.save.inventoryName[i] == "Empowering Gem")
                    {
                        _root.save.inventoryDesc[i] = "This gem allows you to deal extra damage to monsters. The more you use it, the better it becomes!";
                    }
                }
                i++;
            }
            _root.save.ver = 591;
        }
        if (_root.save.ver < 593)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Crystal") != -1)
                    {
                        _root.save.inventoryDesc[i] = "";
                    }
                }
                i++;
            }
            _root.save.ver = 593;
        }
        if (_root.save.ver < 594)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Humblebee") != -1 && _root.save.inventoryName[i] != "Humblebee Armor Upgrade")
                    {
                        if (_root.save.inventoryLevel[i] == 9999)
                        {
                            _root.save.inventoryCrit[i] += 12;
                            _root.save.inventoryDexterity[i] += 12;
                            _root.save.inventoryHealth[i] += 12;
                        }
                        else
                        {
                            _root.save.inventoryCrit[i] += 10;
                            _root.save.inventoryDexterity[i] += 10;
                            _root.save.inventoryHealth[i] += 10;
                        }
                    }
                    if (_root.save.inventoryName[i].indexOf("Ghost") != -1)
                    {
                        if (_root.save.inventoryLevel[i] == 9999)
                        {
                            _root.save.inventoryCrit[i] += 24;
                            _root.save.inventoryDexterity[i] += 24;
                            _root.save.inventoryHealth[i] += 24;
                        }
                        else
                        {
                            _root.save.inventoryCrit[i] += 20;
                            _root.save.inventoryDexterity[i] += 20;
                            _root.save.inventoryHealth[i] += 20;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 594;
        }
        if (_root.save.ver < 595)
        {
            if (!isNaN(_root.save.bankStadiumToken))
            {
                _root.save.stadiumToken += _root.save.bankStadiumToken;
            }
            if (_root.save.bannedImpossible >= 1 && !isNaN(_root.save.stadiumTokenMax) && _root.save.stadiumToken < _root.save.stadiumTokenMax)
            {
                _root.save.stadiumToken = _root.save.stadiumTokenMax;
            }
            _root.save.ver = 595;
        }
        if (_root.save.ver < 596)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Humblebee") != -1 && _root.save.inventoryName[i] != "Humblebee Armor Upgrade")
                    {
                        if (_root.save.inventoryLevel[i] == 9999)
                        {
                            _root.save.inventoryCrit[i] -= 12;
                            _root.save.inventoryDexterity[i] -= 12;
                            _root.save.inventoryHealth[i] -= 12;
                        }
                        else
                        {
                            _root.save.inventoryCrit[i] -= 10;
                            _root.save.inventoryDexterity[i] -= 10;
                            _root.save.inventoryHealth[i] -= 10;
                        }
                        if (_root.save.inventoryMaxLevel[i] >= 84 && _root.save.inventoryMaxLevel[i] < 184)
                        {
                            _root.save.inventoryEnhance[i] -= 1;
                        }
                        else if (_root.save.inventoryMaxLevel[i] == 9999)
                        {
                            _root.save.inventoryDefense[i] += 300;
                            if (_root.save.inventoryDefense[i] > 2160)
                            {
                                _root.save.inventoryDefense[i] = 2160;
                            }
                            _root.save.inventoryAttack[i] += 60;
                            _root.save.inventoryDexterity[i] += 40;
                            _root.save.inventoryHealth[i] += 30;
                            _root.save.inventoryCrit[i] += 24;
                        }
                        else if (_root.save.inventoryMaxLevel[i] >= 184)
                        {
                            _root.save.inventoryMaxLevel[i] += 100;
                        }
                    }
                    if (_root.save.inventoryName[i].indexOf("Ghost") != -1)
                    {
                        _root.save.inventoryUnob[i] = 5;
                    }
                }
                i++;
            }
            _root.save.ver = 596;
        }
        if (_root.save.ver < 597)
        {
            if (isNaN(_root.save.inventoryExp[_root.save.arenaSkin]))
            {
                _root.save.inventoryExp[_root.save.arenaSkin] = 0;
            }
            _root.save.ver = 597;
        }
        if (_root.save.ver < 599)
        {
            _root.save.boostAuto = false;
            _root.save.boostMax = Math.round((_root.save.boostMax + _root.save.boostMin * 0.2) / 50) * 50;
            if (_root.save.mainQuestRank[152] == 4)
            {
                _root.save.mainQuestS -= 1;
                _root.save.mainQuestA -= 1;
                _root.save.mainQuestB -= 1;
                _root.save.mainQuestC -= 1;
            }
            else if (_root.save.mainQuestRank[152] == 3)
            {
                _root.save.mainQuestA -= 1;
                _root.save.mainQuestB -= 1;
                _root.save.mainQuestC -= 1;
            }
            else if (_root.save.mainQuestRank[152] == 2)
            {
                _root.save.mainQuestB -= 1;
                _root.save.mainQuestC -= 1;
            }
            else if (_root.save.mainQuestRank[152] == 1)
            {
                _root.save.mainQuestC -= 1;
            }
            _root.save.ver = 599;
        }
        if (_root.save.ver < 604)
        {
            _root.save.ver = 604;
        }
        if (_root.save.ver < 605)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventorySubtype[i] == "Secondary Weapon")
                    {
                        _root.save.inventoryUnob[i] = 30;
                    }
                }
                i++;
            }
            _root.save.ver = 605;
        }
        if (_root.save.ver < 606)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventorySubtype[i] == "Secondary Weapon")
                    {
                        _root.save.inventoryNoBonus[i] = true;
                        if (_root.save.inventoryName[i] == "Poison Arrows")
                        {
                            _root.save.inventoryAbility[i] = "Poison Chance";
                            _root.save.inventoryMoreBonus[i] = "Equipment Attack";
                        }
                        if (_root.save.inventoryName[i] == "Explosive Arrows")
                        {
                            _root.save.inventoryAbility[i] = "Stun Chance";
                            _root.save.inventoryMoreBonus[i] = "Equipment Attack";
                        }
                        if (_root.save.inventoryName[i] == "Mega Bullets" || _root.save.inventoryName[i] == "[Event] Mega Bullets")
                        {
                            _root.save.inventoryAbility[i] = "Double Hit Chance";
                            _root.save.inventoryMoreBonus[i] = "Equipment Attack";
                        }
                        if (_root.save.inventoryName[i] == "Master Shurikens")
                        {
                            _root.save.inventoryAbility[i] = "Mastery";
                            _root.save.inventoryMoreBonus[i] = "Equipment Attack";
                        }
                        if (_root.save.inventoryName[i] == "Fire Card")
                        {
                            _root.save.inventoryBonus[i] = "Fire Element";
                            _root.save.inventoryAbility[i] = "Poison Chance";
                        }
                        if (_root.save.inventoryName[i] == "Ice Card")
                        {
                            _root.save.inventoryBonus[i] = "Ice Element";
                            _root.save.inventoryAbility[i] = "Stun Chance";
                        }
                        if (_root.save.inventoryName[i] == "Wind Card")
                        {
                            _root.save.inventoryBonus[i] = "Wind Element";
                            _root.save.inventoryAbility[i] = "Weaken Chance";
                        }
                        if (_root.save.inventoryName[i] == "Earth Card")
                        {
                            _root.save.inventoryBonus[i] = "Earth Element";
                            _root.save.inventoryAbility[i] = "Weaken Chance";
                        }
                        if (_root.save.inventoryName[i] == "Thunder Card")
                        {
                            _root.save.inventoryBonus[i] = "Thunder Element";
                            _root.save.inventoryAbility[i] = "Stun Chance";
                        }
                        if (_root.save.inventoryName[i] == "Water Card")
                        {
                            _root.save.inventoryBonus[i] = "Water Element";
                            _root.save.inventoryAbility[i] = "Poison Chance";
                        }
                        if (_root.save.inventoryName[i] == "Light Card")
                        {
                            _root.save.inventoryBonus[i] = "Light Element";
                            _root.save.inventoryAbility[i] = "Blind Chance";
                        }
                        if (_root.save.inventoryName[i] == "Dark Card")
                        {
                            _root.save.inventoryBonus[i] = "Dark Element";
                            _root.save.inventoryAbility[i] = "Blind Chance";
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 606;
        }
        if (_root.save.ver < 607)
        {
            _root.save.deathMatchEntry = 1;
            _root.save.ver = 607;
        }
        if (_root.save.ver < 608)
        {
            if (_root.saveid >= 20)
            {
                i = 1;
                while (i <= 34)
                {
                    if (_root.save.specialStock[i] < 5)
                    {
                        _root.save.specialStock[i] += 3;
                    }
                    _root.save.specialStock[1] = 1;
                    _root.save.specialStock[2] = 5;
                    _root.save.specialStock[27] = 1;
                    _root.save.specialStock[28] = 1;
                    _root.save.specialStock[29] = 1;
                    _root.save.specialStock[30] = 1;
                    i++;
                }
            }
            _root.save.ver = 608;
        }
        if (_root.save.ver < 609)
        {
            _root.save.permaBanPenalty = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
            _root.save.permaStupidity = _root.save.banned;
            _root.save.permaStupidityHard = _root.save.bannedHard;
            _root.save.permaStupidityImpossible = _root.save.bannedImpossible;
            _root.save.ver = 609;
        }
        if (_root.save.ver < 613)
        {
            if (_root.save.speedRunMode9001 != 2147483647 && _root.save.speedRunMode9001 > 0)
            {
                _root.saveGlobal.challengeTime[0] = _root.save.speedRunMode9001 * 60;
                _root.saveGlobal.challengeAttempted[0] = true;
                _root.saveGlobal.challengePerfect[0] = true;
            }
            if (_root.save.fishLevel >= 30)
            {
                _root.save.fishLevel = 30;
                _root.save.fishScore += _root.save.fishExp * 50;
                _root.save.fishExpTotal += _root.save.fishExp;
                _root.save.fishExp = 0;
            }
            if (_root.save.gDifficulty == 3)
            {
                _root.save.currentExp = Math.floor(_root.save.currentExp * 2);
                _root.save.totalExp = Math.floor(_root.save.totalExp * 2);
            }
            if (_root.save.gDifficulty == 2)
            {
                _root.save.currentExp = Math.floor(_root.save.currentExp * 4 / 3);
                _root.save.totalExp = Math.floor(_root.save.totalExp * 4 / 3);
            }
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryName[i] == "Gem of Eternal Rage")
                {
                    _root.save.inventoryDesc[i] = "With this, you will gain 0.5% Rage every second and ignore all forms of rage depletion!";
                }
                i++;
            }
            _root.save.ver = 613;
        }
        if (_root.save.ver < 614)
        {
            _root.save.whiteCoin += Math.floor(_root.save.totalPlayTime / 720);
            _root.save.ver = 614;
        }
        if (_root.save.ver < 615)
        {
            _root.save.arenaMaxDamage = 0;
            _root.save.raidPyramid = 0;
            _root.save.raidDefend = 0;
            _root.save.raidPrehistoric = 0;
            _root.save.raidMegaboss = 0;
            _root.save.raidTower = 0;
            _root.save.raidDungeon = 0;
            _root.save.raidEndless = 0;
            _root.save.arenaRevengeScore = 0;
            _root.save.arenaTriangleScore = 0;
            _root.save.arenaTriangleToday = 0;
            _root.save.arenaSpookyScore = 0;
            _root.save.arenaSpookyToday = 0;
            _root.save.ver = 615;
        }
        if (_root.save.ver < 616)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryName[i] == "Chaos Hat" || _root.save.inventoryName[i] == "Chaos Shirt" || _root.save.inventoryName[i] == "Chaos Gloves" || _root.save.inventoryName[i] == "Chaos Pants" || _root.save.inventoryName[i] == "Chaos Shoes" || _root.save.inventoryName[i] == "CHAOS HAT" || _root.save.inventoryName[i] == "CHAOS SHIRT" || _root.save.inventoryName[i] == "CHAOS GLOVES" || _root.save.inventoryName[i] == "(MYSTERIOUS ITEM)" || _root.save.inventoryName[i] == "CHAOS PANTS" || _root.save.inventoryName[i] == "CHAOS SHOES" || _root.save.inventoryName[i] == "Dragon Slayer Hat" || _root.save.inventoryName[i] == "Dragon Slayer Shirt" || _root.save.inventoryName[i] == "Dragon Slayer Gloves" || _root.save.inventoryName[i] == "Dragon Slayer Pants" || _root.save.inventoryName[i] == "Dragon Slayer Shoes" || _root.save.inventoryName[i] == "Demon Slayer Hat" || _root.save.inventoryName[i] == "Demon Slayer Shirt" || _root.save.inventoryName[i] == "Demon Slayer Gloves" || _root.save.inventoryName[i] == "Demon Slayer Pants" || _root
                .save.inventoryName[i] == "Demon Slayer Shoes")
                {
                    if (_root.save.inventoryObtainTime[i] > 1385823600000)
                    {
                        _root.save.inventoryExpiry[i] = 0;
                        _root.save.inventoryDesc[i] = "This item has been blocked in an attempt to wipe out exploited items. If you believe your item was wrongfully blocked, please post a screenshot of the item in the forum.\n\nCODE: " + random(999999999);
                    }
                }
                i++;
            }
            _root.save.ver = 616;
        }
        if (_root.save.ver < 617)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryName[i] == "Chaos Hat" || _root.save.inventoryName[i] == "Chaos Shirt" || _root.save.inventoryName[i] == "Chaos Gloves" || _root.save.inventoryName[i] == "Chaos Pants" || _root.save.inventoryName[i] == "Chaos Shoes" || _root.save.inventoryName[i] == "CHAOS HAT" || _root.save.inventoryName[i] == "CHAOS SHIRT" || _root.save.inventoryName[i] == "CHAOS GLOVES" || _root.save.inventoryName[i] == "(MYSTERIOUS ITEM)" || _root.save.inventoryName[i] == "CHAOS PANTS" || _root.save.inventoryName[i] == "CHAOS SHOES" || _root.save.inventoryName[i] == "Dragon Slayer Hat" || _root.save.inventoryName[i] == "Dragon Slayer Shirt" || _root.save.inventoryName[i] == "Dragon Slayer Gloves" || _root.save.inventoryName[i] == "Dragon Slayer Pants" || _root.save.inventoryName[i] == "Dragon Slayer Shoes" || _root.save.inventoryName[i] == "Demon Slayer Hat" || _root.save.inventoryName[i] == "Demon Slayer Shirt" || _root.save.inventoryName[i] == "Demon Slayer Gloves" || _root.save.inventoryName[i] == "Demon Slayer Pants" || _root
                .save.inventoryName[i] == "Demon Slayer Shoes")
                {
                    if (_root.save.inventoryObtainTime[i] > 1385823600000)
                    {
                        _root.save.inventoryExpiry[i] = 0;
                        _root.save.inventoryDesc[i] = "This item has been blocked in an attempt to wipe out exploited items. If you believe your item was wrongfully blocked, please post a screenshot of the item in the forum.\n\nCODE: " + random(999999999);
                    }
                }
                i++;
            }
            _root.save.ver = 617;
        }
        if (_root.save.ver < 619)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExpiry[i] == 0 && _root.save.inventoryObtainTime[i] > 1385823600000 && _root.save.inventoryDesc[i] != "" && _root.save.inventoryDesc[i].indexOf("exploited") != -1)
                {
                    if (_root.save.inventoryDesc[i].indexOf("617523110") != -1 || _root.save.inventoryDesc[i].indexOf("673811149") != -1 || _root.save.inventoryDesc[i].indexOf("253011004") != -1 || _root.save.inventoryDesc[i].indexOf("536365965") != -1 || _root.save.inventoryDesc[i].indexOf("479591647") != -1 || _root.save.inventoryDesc[i].indexOf("71140877") != -1 || _root.save.inventoryDesc[i].indexOf("59063432") != -1 || _root.save.inventoryDesc[i].indexOf("70380326") != -1 || _root.save.inventoryDesc[i].indexOf("761205567") != -1 || _root.save.inventoryDesc[i].indexOf("663902970") != -1)
                    {
                        if (_root.save.inventoryNoLife[i] == false)
                        {
                            _root.save.inventoryExpiry[i] = Infinity;
                        }
                        else
                        {
                            _root.save.inventoryExpiry[i] = 1388583420000;
                        }
                        _root.save.inventoryDesc[i] = "";
                    }
                }
                i++;
            }
            _root.save.ver = 619;
        }
        if (_root.save.ver < 620)
        {
            _root.save.fishBestLevel = _root.save.fishLevel;
            _root.save.ver = 620;
        }
        if (_root.save.ver < 621)
        {
            if (_root.save.speedRunMode9001 != 2147483647 && _root.save.speedRunMode9001 > 0)
            {
                _root.saveGlobal.challengeTime[0] = _root.save.speedRunMode9001 * 60;
                _root.saveGlobal.challengeAttempted[0] = true;
                _root.saveGlobal.challengePerfect[0] = true;
            }
            else
            {
            }
            _root.save.ver = 621;
        }
        if (_root.save.ver < 622)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryName[i] == "Gem of Eternal Rage")
                {
                    _root.save.inventoryDesc[i] = "With this, you will gain 0.5% Rage every second and ignore all forms of rage depletion! It also multiplies your Rage Attack by 1.2x.";
                }
                if (_root.save.inventoryName[i] == "Immortal Pendant" || _root.save.inventoryName[i] == "Roflhunter\'s Pendant" || _root.save.inventoryName[i] == "Dominator\'s Gem" || _root.save.inventoryName[i] == "Mega Triangle Gem")
                {
                    _root.save.inventoryBonusPow[i] += _root.save.inventoryAttack[i] + _root.save.inventoryCrit[i] * 5 + _root.save.inventoryDexterity[i] * 5 + _root.save.inventoryHealth[i] * 5;
                    _root.save.inventoryAttack[i] = Math.floor(_root.save.inventoryAttack[i] * 2);
                    _root.save.inventoryCrit[i] = Math.floor(_root.save.inventoryCrit[i] * 2);
                    _root.save.inventoryDexterity[i] = Math.floor(_root.save.inventoryDexterity[i] * 2);
                    _root.save.inventoryHealth[i] = Math.floor(_root.save.inventoryHealth[i] * 2);
                }
                i++;
            }
            i = 1;
            while (i <= 2)
            {
                if (_root.save.restEfficiency[i] > 0)
                {
                    _root.save.whiteCoin += 2000 * _root.save.restEfficiency[i] * _root.save.restEfficiency[i];
                }
                i++;
            }
            i = 3;
            while (i <= 5)
            {
                if (_root.save.restEfficiency[i] > 0)
                {
                    _root.save.whiteCoin += 2250 * _root.save.restEfficiency[i] * _root.save.restEfficiency[i];
                }
                i++;
            }
            i = 6;
            while (i <= 10)
            {
                if (_root.save.restEfficiency[i] > 0)
                {
                    _root.save.whiteCoin += 900 * _root.save.restEfficiency[i] * _root.save.restEfficiency[i];
                }
                i++;
            }
            if (!isNaN(_root.save.achEarnTime[1000]))
            {
                _root.save.newbieProgress = 15;
            }
            _root.save.ver = 622;
        }
        if (_root.save.ver < 623)
        {
            if (_root.save.banned >= 100)
            {
                _root.save.whiteCoin += 10000;
                _root.save.eventToken += 10000;
                _root.save.permaBanPenalty = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                _root.save.permaStupidity = _root.save.banned;
                _root.save.permaStupidityHard = _root.save.bannedHard;
                _root.save.permaStupidityImpossible = _root.save.bannedImpossible;
            }
            _root.save.ver = 623;
        }
        if (_root.save.ver < 624)
        {
            if (_root.saveid == 24)
            {
                var c4Cheated = false;
                i = 1;
                while (i <= 200)
                {
                    if (_root.save.inventoryEnhance[i] > 0 && _root.save.inventorySubtype[i] != "Skin" && _root.save.inventoryReqRank[i] < 100)
                    {
                        c4Cheated = true;
                        _root.save.arenaPixel += _root.save.inventorySell[i] * 8;
                    }
                    i++;
                }
                if (_root.save.arenaMedal != 0)
                {
                    c4Cheated = true;
                    _root.save.arenaMedal = 0;
                }
                if (_root.save.arenaPendant != 0)
                {
                    c4Cheated = true;
                    _root.save.arenaPendant = 0;
                }
                if (_root.save.arenaEarring != 0)
                {
                    c4Cheated = true;
                    _root.save.arenaEarring = 0;
                }
                if (_root.save.arenaTrinket != 0)
                {
                    c4Cheated = true;
                    _root.save.arenaTrinket = 0;
                }
                if (c4Cheated == true)
                {
                    _root.save.ascendPlayTime += 10800;
                }
            }
            _root.save.ver = 624;
        }
        if (_root.save.ver < 625)
        {
            if (_root.save.gDifficulty >= 3)
            {
                _root.save.gardenCapacity = 50;
            }
            _root.save.ver = 625;
        }
        if (_root.save.ver < 626)
        {
            if (_root.saveid == 24)
            {
                _root.save.arenaPixel = _root.save.arenaPixelMax;
            }
            _root.save.ver = 626;
        }
        if (_root.save.ver < 627)
        {
            if (_root.saveid == 24)
            {
                _root.save.ascendPlayTime = Math.ceil(_root.save.ascendPlayTime * 0.85);
            }
            _root.save.ver = 627;
        }
        if (_root.save.ver < 629)
        {
            if (!isNaN(_root.save.bankGardenFruit) && _root.save.bankGardenFruit > 0)
            {
                _root.save.gardenPoint = _root.save.gardenPointMax;
                _root.save.gardenFruit = _root.save.gardenFruitMax;
            }
            _root.save.ver = 629;
        }
        if (_root.save.ver < 630)
        {
            if (_root.save.banned > 100 && _root.save.bannedImpossible > 25)
            {
                _root.save.banned1662 = Math.floor(_root.save.bannedImpossible / 20 - 1);
                if (isNaN(_root.save.banned1662) || _root.save.banned1662 > 10)
                {
                    _root.save.banned1662 = 10;
                }
                _root.save.banned += _root.save.banned1662;
                _root.save.bannedHard += _root.save.banned1662;
                _root.save.bannedImpossible += _root.save.banned1662;
                _root.save.stupidity += _root.save.banned1662 * 7;
                _root.save.permaStupidity += _root.save.banned1662;
                _root.save.permaStupidityHard += _root.save.banned1662;
                _root.save.permaStupidityImpossible += _root.save.banned1662;
            }
            _root.save.ver = 630;
        }
        if (_root.save.ver < 634)
        {
            if (_root.save.arenaAllyUpgrade.ContainsKey(1))
            {
                _root.save.noobMode = true;
            }
            _root.save.mysteryBox[10] += _root.save.bannedB;
            _root.save.arenaSpookyScore = Math.ceil(_root.save.arenaSpookyScore / 5);
            _root.save.arenaSpookyToday = 0;
            _root.save.raidPyramid = Math.floor(_root.save.raidPyramid / 100);
            _root.save.rewardClaimAuto = _root.save.rewardClaim - _root.save.rewardClaimManual;
            i = 1;
            while (i <= 12)
            {
                if (_root.save.careerLevel[i] >= 100)
                {
                    _root.save.careerPotion += Math.floor(_root.save.careerEXP[i] / 200000);
                }
                _root.save.careerEXP[i] = Math.floor(_root.save.careerEXP[i] * 0.1);
                i++;
            }
            if (_root.save.careerLevel[1] >= 100)
            {
                _root.save.careerEXP[1] += Math.max(_root.save.rewardClaimAuto - 1000000, 0);
            }
            if (_root.save.careerLevel[2] >= 100)
            {
                _root.save.careerEXP[2] += Math.max(_root.save.gardenEXP - 1000000, 0);
            }
            if (_root.save.careerLevel[3] >= 100)
            {
                _root.save.careerEXP[3] += Math.max(_root.save.arenaKillWhite / 2 + _root.save.arenaKillRed / 2 + _root.save.battlePoint * 500 - 1000000, 0);
            }
            if (_root.save.careerLevel[4] >= 100)
            {
                _root.save.careerEXP[4] += Math.max(_root.save.arenaLoot / 10 - 1000000, 0);
            }
            if (_root.save.careerLevel[5] >= 100)
            {
                _root.save.careerEXP[5] += Math.max(_root.save.buttonPress * 2 + _root.save.buttonPerfect * 20 - 1000000, 0);
            }
            if (_root.save.careerLevel[6] >= 100)
            {
                _root.save.careerEXP[6] += Math.max(_root.save.totalPong / 1000 + _root.save.totalAvoidance / 1000 + _root.save.totalMath / 2500 + _root.save.totalWhack / 2000 + _root.save.totalMind / 500 + _root.save.totalBalance / 2500 + _root.save.totalCount / 2000 - 1000000, 0);
            }
            if (_root.save.careerLevel[7] >= 100)
            {
                _root.save.careerEXP[7] += Math.max(_root.save.stadiumRace * 250 + _root.save.stadiumImpossibleRace * 250 + _root.save.stadiumItem * 300 + _root.save.stadiumImpossibleItem * 300 + _root.save.stadiumDeathMatch * 5000 - 1000000, 0);
            }
            if (_root.save.careerLevel[8] >= 100)
            {
                _root.save.careerEXP[8] += Math.max(_root.save.fcgExpTotal * 4 - 1000000, 0);
            }
            if (_root.save.careerLevel[9] >= 100)
            {
                _root.save.careerEXP[9] += Math.max(_root.save.lolProfit / 500 - 1000000, 0);
            }
            if (_root.save.careerLevel[10] >= 100)
            {
                _root.save.careerEXP[10] += Math.max(_root.save.awesomeTotalAdv * 50 - 1000000, 0);
            }
            if (_root.save.careerLevel[12] >= 100)
            {
                _root.save.careerEXP[12] += Math.max(_root.save.fishExp + _root.save.fishTotalExp - 1000000, 0);
            }
            i = 1;
            while (i <= 500)
            {
                if (!isNaN(_root.save.arenaAllyEXP[i]))
                {
                    _root.save.arenaAllyUpgrade[i] = 0;
                }
                i++;
            }
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryName[i] == "Auto Buff Gem")
                {
                    _root.save.inventoryMoreBonus[i] = "MaxHP";
                }
                if (_root.save.inventoryName[i] == "Bronze Pendant")
                {
                    _root.save.inventoryAttack[i] += 20;
                    _root.save.inventoryCrit[i] += 5;
                    _root.save.inventoryDexterity[i] += 5;
                    _root.save.inventoryHealth[i] += 5;
                }
                if (_root.save.inventoryName[i] == "Silver Pendant")
                {
                    _root.save.inventoryAttack[i] += 60;
                    _root.save.inventoryCrit[i] += 15;
                    _root.save.inventoryDexterity[i] += 15;
                    _root.save.inventoryHealth[i] += 15;
                }
                if (_root.save.inventoryName[i] == "Gold Pendant")
                {
                    _root.save.inventoryAttack[i] += 100;
                    _root.save.inventoryCrit[i] += 25;
                    _root.save.inventoryDexterity[i] += 25;
                    _root.save.inventoryHealth[i] += 25;
                }
                if (_root.save.inventoryName[i] == "Platinum Pendant")
                {
                    _root.save.inventoryAttack[i] += 140;
                    _root.save.inventoryCrit[i] += 35;
                    _root.save.inventoryDexterity[i] += 35;
                    _root.save.inventoryHealth[i] += 35;
                }
                if (_root.save.inventoryName[i] == "Unobtainium Pendant")
                {
                    _root.save.inventoryAttack[i] += 180;
                    _root.save.inventoryCrit[i] += 45;
                    _root.save.inventoryDexterity[i] += 45;
                    _root.save.inventoryHealth[i] += 45;
                }
                i++;
            }
            _root.save.ver = 634;
        }
        if (_root.save.ver < 635)
        {
            _root.save.raidPyramid = Math.floor(_root.save.raidPyramid / 4);
            _root.save.ver = 635;
        }
        if (_root.save.ver < 637)
        {
            _root.save.raidPyramid = 0;
            _root.save.ver = 637;
        }
        if (_root.save.ver < 638)
        {
            if (_root.save.careerLevel[6] >= 100)
            {
                _root.save.careerEXP[6] += Math.max(_root.save.totalPong / 1000 + _root.save.totalAvoidance / 1000 + _root.save.totalMath / 2500 + _root.save.totalWhack / 2000 + _root.save.totalMind / 500 + _root.save.totalBalance / 2500 + _root.save.totalCount / 2000 - 500000, 0);
            }
            if (_root.save.careerLevel[7] >= 100)
            {
                _root.save.careerEXP[7] += Math.max(_root.save.stadiumRace * 250 + _root.save.stadiumImpossibleRace * 250 + _root.save.stadiumItem * 300 + _root.save.stadiumImpossibleItem * 300 + _root.save.stadiumDeathMatch * 5000 - 500000, 0);
            }
            if (_root.save.careerLevel[8] >= 100)
            {
                _root.save.careerEXP[8] += Math.max(_root.save.fcgExpTotal * 16 - 500000, 0);
            }
            if (_root.save.careerLevel[12] >= 100)
            {
                _root.save.careerEXP[12] += Math.max((_root.save.fishExp + _root.save.fishTotalExp) * 2 - 500000, 0);
            }
            _root.save.ver = 638;
        }
        if (_root.save.ver < 639)
        {
            if (_root.save.arenaAccuracy < 100 || _root.save.arenaLevel > 1 && _root.save.arenaLevel < 40)
            {
                _root.save.arenaAccuracy += 50;
                _root.save.arenaEvasion += 50;
                _root.save.arenaMaxHealth += 1500;
                _root.save.arenaMaxMana += 500;
            }
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Auto Buff Gem")
                    {
                        if (_root.save.inventoryBonus[i] != "" && _root.save.inventoryBonus[i].indexOf("Auto Buff") == -1)
                        {
                            _root.save.inventoryBonus[i] = "";
                        }
                    }
                    if (_root.save.inventoryName[i] != "" && _root.save.inventoryName[i].indexOf("Auto Buff") != -1)
                    {
                        if (_root.save.inventoryBonus[i] != "" && _root.save.inventoryBonus[i].indexOf("Auto Buff") == -1)
                        {
                            _root.save.inventoryBonus[i] = "";
                        }
                    }
                    if (_root.save.inventoryExpiry[i] == 0 && _root.save.inventoryObtainTime[i] > 1385823600000 && _root.save.inventoryDesc[i] != "" && _root.save.inventoryDesc[i].indexOf("exploited") != -1)
                    {
                        if (_root.save.inventoryDesc[i].indexOf("84663214") != -1 && _root.save.inventoryDesc[i].indexOf("993776406") != -1 && _root.save.inventoryDesc[i].indexOf("336567214") != -1 && _root.save.inventoryDesc[i].indexOf("957022263") != -1 && _root.save.inventoryDesc[i].indexOf("366154706") != -1 && _root.save.inventoryDesc[i].indexOf("993776406") != -1 && _root.save.inventoryDesc[i].indexOf("545318181") != -1)
                        {
                            if (_root.save.inventoryNoLife[i] == false)
                            {
                                _root.save.inventoryExpiry[i] = Infinity;
                            }
                            else
                            {
                                _root.save.inventoryExpiry[i] = 1388583420000;
                            }
                            _root.save.inventoryDesc[i] = "";
                        }
                    }
                }
                i++;
            }
            i = 51;
            while (i <= 75)
            {
                _root.save.gardenSlotEXP[i] = 0;
                _root.save.gardenTrees[i] = 0;
                i++;
            }
            i = 1;
            while (i <= 75)
            {
                if (_root.save.gardenTrees[i] != 0 && !isNaN(_root.save.gardenTrees[i]))
                {
                    _root.save.gardenTreeExp[i] = 50;
                    _root.save.gardenTreeFertilize[i] = 20;
                }
                i++;
            }
            _root.save.ver = 639;
        }
        if (_root.save.ver < 642)
        {
            if (!isNaN(_root.save.mysteryBoxCollect10[1]))
            {
                _root.save.boostPotion += _root.save.mysteryBoxCollect10[1] * 2;
                _root.save.whiteCoin += _root.save.mysteryBoxCollect10[1] * 10;
            }
            if (!isNaN(_root.save.mysteryBoxCollect10[2]))
            {
                _root.save.boostPotion += _root.save.mysteryBoxCollect10[2] * 2;
                _root.save.whiteCoin += _root.save.mysteryBoxCollect10[2] * 10;
            }
            if (!isNaN(_root.save.mysteryBoxCollect10[3]))
            {
                _root.save.boostPotion += _root.save.mysteryBoxCollect10[3] * 2;
                _root.save.whiteCoin += _root.save.mysteryBoxCollect10[3] * 10;
            }
            if (!isNaN(_root.save.mysteryBoxCollect10[4]))
            {
                _root.save.boostPotion += _root.save.mysteryBoxCollect10[4] * 2;
                _root.save.whiteCoin += _root.save.mysteryBoxCollect10[4] * 10;
            }
            if (!isNaN(_root.save.mysteryBoxCollect10[5]))
            {
                _root.save.boostPotion += _root.save.mysteryBoxCollect10[5] * 2;
                _root.save.whiteCoin += _root.save.mysteryBoxCollect10[5] * 10;
            }
            if (!isNaN(_root.save.mysteryBoxCollect10[6]))
            {
                _root.save.boostPotion += _root.save.mysteryBoxCollect10[6] * 2;
                _root.save.whiteCoin += _root.save.mysteryBoxCollect10[6] * 10;
            }
            if (_root.saveid < 4)
            {
                if (_root.save.firstPlayed >= 1385769600000 && _root.save.firstPlayed <= 1420070400000)
                {
                    _root.save.mysteryBox[10] += 40;
                }
                if (_root.save.bestLevel >= 150)
                {
                    _root.save.mysteryBox[10] += 1;
                }
                if (_root.save.battlePoint >= 500)
                {
                    _root.save.mysteryBox[10] += 9;
                }
            }
            _root.save.raidPyramid = 0;
            _root.save.raidDefend = 0;
            _root.save.raidPrehistoric = 0;
            _root.save.raidMegaboss = 0;
            _root.save.raidTower = 0;
            _root.save.raidDungeon = 0;
            _root.save.raidEndless = 0;
            _root.save.arenaRevengeScore = 0;
            _root.save.arenaTriangleScore = 0;
            _root.save.arenaTriangleToday = 0;
            _root.save.arenaSpookyScore = 0;
            _root.save.arenaSpookyToday = 0;
            _root.save.fcgSeriousDeck = 34 + random(35);
            _root.save.fcgExp += _root.save.fcgWin * Math.ceil(15 + _root.save.fcgLevel / 3) + _root.save.fcgLevel5 * 25 + _root.save.fcgLevel6 * 50 + _root.save.fcgLevel7 * 75 + _root.save.fcgLevel8 * 100 + _root.save.fcgLevel9 * 125 + _root.save.fcgLevel10 * 150;
            if (_root.save.careerLevel[8] >= 50)
            {
                _root.save.careerEXP[8] += (_root.save.fcgWin * Math.ceil(15 + _root.save.fcgLevel / 3) + _root.save.fcgLevel5 * 25 + _root.save.fcgLevel6 * 50 + _root.save.fcgLevel7 * 75 + _root.save.fcgLevel8 * 100 + _root.save.fcgLevel9 * 125 + _root.save.fcgLevel10 * 150) * 10;
            }
            _root.save.ver = 642;
        }
        if (_root.save.ver < 643)
        {
            i = 1;
            while (i <= 500)
            {
                if (_root.save.arenaAllyUpgrade[i] == 15)
                {
                    if (i == 275 || i == 295 || i >= 332 && i <= 349 || i == 356 || i >= 367 && i <= 376 || i >= 377 && i <= 432 || i >= 438 && i <= 440 || i >= 448 && i <= 485)
                    {
                        _root.save.arenaAllyUpgrade[i] = 10;
                        _root.save.arenaUnobtainium += 500;
                        _root.save.whiteCoin += 200;
                        _root.save.mysteryBox[10] += 2;
                    }
                }
                if (!isNaN(_root.save.arenaBestiaryUlt1[i]))
                {
                    _root.save.arenaBestiaryUlt1V[i] = 1664;
                }
                if (!isNaN(_root.save.arenaBestiaryUlt2[i]))
                {
                    _root.save.arenaBestiaryUlt2V[i] = 1664;
                }
                if (!isNaN(_root.save.arenaBestiaryUlt3[i]))
                {
                    _root.save.arenaBestiaryUlt3V[i] = 1664;
                }
                i++;
            }
            _root.save.ver = 643;
        }
        if (_root.save.ver < 644)
        {
            if (_root.save.speedRunAscendImpossible < 1440)
            {
                _root.save.speedRunAscendImpossible = 1440;
            }
            _root.save.battlePoint += _root.save.arenaExpExcess * 4 + _root.save.bannedB * 1500;
            _root.save.ver = 644;
        }
        if (_root.save.ver < 645)
        {
            if (_root.save.houseVer > 172800 && _root.save.banned < 90)
            {
                _root.save.houseVer = 172800;
            }
            if (_root.save.banned >= 5)
            {
                _root.save.progSpeedAuto = 200;
                _root.save.progSpeedManual = 400;
            }
            _root.save.fcgCash += _root.save.fcgBuff[1] * 500;
            _root.save.fcgCash += _root.save.fcgBuff[2] * 1500;
            _root.save.fcgCash += _root.save.fcgBuff[3] * 3000;
            _root.save.fcgCash += _root.save.fcgBuff[4] * 5000;
            _root.save.fcgCash += _root.save.fcgBuff[5] * 8000;
            _root.save.fcgCash += _root.save.fcgBuff[6] * 12000;
            _root.save.fcgCash += _root.save.fcgBuff[7] * 2000;
            _root.save.fcgCash += _root.save.fcgBuff[8] * 250;
            _root.save.stupidity += _root.save.bannedImpossible * 2;
            _root.save.banned1665 = Math.floor(_root.save.mysteryBox[8] / 30000);
            if (_root.save.banned1665 > 5)
            {
                _root.save.banned1665 = 5;
            }
            if (_root.save.banned1665 < 0)
            {
                _root.save.banned1665 = 0;
            }
            _root.save.banned += _root.save.banned1665;
            _root.save.bannedHard += _root.save.banned1665;
            _root.save.bannedImpossible += _root.save.banned1665;
            _root.save.stupidity += _root.save.banned1665 * 9;
            _root.save.permaStupidity += _root.save.banned1665;
            _root.save.permaStupidityHard += _root.save.banned1665;
            _root.save.permaStupidityImpossible += _root.save.banned1665;
            _root.save.ver = 645;
        }
        if (_root.save.ver < 646)
        {
            i = 1;
            while (i <= 70)
            {
                if (_root.save.progModuleType[i] >= 30 && _root.save.progModuleType[i] <= 39)
                {
                    _root.save.progModuleChance[i] = Math.floor(_root.save.progModuleChance[i] / 2);
                }
                i++;
            }
            _root.save.ver = 646;
        }
        if (_root.save.ver < 651)
        {
            _root.save.arenaSP += _root.save.arenaLevel * 5 - 1;
            _root.save.ver = 651;
        }
        if (_root.save.ver < 652)
        {
            if (_root.save.arenaUltimateSP > 150 + Math.floor(_root.save.battlePoint / 10000))
            {
                _root.save.arenaUltimateSP = 150 + Math.floor(_root.save.battlePoint / 10000);
                _root.save.arenaSP = _root.save.arenaLevel * 20 + _root.save.arenaUltimateSP * 10;
                _root.save.arenaTotalSkill = 0;
                _root.save.arenaTotalSP = 0;
                i = 1;
                while (i <= 66)
                {
                    if (_root.save.arenaSkill[i] > 0)
                    {
                        _root.save.arenaSkill[i] = 0;
                    }
                    i++;
                }
            }
            _root.save.ver = 652;
        }
        if (_root.save.ver < 653)
        {
            if (_root.save.bannedHard >= 1)
            {
                _root.save.whiteCoin += 1000;
            }
            if (_root.save.bannedImpossible >= 1)
            {
                _root.save.whiteCoin += 2000;
            }
            _root.save.ver = 653;
        }
        if (_root.save.ver < 654)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryDesc[i] != "" && _root.save.inventoryDesc[i].indexOf("exploited") != -1)
                    {
                        if (_root.save.inventoryDesc[i].indexOf("84663214") != -1 || _root.save.inventoryDesc[i].indexOf("993776406") != -1 || _root.save.inventoryDesc[i].indexOf("336567214") != -1 || _root.save.inventoryDesc[i].indexOf("957022263") != -1 || _root.save.inventoryDesc[i].indexOf("366154706") != -1 || _root.save.inventoryDesc[i].indexOf("993776406") != -1 || _root.save.inventoryDesc[i].indexOf("545318181") != -1)
                        {
                            if (_root.save.inventoryNoLife[i] == false)
                            {
                                _root.save.inventoryExpiry[i] = Infinity;
                            }
                            else
                            {
                                _root.save.inventoryExpiry[i] = 1388583420000;
                            }
                            _root.save.inventoryDesc[i] = "";
                        }
                    }
                }
                i++;
            }
        }
        if (_root.save.ver < 655)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryExpiry[i] == 1388583420000)
                    {
                        _root.save.inventoryExpiry[i] = Infinity;
                    }
                }
                i++;
            }
            _root.save.ver = 655;
        }
        if (_root.save.ver < 656)
        {
            i = 1;
            while (i <= 70)
            {
                if (_root.save.progModuleType[i] == 5)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 40;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(10 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 7)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 100;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(50 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                    }
                }
                if (_root.save.progModuleType[i] == 30)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 40;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(10 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] >= 31 && _root.save.progModuleType[i] <= 32)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 60;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(15 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] >= 33 && _root.save.progModuleType[i] <= 35)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 80;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(20 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] >= 36 && _root.save.progModuleType[i] <= 39)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 100;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(25 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 42)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 500;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(250 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                    }
                }
                i++;
            }
            _root.save.ver = 656;
        }
        if (_root.save.ver < 657)
        {
            _root.save.raidSpecial = 0;
            _root.save.ver = 657;
        }
        if (_root.save.ver < 659)
        {
            i = 1;
            while (i <= 70)
            {
                if (_root.save.progModuleType[i] == 7)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 100;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(50 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                    }
                }
                i++;
            }
            _root.save.ver = 659;
        }
        if (_root.save.ver < 663)
        {
            if (_root.save.fcgCash == -Infinity || isNaN(_root.save.fcgCash) || _root.save.fcgCash < 0)
            {
                if (isNaN(_root.save.fcgMaxCash) || _root.save.fcgMaxCash > 1000000000 || _root.save.fcgMaxCash < 0)
                {
                    _root.save.fcgMaxCash = 0;
                }
                _root.save.fcgCash = _root.save.fcgMaxCash;
            }
            i = 1;
            while (i <= 70)
            {
                if (_root.save.progModuleType[i] == 26)
                {
                    _root.save.progModuleName[i] = "Career EXP Module";
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                    }
                }
                if (_root.save.progModuleType[i] == 40)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 6;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(3 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2.5);
                    }
                }
                i++;
            }
            _root.save.ver = 663;
        }
        if (_root.save.ver < 664)
        {
            i = 1;
            while (i <= 500)
            {
                if (!isNaN(_root.save.arenaAllyEXP[i]) && isNaN(_root.save.arenaAllyUpgrade[i]))
                {
                    _root.save.arenaAllyUpgrade[i] = 0;
                }
                if (!isNaN(_root.save.arenaBestiaryUlt1V[i]))
                {
                    _root.save.arenaAllyUpgrade[i] = 15;
                    if (i == 275 || i == 295 || i >= 332 && i <= 349 || i == 356 || i >= 367 && i <= 376 || i >= 377 && i <= 432 || i >= 438 && i <= 440 || i >= 448 && i <= 485)
                    {
                        if (_root.save.arenaBestiaryUlt1V[i] < 1665)
                        {
                            _root.save.arenaAllyUpgrade[i] = 10;
                        }
                    }
                }
                if (!isNaN(_root.save.arenaBestiaryExtra[i]) && _root.save.arenaBestiaryExtra[i] > 0 && _root.save.arenaAllyUpgrade[i] < 10)
                {
                    _root.save.arenaAllyUpgrade[i] = 10;
                    if (_root.enemyList[i].allyPassive3 == "")
                    {
                        _root.save.arenaAllyUpgrade[i] = 15;
                    }
                }
                i++;
            }
            _root.save.ver = 664;
        }
        if (_root.save.ver < 666)
        {
            i = 1;
            while (i <= 70)
            {
                if (_root.save.progModuleType[i] == 40)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 6;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(3 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 10)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleEffect[i] = 100;
                    }
                    else
                    {
                        _root.save.progModuleEffect[i] = Math.floor(50 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                i++;
            }
            _root.save.ver = 666;
        }
        if (_root.save.ver < 667)
        {
            var tmul = Math.floor(Math.pow(_root.save.bestLevel, 0.6)) / 5 + 1;
            if (_root.save.bestLevel >= 9000)
            {
                tmul += 2;
            }
            i = 1;
            while (i <= 75)
            {
                if (!isNaN(_root.save.gardenHarvestValue[i]))
                {
                    _root.save.gardenHarvestValue[i] = Math.ceil(_root.save.gardenHarvestValue[i] / tmul);
                }
                i++;
            }
            _root.save.ver = 667;
        }
        if (_root.save.ver < 668)
        {
            i = 1;
            while (i <= 70)
            {
                if (_root.save.progModuleType[i] == 26)
                {
                    _root.save.progModuleName[i] = "Career EXP Module";
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 20;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(10 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                i++;
            }
            _root.save.ver = 668;
        }
        if (_root.save.ver < 669)
        {
            i = 1;
            while (i <= 75)
            {
                if (_root.save.gardenTrees[i] != 0 && !isNaN(_root.save.gardenTrees[i]))
                {
                    _root.save.gardenTreeModuleProc[i] = 0;
                }
                i++;
            }
            _root.save.ver = 669;
        }
        if (_root.save.ver < 670)
        {
            if (_root.save.bestLevel >= 150)
            {
                _root.save.whiteCoin += 1000;
            }
            _root.save.ver = 670;
        }
        if (_root.save.ver < 672)
        {
            _root.save.consecutiveDays = _root.save.maxConsecutiveDays;
            i = 71;
            while (i <= 141)
            {
                _root.deleteModulePiece(i);
                i++;
            }
            i = 41;
            while (i <= 70)
            {
                _root.copyModulePiece(i, i + 70);
                _root.deleteModulePiece(i);
                i++;
            }
            _root.save.ver = 672;
        }
        if (_root.save.ver < 675)
        {
            _root.save.totalStupidity = _root.save.banned + _root.save.bannedHard * 2 + _root.save.bannedImpossible * 6;
            if (_root.save.gDifficulty == 3)
            {
                _root.save.totalStupidity += 8;
            }
            else if (_root.save.gDifficulty == 2)
            {
                _root.save.totalStupidity += 2;
            }
            _root.save.remStupidity = _root.save.totalStupidity;
            _root.save.questToken += 2000 * _root.save.stupidity;
            _root.save.ver = 675;
            _root.save.banPenalty = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
            _root.save.arenaSubWeapon = 0;
            i = 1;
            while (i <= 140)
            {
                if (_root.save.progModuleType[i] == 14)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 4000;
                        _root.save.progModuleEffect[i] = 80;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(2000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(40 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 15)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 4000;
                        _root.save.progModuleEffect[i] = 80;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(2000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(40 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 3)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 2000;
                        _root.save.progModuleEffect[i] = 500;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(1000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(250 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 4)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(250 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 6)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 500;
                        _root.save.progModuleEffect[i] = 6;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(250 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(3 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 16)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 500;
                        _root.save.progModuleEffect[i] = 6;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(250 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(3 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 17)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 4000;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(2000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 18)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 400;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(200 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 26)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 100;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(50 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 21)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 200;
                        _root.save.progModuleEffect[i] = 20;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(100 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(10 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 28 || _root.save.progModuleType[i] == 29)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 40;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(20 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 19 || _root.save.progModuleType[i] == 22 || _root.save.progModuleType[i] == 23)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 2000;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 13 || _root.save.progModuleType[i] == 20 || _root.save.progModuleType[i] == 24 || _root.save.progModuleType[i] == 25 || _root.save.progModuleType[i] == 27 || _root.save.progModuleType[i] == 41)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 800;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(200 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                i++;
            }
        }
        if (_root.save.ver < 677)
        {
            _root.save.ver = 677;
            _root.save.mysteryBox[8] = Math.ceil(_root.save.mysteryBox[8] * 0.1);
            if (_root.save.fcgLevel >= 20)
            {
                _root.save.fcgInitDeck = 6;
                _root.save.fcgCash += 10000;
            }
            _root.save.whiteCoinRefund = Math.floor(_root.save.banned * 500 * (1 + _root.save.banned / 200));
            if (_root.save.banned > 100)
            {
                _root.save.whiteCoinRefund -= (_root.save.banned - 100) * 500;
            }
            _root.save.whiteCoinRefund = Math.floor(_root.save.whiteCoinRefund * 0.5);
            _root.save.whiteCoinRefundTotal = _root.save.whiteCoinRefund;
        }
        if (_root.save.ver < 678)
        {
            _root.save.ver = 678;
            if (_root.save.bestLevel >= 100 && _root.saveid <= 3)
            {
                _root.save.mysteryBox[10] += 10;
            }
        }
        if (_root.save.ver < 680)
        {
            _root.save.ver = 680;
            if (_root.save.banned > 100)
            {
                _root.save.totalStupidity += _root.save.banned - 100;
                _root.save.remStupidity += _root.save.banned - 100;
            }
            i = 1;
            while (i <= 140)
            {
                if (_root.save.progModuleType[i] == 40)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 6;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(3 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 14)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 4000;
                        _root.save.progModuleEffect[i] = 80;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(2000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(40 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 15)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 4000;
                        _root.save.progModuleEffect[i] = 80;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(2000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(40 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 3)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 2000;
                        _root.save.progModuleEffect[i] = 500;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(1000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(250 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 4)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(250 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 6)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 500;
                        _root.save.progModuleEffect[i] = 6;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(250 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(3 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 16)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 500;
                        _root.save.progModuleEffect[i] = 6;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(250 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(3 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 17)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 4000;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(2000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 18)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 400;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(200 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 26)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 100;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(50 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 21)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 200;
                        _root.save.progModuleEffect[i] = 20;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(100 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(10 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 28 || _root.save.progModuleType[i] == 29)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 40;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(20 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 19 || _root.save.progModuleType[i] == 22 || _root.save.progModuleType[i] == 23)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 2000;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 13 || _root.save.progModuleType[i] == 20 || _root.save.progModuleType[i] == 24 || _root.save.progModuleType[i] == 25 || _root.save.progModuleType[i] == 27 || _root.save.progModuleType[i] == 41)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 800;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(200 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                i++;
            }
        }
        if (_root.save.ver < 683)
        {
            _root.save.ver = 683;
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryDesc[i] == "Thank you for your donation and your continuous support!")
                    {
                        _root.save.inventoryDesc[i] = "Thank you for your donation and your continued support!";
                    }
                    if (_root.save.inventoryName[i].indexOf("(Cursed)") != -1 && _root.save.inventoryExist[i] == 1)
                    {
                        _root.save.inventoryName[i] = _root.save.inventoryName[i].substr(0, _root.save.inventoryName[i].Length - 9);
                    }
                }
                i++;
            }
        }
        if (_root.save.ver < 684)
        {
            if (_root.saveid == 0 && _root.kongregate_username == "FireShard")
            {
                _root.save.totalStupidity += 2;
                _root.save.remStupidity += 2;
            }
            _root.save.ver = 684;
        }
        if (_root.save.ver < 694)
        {
            _root.save.ver = 694;
            i = 1;
            while (i <= 140)
            {
                if (_root.save.progModuleType[i] == 14)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 4000;
                        _root.save.progModuleEffect[i] = 50;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(2000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(25 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 15)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 4000;
                        _root.save.progModuleEffect[i] = 50;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(2000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(25 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 23)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 400;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(100 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 24)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 100;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(25 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 7)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 100;
                        _root.save.progModuleEffect[i] = 10;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(50 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(5 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 41)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 2000;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 40)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 500;
                        _root.save.progModuleEffect[i] = 6;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(250 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(3 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                i++;
            }
        }
        if (_root.save.ver < 695)
        {
            _root.save.ver = 695;
            if (_root.saveid <= 3 && _root.save.bestLevel >= 150)
            {
                _root.save.shinyToken += 10;
            }
        }
        if (_root.save.ver < 696)
        {
            _root.save.ver = 696;
            i = 1;
            while (i <= 500)
            {
                if (_root.save.arenaBestiaryUlt1V[i] == 1736 || _root.save.arenaBestiaryUlt1V[i] == 1737)
                {
                    if (_root.save.arenaAllyUpgrade[i] == 15)
                    {
                        _root.save.arenaAllyUpgrade[i] = 10;
                    }
                }
                if (_root.save.arenaBestiaryUlt2V[i] == 1736 || _root.save.arenaBestiaryUlt2V[i] == 1737)
                {
                }
                if (_root.save.arenaBestiaryUlt3V[i] == 1736 || _root.save.arenaBestiaryUlt3V[i] == 1737)
                {
                }
                i++;
            }
        }
        if (_root.save.ver < 698)
        {
            _root.save.ver = 698;
            i = 1;
            while (i <= 500)
            {
                if (_root.save.arenaBestiaryUlt1F[i] != undefined && _root.save.arenaAllyUpgrade[i] == 10)
                {
                    if (_root.save.arenaBestiaryUlt1F[i].indexOf("2015-10-1") == -1)
                    {
                        _root.save.arenaBestiaryUlt1[i] = 1;
                        _root.save.arenaBestiaryUlt1V[i] = 1735;
                        _root.save.arenaAllyUpgrade[i] = 15;
                    }
                }
                i++;
            }
        }
        if (_root.save.ver < 699)
        {
            _root.save.ver = 699;
            i = 1;
            while (i <= 500)
            {
                if (!_root.save.arenaBestiaryUlt2F.ContainsKey(i) && _root.save.arenaBestiaryUlt2.ContainsKey(i))
                {
                    if (_root.save.arenaBestiaryUlt2F[i].indexOf("2015-10-1") == -1)
                    {
                        _root.save.arenaBestiaryUlt2[i] = 1;
                        _root.save.arenaBestiaryUlt2V[i] = 1735;
                    }
                }
                i++;
            }
        }
        if (_root.save.ver < 700)
        {
            _root.save.ver = 700;
            _root.save.wisdomDiscovered = new();
        }
        if (_root.save.ver < 701)
        {
            _root.save.ver = 701;
            i = 1;
            while (i <= 500)
            {
                if (_root.save.arenaAllyUpgrade[i] == 15 && _root.enemyList[i].allyPassive3 == "" && !isNaN(_root.save.arenaBestiaryExtra[i]))
                {
                    _root.save.arenaBestiary[i] += _root.save.arenaBestiaryExtra[i] * 4;
                    _root.save.arenaBestiaryExtra[i] += _root.save.arenaBestiaryExtra[i] * 4;
                }
                i++;
            }
        }
        if (_root.save.ver < 702)
        {
            if (_root.save.petFullness > 2000)
            {
                _root.save.pam = true;
            }
            if (_root.save.petFullness > 1000)
            {
                _root.save.petFullness = 1000;
            }
            _root.save.ver = 702;
        }
        if (_root.save.ver < 704)
        {
            if (_root.save.petFullness > 2000)
            {
                _root.save.pam = true;
            }
            if (_root.save.petFullness > 1000)
            {
                _root.save.petFullness = 1000;
            }
            if (!isNaN(_root.save.mysteryBoxCollect10[1]) && !isNaN(_root.save.mysteryBoxCollect10[2]) && !isNaN(_root.save.mysteryBoxCollect10[3]) && !isNaN(_root.save.mysteryBoxCollect10[4]) && !isNaN(_root.save.mysteryBoxCollect10[5]) && !isNaN(_root.save.mysteryBoxCollect10[6]))
            {
                var tmp = _root.save.mysteryBox[10] + _root.save.mysteryBoxCollect10[1] + _root.save.mysteryBoxCollect10[2] + _root.save.mysteryBoxCollect10[3] + _root.save.mysteryBoxCollect10[4] + _root.save.mysteryBoxCollect10[5] + _root.save.mysteryBoxCollect10[6];
                if (tmp > 19876)
                {
                    _root.save.pam = true;
                }
            }
            _root.save.ver = 704;
        }
        if (_root.save.ver < 705)
        {
            if (_root.save.botExp < 0)
            {
                _root.save.botExp = 0;
            }
            _root.save.ver = 705;
        }
        if (_root.save.ver < 706)
        {
            if (_root.kongregate_username == "Mnchngrngs" && _root.save.careerLevel[13] == 100)
            {
                _root.save.careerLevel[13] = 0;
                _root.save.careerLevel[14] = 0;
                _root.save.careerLevel[15] = 0;
                _root.save.careerLevel[16] = 0;
                _root.save.arenaKommanderComplete = 12;
                _root.save.arenaSkillBook = 1240;
            }
        }
        if (_root.save.ver < 707)
        {
            i = 0;
            while (i <= 899)
            {
                _root.save.drawingBoardHex[i] = "000000";
                _root.save.drawingBoardAlp[i] = 0;
                i++;
            }
            _root.save.ver = 707;
        }
        if (_root.save.ver < 708)
        {
            i = 900;
            while (i <= 1199)
            {
                _root.save.drawingBoardHex[i] = "000000";
                _root.save.drawingBoardAlp[i] = 0;
                i++;
            }
            _root.save.ver = 708;
        }
        if (_root.save.ver < 711)
        {
            if (_root.save.arenaEventPoint[1] > 40000)
            {
                _root.save.arenaEventPoint[1] = Math.floor((_root.save.arenaEventPoint[1] - 40000) * 0.5) + 40000;
            }
            _root.save.ver = 711;
        }
        if (_root.save.ver < 712)
        {
            _root.save.buttonMultiplier *= 2;
            _root.save.ver = 712;
        }
        if (_root.save.ver < 713)
        {
            _root.save.collectionPointMax = _root.save.collectionPoint;
            _root.save.ver = 713;
        }
        if (_root.save.ver < 715)
        {
            i = 1;
            while (i <= 140)
            {
                if (_root.save.progModuleType[i] == 17)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 2000;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(1000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 18)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 200;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(100 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 10)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 200;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(100 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                i++;
            }
            _root.save.ver = 715;
        }
        if (_root.save.ver < 716)
        {
            if (_root.save.progStore > 1000)
            {
                _root.save.progStore = 100;
            }
            var tmpProgStore = _root.save.progStore;
            var tmpProgStoreB = 100.0;
            _root.save.progStore = 100;
            while (tmpProgStoreB < tmpProgStore)
            {
                tmpProgStoreB += Math.ceil((1000 - tmpProgStoreB) / 10);
                _root.save.progStore += 100;
            }
            _root.save.ver = 716;
        }
        if (_root.save.ver < 717)
        {
            i = 1;
            while (i <= 140)
            {
                if (_root.save.progModuleType[i] == 6)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 500;
                        _root.save.progModuleEffect[i] = 4;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(250 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(2 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 41)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 400;
                        _root.save.progModuleEffect[i] = 10;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(200 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(5 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                i++;
            }
            _root.save.ver = 717;
        }
        if (_root.save.ver < 718)
        {
            if (_root.save.bestLevel >= 1250)
            {
                _root.save.botPill += 2;
            }
            _root.save.ver = 718;
        }
        if (_root.save.ver < 721)
        {
            _root.save.bugExp = 0;
            if (_root.save.level == 9001)
            {
                _root.save.bugExp = Math.floor(_root.save.currentExp * 0.99);
                _root.save.expLag += Math.floor(_root.save.currentExp * 0.99);
            }
            _root.save.ver = 721;
        }
        if (_root.save.ver < 726)
        {
            if (_root.save.fishCapacity == 1337)
            {
                _root.save.fishCapacity = 2500;
            }
            else if (_root.save.fishCapacity == 1837)
            {
                _root.save.fishCapacity = 5000;
            }
            else if (_root.save.fishCapacity == 2524)
            {
                _root.save.fishCapacity = 7500;
            }
            else if (_root.save.fishCapacity == 3468)
            {
                _root.save.fishCapacity = 10000;
            }
            else if (_root.save.fishCapacity == 4766)
            {
                _root.save.fishCapacity = 12500;
            }
            else if (_root.save.fishCapacity == 6550)
            {
                _root.save.fishCapacity = 15000;
            }
            else if (_root.save.fishCapacity == 9001)
            {
                _root.save.fishCapacity = 17500;
            }
            i = 1;
            while (i <= 140)
            {
                if (_root.save.progModuleType[i] == 1)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 2000;
                        _root.save.progModuleEffect[i] = 30;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(1000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(15 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 2)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 2000;
                        _root.save.progModuleEffect[i] = 30;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(1000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(15 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 11)
                {
                    _root.save.progModuleName[i] = "Pet Mana Module";
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 100;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(25 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 13)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 400;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(100 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 40)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 400;
                        _root.save.progModuleEffect[i] = 4;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(200 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(2 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                i++;
            }
            _root.save.ver = 726;
        }
        if (_root.save.ver < 728)
        {
            i = 1;
            while (i <= 140)
            {
                if (_root.save.progModuleType[i] == 1)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 2000;
                        _root.save.progModuleEffect[i] = 30;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(1000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(15 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 2)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 2000;
                        _root.save.progModuleEffect[i] = 30;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(1000 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(15 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                if (_root.save.progModuleType[i] == 11)
                {
                    _root.save.progModuleName[i] = "Pet Mana Module";
                    _root.save.progModuleEffect[i] = 1;
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 200;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(50 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 13)
                {
                    _root.save.progModuleEffect[i] = 1;
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 400;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(100 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 40)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 400;
                        _root.save.progModuleEffect[i] = 4;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(200 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(2 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                i++;
            }
            _root.save.ver = 728;
        }
        if (_root.save.ver < 730)
        {
            i = 1;
            while (i <= 140)
            {
                if (_root.save.progModuleType[i] == 22)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 800;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(200 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 30)
                {
                    _root.save.progModuleEffect[i] = 1;
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 40;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(10 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 31 || _root.save.progModuleType[i] == 32)
                {
                    _root.save.progModuleEffect[i] = 1;
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 60;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(15 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] >= 33 && _root.save.progModuleType[i] <= 35)
                {
                    _root.save.progModuleEffect[i] = 1;
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 80;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(20 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] >= 36 && _root.save.progModuleType[i] <= 39)
                {
                    _root.save.progModuleEffect[i] = 1;
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 100;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(25 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] == 41)
                {
                    _root.save.progModuleEffect[i] = 1;
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1600;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(400 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                i++;
            }
            _root.save.ver = 730;
        }
        if (_root.save.ver < 731)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventoryType[i] == "Potion")
                {
                    if (_root.save.inventoryName[i] == "Small Power Potion")
                    {
                        _root.save.inventoryAttack[i] = 600;
                    }
                    if (_root.save.inventoryName[i] == "Small Master Potion")
                    {
                        _root.save.inventoryAttack[i] = 600;
                    }
                    if (_root.save.inventoryName[i] == "Small Reward Potion")
                    {
                        _root.save.inventoryAttack[i] = 600;
                    }
                    if (_root.save.inventoryName[i] == "Medium Power Potion")
                    {
                        _root.save.inventoryAttack[i] = 1800;
                    }
                    if (_root.save.inventoryName[i] == "Medium Master Potion")
                    {
                        _root.save.inventoryAttack[i] = 1800;
                    }
                    if (_root.save.inventoryName[i] == "Medium Reward Potion")
                    {
                        _root.save.inventoryAttack[i] = 1800;
                    }
                    if (_root.save.inventoryName[i] == "Large Power Potion")
                    {
                        _root.save.inventoryAttack[i] = 5400;
                    }
                    if (_root.save.inventoryName[i] == "Large Master Potion")
                    {
                        _root.save.inventoryAttack[i] = 5400;
                    }
                    if (_root.save.inventoryName[i] == "Large Reward Potion")
                    {
                        _root.save.inventoryAttack[i] = 5400;
                    }
                    if (_root.save.inventoryName[i] == "Power Crystal")
                    {
                        _root.save.inventoryAttack[i] = 1800;
                    }
                    if (_root.save.inventoryName[i] == "Master Crystal")
                    {
                        _root.save.inventoryAttack[i] = 1800;
                    }
                    if (_root.save.inventoryName[i] == "Reward Crystal")
                    {
                        _root.save.inventoryAttack[i] = 1800;
                    }
                    if (_root.save.inventoryName[i] == "Special Power Crystal")
                    {
                        _root.save.inventoryAttack[i] = 5400;
                    }
                    if (_root.save.inventoryName[i] == "Special Master Crystal")
                    {
                        _root.save.inventoryAttack[i] = 5400;
                    }
                    if (_root.save.inventoryName[i] == "Special Reward Crystal")
                    {
                        _root.save.inventoryAttack[i] = 5400;
                    }
                    if (_root.save.inventoryName[i] == "Loot Magnet")
                    {
                        _root.save.inventoryAttack[i] = 3600;
                    }
                    if (_root.save.inventoryName[i] == "Monster Magnet")
                    {
                        _root.save.inventoryAttack[i] = 3600;
                    }
                    if (_root.save.inventoryName[i] == "Air Bubble")
                    {
                        _root.save.inventoryAttack[i] = 1800;
                    }
                }
                i++;
            }
            _root.save.ver = 731;
        }
        if (_root.saveGlobal.latestVersion == 1787)
        {
            _root.saveGlobal.pl7 = true;
            _root.saveGlobal.pl8 = true;
        }
        if (_root.save.ver < 732)
        {
            _root.save.arenaChaosLeft = 15;
            _root.save.arenaChaosMax = 15;
            _root.save.ver = 732;
        }
        if (_root.save.ver < 733)
        {
            _root.save.mh = false;
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventorySubtype[i] == "Medal" && _root.save.inventoryEnhance[i] > 0)
                {
                    if (_root.save.inventoryDesc[i] == "Thank you for your donation and your continued support!")
                    {
                        _root.save.inventoryAttack[i] = 0;
                        _root.save.mh = true;
                    }
                    if (_root.save.inventoryDesc[i] == "This medal\'s name depends on your Anti-Idle title when you craft it. More medal designs are available as special gifts for those who wish to support the game. Check the \'Donate!\' page in the main menu for details!")
                    {
                        _root.save.inventoryAttack[i] = 0;
                        _root.save.mh = true;
                    }
                }
                i++;
            }
            _root.save.ver = 733;
        }
        if (_root.save.ver < 735)
        {
            i = 1;
            while (i <= 1337)
            {
                if (_root.save.inventorySubtype[i] == "Pendant" && _root.save.inventoryName[i] == "GIGA PENDANT")
                {
                    _root.save.inventoryAttack[i] += _root.save.inventoryEnhance[i] * 75;
                }
                if (_root.save.inventorySubtype[i] == "Earring" && _root.save.inventoryName[i] == "GIGA EARRINGS")
                {
                    _root.save.inventoryAttack[i] += _root.save.inventoryEnhance[i] * 75;
                    var j = 5000;
                    while (j <= 7000)
                    {
                        if (_root.save.inventoryDesc[i].indexOf(_root.withComma(j)) != -1)
                        {
                            _root.save.inventoryAttack[i] -= Math.floor(j - 5000) / 5;
                            _root.save.inventoryAttack[i] += Math.floor(j - 5000) / 2;
                            j = 7001;
                        }
                        j++;
                    }
                }
                if (_root.save.inventoryType[i] == "Enhancer" && _root.save.inventoryName[i] == "GIGA ENHANCER")
                {
                    _root.save.inventoryAttack[i] = 125;
                }
                if (_root.save.inventoryType[i] == "Enhancer" && _root.save.inventoryName[i] == "GIGA ENHANCER EX")
                {
                    _root.save.inventoryAttack[i] = 150;
                }
                if (_root.save.inventoryType[i] == "Enhancer" && _root.save.inventoryName[i] == "GIGA LIFE ROCK")
                {
                    _root.save.inventoryAttack[i] = 2;
                }
                i++;
            }
            if (_root.save.raidDungeon >= 4500)
            {
                _root.save.arenaChaosLeft += 7;
            }
            _root.save.ver = 735;
        }
        if (_root.save.ver < 736)
        {
            if (_root.save.bannedB >= 1)
            {
                if (_root.save.arenaAttack < 65000)
                {
                    _root.save.arenaAttack = 65000;
                }
                if (_root.save.arenaDefense < 65000)
                {
                    _root.save.arenaDefense = 65000;
                }
                if (_root.save.arenaMaxHealth < 650000)
                {
                    _root.save.arenaMaxHealth = 650000;
                }
                if (_root.save.arenaMaxMana < 130000)
                {
                    _root.save.arenaMaxMana = 130000;
                }
                if (_root.save.arenaAccuracy < 13000)
                {
                    _root.save.arenaAccuracy = 13000;
                }
                if (_root.save.arenaEvasion < 13000)
                {
                    _root.save.arenaEvasion = 13000;
                }
            }
        }
        if (_root.save.ver < 737)
        {
            if (_root.save.regretRem > 1)
            {
                _root.save.regretRem = 1;
            }
            _root.save.ver = 737;
        }
        if (_root.save.ver < 739)
        {
            if (_root.save.regretRem == 0)
            {
                _root.save.robaconExp += 10000000000;
            }
            _root.save.ver = 739;
        }
        if (_root.save.ver < 740)
        {
            i = 26;
            while (i <= 50)
            {
                _root.save.gardenSlotEXP[i] *= 2;
                i++;
            }
            _root.save.ver = 740;
        }
        if (_root.save.ver < 741)
        {
            if (_root.saveid < 10 && _root.save.bestLevel >= 1250)
            {
                _root.save.botPill += 2;
            }
            _root.save.ver = 741;
        }
        if (_root.save.ver < 742)
        {
            i = 1;
            while (i <= 140)
            {
                if (_root.save.progModuleType[i] == 4)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 4;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(2 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                i++;
            }
            _root.save.ver = 742;
        }
        if (_root.save.ver < 743)
        {
            i = 1;
            while (i <= 2500)
            {
                if (_root.save.inventoryType[i] == "Armor" && _root.save.inventoryName[i] == "Ultimate Hat" && _root.save.inventoryAbility[i] == "Damage")
                {
                    _root.save.inventoryAbility[i] = "Attack";
                }
                if (_root.save.inventoryType[i] == "Armor" && _root.save.inventoryName[i] == "Ultimate Shirt" && _root.save.inventoryAbility[i] == "Damage")
                {
                    _root.save.inventoryAbility[i] = "Attack";
                }
                if (_root.save.inventoryType[i] == "Armor" && _root.save.inventoryName[i] == "Ultimate Gloves" && _root.save.inventoryAbility[i] == "Damage")
                {
                    _root.save.inventoryAbility[i] = "Attack";
                }
                if (_root.save.inventoryType[i] == "Armor" && _root.save.inventoryName[i] == "Ultimate Pants" && _root.save.inventoryAbility[i] == "Damage")
                {
                    _root.save.inventoryAbility[i] = "Attack";
                }
                if (_root.save.inventoryType[i] == "Armor" && _root.save.inventoryName[i] == "Ultimate Shoes" && _root.save.inventoryAbility[i] == "Damage")
                {
                    _root.save.inventoryAbility[i] = "Attack";
                }
                i++;
            }
            _root.save.ver = 743;
        }
        if (_root.save.ver < 744)
        {
            if (_root.save.lolProfit > 0)
            {
                _root.save.lolCapacity = _root.save.lolCapacity * 5 - 5;
            }
            if (_root.save.lolCapacity < 50)
            {
                _root.save.lolCapacity = 50;
            }
            if (_root.save.lolCapacity > 5000)
            {
                _root.save.lolCapacity = 5000;
            }
            _root.save.ver = 744;
        }
        if (_root.save.ver < 745)
        {
            i = 1;
            while (i <= 10)
            {
                if (_root.save.lolGems[i] >= 2000)
                {
                    _root.save.lolProfit -= Math.ceil(_root.save.lolGems[i] * 750 * i);
                    _root.save.lolGems[i] = Math.ceil(_root.save.lolGems[i] * 1.5);
                }
                i++;
            }
            _root.save.ver = 745;
        }
        if (_root.save.ver < 746)
        {
            _root.save.arenaKommanderProgress = 0;
            _root.save.ver = 746;
        }
        if (_root.save.ver < 747)
        {
            _root.save.arenaChaosLeft = _root.save.arenaChaosMax;
            _root.save.ver = 747;
        }
        if (_root.save.ver < 748)
        {
            if (_root.save.banned < 1 && _root.save.bannedB < 1 && _root.save.arenaKommanderMonID >= 448)
            {
                _root.save.arenaKommanderSkip += 1;
            }
            _root.save.ver = 748;
        }
        if (_root.save.ver < 749)
        {
            if (_root.save.arenaLevel < 500 && _root.save.arenaKommanderMonID >= 443 && _root.save.arenaKommanderMonID <= 447)
            {
                _root.save.arenaKommanderSkip += 1;
            }
            _root.save.ver = 749;
        }
        if (_root.save.ver < 750)
        {
            _root.save.botPoint = Math.floor(_root.save.botPoint * 1.5);
            _root.save.ver = 750;
        }
        if (_root.save.ver < 761)
        {
            _root.save.arenaKommanderSkip = 3;
            _root.save.ver = 761;
        }
        if (_root.save.ver < 762)
        {
            i = 1;
            while (i <= 140)
            {
                if (_root.save.progModuleType[i] >= 31 && _root.save.progModuleType[i] <= 32)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 40;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(10 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] >= 33 && _root.save.progModuleType[i] <= 35)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 60;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(15 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                if (_root.save.progModuleType[i] >= 36 && _root.save.progModuleType[i] <= 39)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 80;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(20 * (1 + (_root.save.progModuleTier[i] - 1) / 10) * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 5);
                    }
                }
                i++;
            }
            _root.save.ver = 762;
        }
        if (_root.save.ver < 763)
        {
            i = 1;
            while (i <= 2500)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i].indexOf("Humblebee") != -1)
                    {
                        _root.save.inventoryExpTNL[i] = 60000000;
                    }
                }
                i++;
            }
            _root.save.ver = 763;
        }
        if (_root.save.ver < 764)
        {
            if (_root.save.fishLevel >= 51 && _root.save.fishLevel <= 60)
            {
                _root.save.fishBestLevel = _root.save.fishLevel;
            }
            _root.save.ver = 764;
        }
        if (_root.save.ver < 773)
        {
            _root.save.progFrag = _root.save.rewardClaim;
            if (_root.save.progFrag > 10000000)
            {
                _root.save.progFrag = 10000000;
            }
            _root.save.awesomeAuto[12] = 0;
            _root.save.ver = 773;
        }
        if (_root.save.ver < 774)
        {
            i = 1;
            while (i <= 2500)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryName[i] == "Yellow Madness Gem")
                    {
                        _root.save.inventoryDesc[i] = "With this, you will no longer suffer a 10% EXP penalty when fighting yellow-named monsters! It also increases your EXP gain rate and makes rare monsters more likely to appear! Also, Coins will fall from the sky! Isn\'t it awesome?";
                    }
                    if (_root.save.inventoryName[i] == "Auto Buff Gem")
                    {
                        _root.save.inventoryDesc[i] = "When you equip this gem, you will receive random buffs if you don\'t already have one! You can also cancel your current buff to receive a new one.\n\nPossible buffs: Power, Master, Reward, Enrage, Elemental Boost\n\nAlso, you will get +0.5% Boost whenever you kill a monster and 1 Insta-Progress whenever you kill a boss.";
                    }
                    if (_root.save.inventoryType[i] == "Armor")
                    {
                        if (_root.save.inventoryMaxLevel[i] == 0)
                        {
                            _root.save.inventoryMaxLevel[i] = 1;
                        }
                    }
                }
                i++;
            }
            _root.save.ver = 774;
        }
        if (_root.save.ver < 775)
        {
            i = 1;
            while (i <= 2500)
            {
                if (_root.save.inventoryExist[i] == 1)
                {
                    if (_root.save.inventoryDesc[i] == "This medal\'s name depends on your Anti-Idle title when you craft it. More medal designs are available as special gifts for those who wish to support the game. Check the \'Donate!\' page in the main menu for details!")
                    {
                        _root.save.inventoryDesc[i] = "This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works.";
                    }
                }
                i++;
            }
            i = 1;
            while (i <= 110)
            {
                if (_root.save.progModuleType[i] >= 14 && _root.save.progModuleType[i] <= 16)
                {
                    _root.save.progModuleChance[i] = 0;
                    _root.save.progModuleCost[i] *= 2;
                    _root.save.shinyToken += 50;
                }
                i++;
            }
            i = 111;
            while (i <= 140)
            {
                if (_root.save.progModuleType[i] >= 14 && _root.save.progModuleType[i] <= 16)
                {
                    _root.save.progModuleChance[i] = 0;
                    _root.save.progModuleCost[i] = 0;
                }
                i++;
            }
            _root.save.ver = 775;
        }
        if (_root.save.ver < 776)
        {
            i = 1;
            while (i <= 140)
            {
                if (_root.save.progModuleType[i] == 21)
                {
                    if (_root.save.progModuleTier[i] == 9)
                    {
                        _root.save.progModuleChance[i] = 1000;
                        _root.save.progModuleEffect[i] = 20;
                    }
                    else
                    {
                        _root.save.progModuleChance[i] = Math.round(500 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                        _root.save.progModuleEffect[i] = Math.floor(10 * (1 + (_root.save.progModuleTier[i] - 1) / 10));
                    }
                    if (_root.save.progModuleShiny[i] == 1)
                    {
                        _root.save.progModuleChance[i] = Math.ceil(_root.save.progModuleChance[i] * 2.5);
                        _root.save.progModuleEffect[i] = Math.ceil(_root.save.progModuleEffect[i] * 2);
                    }
                }
                i++;
            }
            _root.save.ver = 776;
        }
        if (_root.save.ver < 777)
        {
            if (_root.save.arenaAlly > 500)
            {
                _root.save.arenaAlly = 0;
            }
            _root.save.ver = 777;
        }
        if (_root.save.ver < 778)
        {
            if (_root.save.arenaCorruptBestDifficulty > 50)
            {
                _root.save.arenaCorruptBestDifficulty = 50;
                _root.save.arenaCorruptMaxDifficulty = 51;
            }
            _root.save.ver = 778;
        }
        if (_root.save.ver < 779)
        {
            if (_root.save.arenaCorruptBestDifficulty > 100)
            {
                _root.save.arenaCorruptBestDifficulty = 100;
                _root.save.arenaCorruptMaxDifficulty = 101;
            }
            if (_root.save.arenaCorruptDifficulty > 50 && _root.save.arenaCorruptDifficulty > _root.save.arenaCorruptMaxDifficulty)
            {
                _root.save.arenaCorruptDifficulty = _root.save.arenaCorruptMaxDifficulty;
            }
            _root.save.ver = 779;
        }
        if (_root.save.ver < 780)
        {
            _root.save.highRankedPong[0] = _root.save.rankedPong;
            _root.save.highRankedAvoidance[0] = _root.save.rankedAvoidance;
            _root.save.highRankedMath[0] = _root.save.rankedMath;
            _root.save.highRankedWhack[0] = _root.save.rankedWhack;
            _root.save.highRankedMind[0] = _root.save.rankedMind;
            _root.save.highRankedBalance[0] = _root.save.rankedBalance;
            _root.save.highRankedCount[0] = _root.save.rankedCount;
            if (_root.save.totalStupidity >= 150)
            {
                _root.save.specialStock[30] = 1;
            }
            else
            {
                _root.save.specialStock[30] = 0;
            }
            _root.save.ver = 780;
        }
        if (_root.save.ver < 784)
        {
            _root.save.minVersion = 1833;
            if (_root.save.ver == 782)
            {
                _root.save.noobMode = true;
                _root.save.noobMode2 = true;
                _root.save.cheatEnabled = true;
            }
            if (_root.save.botCurrentOp == 11)
            {
                _root.save.botCurrentOp = 0;
                _root.save.botActive = true;
                _root.save.botCurrentOpTime = 0;
                _root.save.botCurrentOpNum = 1;
                _root.save.botCurrentOpMax = 1;
            }
            _root.save.botOp[12] += _root.save.botOp[11];
            _root.save.botOp[11] = 0;
            _root.save.ver = 784;
        }
        if (_root.save.ver < 785)
        {
            _root.save.displayName = "????";
            _root.save.ver = 785;
        }
        if (_root.save.ver < 789)
        {
            if (_root.save.totalStupidity < 150)
            {
                _root.save.specialStock[30] = 0;
                var itm = 1;
                while (itm <= 2500)
                {
                    if (_root.save.inventoryName[itm] == "Ultimate Weapon" || _root.save.inventoryName[itm] == "Ultimate Hat" || _root.save.inventoryName[itm] == "Ultimate Shirt" || _root.save.inventoryName[itm] == "Ultimate Gloves" || _root.save.inventoryName[itm] == "Ultimate Pants" || _root.save.inventoryName[itm] == "Ultimate Shoes" || _root.save.inventoryName[itm] == "Ultimate Pendant" || _root.save.inventoryName[itm] == "Ultimate Trinket" || _root.save.inventoryName[itm] == "Ultimate Earrings")
                    {
                        _root.deleteArenaItem(itm);
                    }
                    itm++;
                }
            }
            if (_root.save.raidEndlessSpeedrun < 2000000000)
            {
                _root.save.arenaTukkonium += 3;
            }
            if (_root.save.raidEndlessSpeedrunHC < 2000000000)
            {
                _root.save.arenaTukkonium += 25;
            }
            _root.save.ver = 789;
        }
        if (_root.save.ver < 791)
        {
            _root.save.minVersion = 1834;
            _root.save.ver = 791;
        }
        if (_root.save.ver < 794)
        {
            _root.save.minVersion = 1836;
            _root.save.highMind *= 2;
            _root.save.totalMind *= 2;
            _root.save.highRankedMind[0] *= 2;
            _root.save.highRankedMind[1] *= 2;
            _root.save.highRankedMind[2] *= 2;
            if (isNaN(_root.save.highRankedMind[0]))
            {
                _root.save.highRankedMind[0] = 0;
            }
            if (isNaN(_root.save.highRankedMind[1]))
            {
                _root.save.highRankedMind[1] = 0;
            }
            if (isNaN(_root.save.highRankedMind[2]))
            {
                _root.save.highRankedMind[2] = 0;
            }
            _root.save.ver = 794;
        }
        if (_root.save.ver < 795)
        {
            _root.save.minVersion = 1838;
            var itm = 1;
            while (itm <= 2500)
            {
                if (_root.save.inventoryName[itm] == "Monster Chip R-0" || _root.save.inventoryName[itm] == "Monster Chip E-0" || _root.save.inventoryName[itm] == "Monster Chip U-0")
                {
                    _root.deleteArenaItem(itm);
                }
                itm++;
            }
            _root.save.ver = 795;
        }
        if (_root.save.ver < 800)
        {
            _root.save.minVersion = 1843;
            if (_root.save.arenaCorruptWmBestDifficulty > 20)
            {
                _root.save.arenaCorruptWmBestDifficulty = 20;
                _root.save.arenaCorruptWmMaxDifficulty = 21;
                if (_root.save.arenaCorruptWmDifficulty > 21)
                {
                    _root.save.arenaCorruptWmDifficulty = 21;
                }
            }
            _root.save.ver = 800;
        }
        if (_root.save.ver < 803)
        {
            _root.save.minVersion = 1846;
            i = 0;
            while (i <= 2)
            {
                if (_root.save.highRankedPong[i] > 0)
                {
                    _root.save.highRankedPongDiff[i] = 2;
                }
                if (_root.save.highRankedAvoidance[i] > 0)
                {
                    _root.save.highRankedAvoidanceDiff[i] = 2;
                }
                if (_root.save.highRankedMath[i] > 0)
                {
                    _root.save.highRankedMathDiff[i] = 2;
                }
                if (_root.save.highRankedWhack[i] > 0)
                {
                    _root.save.highRankedWhackDiff[i] = 2;
                }
                if (_root.save.highRankedMind[i] > 0)
                {
                    _root.save.highRankedMindDiff[i] = 2;
                }
                if (_root.save.highRankedBalance[i] > 0)
                {
                    _root.save.highRankedBalanceDiff[i] = 2;
                }
                if (_root.save.highRankedCount[i] > 0)
                {
                    _root.save.highRankedCountDiff[i] = 2;
                }
                if (_root.save.highRankedMMRX[i] > 0)
                {
                    _root.save.highRankedMMRXDiff[i] = 2;
                }
                i++;
            }
            _root.save.ver = 803;
        }
        if (_root.save.ver < 804)
        {
            _root.save.minVersion = 1847;
            i = 0;
            while (i <= 2)
            {
                if (_root.save.highRankedPong[i] > 6000000)
                {
                    _root.save.highRankedPong[i] = 6000000 + Math.floor((_root.save.highRankedPong[i] - 6000000) * 2 / 3 / 500) * 50;
                }
                if (_root.save.highRankedMind[i] > 18000000)
                {
                    _root.save.highRankedMind[i] = 18000000 + Math.floor((_root.save.highRankedMind[i] - 18000000) * 1 / 4 / 500) * 50;
                }
                i++;
            }
            _root.save.ver = 804;
        }
        if (_root.save.ver < 806)
        {
            _root.save.minVersion = 1848;
            _root.save.ver = 806;
        }
        if (_root.save.ver < 807)
        {
            _root.save.minVersion = 1849;
            _root.save.ver = 807;
        }
        if (_root.save.ver < 809)
        {
            if (_root.save.highCount > 15000000 + _root.save.highRankedCount[0] / 5)
            {
                _root.save.highCount = 15000000 + _root.save.highRankedCount[0] / 5;
                if (_root.save.highCount < _root.save.highRankedCount[0])
                {
                    _root.save.highCount = _root.save.highRankedCount[0];
                }
            }
            _root.save.minVersion = 1850;
            _root.save.ver = 809;
        }
        if (_root.save.ver < 810)
        {
            _root.save.highCount = Math.floor(_root.save.highCount);
            _root.save.ver = 810;
        }
        if (_root.save.ver < 819)
        {
            _root.save.minVersion = 1860;
            _root.save.ver = 819;
        }

    }

    public override void _Process(double delta)
    {
        GetTree().ChangeSceneToFile("src/Loader/Loading5OutOf8.tscn");
    }
}