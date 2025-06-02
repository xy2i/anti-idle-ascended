using Godot;
using System;
using Math = AntiIdle.Common.Flash.Math;

// MATCH: frame_13/DoAction.as
// MATCH: frame_13/DoAction_2.as
// MATCH: frame_13/DoAction_3.as
public partial class Main : Control
{
    [Export]
    private TopBar _topBar;

    bool dispAlt;
    double recentReputation;
    double delay1sec;
    double delay5min;
    double tipAlpha;
    bool tempStatHold;
    public override void _EnterTree()
    {
        _root.topBar = _topBar;
        var i = 0;
        if (_root.suc1 == true && _root.suc2 == true && _root.saveid < 10)
        {
            _root.actualKpaCount = 0;
            _root.actualShinyKpaCount = 0;
            i = 1;
            while (i <= _root.kpaCount)
            {
                if (_root.kpaOwned[i] == true)
                {
                    _root.actualKpaCount += 1;
                }
                if (_root.kpaShiny[i] == true)
                {
                    _root.actualShinyKpaCount += 1;
                }
                i++;
            }
        }
        _root.fishRodCount = 0;
        i = 1;
        while (i <= 10)
        {
            if (_root.save.fishRodUnlock[i] == 1)
            {
                _root.fishRodCount += 1;
            }
            if (_root.fishRodCount >= 7)
            {
                _root.save.fishRodUnlock[10] = 1;
            }
            i++;
        }
        _root.stadiumHatUnlocked = 0;
        if (_root.save.stadiumRace >= 500 || _root.save.stadiumImpossibleRace >= 25)
        {
            _root.stadiumHatUnlocked += 1;
        }
        if (_root.save.stadiumItem >= 500 || _root.save.stadiumImpossibleItem >= 25)
        {
            _root.stadiumHatUnlocked += 1;
        }
        if (_root.save.stadiumDeathMatch >= 50 || _root.save.stadiumBestDeathMatch >= 1000)
        {
            _root.stadiumHatUnlocked += 1;
        }
        if (_root.save.aceFinish > 0)
        {
            _root.stadiumHatUnlocked += 1;
        }
        if (_root.save.stadiumBetCorrect >= 50)
        {
            _root.stadiumHatUnlocked += 1;
        }
        if (_root.save.stadiumTokenMax >= 1000000)
        {
            _root.stadiumHatUnlocked += 1;
        }
        if (_root.save.stadiumBunnyHat == true)
        {
            _root.stadiumHatUnlocked += 1;
        }
        if (_root.save.stadiumH1 == true)
        {
            _root.stadiumHatUnlocked += 1;
        }
        if (_root.save.stadiumH2 == true)
        {
            _root.stadiumHatUnlocked += 1;
        }
        if (_root.save.stadiumH3 == true)
        {
            _root.stadiumHatUnlocked += 1;
        }
        _root.totalUnrankedPower = 0;
        i = 1;
        while (i <= 40)
        {
            _root.totalUnrankedPower += _root.save.unrankedPower[i];
            i++;
        }
        _root.totalRestEfficiency = 0;
        i = 1;
        while (i <= 10)
        {
            _root.totalRestEfficiency += _root.save.restEfficiency[i];
            i++;
        }
        _root.organizeModule();
        if (_root.save.challengeInit != true)
        {
            _root.save.challengeInit = true;
            if (_root.saveid == 21)
            {
                _root.getArenaWeapon(100, "Gun", 149, true, 280, 13, 0, 18, 8, 0, 1, 0, 1, 0, 0, 0, "Coin", "Critical Damage", "", 0, Infinity, false, false, false, false, false, 0, "Golden Gun", "", true);
                _root.getArenaWeapon(125, "Sword", 133, false, 585, 6, 30, 20, 0, 0, 1, 0, 1, 0, 1, 0, "", "", "", 0, Infinity, false, false, false, false, false, 0, "Hero Sword", "", true);
                _root.getArenaArmor(80, "Hat", 109, 8, 0, 63, 14, 0, 0, 1, 0, 1, 0, 0, 0, "", "", "", 0, Infinity, false, false, false, false, false, 0, "Dragonewyn Hat", "", true);
                _root.getArenaArmor(80, "Shirt", 109, 8, 0, 82, 10, 0, 0, 1, 0, 1, 0, 0, 0, "", "", "", 0, Infinity, false, false, false, false, false, 0, "Dragonewyn Shirt", "", true);
                _root.getArenaArmor(80, "Gloves", 109, 16, 0, 50, 14, 0, 0, 1, 0, 1, 0, 0, 0, "", "", "", 0, Infinity, false, false, false, false, false, 0, "Dragonewyn Gloves", "", true);
                _root.getArenaArmor(80, "Pants", 109, 8, 0, 82, 10, 0, 0, 1, 0, 1, 0, 0, 0, "", "", "", 0, Infinity, false, false, false, false, false, 0, "Dragonewyn Pants", "", true);
                _root.getArenaArmor(80, "Shoes", 109, 8, 2, 50, 10, 4, 0, 1, 0, 1, 0, 0, 0, "", "", "", 0, Infinity, false, false, false, false, false, 0, "Dragonewyn Shoes", "", true);
                _root.getArenaAccessory(30, "Pendant", 20, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 10, 756, "", "", "", 0, Infinity, true, false, false, false, false, 0, "Collector\'s Pendant", "This special item is awarded to help you during Challenge #1. Use it well, and don\'t accidentally sell it! Oh wait, you can\'t even sell it...", true);
            }
            if (_root.saveid == 25)
            {
                _root.save.featureTukkunFCG = true;
                _root.save.fcgLevel = 60;
                _root.save.fcgRewardedLevel = 60;
                _root.save.fcgCash = 60000;
                i = 1;
                while (i <= 248)
                {
                    _root.save.fcgOwned[i] += 6;
                    i++;
                }
                _root.save.fcgChallenge5 = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
                _root.save.fcgSeriousDeck = 13 + random(53);
            }
        }
        _root.towerCooldown = 30;
        i = 1;
        while (i <= _root.autoUpdateTime.Count - 1)
        {
            if (_root.systemtimenow > _root.autoUpdateTime[i] && _root.save.au < i)
            {
                _root.save.au = i;
            }
            i++;
        }
        _root.sprayCooldown1 = 165;
        _root.sprayCooldown2 = 540;
        _root.cursoridle = 0;
        _root.failGrammar = 0;
        if (_root.save.seppukuEnd > 0)
        {
            // TODO: seppuku frame
            //_root.gotoAndStop(17);
        }
        dispAlt = false;
        _root.totalEpicSkill = 0;
        i = 1;
        while (i <= 7)
        {
            _root.totalEpicSkill += _root.save.epicSkill[i];
            i++;
        }
        _root._quality = _root.saveGlobal.graphicQuality;
        _root.alreadyopened = 0;
        _root.treeToPlant = -1;
        if ((bool)_root["preloadedFile" + _root.saveID] != true)
        {
            _root["preloadedFile" + _root.saveID] = true;
            _root.save.totalPlays += 1;
        }
        _root.quitDuration = Math.ceil((_root.systemtimenow - _root.save.lastPlayed) / 3600000);
        if (_root.quitDuration > 72)
        {
            _root.quitDuration = 72;
        }
        var quitDuration = _root.quitDuration;
        if (_root.saveid >= 10 || _root.save.offlineProgress != true)
        {
            i = 1;
            while (i <= _root.save.gardenCapacity)
            {
                _root.save.gardenRecentTime[i] += _root.systemtimenow - _root.save.lastPlayed;
                _root.save.gardenPurchaseTime[i] += _root.systemtimenow - _root.save.lastPlayed;
                i++;
            }
            _root.save.gardenFertilizerAllow += _root.systemtimenow - _root.save.lastPlayed;
            _root.save.nextWizard += _root.systemtimenow - _root.save.lastPlayed;
            i = 1;
            while (i <= 3000)
            {
                if (_root.save.inventoryExist[i] == 1 && _root.save.inventoryExpiry[i] != Infinity)
                {
                    _root.save.inventoryExpiry[i] += _root.systemtimenow - _root.save.lastPlayed;
                }
                i++;
            }
        }
        if (_root.quitDuration > 0 && _root.saveid < 10 && _root.save.offlineProgress == true)
        {
            if (_root.save.curBusiness != 0)
            {
                var businessOff = Math.floor((_root.systemtimenow - _root.save.lastPlayed) / 1000);
                if (businessOff < 0)
                {
                    businessOff = 0;
                }
                if (businessOff > 86400)
                {
                    businessOff = 86400;
                }
                _root.save.curBusinessOffline += businessOff;
            }
            if (_root.quitDuration > 1 && _root.save.bestLevel >= 25)
            {
                _root.offlineProg.gotoAndStop(2);
                if (_root.save.awesomeEnergy < _root.save.awesomeMaxEnergy * 5)
                {
                    _root.save.awesomeEnergy = _root.save.awesomeMaxEnergy * 5;
                }
                _root.save.fishFatigue -= 1200 * (quitDuration - 1);
                if (_root.save.permaBanPenalty[22] == 3)
                {
                    _root.save.fishFatigue -= 1200 * (quitDuration - 1);
                }
                else if (_root.save.permaBanPenalty[22] == 2)
                {
                    _root.save.fishFatigue -= 720 * (quitDuration - 1);
                }
                else if (_root.save.permaBanPenalty[22] == 1)
                {
                    _root.save.fishFatigue -= 480 * (quitDuration - 1);
                }
            }
            if (_root.save.petExist == 1)
            {
                var petFullnessDrop = quitDuration * 2;
                if (petFullnessDrop > 72)
                {
                    petFullnessDrop = 72;
                }
                if (_root.save.careerLevel[11] >= 100)
                {
                    petFullnessDrop = Math.floor(petFullnessDrop / 2);
                }
                if (_root.save.petFullness >= petFullnessDrop)
                {
                    _root.save.petFullness -= petFullnessDrop;
                    _root.dispNews(149, "Pet Fullness decreased! (-" + petFullnessDrop + ") / Remaining: " + _root.save.petFullness);
                }
                else
                {
                    _root.save.petHealth -= petFullnessDrop - _root.save.petFullness;
                    _root.dispNews(149, "Pet Fullness decreased! (-" + _root.save.petFullness + ") / Remaining: 0");
                    _root.dispNews(150, "Pet Health decreased! (-" + (petFullnessDrop - _root.save.petFullness) + ") / Remaining: " + _root.save.petHealth);
                    _root.save.petFullness = 0;
                    if (_root.save.petHealth > 0)
                    {
                        _root.dispNews(152, "Your pet is VERY hungry. Feed it before it dies.");
                    }
                    else
                    {
                        _root.killPet();
                    }
                }
            }
        }
        if (_root.save.longestQuit < quitDuration)
        {
            _root.save.longestQuit = quitDuration;
        }
        _root.save.lastPlayed = _root.systemtimenow;
        _root.progPercent = 0;
        _root.printPercent = 0;
        _root.mainSummonCount = 0;
        _root.mainAntiLag = 0;
        _root.souvenirLimit = [0, 500, 250, 250, 250, 100, 250, 1000, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        _root.souvenirRC = 0;
        i = 1;
        while (i <= 24)
        {
            _root.souvenirRC += _root.save.souvenir[i];
            if (_root.save.souvenir[i] > _root.souvenirLimit[i])
            {
                _root.souvenirRC = 0;
            }
            i++;
        }
        i = 1;
        while (i <= 10)
        {
            if (isNaN(_root.save.mysteryBox[i]))
            {
                _root.save.mysteryBox[i] = 0;
            }
            i++;
        }
        recentReputation = _root.save.awesomeReputation;
        delay1sec = 0;
        delay5min = 0;
        if (_root.save.bestLevel < _root.save.level)
        {
            _root.save.bestLevel = _root.save.level;
        }
        if (_root.save.boostPremium > 0)
        {
            _root.save.boostPremium -= 2;
        }
        _root.checkCareer();
        _root.fixStuff();
        _root.checkLevel();
        _root.depleteBoost();
        _root.checkExpiry();
        _root.updateMarket();
        _root.trackZoneKill();
        _root.checkBestiary();
        _root.checkAchievements();
        _root.checkFullInventory();
        _root.submitAll();
        _root.dispStuff();
        _root.checkMini();
        tipAlpha = 1300;
        _root.toBuyInsta = 0;

    }

    public override void _Process(double delta)
    {
        var i = 0d;
        if (_root.topBar.levelStar.levelAnim._alpha > 0)
        {
            _root.topBar.levelStar.levelAnim._alpha -= 2;
        }
        if (Input.IsActionPressed("i") && Input.IsActionPressed("p"))
        {
            _root.toBuyInsta += 1;
            if (_root.toBuyInsta >= 40 && _root.toBuyInsta <= 600)
            {
                var instaToBuy = _root.toBuyInsta * 2 - 80;
                var instaMax = Math.floor(_root.save.coin / 75000000);
                if (instaToBuy > instaMax)
                {
                    instaToBuy = instaMax;
                }
                _root.save.coin -= instaToBuy * 75000000;
                _root.progPercent += instaToBuy * 100;
            }
        }
        else
        {
            _root.toBuyInsta = 0;
        }
        _root.scrollingDir = 0;
        _root.annUpdate -= 1;
        if (_root.saveid >= 20)
        {
            if (_root.save.totalPlayTime >= 1800)
            {
                _root.saveGlobal.challengeAttempted[_root.saveid - 20] = true;
            }
            if (_root.save.challengeToken == Math.floor(_root.saveid * (_root.saveid + 1) * (_root.saveid - 7) * 156.4))
            {
                if (isNaN(_root.save.challengeTime))
                {
                    _root.save.challengeTime = _root.save.totalPlayTime;
                }
                if (isNaN(_root.saveGlobal.challengeTime[_root.saveid - 20]) || _root.saveGlobal.challengeTime[_root.saveid - 20] > _root.save.challengeTime)
                {
                    _root.saveGlobal.challengeTime[_root.saveid - 20] = _root.save.challengeTime;
                }
                if (_root.systemtimenow < _root.challengeDeadline)
                {
                    _root.saveGlobal.challengePerfect[_root.saveid - 20] = true;
                }
            }
        }
        if (_root.save.rewardBotTime > 0)
        {
            if (_root.cursoridle > 10 + _root.save.progStore * 0.01)
            {
                if (_root.progPercent < 50 && _root.save.rewardBotTime > 10)
                {
                    _root.save.idleMode = false;
                }
                else
                {
                    _root.save.idleMode = true;
                }
            }
            else
            {
                _root.save.idleMode = false;
            }
        }
        if (Input.IsActionPressed("F1"))
        {
            _root.save.noHelp = 1337;
        }
        if (Input.IsActionPressed("Ctrl") && Input.IsActionPressed("s") && tempStatHold != true)
        {
            tempStatHold = true;
            if (_root.optionsScreen._currentframe != 5)
            {
                _root.optionsScreen.gotoAndStop(5);
            }
            else
            {
                _root.optionsScreen.gotoAndStop(1);
            }
            _root.actiondescription = "";
            _root.actiondescription = "";
        }
        else if (!Input.IsActionPressed("s"))
        {
            tempStatHold = false;
        }
        _root.save.boostExp = _root.save.boost;
        _root.save.boostCoin = _root.save.boost;
        if (_root.fcgCooldown > 0 && !isNaN(_root.fcgCooldown))
        {
            _root.fcgCooldown -= 1 / _root.fps;
        }
        _root.save.progBoxNext -= 1 / _root.fps;
        if (_root.save.progBoxNext < 0)
        {
            _root.save.progBoxNext = 0;
        }
        _root.save.refillNext -= 1 / _root.fps;
        if (_root.save.refillNext < 0)
        {
            _root.save.refillNext = 0;
        }
        delay1sec += 1 / _root.fps;
        delay5min += 1 / _root.fps;
        _root.fixStuff();
        _root.checkLevel();
        _root.progressUp();
        _root.lagExp();
        if (_root.save.featureMoneyPrinter == true)
        {
            _root.checkPrinter();
        }
        if (_root.save.coin > 999999999999999)
        {
            _root.save.coin = 999999999999999;
        }
        if (_root.save.greenCoin > 999999999999)
        {
            _root.save.greenCoin = 999999999999;
        }
        if (_root.save.blueCoin > 999999999)
        {
            _root.save.blueCoin = 999999999;
        }
        if (_root.save.whiteCoin > 999999)
        {
            _root.save.whiteCoin = 999999;
        }
        _root.topBar.coinText.Text = _root.withComma(_root.save.coin);
        if (_root.save.coin >= 1000000000000)
        {
            _root.topBar.coinText.Text = "    " + _root.withComma(_root.save.coin);
        }
        _root.topBar.greenCoinText.Text = _root.withComma(_root.save.greenCoin);
        if (_root.save.greenCoin >= 1000000000)
        {
            _root.topBar.greenCoinText.Text = "    " + _root.dispOverGC();
        }
        _root.topBar.blueCoinText.Text = _root.withComma(_root.save.blueCoin);
        if (_root.save.blueCoin >= 1000000)
        {
            _root.topBar.blueCoinText.Text = "    " + _root.dispOverBC();
        }
        if (_root.save.noob > 4000)
        {
            _root.save.noob = 0;
        }
        if (_root.save.noob > 3000)
        {
            _root.save.noob = 3000;
        }
        if (_root.save.progSpeedAuto > 200)
        {
            _root.save.progSpeedAuto = 1;
        }
        if (_root.save.progSpeedManual > 500)
        {
            _root.save.progSpeedManual = 1;
        }
        if (_root.save.gardenPoint > 9999999)
        {
            _root.save.gardenPoint = 9999999;
            _root.save.gardenPointMax = 9999999;
        }
        var bonusStatPct = _root.save.bannedB;
        if (bonusStatPct > 100)
        {
            bonusStatPct = 100;
        }
        if (isNaN(bonusStatPct))
        {
            bonusStatPct = 0;
        }
        if (_root.save.arenaAttack > 90000 + bonusStatPct * 900)
        {
            _root.save.arenaAttack = 90000 + bonusStatPct * 900;
        }
        if (_root.save.arenaDefense > 90000 + bonusStatPct * 900)
        {
            _root.save.arenaDefense = 90000 + bonusStatPct * 900;
        }
        if (_root.save.arenaAccuracy > 18000 + bonusStatPct * 180)
        {
            _root.save.arenaAccuracy = 18000 + bonusStatPct * 180;
        }
        if (_root.save.arenaEvasion > 18000 + bonusStatPct * 180)
        {
            _root.save.arenaEvasion = 18000 + bonusStatPct * 180;
        }
        if (_root.save.arenaMaxHealth > 900000 + bonusStatPct * 9000)
        {
            _root.save.arenaMaxHealth = 900000 + bonusStatPct * 9000;
        }
        if (_root.save.arenaMaxMana > 360000 + bonusStatPct * 3600)
        {
            _root.save.arenaMaxMana = 360000 + bonusStatPct * 3600;
        }
        if (_root.save.arenaCrystal1 > 9999)
        {
            _root.save.arenaCrystal1 = 9999;
        }
        if (_root.save.arenaCrystal2 > 9999)
        {
            _root.save.arenaCrystal2 = 9999;
        }
        if (_root.save.arenaPixel > 999999999999)
        {
            _root.save.arenaPixel = 999999999999;
        }
        if (_root.save.arenaCraft > 999999999999)
        {
            _root.save.arenaCraft = 999999999999;
        }
        if (isNaN(_root.save.arenaPixel))
        {
            _root.save.arenaPixel = 0;
        }
        if (isNaN(_root.save.arenaCraft))
        {
            _root.save.arenaCraft = 0;
        }
        if (_root.save.arenaSuperiorCraft > 9999999)
        {
            _root.save.arenaSuperiorCraft = 9999999;
        }
        if (_root.save.arenaUnobtainium > 9999999)
        {
            _root.save.arenaUnobtainium = 9999999;
        }
        if (_root.save.arenaTukkonium > 9999999)
        {
            _root.save.arenaTukkonium = 9999999;
        }
        if (_root.save.arenaEnhancerFragment > 9999999)
        {
            _root.save.arenaEnhancerFragment = 9999999;
        }
        if (_root.save.arenaChaoticFragment > 9999999)
        {
            _root.save.arenaChaoticFragment = 9999999;
        }
        if (_root.save.arenaProofTraining > 9999999)
        {
            _root.save.arenaProofTraining = 9999999;
        }
        if (_root.save.arenaProofMission > 9999999)
        {
            _root.save.arenaProofMission = 9999999;
        }
        if (_root.save.arenaNerfGem > 9999999)
        {
            _root.save.arenaNerfGem = 9999999;
        }
        if (_root.save.arenaBacon > 9999999)
        {
            _root.save.arenaBacon = 9999999;
        }
        if (_root.save.robaconBacon > 9999999)
        {
            _root.save.robaconBacon = 9999999;
        }
        if (_root.save.restTime > 360000)
        {
            _root.save.restTime = 360000;
        }
        if (_root.save.doubleExpTime > 360000)
        {
            _root.save.doubleExpTime = 360000;
        }
        if (_root.save.doubleCoinTime > 360000)
        {
            _root.save.doubleCoinTime = 360000;
        }
        if (_root.save.rewardBotTime > 360000)
        {
            _root.save.rewardBotTime = 360000;
        }
        if (_root.save.autoHarvestTime > 360000)
        {
            _root.save.autoHarvestTime = 360000;
        }
        if (_root.save.eliteButtonTime > 360000)
        {
            _root.save.eliteButtonTime = 360000;
        }
        if (_root.save.batteryChargerTime > 360000)
        {
            _root.save.batteryChargerTime = 360000;
        }
        if (_root.save.stadiumProTime > 360000)
        {
            _root.save.stadiumProTime = 360000;
        }
        if (_root.save.powerUserTime > 360000)
        {
            _root.save.powerUserTime = 360000;
        }
        if (_root.save.demandMasterTime > 360000)
        {
            _root.save.demandMasterTime = 360000;
        }
        if (_root.save.quickAdventuresTime > 360000)
        {
            _root.save.quickAdventuresTime = 360000;
        }
        if (_root.save.eliteFisherTime > 360000)
        {
            _root.save.eliteFisherTime = 360000;
        }
        if (_root.save.awesomeReputation > 999999)
        {
            _root.save.awesomeReputation = 999999;
        }
        if (_root.save.awesomeReputation < -999999)
        {
            _root.save.awesomeReputation = -999999;
        }
        if (_root.save.awesomeMaxReputation > 999999)
        {
            _root.save.awesomeMaxReputation = 999999;
        }
        if (_root.save.gardenFertilizer > 9999)
        {
            _root.save.gardenFertilizer = 9999;
        }
        if (_root.save.gardenMegaFertilizer > 9999)
        {
            _root.save.gardenMegaFertilizer = 9999;
        }
        if (_root.save.awesomeRefill > 9999)
        {
            _root.save.awesomeRefill = 9999;
        }
        if (_root.save.boostPotion > 9999)
        {
            _root.save.boostPotion = 9999;
        }
        if (_root.save.megaBoostPotion > 9999)
        {
            _root.save.megaBoostPotion = 9999;
        }
        if (delay1sec >= 1)
        {
            _root.dispStuff();
            _root.checkMini();
            if (_root.save.reforgeMode == 2)
            {
                var coinToReforge = Math.floor(_root.save.coin * 0.001);
                _root.save.reforgingCoin += coinToReforge;
                _root.save.coin -= coinToReforge;
                coinToReforge = Math.floor(_root.save.greenCoin * 0.001);
                _root.save.reforgingGreenCoin += coinToReforge;
                _root.save.greenCoin -= coinToReforge;
                coinToReforge = Math.floor(_root.save.blueCoin * 0.001);
                _root.save.reforgingBlueCoin += coinToReforge;
                _root.save.blueCoin -= coinToReforge;
            }
            if (_root.save.coin > 999999999999)
            {
                _root.save.coinOvercap += 1;
            }
            else
            {
                _root.save.coinOvercap = 0;
            }
            if (_root.save.greenCoin > 999999999)
            {
                _root.save.greenCoinOvercap += 1;
            }
            else
            {
                _root.save.greenCoinOvercap = 0;
            }
            if (_root.save.blueCoin > 999999)
            {
                _root.save.blueCoinOvercap += 1;
            }
            else
            {
                _root.save.blueCoinOvercap = 0;
            }
            _root.save.pokayCD[1] -= 1;
            _root.save.pokayCD[2] -= 1;
            _root.save.pokayCD[3] -= 1;
            _root.save.pokayCD[4] -= 1;
            _root.save.pokayCD[5] -= 1;
            _root.save.pokayCD[6] -= 1;
            _root.save.pokayCD[7] -= 1;
            if (_root.saveid <= 3)
            {
                var ptd = Math.floor(_root.save.totalPlayTime / 86400) + " days";
                if (_root.save.totalPlayTime < 3600)
                {
                    ptd = Math.floor(_root.save.totalPlayTime / 60) + " min.";
                }
                else if (_root.save.totalPlayTime < 176800)
                {
                    ptd = Math.floor(_root.save.totalPlayTime / 3600) + " hr.";
                }
                _root.saveGlobal.playTime[_root.saveid] = ptd;
                _root.saveGlobal.curLevel[_root.saveid] = _root.withComma(_root.save.level);
                _root.saveGlobal.ascCount[_root.saveid] = _root.withComma(_root.save.banned);
            }
            _root.checkCyborg();
            if (_root.save.whiteCoinRefund > 0)
            {
                var tempWcEarn = Math.min(_root.save.whiteCoinRefund, 999999 - _root.save.whiteCoin);
                _root.save.whiteCoin += tempWcEarn;
                _root.save.whiteCoinRefund -= tempWcEarn;
            }
            if (_root.towerCooldown > 0)
            {
                _root.towerCooldown -= 1;
            }
            _root.sprayCooldown1 -= 1;
            _root.sprayCooldown2 -= 1;
            _root.cursoridle += 1;
            if (_root.save.maxAchievement < _root.awards)
            {
                _root.save.maxAchievement = _root.awards;
            }
            if (_root.save.curBusiness != 0)
            {
                _root.save.curBusinessOnline += 1;
            }
            _root.sessionTimeLeft -= 1;
            _root.thisSession += 1;
            if (_root.save.longestSession < _root.thisSession)
            {
                _root.save.longestSession = _root.thisSession;
            }
            if (_root.sessionTimeLeft < 0)
            {
                // TODO: session time out screen
                //_root.gotoAndStop(16);
            }
            _root.save.totalPlayTime += 1;
            _root.save.ascendPlayTime += 1;
            _root.save.houseVer -= 1;
            _root.failGrammar -= 1;
            if (_root.save.noAntsTime > 0)
            {
                if (_root.sprayCooldown1 <= 0 && _root.save.ants > 0)
                {
                    _root.sprayCooldown1 = 180;
                    _root.save.antsSprayed += Math.ceil(_root.save.ants * 0.9);
                    _root.save.ants = Math.floor(_root.save.ants * 0.1);
                }
                if (_root.save.featureDoomSprayer == true)
                {
                    if (_root.sprayCooldown2 <= 0 && _root.save.ants > 0)
                    {
                        _root.sprayCooldown2 = 600;
                        _root.save.antsSprayed += _root.save.ants + 99;
                        _root.save.ants = -99;
                    }
                }
            }
            _root.checkCareer();
            _root.checkAchievements();
            _root.depleteBoost();
            if (_root.save.featureGarden == true)
            {
                _root.checkExpiry();
            }
            if (_root.save.featureButtonMachine == true)
            {
                var grandpaClickRate = _root.save.buttonGrandpaSpeed * 0.01;
                var grandpaExcellentRate = _root.save.buttonGrandpaAccuracy * 0.04;
                var grandpaExp = 0d;
                var grandpaCoin = 0d;
                var grandpaGreenCoin = 0d;
                var grandpaBlueCoin = 0d;
                var grandpaCareer = 0;
                var tmashbonusb = Math.floor(Math.sqrt(_root.save.buttonPress * 0.5));
                var tmashbonusd = _root.save.buttonMultiplier;
                if (tmashbonusb > 2500)
                {
                    tmashbonusb = 2500;
                }
                var tmul = Math.floor(100 + (tmashbonusb + tmashbonusd));
                if (_root.save.eliteButtonTime > 0)
                {
                    tmul += 200;
                }
                if (_root.house._currentframe != 8)
                {
                    grandpaClickRate = grandpaClickRate * _root.save.buttonGrandpaDiscipline * 0.02;
                    grandpaExcellentRate = grandpaExcellentRate * _root.save.buttonGrandpaDiscipline * 0.02;
                }
                i = 1;
                while (i <= _root.save.buttonGrandpa)
                {
                    if (Math.random() < grandpaClickRate)
                    {
                        var grandpaPerf = 89;
                        var grandpaRating = 4;
                        if (_root.save.questType == "Press")
                        {
                            if (_root.save.questSubtype == "Any")
                            {
                                _root.save.questCount += 1;
                            }
                        }
                        if (Math.random() < grandpaExcellentRate)
                        {
                            grandpaPerf = 97;
                            grandpaRating = 6;
                            if (_root.save.questType == "Press")
                            {
                                if (_root.save.questSubtype == "Great")
                                {
                                    _root.save.questCount += 1;
                                }
                                if (_root.save.questSubtype == "Excellent")
                                {
                                    _root.save.questCount += 1;
                                }
                            }
                            if (Math.random() < 0.25)
                            {
                                grandpaPerf = 99;
                                grandpaRating = 7;
                                if (_root.save.questType == "Press")
                                {
                                    if (_root.save.questSubtype == "Perfect")
                                    {
                                        _root.save.questCount += 1;
                                    }
                                }
                            }
                        }
                        else if (Math.random() < 0.5)
                        {
                            grandpaPerf = 94;
                            grandpaRating = 5;
                            if (_root.save.questType == "Press")
                            {
                                if (_root.save.questSubtype == "Great")
                                {
                                    _root.save.questCount += 1;
                                }
                            }
                        }
                        _root.save.buttonPress += 1;
                        _root.save.buttonGrandpaPress += 1;
                        var grandpaReward = Math.floor(Math.pow(_root.save.level * grandpaPerf * grandpaRating, 0.6) * tmul / 100);
                        grandpaExp += Math.floor(grandpaReward * _root.save.boost / 100 * 0.175 * (1 + _root.curCareerLevel[5] * 0.005) * (1 + _root.save.petStat[3] * 0.002));
                        grandpaCoin += Math.floor(grandpaReward * _root.save.boost / 100 * 0.05 * (1 + _root.curCareerLevel[5] * 0.005));
                        if (grandpaRating == 4)
                        {
                            grandpaGreenCoin += 10;
                            grandpaCareer += 2;
                        }
                        if (grandpaRating == 5)
                        {
                            grandpaGreenCoin += 50;
                            grandpaCareer += 5;
                        }
                        if (grandpaRating == 6)
                        {
                            grandpaGreenCoin += 250;
                            grandpaBlueCoin += 1;
                            grandpaCareer += 10;
                            if (_root.save.permaBanPenalty[18] == 3)
                            {
                                _root.save.buttonPurple += 1;
                            }
                            else if (_root.save.permaBanPenalty[18] == 2 && Math.random() < 0.75)
                            {
                                _root.save.buttonPurple += 1;
                            }
                            else if (_root.save.permaBanPenalty[18] == 1 && Math.random() < 0.5)
                            {
                                _root.save.buttonPurple += 1;
                            }
                            if (_root.save.careerLevel[5] >= 200)
                            {
                                _root.progPercent += 30;
                            }
                        }
                        if (grandpaRating == 7)
                        {
                            _root.save.buttonPerfect += 1;
                            _root.save.buttonPurple += 1;
                            if (_root.save.permaBanPenalty[18] == 3)
                            {
                                _root.save.buttonPurple += 1;
                            }
                            else if (_root.save.permaBanPenalty[18] == 2 && Math.random() < 0.25)
                            {
                                _root.save.buttonPurple += 1;
                            }
                            grandpaGreenCoin += 1000;
                            grandpaBlueCoin += 2;
                            grandpaCareer += 50;
                            if (_root.save.careerLevel[5] >= 100)
                            {
                                _root.progPercent += 100;
                            }
                        }
                    }
                    i++;
                }
                if (_root.save.permaBanPenalty[24] == 3)
                {
                    grandpaExp = Math.floor(grandpaExp * 3);
                }
                else if (_root.save.permaBanPenalty[24] == 2)
                {
                    grandpaExp = Math.floor(grandpaExp * 2.2);
                }
                else if (_root.save.permaBanPenalty[24] == 1)
                {
                    grandpaExp = Math.floor(grandpaExp * 1.8);
                }
                _root.gainEXP(grandpaExp, 8);
                _root.gainCoin(grandpaCoin, 8);
                _root.gainGreenCoin(grandpaGreenCoin);
                _root.gainBlueCoin(grandpaBlueCoin);
                _root.gainCareerEXP(5, Math.ceil(grandpaCareer * tmul / 1000), true);
            }
            if (_root.save.featureAwesomeAdventures == true)
            {
                if (_root.save.awesomeEnergyNext < -1800)
                {
                    _root.save.awesomeEnergyNext = -1800;
                }
                if (_root.save.awesomeEnergy < _root.save.awesomeMaxEnergy * 5)
                {
                    _root.save.awesomeEnergyNext -= 1;
                }
                var rgn = 0;
                while (_root.save.awesomeEnergyNext <= 0 && _root.save.awesomeEnergy < _root.save.awesomeMaxEnergy * 5 + 15)
                {
                    var rdx = _root.save.awesomeEnergyNext;
                    _root.save.awesomeEnergyNext = 300 - _root.curCareerLevel[10];
                    if (_root.save.quickAdventuresTime > 0)
                    {
                        _root.save.awesomeEnergyNext = Math.floor(_root.save.awesomeEnergyNext / 2);
                    }
                    i = 1;
                    while (i <= _root.todayEvent)
                    {
                        int yy = _root.clock_year % 10;
                        int mm = _root.clock_month;
                        int dd = _root.clock_date;
                        if (_root.eventList[yy][mm][dd][(int)i] == "Wait time for Adventure Energy is reduced by 25%")
                        {
                            _root.save.awesomeEnergyNext = Math.floor(_root.save.awesomeEnergyNext * 0.75);
                        }
                        i++;
                    }
                    if (_root.save.restTime > 0)
                    {
                        _root.save.awesomeEnergyNext = Math.floor(_root.save.awesomeEnergyNext * (0.9 - _root.save.restEfficiency[9] * 0.01));
                    }
                    _root.save.awesomeEnergyNext += rdx;
                    rgn += 1;
                    _root.save.awesomeEnergy += 1;
                }
                if (rgn > 0)
                {
                    _root.dispNews(112, "Adventure Energy gained! (" + (_root.save.awesomeEnergy - rgn) + " --> " + _root.save.awesomeEnergy + ")");
                }
                if (_root.save.awesomeEnergy >= _root.save.awesomeMaxEnergy * 5 + 15)
                {
                    _root.save.awesomeEnergy -= 15;
                    _root.save.awesomeRefill += 1;
                    _root.dispNews(112, "15 Adventure Energy has been converted to 1 Energy Refill!");
                }
            }
            if (_root.mainAntiLag > 160)
            {
                _root.mainAntiLag = 0;
            }
            if (Math.random() < 0.05)
            {
                _root.updateMarket();
            }
            _root.save.lolCooldown -= 1;
            if (_root.save.coinMax > 999999999999999)
            {
                _root.save.coinMax = 999999999999999;
            }
            if (_root.save.greenCoinMax > 999999999999)
            {
                _root.save.greenCoinMax = 999999999999;
            }
            if (_root.save.blueCoinMax > 999999999)
            {
                _root.save.blueCoinMax = 999999999;
            }
            if (_root.save.whiteCoinMax > 999999)
            {
                _root.save.whiteCoinMax = 999999;
            }
            if (_root.save.coinMax < _root.save.coin)
            {
                _root.save.coinMax = _root.save.coin;
            }
            if (_root.save.greenCoinMax < _root.save.greenCoin)
            {
                _root.save.greenCoinMax = _root.save.greenCoin;
            }
            if (_root.save.blueCoinMax < _root.save.blueCoin)
            {
                _root.save.blueCoinMax = _root.save.blueCoin;
            }
            if (_root.save.whiteCoinMax < _root.save.whiteCoin)
            {
                _root.save.whiteCoinMax = _root.save.whiteCoin;
            }
            if (_root.save.gardenPointMax < _root.save.gardenPoint)
            {
                _root.save.gardenPointMax = _root.save.gardenPoint;
            }
            if (_root.save.gardenFruitMax < _root.save.gardenFruit)
            {
                _root.save.gardenFruitMax = _root.save.gardenFruit;
            }
            if (_root.save.arenaPixelMax < _root.save.arenaPixel)
            {
                _root.save.arenaPixelMax = _root.save.arenaPixel;
            }
            if (_root.save.arenaCraftMax < _root.save.arenaCraft)
            {
                _root.save.arenaCraftMax = _root.save.arenaCraft;
            }
            if (_root.save.stadiumTokenMax < _root.save.stadiumToken)
            {
                _root.save.stadiumTokenMax = _root.save.stadiumToken;
            }
            if (_root.save.lolMaxProfit < _root.save.lolProfit)
            {
                _root.save.lolMaxProfit = _root.save.lolProfit;
            }
            if (_root.save.awesomeMaxReputation < Math.abs(_root.save.awesomeReputation))
            {
                _root.save.awesomeMaxReputation = Math.abs(_root.save.awesomeReputation);
            }
            if (_root.save.awesomeReputation != recentReputation)
            {
                _root.dispNews(113, "Adventure Reputation: " + _root.withComma(recentReputation) + " --> " + _root.withComma(_root.save.awesomeReputation));
                var repChange = Math.abs(_root.save.awesomeReputation - recentReputation);
                if (repChange > 100)
                {
                    repChange = 100;
                }
                _root.gainCareerEXP(10, 10 * repChange, true);
                recentReputation = _root.save.awesomeReputation;
            }
            if (_root.save.batteryChargerTime > 0 && _root.save.printerCharge < 400)
            {
                _root.save.totalPrinterCharge += Math.ceil((400 - _root.save.printerCharge) / 10);
                _root.save.printerCharge += Math.ceil((400 - _root.save.printerCharge) / 10);
            }
            if (_root.thisSession / 6 == Math.floor(_root.thisSession / 6))
            {
                if (_root.cursoridle >= 600)
                {
                    _root.gainCareerEXP(1, 250, true);
                }
                else if (_root.cursoridle >= 300)
                {
                    _root.gainCareerEXP(1, 100, true);
                }
                else if (_root.cursoridle >= 60)
                {
                    _root.gainCareerEXP(1, 50, true);
                }
                else if (_root.cursoridle >= 30)
                {
                    _root.gainCareerEXP(1, 25, true);
                }
                else if (_root.cursoridle >= 6)
                {
                    _root.gainCareerEXP(1, 10, true);
                }
                else if (_root.thisSession / 30 == Math.floor(_root.thisSession / 30))
                {
                    _root.gainCareerEXP(1, 10, true);
                }
            }
            if (_root.save.idleMode == false && _root.save.doingItWrong < _root.cursoridle)
            {
                _root.save.doingItWrong = _root.cursoridle;
            }
            i = 1;
            while (i <= 16)
            {
                if (_root.save.careerBoost[i] > 0)
                {
                    _root.save.careerBoost[i] -= 1;
                    if (_root.save.careerBoost[i] <= 0)
                    {
                        _root.save.careerBoost[i] = 0;
                        _root.dispNews(158, "[" + _root.careerName[i] + "] Career is no longer blessed!");
                    }
                }
                else if (_root.save.careerActive[i] > 0)
                {
                    _root.save.careerActive[i] -= 1;
                    if (_root.save.careerActive[i] <= 0)
                    {
                        _root.save.careerActive[i] = 0;
                        _root.dispNews(145, "[" + _root.careerName[i] + "] Career is deactivated!");
                    }
                }
                i++;
            }
            _root.save.lastPlayed = _root.systemtimenow;
            delay1sec -= 1;
        }
        if (delay5min >= 300)
        {
            if (_root.save.boost < _root.boostMax * 1.5 - 1 && _root.save.boostPotion >= 1 && _root.save.boostAuto == true)
            {
                _root.save.boostPotion -= 1;
                _root.gainBoost(9999, 3);
                if (_root.save.boostFreeze < 45 + Math.min(Math.floor(_root.save.totalStupidity / 500), 250))
                {
                    _root.save.boostFreeze = 45 + Math.min(Math.floor(_root.save.totalStupidity / 500), 250);
                }
            }
            if (_root.save.gDifficulty == 1 || _root.save.level >= 8999)
            {
                _root.save.gardenFullness -= 50;
            }
            else if (_root.save.gDifficulty == 2)
            {
                _root.save.gardenFullness -= 20;
            }
            else if (_root.save.gDifficulty == 3)
            {
                _root.save.gardenFullness -= 5;
            }
            if (_root.save.gardenFullness < 0)
            {
                _root.save.gardenFullness = 0;
            }
            if (_root.saveid >= 10)
            {
                _root.save.speedRunCoin += 1;
                _root.save.speedRunNextDay -= 5;
                if (_root.save.speedRunNextDay <= 0)
                {
                    _root.anotherDay = true;
                    _root.save.speedRunNextDay = 1440;
                }
                else if (_root.saveid >= 20)
                {
                    _root.dispNews(159, "[CHALLENGE] Next day will begin in " + _root.withComma(_root.save.speedRunNextDay) + " minutes.");
                }
                else
                {
                    _root.dispNews(159, "[SPEEDRUN] Next day will begin in " + _root.withComma(_root.save.speedRunNextDay) + " minutes.");
                }
            }
            if (_root.save.hyperDay[1] != _root.todayCode && _root.save.hyperDay[2] != _root.todayCode)
            {
                _root.gainEventToken(10);
            }
            if (_root.save.boostPremium > 0)
            {
                _root.save.boostPremium -= 2;
            }
            var fatigueRestore = 100;
            if (_root.save.permaBanPenalty[22] == 3)
            {
                fatigueRestore += 100;
            }
            else if (_root.save.permaBanPenalty[22] == 2)
            {
                fatigueRestore += 60;
            }
            else if (_root.save.permaBanPenalty[22] == 1)
            {
                fatigueRestore += 40;
            }
            if (_root.save.restTime > 0)
            {
                if (Math.random() < 0.2)
                {
                    fatigueRestore = (int)Math.floor(fatigueRestore * (1.5 + _root.save.restEfficiency[10] * 0.05));
                }
            }
            _root.save.fishFatigue -= fatigueRestore;
            _root.submitAll();
            if (_root.cursoridle < 300 || _root.cursoridle < 129600 && Math.random() < 0.3)
            {
                _root.checkPet();
            }
            var autoSaveX = true;
            if (_root.house._currentframe == 10)
            {
                autoSaveX = false;
            }
            if (_root.house._currentframe == 22 && _root.fishStatus == 2)
            {
                autoSaveX = false;
            }
            if (autoSaveX == true)
            {
                // TODO: flush (save)
                //_root.my_so.flush();
            }
            _root.recMys = _root.systemtimenow;
            i = 1;
            while (i <= _root.autoUpdateTime.Count - 1)
            {
                if (_root.systemtimenow > _root.autoUpdateTime[(int)i] && _root.save.au < i)
                {
                    _root.save.au = i;
                }
                i++;
            }
            delay5min = 0;
        }
    }
}
