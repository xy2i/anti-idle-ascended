using System;
using System.Collections.Generic;
using AntiIdle.BattleArena.Crafting;
using AntiIdle.BattleArena.Enemy;
using AntiIdle.FCG;
using AntiIdle.FeatureOverlay;
using AntiIdle.Pages.Main;
using Godot;
using Math = AntiIdle.Common.Flash.Math;

namespace AntiIdle.Common.Globals;

/// <summary>
///     The _root variable.
///     In AS2, this stores the root MovieClip, and it also has functions
///     attached to it.
/// </summary>
public class Root
{
    public Save save = new();
    public GlobalSetting saveGlobal = new();

    public AccomplishPop accomplishPop = new();
    public OfflineProg offlineProg = new();
    public Mini1 mini1;
    public Mini2 mini2;
    public Mini3 mini3;
    public Mini4 mini4;
    public Mini5 mini5;
    public List<double> souvenirLimit;
    public OptionsScreen optionsScreen;
    public double fishStatus = 0;
    public long recMys;
    public bool anotherDay = false;
    public double souvenirRC;
    public double fcgCooldown;
    public bool idlerAppreciate;
    public double annUpdate;
    public double challengeDeadline;
    public double boostMin;
    public double petTotalFeed;
    public double autoBanned;
    public double finalExp;
    public bool suc1 = false;
    public bool suc2 = false;
    public double toBuyInsta;
    public double kpaCount = 0;
    public double totalEpicSkill = 0;
    public double alreadyopened = 0;
    public double treeToPlant = -1;
    public double saveID;
    public double quitDuration;
    public double towerCooldown;
    public double sprayCooldown1;
    public double sprayCooldown2;
    public double failGrammar;
    public FlashList<bool> kpaOwned = new();
    public FlashList<bool> kpaShiny = new();
    public string elapsed_days;
    public string elapsed_hours;
    public string elapsed_minutes;
    public string elapsed_seconds;
    public DateTimeOffset systemclock;
    public long systemtimenow;
    public bool craftTool;
    public double newsCount;
    public FlashList<double> newsID;
    public FlashList<double> newsFeature;
    public FlashList<string> newsSauceName;
    public List<Achievement> achList;
    public List<Quest> mainQuestList;
    public List<RandomQuest> questList;
    public List<AchR> achListR;
    public List<double> questListR;
    public double totalMainQuest;
    public double totalquest;
    public string newAchName;
    public double newAchRedCoin;
    public List<double> newAchList;
    public List<double> newMainQuestList;
    public List<List<double>> questMap;
    public List<List<double>> questHLink;
    public List<List<double>> questVLink;
    public double totalNewQuest;
    public bool apocalypse;
    public string _quality;
    public double achRedCoin;
    public double actualKpaCount;
    public double actualShinyKpaCount;
    public double arcadeRewardMult;
    public double arenaBot;
    public FlashList<double> arenaSkillMaxF;
    public FlashList<double> arenaSkillRankF;
    public FlashList<string> arenaSkillNameF;
    public string stickName;
    public double totalMonster;
    public bool autoStart;
    public double crystalKill;
    public double treasureHunterKill;
    public double awards;
    public double bestiaryLevel;
    public double summonCount;
    public double antiLag;
    public double boostMax;
    public FlashList<string> careerName;
    public double chance;
    public int clock_date;
    public double clock_display;
    public int clock_month;
    public int clock_year;
    public double correctTier;
    public List<NewCard> cardList;
    public double deckid;
    public FlashList<double> curCareerLevel;
    public double cursoridle;
    public double cybFishCurrent;
    public FlashList<double> cyborgActCost;
    public FlashList<string> cyborgActLongName;
    public FlashList<double> cyborgActMaxPerf;
    public FlashList<double> cyborgActMinPerf;
    public FlashList<string> cyborgActPerfSign;
    public FlashList<string> cyborgActPerfText;
    public FlashList<string> cyborgActShortName;
    public FlashList<double> cyborgActTime;
    public bool cyborgWorking;
    public double detectedX;
    public double dow;
    public List<List<List<List<string>>>> eventList;
    public List<List<List<double>>> eventRating;
    public double eventMaxToken;
    public double contributorRC;
    public string rcEarnLog = "";
    public bool canPlay = true;
    public string banReason = "";
    public FlashList<Fish> fishArray;
    public double fishRodCount;
    public string flashVer;

    public int fps = 40;

    // TODO: make this load from save (aka do the SharedObject functions)
    public GlobalSetting globalSetting = new();
    public List<double> autoUpdateTime;
    public List<double> challengeTime;
    public List<double> eventStartTime;
    public List<double> eventEndTime;
    public List<string> eventArmorName;
    public List<double> eventArmorFrame;
    public double harvestSummaryBlueCoin;
    public double harvestSummaryCareer;
    public double harvestSummaryCoin;
    public double harvestSummaryCount;
    public double harvestSummaryEXP;
    public double harvestSummaryFruit;
    public double harvestSummaryGreenCoin;
    public House house = new();
    public Kongregate kongregate;
    public string kongregate_username;
    public bool kpaChip;
    public double cardid;
    public List<Deck> deckList;
    public bool lootMagnet;
    public double luckyNumber;
    public double mainAntiLag;
    public double mainSummonCount;
    public double maxNum;
    public double maxredcoin;
    public double moduleInvSlotLeft;
    public double moduleInvSlotOccupied;
    public double verifyA;
    public double verifyB;
    public double moduleSlotLeft;
    public double moduleSlotOccupied;
    public double moostMin;
    public double nameValue;
    public double damageNumCount;
    public Dictionary<string, object> news = new();
    public bool offlineVersion;
    public PopContain popContain;
    public Popup.Popup popUp; // TODO: code which calls popUp needs to init this, or put it in all frames?
    public bool preloadedFile0;
    public bool preloadedFile1;
    public bool preloadedFile2;
    public bool preloadedFile3;
    public double printPercent;
    public double progPercent;
    public double questCount;
    public double refresh_date;
    public double refresh_max_date;
    public double refresh_month;
    public double refresh_year;
    public double requiredExp;
    public double saveid;
    public double sawards;
    public bool scoreBanned;
    public double scrollingDir;
    public double sessionTimeLeft;
    public double stadiumHatUnlocked;
    public double systemTimeNow;
    public double thisSession;
    public double todayCode;
    public double todayEvent;
    public double totalachievements;
    public double totalAllyMastered;
    public double totalAllyMaxed;
    public double totalAllyTamed;
    public double totalCareerLevel;
    public double totalRing;
    public double careerActivated;
    public double totalRestEfficiency;
    public double totalsachievements;
    public double totalUltra;
    public double totalUnrankedPower;
    public double uniqueKill;
    public double uniqueUlt1;
    public double uniqueUlt2;
    public double uniqueUlt3;
    public double updateBreakNews;
    public double upnumber;
    public double upnumberHidden;
    public List<CraftItem<Item, Header>> craftWeapon;
    public List<CraftItem<Item, Header>> craftArmor;
    public List<CraftItem<Item, Header>> craftAccessory;
    public List<CraftItem<Item, Header>> craftMedal;
    public List<CraftItem<Item, Header>> craftEnhancer;
    public List<CraftItem<Item, Header>> craftPotion;
    public List<CraftItem<Item, Header>> craftChip;
    public List<SetBonus> setArray;
    public FlashList<double> setCount;
    public FlashList<double> komDiff;
    public FlashList<double> komCount;
    public FlashList<string> museumItem;
    public FlashList<double> museumValue;
    public double museumMaxItem;
    public double museumMaxValue;
    public double setHighest;
    public double setExpBonus = 0;
    public double setCoinBonus = 0;
    public double setPixelBonus = 0;
    public double setDropBonus = 0;
    public double setSpawnBonus = 0;
    public double setDamageBonus = 0;
    public double setDefenseBonus = 0;
    public double setAccuracyBonus = 0;
    public double setEvasionBonus = 0;
    public double setHealthBonus = 0;
    public double setManaBonus = 0;
    public double setSpeedBonus = 0;
    public double setRareBonus = 0;
    public double setEpicBonus = 0;

    public TopBar topBar;
    public double arenaSwap1;
    public double enhancerToUse;
    public double runeLevel1;
    public double runeLevel2;
    public double runeLevel3;
    public double runeLevel4;
    public double runeLevel5;
    public double runeLevel6;
    public double zoneKill1;
    public double zoneKill2;
    public double zoneKill3;
    public double zoneKill4;
    public double zoneKill5;
    public double zoneKill6;
    public double zoneKill7;
    public double zoneKill8;
    public double zoneKill9;
    public double zoneKill10;
    public double zoneKill11;
    public double zoneKill12;
    public double zoneKill13;
    public double zoneKill14;
    public double zoneKill15;
    public double zoneKill16;
    public double zoneKill17;
    public double zoneKill18;
    public double zoneKill19;
    public double zoneKill20;
    public double zoneKill21;
    public double zoneKill22;
    public double zoneKill23;
    public double zoneKill24;
    public double zoneKill25;
    public double zoneKill26;
    public double zoneKill27;
    public double zoneKill28;
    public double zoneKill29;
    public double zoneKill30;
    public double zoneKill31;
    public double zoneKill32;
    public double zoneKill33;
    public double zoneKill34;
    public double zoneKill35;
    public double zoneKill36;
    public double zoneKill37;
    public double zoneKill38;
    public double zoneKill39;
    public double zoneKill40;
    public double zoneKill41;
    public double zoneKill42;
    public double zoneKill43;
    public double zoneKill44;
    public double zoneKill45;
    public double zoneKill46;
    public double zoneKill47;
    public double zoneKill48;
    public double zoneKill49;
    public double zoneKill50;
    public double zoneKill51;
    public double zoneKill52;
    public double zoneKill53;
    public double zoneKill54;
    public double zoneKill55;
    public double zoneKill56;
    public double zoneKill57;
    public double zoneKill58;
    public double zoneKill59;
    public double zoneKill60;
    public double zoneKill61;
    public double zoneKill62;
    public double zoneKill63;
    public double zoneKill64;
    public double zoneKill65;
    public double zoneKill66;
    public double zoneKill67;
    public double zoneKill68;
    public double zoneKill69;
    public double zoneKill70;
    public double zoneKill71;
    public double zoneKill72;
    public double zoneKill73;
    public double zoneKill74;
    public double zoneKill75;
    public double zoneKill76;
    public double zoneKill77;
    public double zoneKill78;
    public double zoneKill79;
    public double zoneKill80;
    public double zoneKill81;
    public double zoneKill82;
    public double zoneKill83;
    public double zoneKill84;
    public double zoneKill85;
    public double zoneKill86;
    public double zoneKill87;
    public double zoneKill88;
    public double zoneKill89;
    public double zoneKill90;
    public double zoneKill91;
    public double emptyWeaponSlot = 0;
    public double emptyArmorSlot = 0;
    public double emptyAccessorySlot = 0;
    public double emptyEnhancerSlot = 0;
    public double emptyPotionSlot = 0;
    public double emptyOutfitSlot = 0;
    public double emptyChipSlot = 0;
    public List<Enemy> enemyList;
    public double selectT = 1;
    public double specialShopPage = 1;
    public double invTab = 0;
    public double stadiumBetCoin = 250000;
    public double stadiumBetToken = 0;
    public double fishPopPage = 0;
    public double questScreenPage = 1;
    public double shopScreenPage = 1;
    public double achViewType = 2;
    public double achViewPage = 1;
    public string achMode = "All";
    public string actiondescription = "";

    public double getBytesLoaded()
    {
        return 1;
    }

    public double getBytesTotal()
    {
        return 1;
    }

    // MATCH: frame_3/DoAction.as:getFullMonthName()
    public string getFullMonthName(double monthCount)
    {
        List<string> monthArr =
        [
            "", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October",
            "November", "December"
        ];
        return monthArr[(int)monthCount];
    }

    // MATCH: frame_3/DoAction.as:getShortMonthName()
    public string getShortMonthName(double monthCount)
    {
        List<string> monthArr =
            ["", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
        return monthArr[(int)monthCount];
    }

    // MATCH: frame_3/DoAction.as:setInitDeck()
    public void setInitDeck(string deckCode)
    {
        var tempDeckArray = deckCode.Split(".");
        List<double> myDeckArray = [];
        var i = 0;
        while (i <= tempDeckArray.Length - 1)
        {
            if (double.Parse(tempDeckArray[i]) > 100)
            {
                tempDeckArray[i] = "100";
            }

            var j = 1;
            while (j <= double.Parse(tempDeckArray[i]))
            {
                myDeckArray.Add(double.Parse(tempDeckArray[i + 1]));
                j++;
            }

            i += 2;
        }

        FlashList<double> planDeck = [];
        i = 1;
        while (i <= 400)
        {
            planDeck[i] = 0;
            i++;
        }

        if (myDeckArray.Count > 10 && myDeckArray.Count <= 100)
        {
            i = 0;
            while (i <= myDeckArray.Count - 1)
            {
                planDeck[(int)myDeckArray[i]] += 1;
                i++;
            }
        }

        i = 1;
        while (i <= 400)
        {
            _root.save.fcgOwned[i] += planDeck[i];
            _root.save.fcgDeck[i] = planDeck[i];
            i++;
        }

        _root.save.fcgTotalCards = myDeckArray.Count;
    }

    // MATCH: frame_3/DoAction.as:checkAttReward()
    public double checkAttReward(double dayCount)
    {
        if (dayCount == _root.refresh_max_date)
        {
            return 8;
        }

        if (dayCount == _root.refresh_max_date - 1)
        {
            return 7;
        }

        if (dayCount == 14)
        {
            return 9;
        }

        if (dayCount == 24)
        {
            return 6;
        }

        if (dayCount == 8 || dayCount == 16)
        {
            return 5;
        }

        if (dayCount == 1 || dayCount == 9 || dayCount == 25 || dayCount == 28)
        {
            return 4;
        }

        if (dayCount == 2 || dayCount == 3 || dayCount == 4 || dayCount == 12 || dayCount == 17 || dayCount == 18 ||
            dayCount == 19 || dayCount == 20)
        {
            return 3;
        }

        if (dayCount >= 21 || dayCount == 6 || dayCount == 14)
        {
            return 2;
        }

        return 1;
    }

    // MATCH: frame_3/DoAction.as:getKpaValue()
    public double getKpaValue(string kpaName)
    {
        if (kpaName == null || kpaName == "" || kpaName.Length < 1)
        {
            return 0;
        }

        var kpaValue = 0;
        var k = 1;
        while (k <= kpaName.Length)
        {
            var cDigit = kpaName.Substr(k, 1);
            var nD = 0;
            switch (cDigit)
            {
                case "A":
                    nD = 211;
                    break;
                case "B":
                    nD = 125;
                    break;
                case "C":
                    nD = 334;
                    break;
                case "D":
                    nD = 243;
                    break;
                case "E":
                    nD = 152;
                    break;
                case "F":
                    nD = 367;
                    break;
                case "G":
                    nD = 279;
                    break;
                case "H":
                    nD = 183;
                    break;
                case "I":
                    nD = 391;
                    break;
                case "J":
                    nD = 206;
                    break;
                case "K":
                    nD = 114;
                    break;
                case "L":
                    nD = 329;
                    break;
                case "M":
                    nD = 234;
                    break;
                case "N":
                    nD = 149;
                    break;
                case "O":
                    nD = 355;
                    break;
                case "P":
                    nD = 267;
                    break;
                case "Q":
                    nD = 174;
                    break;
                case "R":
                    nD = 386;
                    break;
                case "S":
                    nD = 293;
                    break;
                case "T":
                    nD = 108;
                    break;
                case "U":
                    nD = 317;
                    break;
                case "V":
                    nD = 227;
                    break;
                case "W":
                    nD = 138;
                    break;
                case "X":
                    nD = 346;
                    break;
                case "Y":
                    nD = 251;
                    break;
                case "Z":
                    nD = 164;
                    break;
                case "a":
                    nD = 473;
                    break;
                case "b":
                    nD = 383;
                    break;
                case "c":
                    nD = 292;
                    break;
                case "d":
                    nD = 405;
                    break;
                case "e":
                    nD = 314;
                    break;
                case "f":
                    nD = 227;
                    break;
                case "g":
                    nD = 433;
                    break;
                case "h":
                    nD = 349;
                    break;
                case "i":
                    nD = 255;
                    break;
                case "j":
                    nD = 468;
                    break;
                case "k":
                    nD = 377;
                    break;
                case "l":
                    nD = 285;
                    break;
                case "m":
                    nD = 496;
                    break;
                case "n":
                    nD = 305;
                    break;
                case "o":
                    nD = 215;
                    break;
                case "p":
                    nD = 429;
                    break;
                case "q":
                    nD = 337;
                    break;
                case "r":
                    nD = 247;
                    break;
                case "s":
                    nD = 456;
                    break;
                case "t":
                    nD = 362;
                    break;
                case "u":
                    nD = 278;
                    break;
                case "v":
                    nD = 485;
                    break;
                case "w":
                    nD = 391;
                    break;
                case "x":
                    nD = 204;
                    break;
                case "y":
                    nD = 413;
                    break;
                case "z":
                    nD = 323;
                    break;
                case "0":
                    nD = 232;
                    break;
                case "1":
                    nD = 542;
                    break;
                case "2":
                    nD = 454;
                    break;
                case "3":
                    nD = 364;
                    break;
                case "4":
                    nD = 473;
                    break;
                case "5":
                    nD = 386;
                    break;
                case "6":
                    nD = 595;
                    break;
                case "7":
                    nD = 405;
                    break;
                case "8":
                    nD = 514;
                    break;
                case "9":
                    nD = 327;
                    break;
                default:
                    nD = 13;
                    break;
            }

            if (k == 1)
            {
                kpaValue += 3 * nD + 17;
            }
            else
            {
                kpaValue += (k + 1) * nD + 9;
            }

            kpaValue %= 10000;
            k++;
        }

        return kpaValue;
    }

    // MATCH: frame_3/DoAction.as:getRefundCode()
    public void getRefundCode()
    {
        var refundTier = 0;
        if (_root.kongregate_username != null && _root.kongregate_username != "Guest")
        {
            if (_root.save.bestLevel >= 200 && _root.save.totalPlayTime >= 2700)
            {
                refundTier = 1;
            }

            if (_root.save.bestLevel >= 400 && _root.save.totalPlayTime >= 5400)
            {
                refundTier = 2;
            }

            if (_root.save.bestLevel >= 700 && _root.save.totalPlayTime >= 10800)
            {
                refundTier = 3;
            }

            if (_root.save.bestLevel >= 1000 && _root.save.totalPlayTime >= 21600)
            {
                refundTier = 4;
            }

            if (_root.save.bestLevel >= 1500 && _root.save.totalPlayTime >= 43200)
            {
                refundTier = 5;
            }

            if (_root.save.bestLevel >= 2000 && _root.save.totalPlayTime >= 86400)
            {
                refundTier = 6;
            }

            if (_root.save.bestLevel >= 3000 && _root.save.totalPlayTime >= 172800)
            {
                refundTier = 7;
            }

            if (_root.save.bestLevel >= 4000 && _root.save.totalPlayTime >= 345600)
            {
                refundTier = 8;
            }

            if (_root.save.bestLevel >= 5500 && _root.save.totalPlayTime >= 604800)
            {
                refundTier = 9;
            }

            if (_root.save.bestLevel >= 7000 && _root.save.totalPlayTime >= 864000)
            {
                refundTier = 10;
            }

            if (_root.save.bestLevel >= 9000 && _root.save.totalPlayTime >= 1296000)
            {
                refundTier = 11;
            }

            if (_root.save.bestLevel >= 9000 && _root.save.banned >= 2 && _root.save.totalPlayTime >= 1728000)
            {
                refundTier = 12;
            }

            if (_root.save.bestLevel >= 9000 && _root.save.banned >= 5 && _root.save.totalPlayTime >= 2160000)
            {
                refundTier = 13;
            }

            if (_root.save.bestLevel >= 9000 && _root.save.banned >= 10 && _root.save.totalPlayTime >= 2592000)
            {
                refundTier = 14;
            }

            if (_root.save.bestLevel >= 9000 && _root.save.banned >= 20 && _root.save.totalPlayTime >= 3024000)
            {
                refundTier = 15;
            }

            if (_root.save.bestLevel >= 9000 && _root.save.banned >= 30 && _root.save.totalPlayTime >= 3456000)
            {
                refundTier = 16;
            }

            if (_root.save.bestLevel >= 9000 && _root.save.banned >= 50 && _root.save.totalPlayTime >= 3888000)
            {
                refundTier = 17;
            }
        }

        var refundCode = refundTier * (1013174 + refundTier * refundTier + Math.ceil(nameValue / 7)) +
                         refundTier * (refundTier + 4) * Math.ceil(nameValue * refundTier / 1.7);
        if (refundCode % 10 == 7)
        {
            refundCode += 1;
        }

        refundCode = refundCode * 10 + 7;
        if (refundCode > 7)
        {
            _root.submitScore("Refund Code", refundCode);
        }
    }

    // MATCH: frame_3/DoAction.as:checkRefundCode()
    public void checkRefundCode(double code)
    {
        _root.correctTier = 0;
        if (_root.kongregate_username != null && _root.kongregate_username != "Guest")
        {
            var i = 1;
            while (i <= 30)
            {
                var correctCode = i * (1013174 + i * i + Math.ceil(nameValue / 7)) +
                                  i * (i + 4) * Math.ceil(nameValue * i / 1.7);
                if (correctCode % 10 == 7)
                {
                    correctCode += 1;
                }

                correctCode = correctCode * 10 + 7;
                if (code == correctCode)
                {
                    _root.correctTier = i;
                }

                i++;
            }
        }
    }

    // MATCH: frame_3/DoAction.as:ddec()
    public string ddec(string donCode)
    {
        var decompilerNote1 = "THIS FUNCTION IS MEANT TO BE USED ONLY BY TUKKUN.";
        var decompilerNote2 = "THIS FUNCTION IS NOT INTENDED FOR DECOMPILERS AND CODE-READERS.";
        var decompilerNote3 =
            "THE CONTENTS OF THIS FUNCTION AS WELL AS HOW TO USE IT ARE NOT MEANT TO BE EXPOSED TO THE PUBLIC.";
        var decompilerNote4 = "PLEASE DO NOT ATTEMPT TO ABUSE THIS FEATURE.";
        var decompilerNote5 = "MISUSE OF THIS INFORMATION MAY LEAD TO BEING BANNED FROM THE GAME.";
        var res = "";
        var donArr = donCode.Replace("a", "0").Replace("d", "2").Replace("e", "4").Replace("b", "3").Replace("f", "7")
            .Replace("h", "5").Replace("m", "4").Replace("7", "1").Replace("i", "6").Replace("c", "7").Replace("j", "9")
            .Replace("g", "8").Split("k");
        var decCode = 131 + _root.kongregate_username[2] % 69;
        var i = 1;
        while (i < donArr.Length)
        {
            res += (char)(double.Parse(donArr[i]) * 1 - 137 - (i - 1 + decCode) * 17 - 100);
            i++;
        }

        return res;
    }

    // MATCH: frame_3/DoAction.as:submitScore()
    public void submitScore(string scoreName, double amount, double hardCap = 0, bool submitZero = false)
    {
        if (_root.save.bestLevel >= 30 && scoreBanned == false && _root.saveid <= 3 && _root.save.cheatEnabled == false)
        {
            if (((_root.save.bestLevel < 9000 && _root.save.banned < 1) || _root.save.yoEpicFail == 25465) &&
                _root.save.safeHacking == false && _root.save.submitScore && _root.save.noobMode != true &&
                _root.save.houseVer <= 0)
            {
                if ((amount > 0 || submitZero) && (amount <= hardCap || isNaN(hardCap)))
                {
                    _root.kongregate.stats.submit(scoreName, amount);
                }
            }
        }
    }

    // MATCH: frame_3/DoAction.as:submitKong()
    public void submitKong(string scoreName, double amount, double hardCap = 0, bool submitZero = false)
    {
    }

    // MATCH: frame_3/DoAction.as:submitGeneral()
    public void submitGeneral()
    {
        _root.getRefundCode();
        _root.submitScore("Total Days Played", Math.floor(_root.save.totalPlayTime / 86400), 99999);
        _root.submitScore("Level", _root.save.level + _root.save.banned * 10000);
        _root.submitScore("Max Level", _root.save.bestLevel, 9002);
        _root.submitScore("EXP", _root.save.bestExp);
        _root.submitScore("Speedrun: Lv. 9001 [Minutes]", _root.save.speedRun9001, 99999999, true);
        _root.submitScore("Speedrun: Ascend [Minutes]", _root.save.speedRunAscend, 99999999, true);
        _root.submitScore("Speedrun: Ascend (Hard) [Minutes]", _root.save.speedRunAscendHard, 99999999, true);
        _root.submitScore("Speedrun: Ascend (Impossible) [Minutes]", _root.save.speedRunAscendImpossible, 99999999,
            true);
        _root.submitScore("Unspent Coins", _root.save.coinMax, 999999999999999);
        _root.submitScore("Unspent Green Coins", _root.save.greenCoinMax, 999999999999);
        _root.submitScore("Unspent Blue Coins", _root.save.blueCoinMax, 999999999);
        _root.submitScore("Unspent White Coins", _root.save.whiteCoinMax, 999999);
        _root.submitScore("REST Upgrades", _root.totalRestEfficiency, 100);
        _root.submitScore("Inventory Module Slots", _root.save.progModuleSlot, 100);
        _root.submitScore("Main Quests C-Rank", _root.save.mainQuestC);
        _root.submitScore("Main Quests B-Rank", _root.save.mainQuestB);
        _root.submitScore("Main Quests A-Rank", _root.save.mainQuestA);
        _root.submitScore("Main Quests S-Rank", _root.save.mainQuestS);
        _root.submitScore("Quests", _root.save.questTotal);
        _root.submitScore("Quests (1 day)", _root.save.questRecord);
        _root.submitScore("Achievements", _root.awards, _root.totalachievements);
        _root.submitScore("Secret Achievements", _root.sawards, _root.totalsachievements);
        _root.submitScore("Achievement Score", _root.achRedCoin, _root.maxredcoin);
        if (_root.save.level >= 1000 || _root.save.banned > 0)
        {
            _root.submitScore("% Anti-Idle Rewards",
                Math.floor(_root.save.rewardClaimManual / _root.save.rewardClaim * 100), _root.maxredcoin);
        }

        _root.submitScore("Rewards Claimed", _root.save.rewardClaim);
        _root.submitScore("Rewards Claimed (Anti-Idle)", _root.save.rewardClaimManual);
        _root.submitScore("Rewards Claimed (Idle)", _root.save.rewardClaimAuto);
        _root.submitScore("Times Ascended", _root.save.banned);
        _root.submitScore("Times Ascended (Hard)", _root.save.bannedHard);
        _root.submitScore("Times Ascended (Impossible)", _root.save.bannedImpossible);
        _root.submitScore("[Battle Arena] Rebirth", _root.save.bannedB);
        _root.submitScore("[Battle Arena] Battle Points", _root.save.battlePoint);
        _root.submitScore("[Battle Arena] Excessive EXP (x100M)", _root.save.arenaExpExcess);
        _root.submitScore("Pet EXP",
            _root.save.petStat[1] + _root.save.petStat[2] + _root.save.petStat[3] + _root.save.petStat[4] +
            _root.save.petStat[5] + _root.save.petStat[6] + _root.save.petStat[7] + _root.save.petStat[8], 1600);
        _root.submitScore("[Kong] Kongpanions", _root.actualKpaCount);
        _root.submitScore("[Kong] Shiny Kongpanions", _root.actualShinyKpaCount);
        _root.submitScore("Ascension Points", _root.save.totalStupidity);
        _root.submitScore("[Battle Arena] Collection Points", _root.save.collectionPointMax);
        var z = 1;
        while (z <= 20)
        {
            _root.submitScore("[Event] Technical Battleground #" + z, _root.save.arenaEventPoint[z]);
            z++;
        }
    }

    // MATCH: frame_3/DoAction.as:submitAll()
    public void submitAll()
    {
        _root.submitGeneral();
        _root.submitScore("[Speedrun] Speedrun Time", _root.saveGlobal.challengeTime[0], 999999999);
        var z = 1;
        while (z <= 20)
        {
            _root.submitScore("[Challenge] Challenge #" + z + " Time", _root.saveGlobal.challengeTime[z], 999999999);
            z++;
        }

        _root.submitScore("Ants Sprayed", _root.save.antsSprayed);
        _root.submitScore("[Garden] Tree Harvests", _root.save.harvestCount);
        _root.submitScore("[Garden] Tree Income", _root.save.harvestCoin);
        _root.submitScore("[Garden] Garden EXP", _root.save.gardenEXP);
        _root.submitScore("[Battle Arena] Bestiary Level", _root.bestiaryLevel);
        _root.submitScore("[Battle Arena] Arena Rank", _root.save.arenaLevel);
        _root.submitScore("[Battle Arena] Robacon Rank", _root.save.robaconLevel);
        _root.submitScore("[Battle Arena] Missions", _root.save.arenaMission);
        _root.submitScore("[Battle Arena] Mission Kommander", _root.save.arenaKommanderComplete);
        _root.submitScore("[Battle Arena] Defend Mission", _root.save.arenaDefendComplete);
        _root.submitScore("[Battle Arena] Prehistoric Mission", _root.save.arenaPrehistoricComplete);
        _root.submitScore("[Battle Arena] Kills", _root.save.arenaKill);
        _root.submitScore("[Battle Arena] Kills (Non-Weak)", _root.save.arenaKillWhite);
        _root.submitScore("[Battle Arena] Kills (Strong)", _root.save.arenaKillRed);
        _root.submitScore("[Battle Arena] Kills (Boss)", _root.save.arenaKillPurple);
        _root.submitScore("[Battle Arena] Combo", _root.save.arenaMaxCombo);
        _root.submitScore("[Battle Arena] Loot Drops", _root.save.arenaLoot);
        _root.submitScore("[Battle Arena] Unspent Pixels", _root.save.arenaPixelMax);
        _root.submitScore("[Battle Arena] Crafting Material Used", _root.save.arenaCraftUsed);
        _root.submitScore("[Battle Arena] Max Damage Dealt", _root.save.arenaMaxDamage);
        _root.submitScore("[Battle Arena] Invisible Allies Tamed", _root.totalAllyTamed);
        _root.submitScore("[Battle Arena] Invisible Allies Mastered", _root.totalAllyMastered);
        _root.submitScore("[Battle Arena] Skill Books", _root.save.arenaSkillBook);
        _root.submitScore("[Battle Arena] Rune of Health", _root.save.arenaRuneLevel[1], 100);
        _root.submitScore("[Battle Arena] Rune of Mana", _root.save.arenaRuneLevel[2], 100);
        _root.submitScore("[Battle Arena] Rune of Rage", _root.save.arenaRuneLevel[3], 100);
        _root.submitScore("[Battle Arena] Rune of Encounter", _root.save.arenaRuneLevel[4], 100);
        _root.submitScore("[Battle Arena] Rune of Experience", _root.save.arenaRuneLevel[5], 100);
        _root.submitScore("[Battle Arena] Rune of Greed", _root.save.arenaRuneLevel[6], 100);
        _root.submitScore("[Battle Arena] Total Rune Level",
            _root.save.arenaRuneLevel[1] + _root.save.arenaRuneLevel[2] + _root.save.arenaRuneLevel[3] +
            _root.save.arenaRuneLevel[4] + _root.save.arenaRuneLevel[5] + _root.save.arenaRuneLevel[6], 600);
        _root.submitScore("[Button Machine] Button Presses", _root.save.buttonPress);
        _root.submitScore("[Button Machine] Perfect Clicks", _root.save.buttonPerfect);
        _root.submitScore("[Button Machine] Max Hit Combo", _root.save.buttonMaxCombo);
        _root.submitScore("[Money Printer] Illegal Coins", _root.save.totalPrinterMoney);
        _root.submitScore("[Money Printer] Battery Charges", _root.save.totalPrinterCharge);
        _root.submitScore("[Arcade] Pong", _root.save.rankedPong);
        _root.submitScore("[Arcade] Ultimate Avoidance", _root.save.rankedAvoidance);
        _root.submitScore("[Arcade] Math Master", _root.save.rankedMath);
        _root.submitScore("[Arcade] Whack-a-greg", _root.save.rankedWhack);
        _root.submitScore("[Arcade] MindSweeper", _root.save.rankedMind);
        _root.submitScore("[Arcade] Balance 3", _root.save.rankedBalance);
        _root.submitScore("[Arcade] Triangle Count", _root.save.rankedCount);
        _root.submitScore("[Stadium] Simple Race (Impossible)", _root.save.stadiumImpossibleRace);
        _root.submitScore("[Stadium] Item Fight (Impossible)", _root.save.stadiumImpossibleItem);
        _root.submitScore("[Stadium] Death Match Wins", _root.save.stadiumDeathMatch);
        _root.submitScore("[Stadium] Death Match PWNts", _root.save.stadiumBestDeathMatch);
        _root.submitScore("[Stadium] Fastest Race", _root.save.stadiumBestTime, 99999);
        _root.submitScore("[Stadium] Unspent Stadium Tokens", _root.save.stadiumTokenMax);
        _root.submitScore("[TukkunFCG] FCG Level", _root.save.fcgLevel);
        _root.submitScore("[TukkunFCG] FCG EXP", _root.save.fcgExp + _root.save.fcgExpTotal);
        _root.submitScore("[TukkunFCG] FCG Cash", _root.save.fcgMaxCash);
        _root.submitScore("[TukkunFCG] FCG Wins", _root.save.fcgWin);
        _root.submitScore("[TukkunFCG] FCG Win Streak (Lv6)", _root.save.fcgMaxStreak6);
        _root.submitScore("[TukkunFCG] FCG Win Streak (Lv7)", _root.save.fcgMaxStreak7);
        _root.submitScore("[TukkunFCG] FCG Win Streak (Lv8 New)", _root.save.fcgMaxStreak8);
        _root.submitScore("[TukkunFCG] FCG Win Streak (Lv10)", _root.save.fcgMaxStreak10);
        _root.submitScore("[TukkunFCG] FCG Wins (Lv8)", _root.save.fcgLevel8);
        _root.submitScore("[TukkunFCG] FCG Wins (Lv10)", _root.save.fcgLevel10);
        _root.submitScore("[TukkunFCG] Legendary Monsters Killed", _root.save.fcgLegendCount);
        _root.submitScore("[LolMarket] LolMarket Profit", _root.save.lolMaxProfit);
        _root.submitScore("[Awesome Adventures] Reputation", _root.save.awesomeMaxReputation);
        _root.submitScore("[Awesome Adventures] Town", _root.save.awesomeTotalAdv1);
        _root.submitScore("[Awesome Adventures] Untitled Zone", _root.save.awesomeTotalAdv2);
        _root.submitScore("[Awesome Adventures] Titled Zone", _root.save.awesomeTotalAdv3);
        _root.submitScore("[Fishing] Skill", _root.save.fishBestLevel, 60);
        _root.submitScore("[Fishing] Mastery", _root.save.fishExp + _root.save.fishTotalExp);
        _root.submitScore("[Fishing] Score", _root.save.fishScore);
        _root.submitScore("[Fishing] Score (1 day)", _root.save.fishScoreRecord);
        _root.submitScore("[Fishing] Catches", _root.save.fishTotal);
        _root.submitScore("[Fishing] Perfect Catches", _root.save.fishPerfect);
        _root.submitScore("[Fishing] Perfect Streak", _root.save.fishBestStreak);
        _root.submitScore("[Career] Career: Idler", _root.save.careerLevel[1], 200);
        _root.submitScore("[Career] Career: Gardener", _root.save.careerLevel[2], 200);
        _root.submitScore("[Career] Career: Fighter", _root.save.careerLevel[3], 200);
        _root.submitScore("[Career] Career: Item Maker", _root.save.careerLevel[4], 200);
        _root.submitScore("[Career] Career: Button Basher", _root.save.careerLevel[5], 200);
        _root.submitScore("[Career] Career: Arcade Player", _root.save.careerLevel[6], 200);
        _root.submitScore("[Career] Career: Racer", _root.save.careerLevel[7], 200);
        _root.submitScore("[Career] Career: Card Player", _root.save.careerLevel[8], 200);
        _root.submitScore("[Career] Career: Gem Trader", _root.save.careerLevel[9], 200);
        _root.submitScore("[Career] Career: Adventurer", _root.save.careerLevel[10], 200);
        _root.submitScore("[Career] Career: Pet Trainer", _root.save.careerLevel[11], 200);
        _root.submitScore("[Career] Career: Fisherman", _root.save.careerLevel[12], 200);
        _root.submitScore("[Career] Total Career Level", _root.totalCareerLevel, 2400);
        _root.submitScore("[Cyborg] Cyborg Level", _root.save.botLevel, 200);
        _root.submitScore("[Battle Arena] +10 Upgraded Allies", _root.totalAllyMaxed);
        _root.submitScore("[Battle Arena] ULTRA ALLIES", _root.totalUltra);
        _root.submitScore("[Battle Arena] Unique ULTRA-1 Kills [New]", _root.uniqueUlt1);
        _root.submitScore("[Battle Arena] Unique ULTRA-2 Kills [New]", _root.uniqueUlt2);
        _root.submitScore("[Battle Arena] Unique ULTRA-3 Kills [New]", _root.uniqueUlt3);
        _root.submitScore("[Button Machine] Additional Multiplier", _root.save.buttonMultiplier, 1200);
        _root.submitScore("[Button Machine] Grandpas", _root.save.buttonGrandpa, 20);
        _root.submitScore("[Arcade] Unranked Upgrades", _root.totalUnrankedPower);
        _root.submitScore("[Stadium] Hats Unlocked", _root.stadiumHatUnlocked);
        _root.submitScore("[Awesome Adventures] Reputation (-)", -1 * _root.save.awesomeReputation);
        _root.submitScore("[Fishing] Rods Unlocked", _root.fishRodCount, 10);
        _root.submitScore("[BA Raid] Dark Pyramid", _root.save.raidPyramid);
        _root.submitScore("[BA Raid] Defend Mission", _root.save.raidDefend);
        _root.submitScore("[BA Raid] Prehistoric Mission", _root.save.raidPrehistoric);
        _root.submitScore("[BA Raid] The Special Arena", _root.save.raidMegaboss);
        _root.submitScore("[BA Raid] Tower of DOOOOOOM", _root.save.raidTower);
        _root.submitScore("[BA Raid] Secret Dungeon", _root.save.raidDungeon);
        _root.submitScore("[BA Raid] Endless Dungeon", _root.save.raidEndless);
        _root.submitScore("[BA Raid] THE MEGABOSS\'s Revenge", _root.save.arenaRevengeScore);
        _root.submitScore("[BA Raid] Spooky Crypt", _root.save.arenaSpookyScore);
        _root.submitScore("[BA Raid] Triangle Hideout", _root.save.arenaTriangleScore);
        _root.submitScore("[BA Raid] Special Training Zone (new)", _root.save.raidSpecial);
        _root.submitScore("[BA Raid] The Corruption", _root.save.arenaCorruptBestDifficulty);
        _root.submitScore("[Typing] WPM", _root.save.bestWpm);
    }

    // MATCH: frame_3/DoAction.as:dispNews()
    public void dispNews(double type, string news)
    {
        if (_root.save.breakNewsMode == 1)
        {
            var ignoreNews = true;
            if (_root.saveGlobal.breakAll[type] || _root.saveGlobal.breakFeature[type] ||
                _root.saveGlobal.breakTab1[type] || _root.saveGlobal.breakTab2[type] ||
                _root.saveGlobal.breakTab3[type] || _root.saveGlobal.breakTab4[type])
            {
                ignoreNews = false;
            }

            if (ignoreNews == false)
            {
                var b = 30;
                var imp = 0;
                while (b >= 2)
                {
                    imp = 1;
                    while (imp <= 4)
                    {
                        if (((FlashList<bool>)_root.saveGlobal["breakTab" + imp])[type])
                        {
                            _root.news["X" + imp + "breakNews" + b] = _root.news["X" + imp + "breakNews" + (b - 1)];
                            _root.news["X" + imp + "breakStamp" + b] = _root.news["X" + imp + "breakStamp" + (b - 1)];
                            _root.news["X" + imp + "breakColor" + b] = _root.news["X" + imp + "breakColor" + (b - 1)];
                        }

                        imp++;
                    }

                    if (_root.saveGlobal.breakAll[type])
                    {
                        var c = 1;
                        while (c <= 30)
                        {
                            _root.news["F" + c + "breakNews" + b] = _root.news["F" + c + "breakNews" + (b - 1)];
                            _root.news["F" + c + "breakStamp" + b] = _root.news["F" + c + "breakStamp" + (b - 1)];
                            _root.news["F" + c + "breakColor" + b] = _root.news["F" + c + "breakColor" + (b - 1)];
                            c++;
                        }
                    }
                    else if (_root.saveGlobal.breakFeature[type])
                    {
                        var ft = _root.newsFeature[type];
                        _root.news["F" + ft + "breakNews" + b] = _root.news["F" + ft + "breakNews" + (b - 1)];
                        _root.news["F" + ft + "breakStamp" + b] = _root.news["F" + ft + "breakStamp" + (b - 1)];
                        _root.news["F" + ft + "breakColor" + b] = _root.news["F" + ft + "breakColor" + (b - 1)];
                    }

                    b -= 1;
                }

                imp = 1;
                while (imp <= 4)
                {
                    if (((FlashList<bool>)_root.saveGlobal["breakTab" + imp])[type])
                    {
                        _root.news["X" + imp + "breakNews1"] = news;
                        _root.news["X" + imp + "breakStamp1"] = "[" + _root.clock_display + "]";
                        _root.news["X" + imp + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 +
                                                                _root.saveGlobal.breakG[type] * 256 +
                                                                _root.saveGlobal.breakB[type];
                    }

                    imp++;
                }

                if (_root.saveGlobal.breakAll[type])
                {
                    var c = 1;
                    while (c <= 30)
                    {
                        _root.news["F" + c + "breakNews1"] = news;
                        _root.news["F" + c + "breakStamp1"] = "[" + _root.clock_display + "]";
                        _root.news["F" + c + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 +
                                                              _root.saveGlobal.breakG[type] * 256 +
                                                              _root.saveGlobal.breakB[type];
                        c++;
                    }
                }
                else if (_root.saveGlobal.breakFeature[type])
                {
                    var ft = _root.newsFeature[type];
                    _root.news["F" + ft + "breakNews1"] = news;
                    _root.news["F" + ft + "breakStamp1"] = "[" + _root.clock_display + "]";
                    _root.news["F" + ft + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 +
                                                           _root.saveGlobal.breakG[type] * 256 +
                                                           _root.saveGlobal.breakB[type];
                }

                _root.updateBreakNews = 1;
            }
        }
        else if (_root.save.breakNewsMode == 2)
        {
            if (_root.saveGlobal.defTab == 5)
            {
                if (_root.saveGlobal.breakAll[type] || (_root.saveGlobal.breakFeature[type] &&
                                                        _root.house._currentframe == _root.newsFeature[type]))
                {
                    var b = 30;
                    while (b >= 2)
                    {
                        if (_root.saveGlobal.breakAll[type])
                        {
                            var c = 1;
                            while (c <= 30)
                            {
                                _root.news["F" + c + "breakNews" + b] = _root.news["F" + c + "breakNews" + (b - 1)];
                                _root.news["F" + c + "breakStamp" + b] = _root.news["F" + c + "breakStamp" + (b - 1)];
                                _root.news["F" + c + "breakColor" + b] = _root.news["F" + c + "breakColor" + (b - 1)];
                                c++;
                            }
                        }
                        else if (_root.saveGlobal.breakFeature[type])
                        {
                            var ft = _root.newsFeature[type];
                            _root.news["F" + ft + "breakNews" + b] = _root.news["F" + ft + "breakNews" + (b - 1)];
                            _root.news["F" + ft + "breakStamp" + b] = _root.news["F" + ft + "breakStamp" + (b - 1)];
                            _root.news["F" + ft + "breakColor" + b] = _root.news["F" + ft + "breakColor" + (b - 1)];
                        }

                        b -= 1;
                    }

                    if (_root.saveGlobal.breakAll[type])
                    {
                        var c = 1;
                        while (c <= 30)
                        {
                            _root.news["F" + c + "breakNews1"] = news;
                            _root.news["F" + c + "breakStamp1"] = "[" + _root.clock_display + "]";
                            _root.news["F" + c + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 +
                                                                  _root.saveGlobal.breakG[type] * 256 +
                                                                  _root.saveGlobal.breakB[type];
                            c++;
                        }
                    }
                    else if (_root.saveGlobal.breakFeature[type])
                    {
                        var ft = _root.newsFeature[type];
                        _root.news["F" + ft + "breakNews1"] = news;
                        _root.news["F" + ft + "breakStamp1"] = "[" + _root.clock_display + "]";
                        _root.news["F" + ft + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 +
                                                               _root.saveGlobal.breakG[type] * 256 +
                                                               _root.saveGlobal.breakB[type];
                    }

                    _root.updateBreakNews = 1;
                }
            }
            else if (_root.saveGlobal.defTab == 0 ||
                     ((FlashList<bool>)_root.saveGlobal["breakTab" + _root.saveGlobal.defTab])[type])
            {
                var imp = _root.saveGlobal.defTab;
                var b = 30;
                while (b >= 2)
                {
                    _root.news["X" + imp + "breakNews" + b] = _root.news["X" + imp + "breakNews" + (b - 1)];
                    _root.news["X" + imp + "breakStamp" + b] = _root.news["X" + imp + "breakStamp" + (b - 1)];
                    _root.news["X" + imp + "breakColor" + b] = _root.news["X" + imp + "breakColor" + (b - 1)];
                    b -= 1;
                }

                _root.news["X" + imp + "breakNews1"] = news;
                _root.news["X" + imp + "breakStamp1"] = "[" + _root.clock_display + "]";
                _root.news["X" + imp + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 +
                                                        _root.saveGlobal.breakG[type] * 256 +
                                                        _root.saveGlobal.breakB[type];
                _root.updateBreakNews = 1;
            }
        }
    }

    // MATCH: frame_3/DoAction.as:showPopup()
    public void showPopup(string popT, string popD)
    {
        _root.popUp.Frame = 2;
        _root.popUp.popTitle.Text = popT;
        _root.popUp.popDesc.Text = popD;
    }

    // MATCH: frame_3/DoAction.as:convertMin()
    public string convertMin(double thatNumber)
    {
        if (thatNumber < 0)
        {
            thatNumber = 0;
        }

        var hr = Math.floor(thatNumber / 3600);
        var min = Math.floor(thatNumber / 60) - hr * 60;
        var minString = "" + min;
        if (min < 10)
        {
            minString = "0" + min;
        }

        return hr + ":" + minString;
    }

    // MATCH: frame_3/DoAction.as:convertSecFull()
    public string convertSecFull(double thatNumber)
    {
        if (thatNumber < 0)
        {
            thatNumber = 0;
        }

        var hr = Math.floor(thatNumber / 3600);
        var min = Math.floor(thatNumber / 60) - hr * 60;
        var sec = Math.floor(thatNumber) - hr * 3600 - min * 60;
        var minS = "" + min;
        var secS = "" + sec;
        if (min < 10)
        {
            minS = "0" + min;
        }

        if (sec < 10)
        {
            secS = "0" + sec;
        }

        return hr + ":" + minS + ":" + secS;
    }

    // MATCH: frame_3/DoAction.as:convertSec()
    public string convertSec(double thatNumber)
    {
        if (thatNumber < 0)
        {
            thatNumber = 0;
        }

        var min = Math.floor(thatNumber / 60);
        var sec = Math.floor(thatNumber) - min * 60;
        var minS = $"{min}";
        var secS = $"{sec}";
        if (min < 10)
        {
            minS = "0" + min;
        }

        if (sec < 10)
        {
            secS = "0" + sec;
        }

        return minS + ":" + secS;
    }

    // MATCH: frame_3/DoAction.as:convertSecCD()
    public string convertSecCD(double thatNumber)
    {
        if (thatNumber < 0)
        {
            thatNumber = 0;
        }

        var min = Math.floor(thatNumber / 60);
        var sec = Math.floor(thatNumber) - min * 60;
        var secS = $"{sec}";
        if (sec < 10)
        {
            secS = "0" + sec;
        }

        return min + ":" + secS;
    }

    // MATCH: frame_3/DoAction.as:tukkunRandom()
    public double tukkunRandom(double noZero, double maxChance, double maxVal)
    {
        maxVal = Math.ceil(maxVal);
        var val = .0;
        if (Math.random() < noZero)
        {
            val = Math.ceil(Math.random() * maxVal);
            if (Math.random() < maxChance)
            {
                val = maxVal;
            }
        }
        else
        {
            val = 0;
        }

        return val;
    }

    // MATCH: frame_3/DoAction.as:withComma()
    public string withComma(double thatNumber)
    {
        var finalNumber = "";
        if (thatNumber == Infinity || isNaN(thatNumber))
        {
            finalNumber = "-----";
        }
        else
        {
            if (thatNumber > 999999999999999)
            {
                thatNumber = 999999999999999;
            }

            var cNegative = false;
            var groupval = thatNumber;
            if (thatNumber < 0)
            {
                groupval = Math.abs(thatNumber);
                cNegative = true;
            }

            var group1 = Math.floor(groupval / 1000000000000);
            var group2 = Math.floor(groupval / 1000000000) - group1 * 1000;
            var group3 = Math.floor(groupval / 1000000) - group1 * 1000000 - group2 * 1000;
            var group4 = Math.floor(groupval / 1000) - group1 * 1000000000 - group2 * 1000000 - group3 * 1000;
            var group5 = Math.floor(groupval) - group1 * 1000000000000 - group2 * 1000000000 - group3 * 1000000 -
                         group4 * 1000;
            var groupCount = 1;
            if (group4 > 0)
            {
                groupCount = 2;
            }

            if (group3 > 0)
            {
                groupCount = 3;
            }

            if (group2 > 0)
            {
                groupCount = 4;
            }

            if (group1 > 0)
            {
                groupCount = 5;
            }

            var group1s = $"{group1}";
            var group2s = $"{group2}";
            var group3s = $"{group3}";
            var group4s = $"{group4}";
            var group5s = $"{group5}";
            if (groupCount >= 2 && group5 < 10)
            {
                group5s = "0" + group5;
            }

            if (groupCount >= 2 && group5 < 100)
            {
                group5s = "0" + group5;
            }

            if (groupCount >= 3 && group4 < 10)
            {
                group4s = "0" + group4;
            }

            if (groupCount >= 3 && group4 < 100)
            {
                group4s = "0" + group4;
            }

            if (groupCount >= 4 && group3 < 10)
            {
                group3s = "0" + group3;
            }

            if (groupCount >= 4 && group3 < 100)
            {
                group3s = "0" + group3;
            }

            if (groupCount >= 5 && group2 < 10)
            {
                group2s = "0" + group2;
            }

            if (groupCount >= 5 && group2 < 100)
            {
                group2s = "0" + group2;
            }

            if (groupCount == 5)
            {
                finalNumber = group1 + "," + group2 + "," + group3 + "," + group4 + "," + group5;
            }

            if (groupCount == 4)
            {
                finalNumber = group2 + "," + group3 + "," + group4 + "," + group5;
            }

            if (groupCount == 3)
            {
                finalNumber = group3 + "," + group4 + "," + group5;
            }

            if (groupCount == 2)
            {
                finalNumber = group4 + "," + group5;
            }

            if (groupCount == 1)
            {
                finalNumber = "" + group5;
            }

            if (cNegative)
            {
                finalNumber = "-" + finalNumber;
            }
        }

        return finalNumber;
    }


    // MATCH: frame_3/DoAction.as:bCreate()
    public double bCreate(double regB, double regE)
    {
        while (regE > 0 && regB < 100000000000)
        {
            regE -= 1;
            regB *= 10;
        }

        if (regE > 990)
        {
            return 990999999999999;
        }

        return Math.floor(regE * 1000000000000 + regB);
    }


    // MATCH: frame_3/DoAction.as:toB()
    public double toB(double reg)
    {
        if (reg == Infinity || isNaN(reg))
        {
            return 0;
        }

        var tmpB = reg;
        var tmpE = 0;
        while (tmpB > 999999999999)
        {
            tmpB = Math.floor(tmpB / 10);
            tmpE += 1;
        }

        tmpB = Math.floor(tmpB);
        return _root.bCreate(tmpB, tmpE);
    }


    // MATCH: frame_3/DoAction.as:toR()
    public double toR(double bn)
    {
        if (isNaN(bn) || bn == Infinity)
        {
            return 0;
        }

        return Math.round(_root.bGetB(bn) * Math.pow(10, _root.bGetE(bn)));
    }

    // MATCH: frame_3/DoAction.as:bReduc()
    public double bReduc(double bn)
    {
        while (_root.bGetE(bn) > 0 && _root.bGetB(bn) < 100000000000)
        {
            var tmpE = _root.bGetE(bn) - 1;
            var tmpB = _root.bGetB(bn) * 10;
            bn = Math.floor(tmpE * 1000000000000 + tmpB);
        }

        return bn;
    }

    // MATCH: frame_3/DoAction.as:bGetB()
    public double bGetB(double bn)
    {
        return bn % 1000000000000;
    }

    // MATCH: frame_3/DoAction.as:bGetE()
    public double bGetE(double bn)
    {
        return Math.floor(bn / 1000000000000);
    }

    // MATCH: frame_3/DoAction.as:bAdd()
    public double bAdd(double bnA, double bnB)
    {
        if (bnB > bnA)
        {
            var tmp = bnB;
            bnB = bnA;
            bnA = tmp;
        }

        var tmpEDiff = _root.bGetE(bnA) - _root.bGetE(bnB);
        if (tmpEDiff > 12)
        {
            return bnA;
        }

        var tmpBA = _root.bGetB(bnA);
        var tmpBB = Math.floor(_root.bGetB(bnB) / Math.pow(10, tmpEDiff));
        var tmpB = tmpBA + tmpBB;
        var tmpE = _root.bGetE(bnA);
        if (tmpB > 999999999999)
        {
            tmpB = Math.floor(tmpB / 10);
            tmpE += 1;
        }

        return _root.bCreate(tmpB, tmpE);
    }

    // MATCH: frame_3/DoAction.as:bSub()
    public double bSub(double bnA, double bnB)
    {
        if (bnB >= bnA)
        {
            return 0;
        }

        var tmpEDiff = _root.bGetE(bnA) - _root.bGetE(bnB);
        if (tmpEDiff > 12)
        {
            return bnA;
        }

        var tmpBA = _root.bGetB(bnA);
        var tmpBB = Math.floor(_root.bGetB(bnB) / Math.pow(10, tmpEDiff));
        var tmpB = tmpBA - tmpBB;
        var tmpE = _root.bGetE(bnA);
        if (tmpB > 999999999999)
        {
            tmpB = Math.floor(tmpB / 10);
            tmpE += 1;
        }

        return _root.bCreate(tmpB, tmpE);
    }

    // MATCH: frame_3/DoAction.as:bMul2()
    public double bMul2(double bnA, double regB)
    {
        var tmpB = _root.bGetB(bnA);
        var tmpE = _root.bGetE(bnA);
        while (regB >= 10)
        {
            tmpB *= 10;
            if (tmpB > 999999999999)
            {
                tmpB = Math.floor(tmpB / 10);
                tmpE += 1;
            }

            regB /= 10;
        }

        tmpB *= regB;
        if (tmpB > 999999999999)
        {
            tmpB = Math.floor(tmpB / 10);
            tmpE += 1;
        }

        return _root.bCreate(tmpB, tmpE);
    }

    // MATCH: frame_3/DoAction.as:bMul()
    public double bMul(double bnA, double bnB)
    {
        return _root.bMul2(_root.bCreate(_root.bGetB(bnA), _root.bGetE(bnA) + _root.bGetE(bnB)), _root.bGetB(bnB));
    }

    // MATCH: frame_3/DoAction.as:bDiv2()
    public double bDiv2(double nA, double regB)
    {
        return _root.bMul2(nA, 1 / regB);
    }

    // MATCH: frame_3/DoAction.as:bDiv()
    public double bDiv(double bnA, double bnB)
    {
        if (bnA < bnB)
        {
            return 0;
        }

        return _root.bDiv2(_root.bCreate(_root.bGetB(bnA), _root.bGetE(bnA) - _root.bGetE(bnB)), _root.bGetB(bnB));
    }

    // MATCH: frame_3/DoAction.as:bPct()
    public double bPct(double bnA, double bnB)
    {
        if (bnA >= bnB)
        {
            return 100;
        }

        var tmpBA = _root.bGetB(bnA);
        var tmpEA = _root.bGetE(bnA);
        var tmpBB = _root.bGetB(bnB);
        var tmpEB = _root.bGetE(bnB);
        if (tmpEB - tmpEA > 4)
        {
            return 0;
        }

        while (tmpEA < tmpEB)
        {
            tmpEA += 1;
            tmpBA /= 10;
        }

        return tmpBA * 100 / tmpBB;
    }

    // MATCH: frame_3/DoAction.as:bPctD()
    public string bPctD(double bnA, double bnB)
    {
        var tmp = Math.floor(bPct(bnA, bnB) * 100);
        var tmpPA = Math.floor(tmp / 100);
        var tmpPB = tmp % 100;
        var tmpPAs = $"{tmpPA}";
        var tmpPBs = $"{tmpPB}";
        if (tmpPA < 10)
        {
            tmpPAs = "0" + tmpPA;
        }

        if (tmpPB < 10)
        {
            tmpPBs = "0" + tmpPB;
        }

        return tmpPAs + "." + tmpPBs + "%";
    }

    // MATCH: frame_3/DoAction.as:pctD()
    public string pctD(double pct)
    {
        var tmp = Math.floor(pct * 100);
        var tmpPA = Math.floor(pct / 100);
        var tmpPB = tmp % 100;
        var tmpPBs = $"{tmpPB}";
        if (tmpPB < 10)
        {
            tmpPBs = "0" + tmpPB;
        }

        return tmpPA + "." + tmpPBs + "%";
    }

    // MATCH: frame_3/DoAction.as:bPow()
    public double bPow(double regA, double regB)
    {
        var maxB = Math.floor(Math.log(_root.maxNum) / Math.log(regA) - 1);
        if (regB < maxB)
        {
            var res = Math.pow(regA, regB);
            return _root.toB(res);
        }

        return _root.bMul(_root.toB(Math.pow(regA, maxB)), _root.bPow(regA, regB - maxB));
    }

    // MATCH: frame_3/DoAction.as:bSqrt()
    public double bSqrt(double bn)
    {
        var tmpB = _root.bGetB(bn);
        var tmpE = _root.bGetE(bn);
        if (tmpE % 2 != 0)
        {
            tmpE -= 1;
            tmpB *= 10;
        }

        var tmpI = 1;
        while (tmpI <= 4)
        {
            if (tmpE >= 2)
            {
                tmpE -= 2;
                tmpB *= 100;
            }
            else
            {
                tmpI = 5;
            }

            tmpI++;
        }

        tmpE /= 2;
        tmpB = Math.floor(Math.sqrt(tmpB));
        return _root.bCreate(tmpB, tmpE);
    }

    // MATCH: frame_3/DoAction.as:bDisp()
    public string bDisp(double bn)
    {
        var tmpB = _root.bGetB(bn);
        var tmpB2 = 0;
        var tmpE = _root.bGetE(bn);
        if (tmpE == 0)
        {
            return _root.withComma(tmpB);
        }

        while (tmpB > 99999 || tmpE % 3 != 1)
        {
            tmpE += 1;
            tmpB = Math.floor(tmpB / 10);
        }

        tmpB2 = (int)tmpB % 100;
        var tmpB2s = $"{tmpB2}";
        if (tmpB2 < 10)
        {
            tmpB2s = "0" + tmpB2;
        }

        tmpB = Math.floor(tmpB / 100);
        tmpE += 2;
        return tmpB + "." + tmpB2s + " x 10^" + tmpE;
    }

    // MATCH: frame_3/DoAction.as:toFW()
    public string toFW(string str)
    {
        str += "";
        str = str.Replace("0", "０");
        str = str.Replace("1", "１");
        str = str.Replace("2", "２");
        str = str.Replace("3", "３");
        str = str.Replace("4", "４");
        str = str.Replace("5", "５");
        str = str.Replace("6", "６");
        str = str.Replace("7", "７");
        str = str.Replace("8", "８");
        str = str.Replace("9", "９");
        return str;
    }

    // MATCH: frame_3/DoAction.as:bDispX()
    public string bDispX(double bn)
    {
        var tmpB = _root.bGetB(bn);
        var tmpB2 = 0;
        var tmpE = _root.bGetE(bn);
        if (tmpE == 0)
        {
            return _root.withComma(tmpB);
        }

        while (tmpB > 99999 || tmpE % 3 != 1)
        {
            tmpE += 1;
            tmpB = Math.floor(tmpB / 10);
        }

        tmpB2 = (int)tmpB % 100;
        var tmpB2s = $"{tmpB2}";
        if (tmpB2 < 10)
        {
            tmpB2s = "0" + tmpB2;
        }

        tmpB = Math.floor(tmpB / 100);
        tmpE += 2;
        return $"{tmpB}" + "." + tmpB2s + " x 10" + _root.toFW("" + tmpE);
    }

    // MATCH: frame_3/DoAction.as:withCommaB()
    public string withCommaB(double num)
    {
        if (num < 0)
        {
            return "-" + _root.bDisp(_root.toB(-num));
        }

        return _root.bDisp(_root.toB(num));
    }

    // MATCH: frame_3/DoAction.as:withCommaC()
    public string withCommaC(double num)
    {
        if (num < 0)
        {
            return "-" + _root.bDispX(_root.toB(-num));
        }

        return _root.bDispX(_root.toB(num));
    }

    // MATCH: frame_3/DoAction.as:sauceMult()
    public double sauceMult(double sa)
    {
        var tMult = .0;
        if (_root.save.gDifficulty >= 3 && _root.save.level < 8999)
        {
            tMult = 1.2 - _root.save.expSauceAsc[sa] / 1000000 / 20000000 -
                    _root.save.expSauceAsc[sa] / (_root.save.expSauceAsc[40] + 1) * 0.2;
            if (sa == 0 || sa == 7)
            {
                tMult += 0.1;
            }

            if (tMult > 1.2)
            {
                tMult = 1.2;
            }

            if (tMult < 0.8)
            {
                tMult = 0.8;
            }
        }
        else if (_root.save.gDifficulty >= 2 && _root.save.level < 8999)
        {
            tMult = 1.2 - _root.save.expSauceAsc[sa] / 1000000 / 10000000 -
                    _root.save.expSauceAsc[sa] / (_root.save.expSauceAsc[40] + 1) * 0.2;
            if (sa == 0 || sa == 7)
            {
                tMult += 0.1;
            }

            if (tMult > 1.1)
            {
                tMult = 1.1;
            }

            if (tMult < 0.9)
            {
                tMult = 0.9;
            }
        }
        else
        {
            tMult = 1;
        }

        tMult = Math.round(tMult * 100) / 100;
        if (isNaN(tMult))
        {
            tMult = 1;
        }

        return tMult;
    }

    // MATCH: frame_3/DoAction.as:gainBoost()
    public void gainBoost(double amount, double limit)
    {
        var realLimit = .0;
        if (!isNaN(amount))
        {
            if (limit == 1)
            {
                realLimit = _root.boostMax;
            }
            else if (limit == 2 || limit == 3)
            {
                realLimit = _root.boostMax * 1.5;
            }
            else
            {
                realLimit = _root.boostMax * 2.5;
            }

            if (_root.save.bestLevel <= 5 && _root.save.featureBoostGen != true)
            {
                realLimit = 100;
            }

            var actualGain = amount;
            if (actualGain > realLimit - _root.save.boost)
            {
                actualGain = realLimit - _root.save.boost;
            }

            if (actualGain < 0)
            {
                actualGain = 0;
            }

            _root.save.boost += actualGain;
            _root.save.boostPurchased += actualGain;
        }
    }

    // MATCH: frame_3/DoAction.as:gainEXP()
    public void gainEXP(double amount, double sauce)
    {
        if (isNaN(sauce))
        {
            sauce = _root.house._currentframe;
        }

        if (!isNaN(amount) && amount > 0 && amount != Infinity)
        {
            if (_root.save.level < 9001 && _root.save.featureBoostAuto)
            {
                var boostToGain = 0.05 + amount / Math.min(_root.requiredExp, 810000000) /
                    Math.pow(_root.save.boost, 1.11) * 35000;
                if (_root.save.level < 125)
                {
                    boostToGain = boostToGain * _root.save.level / 125;
                }

                if (_root.save.boost < _root.boostMax)
                {
                    boostToGain *= 5;
                }

                if (boostToGain > 10)
                {
                    boostToGain = 10;
                }

                if (_root.save.restTime > 0)
                {
                    boostToGain *= 1.1 + _root.save.restEfficiency[3] * 0.01;
                }

                if (_root.save.permaBanPenalty[28] == 3)
                {
                    boostToGain *= 1.1;
                }
                else if (_root.save.permaBanPenalty[28] == 2)
                {
                    boostToGain *= 1.06;
                }
                else if (_root.save.permaBanPenalty[28] == 1)
                {
                    boostToGain *= 1.04;
                }

                _root.gainBoost(boostToGain, 3);
            }

            var multiplier = 1.0;
            if (_root.saveid == 23)
            {
                multiplier = 0.75;
            }

            if (_root.saveid == 24)
            {
                multiplier = 0.35;
            }

            if (_root.saveid == 4)
            {
                multiplier = _root.save.dbExp / 100;
            }

            var ascentMult = _root.save.banned / 10;
            if (ascentMult > 0.5)
            {
                ascentMult = 0.5;
            }

            multiplier += ascentMult;
            var multiplier2 = 1.0;
            var i = 1;
            while (i <= _root.todayEvent)
            {
                var yy = _root.clock_year % 10;
                var mm = _root.clock_month;
                var dd = _root.clock_date;
                if (_root.eventList[yy][mm][dd][i] == "Gain 10% more EXP from all sources")
                {
                    multiplier += 0.1;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 20% more EXP from all sources")
                {
                    multiplier += 0.2;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 30% more EXP from all sources")
                {
                    multiplier += 0.3;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 50% more EXP from all sources")
                {
                    multiplier += 0.5;
                }

                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 25% more EXP from all sources except the Progress Bar, LolMarket and Awesome Adventures" &&
                    sauce != 0 && sauce != 13 && sauce != 14)
                {
                    multiplier += 0.25;
                }

                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 50% more EXP from all sources except the Progress Bar, LolMarket and Awesome Adventures" &&
                    sauce != 0 && sauce != 13 && sauce != 14)
                {
                    multiplier += 0.5;
                }

                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 100% more EXP from all sources except the Progress Bar, LolMarket and Awesome Adventures" &&
                    sauce != 0 && sauce != 13 && sauce != 14)
                {
                    multiplier += 1;
                }

                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 200% more EXP from all sources except the Progress Bar, LolMarket and Awesome Adventures" &&
                    sauce != 0 && sauce != 13 && sauce != 14)
                {
                    multiplier += 2;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 1.5x EXP from Button Machine" && sauce == 8)
                {
                    multiplier2 *= 1.5;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 1.5x EXP from Arcade" && sauce == 10)
                {
                    multiplier2 *= 1.5;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 1.5x EXP from Stadium" && sauce == 11)
                {
                    multiplier2 *= 1.5;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 1.5x EXP from TukkunFCG" && sauce == 12)
                {
                    multiplier2 *= 1.5;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 1.5x EXP from Fishing" && sauce == 22)
                {
                    multiplier2 *= 1.5;
                }

                i++;
            }

            if (_root.save.hyperDay[1] == _root.todayCode || _root.save.hyperDay[2] == _root.todayCode)
            {
                if (sauce != 0 && sauce != 13 && sauce != 14)
                {
                    multiplier += 3;
                }
            }

            if (sauce == 0 && _root.save.boostFreeze > 0)
            {
                multiplier += Math.min(Math.floor(_root.save.totalStupidity / 500), 250) * 0.01;
            }

            multiplier += _root.save.ascStupidity * 0.05;
            multiplier *= multiplier2;
            if (_root.save.restTime > 0)
            {
                multiplier *= 1.1 + _root.save.restEfficiency[1] * 0.01;
            }

            if (_root.save.careerLevel[1] >= 200 && _root.cursoridle >= 30)
            {
                multiplier *= 1.03;
            }

            if (_root.save.banPenalty[1] == 1)
            {
                multiplier *= 1.05;
            }

            if (sauce == 38)
            {
                multiplier = 1;
            }

            if (_root.save.newbieProgress != 15 && _root.save.bestLevel < 1000)
            {
                multiplier = 1;
            }

            if (_root.save.level == 9000)
            {
                multiplier *= 0.5;
            }

            if (_root.save.level == 9001)
            {
                multiplier *= 0.05;
            }

            if (_root.save.level == 9002)
            {
                multiplier = 0;
            }

            if (_root.save.doubleExpTime > 0)
            {
                multiplier *= 1.5;
            }

            multiplier *= _root.sauceMult(sauce);
            if (_root.detectedX == 1)
            {
                multiplier = 0;
            }

            _root.save.expLag += Math.floor(amount * multiplier);
            _root.save.expGraph[7] += Math.floor(amount);
            _root.save.expGraph2[7] += Math.floor(amount * multiplier);
            _root.save.expSauce[sauce] += Math.floor(amount * multiplier);
            _root.save.expSauceAsc[sauce] += Math.floor(amount * multiplier);
            _root.save.expSauce[40] += Math.floor(amount * multiplier);
            _root.save.expSauceAsc[40] += Math.floor(amount * multiplier);
            if (_root.cursoridle < 30 && _root.save.showGain && sauce != 0 && multiplier > 0)
            {
                _root.mainSummonCount += 1;
                _root.mainAntiLag += 1;
                _root.popContain.attachMovie("scorePopMain", "scorePopMain" + _root.mainSummonCount, _root.mainAntiLag,
                    new
                    {
                        _x = 480,
                        _y = 60,
                        what = "+" + _root.withComma(Math.floor(amount * multiplier)),
                        whatColor = 10092288
                    });
            }
        }
    }

    // MATCH: frame_3/DoAction.as:gainCoin()
    public void gainCoin(double amount, double sauce)
    {
        if (isNaN(sauce))
        {
            sauce = _root.house._currentframe;
        }

        if (!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.coinOvercap < 300)
        {
            if (_root.save.level < 9001 && _root.save.featureBoostAuto)
            {
                var boostToGain = 0.01 + amount / Math.min(_root.requiredExp, 810000000) /
                    Math.pow(_root.save.boost, 1.11) * 7000;
                if (_root.save.level < 125)
                {
                    boostToGain = boostToGain * _root.save.level / 125;
                }

                if (_root.save.boost < _root.boostMax)
                {
                    boostToGain *= 5;
                }

                if (boostToGain > 2)
                {
                    boostToGain = 2;
                }

                if (_root.save.restTime > 0)
                {
                    boostToGain *= 1.1 + _root.save.restEfficiency[3] * 0.01;
                }

                if (_root.save.permaBanPenalty[28] == 3)
                {
                    boostToGain *= 1.1;
                }
                else if (_root.save.permaBanPenalty[28] == 2)
                {
                    boostToGain *= 1.06;
                }
                else if (_root.save.permaBanPenalty[28] == 1)
                {
                    boostToGain *= 1.04;
                }

                _root.gainBoost(boostToGain, 3);
            }

            var multiplier = 1.0;
            if (_root.saveid == 24)
            {
                multiplier = 0.35;
            }

            if (_root.saveid == 4)
            {
                multiplier = _root.save.dbCoin / 100;
            }

            if (sauce != 0)
            {
                if (sauce == 6 || sauce == 13)
                {
                    multiplier += Math.min(Math.floor(_root.save.totalStupidity / 250), 100) * 0.01;
                }
                else if (_root.save.totalStupidity >= 25000)
                {
                    multiplier += Math.min(Math.floor((_root.save.totalStupidity - 25000) / 250), 150) * 0.02 + 1;
                }
                else
                {
                    multiplier += Math.min(Math.floor(_root.save.totalStupidity / 250), 100) * 0.01;
                }
            }

            var i = 1;
            while (i <= _root.todayEvent)
            {
                var yy = _root.clock_year % 10;
                var mm = _root.clock_month;
                var dd = _root.clock_date;
                if (_root.eventList[yy][mm][dd][i] == "Gain 10% more Coins from all sources")
                {
                    multiplier += 0.1;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 20% more Coins from all sources")
                {
                    multiplier += 0.2;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 30% more Coins from all sources")
                {
                    multiplier += 0.3;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 50% more Coins from all sources")
                {
                    multiplier += 0.5;
                }

                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 25% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" &&
                    sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
                {
                    multiplier += 0.25;
                }

                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 50% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" &&
                    sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
                {
                    multiplier += 0.5;
                }

                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 100% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" &&
                    sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
                {
                    multiplier += 1;
                }

                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 200% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" &&
                    sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
                {
                    multiplier += 2;
                }

                i++;
            }

            if (_root.save.restTime > 0)
            {
                multiplier *= 1.1 + _root.save.restEfficiency[2] * 0.01;
            }

            if (_root.save.careerLevel[1] >= 200 && _root.cursoridle >= 30)
            {
                multiplier *= 1.03;
            }

            if (_root.save.banPenalty[2] == 1)
            {
                multiplier *= 1.1;
            }

            if (_root.save.doubleCoinTime > 0)
            {
                multiplier *= 1.5;
            }

            if (sauce == 22 || sauce == 38 || sauce == 39)
            {
                multiplier = 1;
            }

            if (_root.detectedX == 1)
            {
                multiplier = 0;
            }

            var finalAmnt = Math.floor(amount * multiplier);
            _root.save.coinLag += finalAmnt;
            _root.save.coinSauce[sauce] += finalAmnt;
            _root.save.coinSauce[40] += finalAmnt;
            if (_root.save.level < 9000)
            {
                if (_root.save.permaBanPenalty[8] == 3)
                {
                    _root.save.expLag += Math.floor(finalAmnt * 0.1);
                    _root.save.expGraph[7] += Math.floor(amount * 0.1);
                    _root.save.expGraph2[7] += Math.floor(finalAmnt * 0.1);
                }
                else if (_root.save.permaBanPenalty[8] == 2)
                {
                    _root.save.expLag += Math.floor(finalAmnt * 0.06);
                    _root.save.expGraph[7] += Math.floor(amount * 0.06);
                    _root.save.expGraph2[7] += Math.floor(finalAmnt * 0.06);
                }
                else if (_root.save.permaBanPenalty[8] == 1)
                {
                    _root.save.expLag += Math.floor(finalAmnt * 0.04);
                    _root.save.expGraph[7] += Math.floor(amount * 0.04);
                    _root.save.expGraph2[7] += Math.floor(finalAmnt * 0.04);
                }
            }

            if (_root.cursoridle < 30 && _root.save.showGain && sauce != 22 && sauce != 0 && sauce != 39)
            {
                _root.mainSummonCount += 1;
                _root.mainAntiLag += 1;
                _root.popContain.attachMovie("scorePopMain", "scorePopMain" + _root.mainSummonCount, _root.mainAntiLag,
                    new
                    {
                        _x = 80,
                        _y = 20,
                        what = "+" + _root.withComma(Math.floor(amount * multiplier)),
                        whatColor = 16776960
                    });
            }
        }

        if (!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.coinOvercap >= 300 &&
            _root.save.banned >= 5)
        {
            var multiplier = 1.0;
            if (_root.saveid == 24)
            {
                multiplier = 0.35;
            }

            if (_root.saveid == 4)
            {
                multiplier = _root.save.dbCoin / 100;
            }

            if (sauce != 0)
            {
                if (sauce == 6 || sauce == 13)
                {
                    multiplier += Math.min(Math.floor(_root.save.totalStupidity / 250), 100) * 0.01;
                }
                else if (_root.save.totalStupidity >= 25000)
                {
                    multiplier += Math.min(Math.floor((_root.save.totalStupidity - 25000) / 250), 150) * 0.02 + 1;
                }
                else
                {
                    multiplier += Math.min(Math.floor(_root.save.totalStupidity / 250), 100) * 0.01;
                }
            }

            var i = 1;
            while (i <= _root.todayEvent)
            {
                var yy = _root.clock_year % 10;
                var mm = _root.clock_month;
                var dd = _root.clock_date;
                if (_root.eventList[yy][mm][dd][i] == "Gain 10% more Coins from all sources")
                {
                    multiplier += 0.1;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 20% more Coins from all sources")
                {
                    multiplier += 0.2;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 30% more Coins from all sources")
                {
                    multiplier += 0.3;
                }

                if (_root.eventList[yy][mm][dd][i] == "Gain 50% more Coins from all sources")
                {
                    multiplier += 0.5;
                }

                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 25% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" &&
                    sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
                {
                    multiplier += 0.25;
                }

                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 50% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" &&
                    sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
                {
                    multiplier += 0.5;
                }

                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 100% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" &&
                    sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
                {
                    multiplier += 1;
                }

                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 200% more Coins from all sources except the Progress Bar, Garden, LolMarket and Fishing" &&
                    sauce != 0 && sauce != 6 && sauce != 13 && sauce != 22)
                {
                    multiplier += 2;
                }

                i++;
            }

            if (_root.save.restTime > 0)
            {
                multiplier *= 1.1 + _root.save.restEfficiency[2] * 0.01;
            }

            if (_root.save.careerLevel[1] >= 200 && _root.cursoridle >= 30)
            {
                multiplier *= 1.03;
            }

            if (_root.save.banPenalty[2] == 1)
            {
                multiplier *= 1.1;
            }

            if (_root.save.doubleCoinTime > 0)
            {
                multiplier *= 1.5;
            }

            if (sauce == 22 || sauce == 38 || sauce == 39)
            {
                multiplier = 1;
            }

            if (_root.detectedX == 1)
            {
                multiplier = 0;
            }

            var finalAmnt = Math.floor(amount * multiplier);
            _root.save.reforgingCoin += finalAmnt;
            _root.save.coinSauce[sauce] += finalAmnt;
            _root.save.coinSauce[40] += finalAmnt;
        }
    }

    // MATCH: frame_3/DoAction.as:gainGreenCoin()
    public void gainGreenCoin(double amount)
    {
        if (!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.greenCoinOvercap < 300)
        {
            var multiplier = 1.0;
            if (_root.saveid == 4)
            {
                multiplier = _root.save.dbGreenCoin / 100;
            }

            multiplier += Math.min(Math.floor(_root.save.totalStupidity / 5), 10) * 0.03;
            _root.save.greenCoin += Math.floor(amount * multiplier);
            if (_root.cursoridle < 30 && _root.save.showGain)
            {
                _root.mainSummonCount += 1;
                _root.mainAntiLag += 1;
                _root.popContain.attachMovie("scorePopMain", "scorePopMain" + _root.mainSummonCount, _root.mainAntiLag,
                    new
                    {
                        _x = 10,
                        _y = 60,
                        what = "+" + _root.withComma(Math.floor(amount * multiplier)),
                        whatColor = 65280
                    });
            }
        }

        if (!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.greenCoinOvercap >= 300 &&
            _root.save.banned >= 5)
        {
            var multiplier = 1.0;
            if (_root.saveid == 4)
            {
                multiplier = _root.save.dbGreenCoin / 100;
            }

            multiplier += Math.min(Math.floor(_root.save.totalStupidity / 5), 10) * 0.03;
            _root.save.reforgingGreenCoin += Math.floor(amount * multiplier);
        }
    }

    // MATCH: frame_3/DoAction.as:gainGreenCoinND()
    public void gainGreenCoinND(double amount)
    {
        if (!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.greenCoinOvercap < 300)
        {
            var multiplier = 1.0;
            if (_root.saveid == 4)
            {
                multiplier = _root.save.dbGreenCoin / 100;
            }

            multiplier += Math.min(Math.floor(_root.save.totalStupidity / 5), 10) * 0.03;
            _root.save.greenCoin += Math.floor(amount * multiplier);
        }

        if (!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.greenCoinOvercap >= 300 &&
            _root.save.banned >= 5)
        {
            var multiplier = 1.0;
            if (_root.saveid == 4)
            {
                multiplier = _root.save.dbGreenCoin / 100;
            }

            multiplier += Math.min(Math.floor(_root.save.totalStupidity / 5), 10) * 0.03;
            _root.save.reforgingGreenCoin += Math.floor(amount * multiplier);
        }
    }

    // MATCH: frame_3/DoAction.as:gainBlueCoin()
    public void gainBlueCoin(double amount)
    {
        if (!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.blueCoinOvercap < 300)
        {
            var multiplier = 1.0;
            if (_root.saveid == 4)
            {
                multiplier = _root.save.dbBlueCoin / 100;
            }

            _root.save.blueCoin += Math.floor(amount * multiplier);
            if (_root.cursoridle < 30 && _root.save.showGain)
            {
                _root.mainSummonCount += 1;
                _root.mainAntiLag += 1;
                _root.popContain.attachMovie("scorePopMain", "scorePopMain" + _root.mainSummonCount, _root.mainAntiLag,
                    new
                    {
                        _x = 100,
                        _y = 60,
                        what = "+" + _root.withComma(Math.floor(amount * multiplier)),
                        whatColor = 39423
                    });
            }
        }

        if (!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.blueCoinOvercap >= 300 &&
            _root.save.banned >= 5)
        {
            var multiplier = 1.0;
            if (_root.saveid == 4)
            {
                multiplier = _root.save.dbBlueCoin / 100;
            }

            _root.save.reforgingBlueCoin += Math.floor(amount * multiplier);
        }
    }

    // MATCH: frame_3/DoAction.as:gainWhiteCoin()
    public void gainWhiteCoin(double amount)
    {
        if (!isNaN(amount) && amount > 0 && amount != Infinity)
        {
            var multiplier = 1;
            if (Math.random() < Math.min(Math.floor(_root.save.totalStupidity / 500), 20) * 0.05)
            {
                multiplier += 1;
            }

            var i = 1;
            while (i <= _root.todayEvent)
            {
                var yy = _root.clock_year % 10;
                var mm = _root.clock_month;
                var dd = _root.clock_date;
                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 100% more White Coins from all sources except level 9001 reward" &&
                    amount < 1000)
                {
                    multiplier += 1;
                }

                i++;
            }

            _root.save.whiteCoin += Math.floor(amount * multiplier);
            if (_root.save.whiteCoin > 999999)
            {
                _root.save.whiteCoin = 999999;
            }

            if (Math.floor(amount * multiplier) >= 2)
            {
                _root.dispNews(163,
                    "Gained " + _root.withComma(amount * multiplier) + " White Coins! You now have " +
                    _root.withComma(_root.save.whiteCoin) + ".");
            }
            else
            {
                _root.dispNews(163, "Gained 1 White Coin! You now have " + _root.withComma(_root.save.whiteCoin) + ".");
            }
        }
    }

    // MATCH: frame_3/DoAction.as:gainWhiteCoinB()
    public void gainWhiteCoinB(double amount)
    {
        if (!isNaN(amount) && amount > 0 && amount != Infinity)
        {
            var multiplier = 1;
            var i = 1;
            while (i <= _root.todayEvent)
            {
                var yy = _root.clock_year % 10;
                var mm = _root.clock_month;
                var dd = _root.clock_date;
                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 100% more White Coins from all sources except level 9001 reward" &&
                    amount < 1000)
                {
                    multiplier += 1;
                }

                i++;
            }

            _root.save.whiteCoin += Math.floor(amount * multiplier);
            if (_root.save.whiteCoin > 999999)
            {
                _root.save.whiteCoin = 999999;
            }

            if (Math.floor(amount * multiplier) >= 2)
            {
                _root.dispNews(163,
                    "Gained " + _root.withComma(amount * multiplier) + " White Coins! You now have " +
                    _root.withComma(_root.save.whiteCoin) + ".");
            }
            else
            {
                _root.dispNews(163, "Gained 1 White Coin! You now have " + _root.withComma(_root.save.whiteCoin) + ".");
            }
        }
    }

    // MATCH: frame_3/DoAction.as:dispOverGC()
    public string dispOverGC()
    {
        var left = Math.floor(_root.save.greenCoin / 1000000000);
        var right = Math.floor(_root.save.greenCoin % 1000000000 / 10000000);
        var rightS = $"{right}";
        if (right < 10)
        {
            rightS = "0" + right;
        }

        return left + "." + rightS + "B";
    }

    // MATCH: frame_3/DoAction.as:dispOverBC()
    public string dispOverBC()
    {
        var left = Math.floor(_root.save.greenCoin / 1000000);
        var right = Math.floor(_root.save.greenCoin % 1000000 / 10000);
        var rightS = $"{right}";
        if (right < 10)
        {
            rightS = "0" + right;
        }

        return left + "." + rightS + "M";
    }

    // MATCH: frame_3/DoAction.as:gainEventToken()
    public void gainEventToken(double amount)
    {
        if (!isNaN(amount) && amount > 0)
        {
            var actualAmount = Math.floor(amount);
            if (actualAmount > _root.eventMaxToken - _root.save.eventTokenToday)
            {
                actualAmount = _root.eventMaxToken - _root.save.eventTokenToday;
            }

            if (actualAmount < 0)
            {
                actualAmount = 0;
            }

            _root.save.eventToken += actualAmount;
            _root.save.eventTokenToday += actualAmount;
            if (actualAmount > 0)
            {
                _root.dispNews(155, "Event Tokens gained! (+" + _root.withComma(actualAmount) + ")");
            }
        }
    }

    // MATCH: frame_3/DoAction.as:gainCareerEXP()
    public void gainCareerEXP(double careerID, double amount, bool mustTurnOn)
    {
        amount = Math.floor(amount);
        if (!isNaN(amount) && amount > 0)
        {
            if (_root.save.careerActive[careerID] > 0 || _root.save.careerBoost[careerID] > 0 || mustTurnOn == false)
            {
                if (_root.save.careerBoost[careerID] > 0 && mustTurnOn)
                {
                    if (_root.save.permaBanPenalty[13] == 3)
                    {
                        amount = Math.floor(amount * 4);
                        _root.dispNews(143, "Blessed Career - 300% extra Career EXP gained!");
                    }
                    else if (_root.save.permaBanPenalty[13] == 2)
                    {
                        amount = Math.floor(amount * 3.2);
                        _root.dispNews(143, "Blessed Career - 220% extra Career EXP gained!");
                    }
                    else if (_root.save.permaBanPenalty[13] == 1)
                    {
                        amount = Math.floor(amount * 2.8);
                        _root.dispNews(143, "Blessed Career - 180% extra Career EXP gained!");
                    }
                    else
                    {
                        amount = Math.floor(amount * 2);
                        _root.dispNews(143, "Blessed Career - 100% extra Career EXP gained!");
                    }
                }

                amount += Math.floor(amount * Math.min(Math.floor(_root.save.totalStupidity / 250), 20) * 0.03);
                if (_root.save.banPenalty[6] == 1)
                {
                    amount = Math.floor(amount * 1.2);
                }

                var i = 1;
                while (i <= _root.todayEvent)
                {
                    var yy = _root.clock_year % 10;
                    var mm = _root.clock_month;
                    var dd = _root.clock_date;
                    if (_root.eventList[yy][mm][dd][i] == "1.5x Career EXP gain")
                    {
                        amount = Math.floor(amount * 1.5);
                    }

                    i++;
                }

                _root.save.careerEXP[careerID] += amount;
                if (_root.save.questType == "Career EXP")
                {
                    if (_root.save.questSubtype == "Career " + careerID || _root.save.questSubtype == "Any")
                    {
                        _root.save.questCount += amount;
                    }
                }

                _root.dispNews(careerID + 130,
                    "Career EXP gained! (" + careerName[careerID] + ", +" + _root.withComma(amount) + ")");
                var careerReq = 100 + _root.save.careerLevel[careerID] * (_root.save.careerLevel[careerID] + 1) *
                    Math.max(1, _root.save.careerLevel[careerID] - 99) * 5;
                if (_root.save.careerEXP[careerID] > 4000000000)
                {
                    _root.save.careerEXP[careerID] = 4000000000;
                }

                while (_root.save.careerEXP[careerID] >= careerReq && _root.save.careerLevel[careerID] < 200)
                {
                    _root.save.careerEXP[careerID] -= careerReq;
                    _root.save.careerLevel[careerID] += 1;
                    careerReq = 100 + _root.save.careerLevel[careerID] * (_root.save.careerLevel[careerID] + 1) *
                        Math.max(1, _root.save.careerLevel[careerID] - 99) * 5;
                    _root.dispNews(144,
                        "Career Level Up! (" + careerName[careerID] + ", Lv. " + _root.save.careerLevel[careerID] +
                        ")");
                    if (_root.save.careerLevel[careerID] >= 100)
                    {
                        _root.save.mysteryBox[10] += 1;
                        _root.dispNews(144, "You have gained a Supply Crate!");
                    }
                }

                while (_root.save.careerEXP[careerID] >= 40000000 && _root.save.careerLevel[careerID] == 200)
                {
                    _root.save.careerEXP[careerID] -= 40000000;
                    _root.save.mysteryBox[10] += 1;
                    careerReq = 100 + _root.save.careerLevel[careerID] * (_root.save.careerLevel[careerID] + 1) *
                        Math.max(1, _root.save.careerLevel[careerID] - 99) * 5;
                    _root.dispNews(144,
                        "40,000,000 [" + careerName[careerID] + "] Career EXP has been exchanged for a Supply Crate!");
                }
            }

            if (careerID == _root.save.curBusiness && mustTurnOn)
            {
                if (_root.save.careerActive[careerID] > 0 || _root.save.careerBoost[careerID] > 0)
                {
                    _root.save.curBusinessActivity += amount;
                }
                else
                {
                    _root.save.curBusinessActivity += Math.ceil(amount * 0.5);
                }
            }
        }
    }

    // MATCH: frame_3/DoAction.as:claimReward()
    public void claimReward()
    {
        if (_root.save.seppukuPenalty > _root.save.seppukuAscension)
        {
            _root.save.seppukuPenalty -= 1;
        }

        var rewardToClaim = Math.ceil(_root.progPercent / 200);
        if (rewardToClaim > 500)
        {
            rewardToClaim = 500;
        }

        _root.progPercent -= 100 * rewardToClaim;
        _root.save.progFrag += 1 * rewardToClaim;
        _root.save.rewardClaim += 1 * rewardToClaim;
        var i = 1;
        while (i <= _root.todayEvent)
        {
            var yy = _root.clock_year % 10;
            var mm = _root.clock_month;
            var dd = _root.clock_date;
            if (_root.eventList[yy][mm][dd][i] == "Receive Event Tokens by claiming rewards")
            {
                _root.gainEventToken(1);
            }

            i++;
        }

        var expToGet = Math.floor(1.4 * _root.save.boost * Math.pow(_root.save.level, 0.6) * (1 +
            _root.achRedCoin / 10000 +
            _root.save.petBestLevel / 100 +
            (_root.save.mainQuestC * 1 + _root.save.mainQuestB * 3 + _root.save.mainQuestA * 6 +
             _root.save.mainQuestS * 10) / 2500) * rewardToClaim);
        var coinToGet = Math.floor(0.35 * _root.save.boost * Math.pow(_root.save.level, 0.6) *
                                   (0.8 + Math.random() * 0.4) *
                                   (1 + _root.achRedCoin / 10000 + _root.save.petBestLevel / 100 +
                                    (_root.save.mainQuestC * 1 + _root.save.mainQuestB * 3 + _root.save.mainQuestA * 6 +
                                     _root.save.mainQuestS * 10) / 2500) * rewardToClaim);
        if (_root.save.bestLevel < 35)
        {
            expToGet = Math.floor(expToGet * 0.5);
            if (expToGet > _root.requiredExp * 2)
            {
                expToGet = _root.requiredExp * 2;
            }
        }

        var greenCoinToGet = 100 * rewardToClaim;
        var blueCoinToGet = 0.0;
        if (_root.save.rewardClaim <= 5)
        {
            expToGet = 4;
            coinToGet = 1000;
            greenCoinToGet = 200;
            blueCoinToGet = 20;
        }

        if (_root.save.idleMode == false)
        {
            _root.save.rewardClaimManual += 1 * rewardToClaim;
            if (Math.random() < 0.1 && _root.save.rewardBotTime > 0)
            {
                _root.gainCareerEXP(1, rewardToClaim, true);
            }

            greenCoinToGet += 100 * rewardToClaim;
            var bcChance = 0.1;
            if (_root.save.permaBanPenalty[2] == 3)
            {
                bcChance = 0.6;
            }
            else if (_root.save.permaBanPenalty[2] == 2)
            {
                bcChance = 0.4;
            }

            if (_root.save.permaBanPenalty[2] == 1)
            {
                bcChance = 0.3;
            }

            if (Math.random() < bcChance)
            {
                blueCoinToGet += rewardToClaim;
            }

            if (_root.save.questType == "Claim Reward")
            {
                _root.save.questCount += 1 * rewardToClaim;
            }
        }
        else
        {
            _root.save.rewardClaimAuto += 1 * rewardToClaim;
            if (Math.random() < 0.1)
            {
                _root.gainCareerEXP(1, rewardToClaim, true);
            }

            if (_root.save.questType == "Claim Reward")
            {
                if (_root.save.questSubtype != "No Idle Mode")
                {
                    _root.save.questCount += 1 * rewardToClaim;
                }
            }
        }

        var doubleMod = 1;
        if (_root.save.featureEpicLicense)
        {
            if (Math.random() < _root.save.epicSkill[1] * 0.01)
            {
                _root.progPercent += 100 * rewardToClaim;
                _root.dispNews(8, "Epic Skill [Double Progress] activated!");
            }

            if (Math.random() < _root.save.epicSkill[2] * 0.01)
            {
                _root.gainBoost(2 * rewardToClaim, 3);
                _root.dispNews(9, "Epic Skill [Boost Charger] activated!");
            }

            if (Math.random() < _root.save.epicSkill[3] * 0.01)
            {
                coinToGet += 1000000 * rewardToClaim;
                greenCoinToGet += 500 * rewardToClaim;
                _root.dispNews(10, "Epic Skill [Coin Collector] activated!");
            }

            if (Math.random() < _root.save.epicSkill[4] * 0.01)
            {
                _root.save.printerCharge += 1 * rewardToClaim;
                _root.save.totalPrinterCharge += 1 * rewardToClaim;
                _root.dispNews(11, "Epic Skill [Battery Booster] activated!");
            }

            if (Math.random() < _root.save.epicSkill[5] * 0.01)
            {
                _root.save.fishFatigue -= 1 * rewardToClaim;
                _root.dispNews(12, "Epic Skill [Fanatical Fisher] activated!");
            }

            if (Math.random() < _root.save.epicSkill[6] * 0.01)
            {
                doubleMod = 2;
                _root.dispNews(13, "Epic Skill [Module Master] activated!");
            }

            if (Math.random() < _root.save.epicSkill[7] * 0.01)
            {
                _root.save.botEnergy += 1 * rewardToClaim;
                if (_root.save.botEnergy > 359999)
                {
                    _root.save.botEnergy = 359999;
                }

                _root.dispNews(184, "Epic Skill [Cyborg Charger] activated!");
            }
        }

        i = 1;
        while (i <= 9)
        {
            var mcModif = 1.0;
            var j = 1;
            while (j <= 9)
            {
                if (i != j && _root.save.progModuleType[i] == _root.save.progModuleType[j])
                {
                    mcModif = 0.9;
                }

                j++;
            }

            if (Math.random() < _root.save.progModuleChance[i] / 10000 * doubleMod * mcModif)
            {
                var tempMod = _root.save.progModuleType[i];
                if (tempMod == 1)
                {
                    expToGet += Math.floor(_root.save.progModuleEffect[i] * 0.014 * _root.save.boost *
                                           Math.pow(_root.save.level, 0.6) * (1 + _root.achRedCoin / 10000 +
                                                                              _root.save.petBestLevel / 100 +
                                                                              (_root.save.mainQuestC * 1 +
                                                                               _root.save.mainQuestB * 3 +
                                                                               _root.save.mainQuestA * 6 +
                                                                               _root.save.mainQuestS * 10) / 2500) *
                                           rewardToClaim);
                }
                else if (tempMod == 2)
                {
                    coinToGet += Math.floor(_root.save.progModuleEffect[i] * 0.0035 * _root.save.boost *
                                            Math.pow(_root.save.level, 0.6) * (0.8 + Math.random() * 0.4) * (1 +
                                                _root.achRedCoin / 10000 + _root.save.petBestLevel / 100 +
                                                (_root.save.mainQuestC * 1 + _root.save.mainQuestB * 3 +
                                                 _root.save.mainQuestA * 6 + _root.save.mainQuestS * 10) / 2500) *
                                            rewardToClaim);
                }
                else if (tempMod == 3)
                {
                    greenCoinToGet += _root.save.progModuleEffect[i] * rewardToClaim;
                }
                else if (tempMod == 4)
                {
                    blueCoinToGet += _root.save.progModuleEffect[i] * rewardToClaim;
                }
                else if (tempMod == 5)
                {
                    _root.gainWhiteCoin(_root.save.progModuleEffect[i] * rewardToClaim);
                }
                else if (tempMod == 6)
                {
                    _root.gainBoost(_root.save.progModuleEffect[i] * rewardToClaim, 3);
                }
                else if (tempMod == 7)
                {
                    if (_root.save.boostFreeze <= 0 || Math.random() < 0.1 || rewardToClaim >= 10)
                    {
                        _root.save.boostFreeze += _root.save.progModuleEffect[i] * Math.ceil(rewardToClaim * 0.1);
                    }
                }
                else if (tempMod == 8)
                {
                    _root.save.doubleExpTime += _root.save.progModuleEffect[i] * rewardToClaim;
                }
                else if (tempMod == 9)
                {
                    _root.save.doubleCoinTime += _root.save.progModuleEffect[i] * rewardToClaim;
                }
                else if (tempMod == 10)
                {
                    var tr = 1;
                    while (tr <= 50)
                    {
                        if (_root.save.gardenTrees[tr] > 0 && _root.save.gardenTreeModuleProc[tr] < 10000000 &&
                            _root.save.gardenTrees[tr] != 1)
                        {
                            _root.save.gardenHarvestValue[tr] += _root.save.progModuleEffect[i] * rewardToClaim;
                            _root.save.gardenTreeModuleProc[tr] += _root.save.progModuleEffect[i] * rewardToClaim;
                            if (_root.save.gardenTreeModuleProc[tr] > 10000000)
                            {
                                _root.save.gardenHarvestValue[tr] -= _root.save.gardenTreeModuleProc[tr] - 10000000;
                                _root.save.gardenTreeModuleProc[tr] = 10000000;
                            }
                        }

                        tr++;
                    }
                }
                else if (tempMod == 11)
                {
                    _root.save.petMana += _root.save.progModuleEffect[i] * rewardToClaim;
                }
                else if (tempMod == 12)
                {
                    _root.save.gardenPoint += _root.save.progModuleEffect[i] * rewardToClaim;
                }
                else if (tempMod == 13)
                {
                    _root.save.gardenFruit += _root.save.progModuleEffect[i] * rewardToClaim;
                }
                else if (tempMod != 14)
                {
                    if (tempMod != 15)
                    {
                        if (tempMod != 16)
                        {
                            if (tempMod == 17)
                            {
                                _root.save.arenaPixel += _root.save.progModuleEffect[i] * rewardToClaim *
                                                         _root.save.arenaLevel;
                            }
                            else if (tempMod == 18)
                            {
                                _root.save.arenaCraft += _root.save.progModuleEffect[i] * rewardToClaim *
                                                         _root.save.arenaLevel;
                            }
                            else if (tempMod == 19)
                            {
                                _root.save.arenaSuperiorCraft += _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod == 20)
                            {
                                _root.save.arenaUnobtainium += _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod == 21)
                            {
                                _root.save.arenaEnhancerFragment += _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod == 22)
                            {
                                _root.save.arenaBacon += _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod == 23)
                            {
                                _root.save.arenaCrystal1 += _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod == 24)
                            {
                                _root.save.arenaCrystal2 += _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod == 25)
                            {
                                _root.save.buttonPurple += _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod == 26)
                            {
                                var modCareer = random(12) + 1;
                                if (_root.save.careerLevel[modCareer] >= 100)
                                {
                                    _root.gainCareerEXP(modCareer, _root.save.progModuleEffect[i] * rewardToClaim * 2,
                                        false);
                                }
                                else
                                {
                                    _root.gainCareerEXP(modCareer, _root.save.progModuleEffect[i] * rewardToClaim,
                                        false);
                                }
                            }
                            else if (tempMod == 27)
                            {
                                _root.save.arcade100kMedal += _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod == 28)
                            {
                                _root.save.stadiumToken += _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod == 29)
                            {
                                _root.save.fcgCash += _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod >= 30 && tempMod <= 39)
                            {
                                _root.save.lolGems[tempMod - 29] += _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod == 40)
                            {
                                if (_root.save.awesomeEnergy < _root.save.awesomeMaxEnergy * 5 + 15)
                                {
                                    _root.save.awesomeEnergyNext -= _root.save.progModuleEffect[i] * rewardToClaim;
                                }
                            }
                            else if (tempMod == 41)
                            {
                                _root.save.specialPetFood += _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod == 42)
                            {
                                _root.save.fishFatigue -= _root.save.progModuleEffect[i] * rewardToClaim;
                            }
                            else if (tempMod == 43)
                            {
                                _root.save.totalMute += rewardToClaim;
                            }
                        }
                    }
                }
            }

            doubleMod = 1;
            i++;
        }

        if (_root.save.gardenBreed1 != 0)
        {
            _root.save.gardenResearch += 1 * rewardToClaim;
        }

        if (_root.save.idleMode == false)
        {
            if (_root.save.permaBanPenalty[17] == 3)
            {
                expToGet = Math.floor(expToGet * 1.25);
            }
            else if (_root.save.permaBanPenalty[17] == 2)
            {
                expToGet = Math.floor(expToGet * 1.15);
            }
            else if (_root.save.permaBanPenalty[17] == 1)
            {
                expToGet = Math.floor(expToGet * 1.1);
            }

            if (_root.save.permaBanPenalty[26] == 3)
            {
                coinToGet = Math.floor(coinToGet * 1.25);
            }
            else if (_root.save.permaBanPenalty[26] == 2)
            {
                coinToGet = Math.floor(coinToGet * 1.15);
            }
            else if (_root.save.permaBanPenalty[26] == 1)
            {
                coinToGet = Math.floor(coinToGet * 1.1);
            }
        }
        else if (_root.save.idleMode)
        {
            if (_root.save.permaBanPenalty[25] == 3)
            {
                expToGet = Math.floor(expToGet * 1.15);
            }
            else if (_root.save.permaBanPenalty[25] == 2)
            {
                expToGet = Math.floor(expToGet * 1.09);
            }
            else if (_root.save.permaBanPenalty[25] == 1)
            {
                expToGet = Math.floor(expToGet * 1.06);
            }

            if (_root.save.permaBanPenalty[36] == 3)
            {
                coinToGet = Math.floor(coinToGet * 1.15);
            }
            else if (_root.save.permaBanPenalty[36] == 2)
            {
                coinToGet = Math.floor(coinToGet * 1.09);
            }
            else if (_root.save.permaBanPenalty[36] == 1)
            {
                coinToGet = Math.floor(coinToGet * 1.06);
            }
        }

        if (_root.saveid == 26)
        {
            expToGet = Math.floor(expToGet * 20);
            coinToGet = Math.floor(coinToGet * 2);
        }

        if (_root.save.permaBanPenalty[2] == 3)
        {
            greenCoinToGet += 500 * rewardToClaim;
        }
        else if (_root.save.permaBanPenalty[2] == 2)
        {
            greenCoinToGet += 300 * rewardToClaim;
        }
        else if (_root.save.permaBanPenalty[2] == 1)
        {
            greenCoinToGet += 200 * rewardToClaim;
        }

        _root.gainEXP(expToGet, 0);
        _root.gainCoin(coinToGet, 0);
        _root.gainGreenCoinND(greenCoinToGet);
        _root.gainBlueCoin(blueCoinToGet);
        if (rewardToClaim > 1)
        {
            _root.dispNews(5,
                _root.withComma(rewardToClaim) + " rewards claimed! (+" + _root.withComma(expToGet) + " EXP | +" +
                _root.withComma(coinToGet) + " Coins)");
        }
        else
        {
            _root.dispNews(4,
                "Reward claimed! (+" + _root.withComma(expToGet) + " EXP | +" + _root.withComma(coinToGet) + " Coins)");
        }

        if (_root.save.level > 10)
        {
            if (Math.random() < (0.01 - _root.save.boost / 100000) * rewardToClaim)
            {
                _root.gainBoost(5, 3);
                _root.dispNews(6, "Yay, free boost! (+5% Boost)");
            }
        }
    }

    // MATCH: frame_3/DoAction.as:harvestTree()
    public void harvestTree(double slot, bool harvestAll)
    {
        var tmul = Math.floor(Math.pow(_root.save.level, 0.6)) / 10 + 6.5;
        if (isNaN(_root.save.gardenHarvestValue[slot]))
        {
            _root.save.gardenHarvestValue[slot] = 0;
        }

        _root.save.curForestDestroyer = 0;
        _root.save.harvestCount += 1;
        _root.save.gardenMastery[_root.save.gardenTrees[slot]] += 1;
        if (_root.save.questType == "Harvest")
        {
            if (_root.save.questSubtype == "Any")
            {
                _root.save.questCount += 1;
            }
        }

        var plotExpToEarn = _root.save.gardenTreeExp[slot];
        if (_root.save.gardenTrees[slot] == 1)
        {
            if (_root.save.questType == "Harvest")
            {
                if (_root.save.questSubtype == "Free Tree")
                {
                    _root.save.questCount += 1;
                }
            }
        }

        if (_root.save.gardenTrees[slot] == 2)
        {
            if (_root.save.questType == "Harvest")
            {
                if (_root.save.questSubtype == "Blue Tree")
                {
                    _root.save.questCount += 1;
                }
            }
        }

        if (_root.save.gardenTrees[slot] == 3)
        {
            if (_root.save.questType == "Harvest")
            {
                if (_root.save.questSubtype == "Pink Tree")
                {
                    _root.save.questCount += 1;
                }
            }
        }

        if (_root.save.gardenTrees[slot] == 4)
        {
            if (_root.save.questType == "Harvest")
            {
                if (_root.save.questSubtype == "Green Tree")
                {
                    _root.save.questCount += 1;
                }
            }
        }

        if (_root.save.gardenTrees[slot] == 5)
        {
            if (_root.save.questType == "Harvest")
            {
                if (_root.save.questSubtype == "Lime Tree")
                {
                    _root.save.questCount += 1;
                }
            }
        }

        if (_root.save.gardenTrees[slot] == 6)
        {
            if (_root.save.questType == "Harvest")
            {
                if (_root.save.questSubtype == "Yellow Tree")
                {
                    _root.save.questCount += 1;
                }
            }
        }

        if (_root.save.gardenTrees[slot] == 7)
        {
            if (_root.save.questType == "Harvest")
            {
                if (_root.save.questSubtype == "Red Tree")
                {
                    _root.save.questCount += 1;
                }
            }
        }

        if (_root.save.gardenTrees[slot] == 8)
        {
            if (_root.save.questType == "Harvest")
            {
                if (_root.save.questSubtype == "Black Tree")
                {
                    _root.save.questCount += 1;
                }
            }
        }

        if (_root.save.gardenTrees[slot] == 9)
        {
            if (_root.save.questType == "Harvest")
            {
                if (_root.save.questSubtype == "Holiday Tree")
                {
                    _root.save.questCount += 1;
                }
            }
        }

        if (_root.save.gardenCapacity >= 16 && slot <= 25)
        {
            if (Math.random() < 0.01 * Math.sqrt(plotExpToEarn))
            {
                if (Math.random() < 0.3333333333333333)
                {
                    _root.save.gardenSeed[26] += 1;
                    _root.dispNews(22, "Gained Seed #1 for Another Garden!");
                }
                else if (Math.random() < 0.5)
                {
                    _root.save.gardenSeed[51] += 1;
                    _root.dispNews(22, "Gained Seed #26 for Another Garden!");
                }
                else
                {
                    _root.save.gardenSeed[76] += 1;
                    _root.dispNews(22, "Gained Seed #51 for Another Garden!");
                }
            }
        }

        if (slot >= 26 && slot <= 50)
        {
            if (_root.save.questType == "Harvest")
            {
                if (_root.save.questSubtype == "Another Garden Tree")
                {
                    _root.save.questCount += 1;
                }
            }

            if (Math.random() < 0.15 && _root.save.gardenSeed[_root.save.gardenTrees[slot]] < 99)
            {
                _root.save.gardenSeed[_root.save.gardenTrees[slot]] += 1;
                _root.dispNews(22, "Gained Seed #" + (_root.save.gardenTrees[slot] - 25) + " for Another Garden!");
            }

            if (Math.random() < 0.01 * plotExpToEarn)
            {
                var fruitToEarn = 1;
                if (_root.save.permaBanPenalty[14] == 3)
                {
                    fruitToEarn = 6;
                }
                else if (_root.save.permaBanPenalty[14] == 2)
                {
                    fruitToEarn = 4;
                }
                else if (_root.save.permaBanPenalty[14] == 1)
                {
                    fruitToEarn = 3;
                }

                _root.save.gardenFruit += fruitToEarn;
                if (harvestAll != true)
                {
                    _root.dispNews(21,
                        "Gained " + fruitToEarn + " Randomfruit! You now have: " +
                        _root.withComma(_root.save.gardenFruit));
                }
                else
                {
                    harvestSummaryFruit += fruitToEarn;
                }
            }
        }

        if (slot >= 51)
        {
            if (_root.save.questType == "Harvest")
            {
                if (_root.save.questSubtype == "Another Another Garden Tree")
                {
                    _root.save.questCount += 1;
                }
            }
        }

        if (Math.random() < 0.01 + 0.002 * plotExpToEarn)
        {
            _root.gainWhiteCoin(1);
        }

        _root.save.gardenSlotEXP[slot] += plotExpToEarn;
        _root.save.gardenEXP += plotExpToEarn;
        _root.save.gardenPoint += plotExpToEarn;
        var i = 1;
        while (i <= _root.todayEvent)
        {
            var yy = _root.clock_year % 10;
            var mm = _root.clock_month;
            var dd = _root.clock_date;
            if (_root.eventList[yy][mm][dd][i] == "Receive Event Tokens by harvesting trees")
            {
                _root.gainEventToken(plotExpToEarn / 5);
            }

            i++;
        }

        if (harvestAll != true)
        {
            var careerToGain = Math.floor(5 + plotExpToEarn * (1 + _root.save.gardenSlotEXP[slot] / 50000));
            if (careerToGain > 5 + 3 * plotExpToEarn)
            {
                careerToGain = 5 + 3 * plotExpToEarn;
            }

            if (slot >= 26 && slot <= 50)
            {
                careerToGain = Math.floor(careerToGain * 2);
            }

            if (slot >= 51)
            {
                careerToGain = Math.floor(careerToGain * 3);
            }

            _root.gainCareerEXP(2, careerToGain, true);
            _root.dispNews(19,
                "Tree #" + slot + " harvested! (+" +
                _root.withComma(_root.save.gardenHarvestValue[slot] * tmul * (1 + _root.curCareerLevel[2] * 0.005)) +
                " Coins)");
            if (slot <= 25)
            {
                _root.gainEXP(
                    _root.save.gardenHarvestValue[slot] * tmul * (0.3 + _root.curCareerLevel[2] * 0.0015) *
                    (1 + _root.save.petStat[1] * 0.002), 6);
            }
            else if (slot <= 50)
            {
                _root.gainEXP(
                    _root.save.gardenHarvestValue[slot] * tmul * (0.45 + _root.curCareerLevel[2] * 0.00225) *
                    (1 + _root.save.petStat[1] * 0.002), 6);
            }
            else
            {
                _root.gainEXP(
                    _root.save.gardenHarvestValue[slot] * tmul * (0.6 + _root.curCareerLevel[2] * 0.003) *
                    (1 + _root.save.petStat[1] * 0.002), 6);
            }

            _root.gainCoin(
                Math.floor(_root.save.gardenHarvestValue[slot] * tmul * (1 + _root.curCareerLevel[2] * 0.005)));
            _root.save.harvestCoin +=
                Math.floor(_root.save.gardenHarvestValue[slot] * (1 + _root.curCareerLevel[2] * 0.005));
            _root.save.gardenRecentTime[slot] = _root.systemtimenow;
            var greenCoinToEarn = Math.ceil(250 + plotExpToEarn * 50);
            _root.gainGreenCoin(greenCoinToEarn);
            var blueCoinToEarn = Math.ceil(0.5 + plotExpToEarn * 0.1);
            if (_root.save.gardenTrees[slot] == 1)
            {
                blueCoinToEarn = 1;
            }

            _root.gainBlueCoin(blueCoinToEarn);
        }
        else
        {
            var careerToGain = Math.floor(5 + plotExpToEarn * (1 + _root.save.gardenSlotEXP[slot] / 50000));
            if (careerToGain > 5 + 3 * plotExpToEarn)
            {
                careerToGain = 5 + 3 * plotExpToEarn;
            }

            if (slot >= 26 && slot <= 50)
            {
                careerToGain = Math.floor(careerToGain * 2);
            }

            if (slot >= 51)
            {
                careerToGain = Math.floor(careerToGain * 3);
            }

            harvestSummaryCareer += careerToGain;
            harvestSummaryCount += 1;
            harvestSummaryCoin +=
                Math.floor(_root.save.gardenHarvestValue[slot] * tmul * (1 + _root.curCareerLevel[2] * 0.005));
            if (slot <= 25)
            {
                harvestSummaryEXP += Math.floor(_root.save.gardenHarvestValue[slot] * tmul *
                                                (0.3 + _root.curCareerLevel[2] * 0.0015) *
                                                (1 + _root.save.petStat[1] * 0.002));
            }
            else if (slot <= 50)
            {
                harvestSummaryEXP += Math.floor(_root.save.gardenHarvestValue[slot] * tmul *
                                                (0.45 + _root.curCareerLevel[2] * 0.00225) *
                                                (1 + _root.save.petStat[1] * 0.002));
            }
            else
            {
                harvestSummaryEXP += Math.floor(_root.save.gardenHarvestValue[slot] * tmul *
                                                (0.6 + _root.curCareerLevel[2] * 0.003) *
                                                (1 + _root.save.petStat[1] * 0.002));
            }

            _root.save.harvestCoin +=
                Math.floor(_root.save.gardenHarvestValue[slot] * tmul * (1 + _root.curCareerLevel[2] * 0.005));
            _root.save.gardenRecentTime[slot] = _root.systemtimenow;
            var greenCoinToEarn = Math.ceil(250 + plotExpToEarn * 50);
            harvestSummaryGreenCoin += greenCoinToEarn;
            var blueCoinToEarn = Math.ceil(0.5 + plotExpToEarn * 0.1);
            if (_root.save.gardenTrees[slot] == 1)
            {
                blueCoinToEarn = 1;
            }

            harvestSummaryBlueCoin += blueCoinToEarn;
        }
    }

    // MATCH: frame_3/DoAction.as:harvestAllTree()
    public void harvestAllTree()
    {
        harvestSummaryCount = 0;
        harvestSummaryEXP = 0;
        harvestSummaryCoin = 0;
        harvestSummaryGreenCoin = 0;
        harvestSummaryBlueCoin = 0;
        harvestSummaryCareer = 0;
        harvestSummaryFruit = 0;
        var tr = 1;
        while (tr <= _root.save.gardenCapacity)
        {
            if (_root.save.gardenTrees[tr] > 0)
            {
                if (_root.save.gardenRecentTime[tr] + _root.save.gardenHarvestTime[tr] - _root.systemtimenow <= 0)
                {
                    _root.harvestTree(tr, true);
                }
            }

            tr++;
        }

        _root.gainEXP(harvestSummaryEXP, 6);
        _root.gainCoin(harvestSummaryCoin, 6);
        _root.gainGreenCoin(harvestSummaryGreenCoin);
        _root.gainBlueCoin(harvestSummaryBlueCoin);
        _root.gainCareerEXP(2, harvestSummaryCareer, true);
        if (harvestSummaryCount >= 2)
        {
            _root.dispNews(19,
                harvestSummaryCount + " trees harvested! (+" + _root.withComma(harvestSummaryCoin) + " Coins)");
        }
        else if (harvestSummaryCount == 1)
        {
            _root.dispNews(19, "1 tree harvested! (+" + _root.withComma(harvestSummaryCoin) + " Coins)");
        }

        if (harvestSummaryFruit >= 1)
        {
            _root.dispNews(21,
                "Gained " + harvestSummaryFruit + " Randomfruit! You now have: " +
                _root.withComma(_root.save.gardenFruit));
        }
    }

    // MATCH: frame_3/DoAction.as:printMoney()
    public void printMoney(double moneyToPrintX)
    {
        _root.printPercent = 0;
        if (_root.save.printerCharge > 0)
        {
            if (_root.save.questType == "Print")
            {
                if (_root.save.questSubtype == "Any")
                {
                    _root.save.questCount += 1;
                }
            }

            _root.save.printerCharge -= 1;
            if (_root.save.printerCharge > 160)
            {
                _root.save.printerCharge -= 4;
            }

            if (_root.save.printerCharge > 1000)
            {
                _root.save.printerCharge = 1000;
            }

            if (Math.random() < Math.min(Math.floor(_root.save.totalStupidity / 20), 25) * 0.04)
            {
                _root.gainBlueCoin(1);
            }

            _root.dispNews(75, "Money printed! (+" + _root.withComma(moneyToPrintX) + " Coins)");
            var critPrintChance = 0.01;
            if (_root.save.permaBanPenalty[29] == 3)
            {
                critPrintChance *= 6;
            }
            else if (_root.save.permaBanPenalty[29] == 2)
            {
                critPrintChance *= 4;
            }
            else if (_root.save.permaBanPenalty[29] == 1)
            {
                critPrintChance *= 3;
            }

            if (Math.random() < critPrintChance)
            {
                var greenCoinToGain =
                    Math.floor(((_root.save.printerLevel + 25) * Math.pow(Math.min(_root.save.level, 9001), 0.65) *
                        0.63 * 10 + 4560) * (100 + _root.save.printerLevel) / 100);
                greenCoinToGain = Math.round(greenCoinToGain / 125) * 10;
                if (_root.save.permaBanPenalty[4] == 3)
                {
                    greenCoinToGain = Math.round(greenCoinToGain * 2.5);
                }
                else if (_root.save.permaBanPenalty[4] == 2)
                {
                    greenCoinToGain = Math.round(greenCoinToGain * 1.9);
                }
                else if (_root.save.permaBanPenalty[4] == 1)
                {
                    greenCoinToGain = Math.round(greenCoinToGain * 1.6);
                }

                _root.gainGreenCoin(greenCoinToGain);
                _root.dispNews(76, "CRITICAL PRINT! (+" + _root.withComma(greenCoinToGain) + " Green Coins)");
                if (_root.save.questType == "Print")
                {
                    if (_root.save.questSubtype == "Critical")
                    {
                        _root.save.questCount += 1;
                    }
                }
            }
        }

        if (_root.save.printerCharge > 0 && _root.save.printerCharge < 10)
        {
            _root.dispNews(156, "Your Printer Battery is low.");
        }

        if (_root.save.printerCharge <= 0)
        {
            _root.dispNews(157, "Your Printer Battery has run out. Charge it now!");
        }

        _root.gainCoin(moneyToPrintX, 9);
        _root.save.totalPrinterMoney += moneyToPrintX;
        if (_root.save.totalPrinterMoney >= 1000000)
        {
            _root.save.totalPrinterMillion += Math.floor(_root.save.totalPrinterMoney / 1000000);
            _root.save.totalPrinterMoney %= 1000000;
        }
    }

    // MATCH: frame_3/DoAction.as:toHex()
    public string toHex(double dec)
    {
        return dec.ToString("X");
    }

    // MATCH: frame_3/DoAction.as:jewk()
    public string jewk(string str)
    {
        if (str.Length == 1)
        {
            return "<font color=\'#FFFF00\'>" + str + " </font>";
        }

        var _loc6_ = "";
        var _loc4_ = 0;
        var _loc5_ = str.Length;
        var _loc2_ = 0.0;
        var _loc3_ = 0.0;
        _loc4_ = 0;
        while (_loc4_ < _loc5_)
        {
            if (_loc4_ > (_loc5_ - 1) / 2)
            {
                _loc2_ = Math.round((_loc5_ - 1 - _loc4_) / (_loc5_ - 1) * 300) + 100;
                _loc3_ = 250;
            }
            else
            {
                _loc2_ = 250;
                _loc3_ = Math.round(_loc4_ / (_loc5_ - 1) * 300) + 100;
            }

            if (_loc2_ > 250)
            {
                _loc2_ = 250;
            }

            if (_loc3_ > 250)
            {
                _loc3_ = 250;
            }

            if (_loc2_ < 0)
            {
                _loc2_ = 0;
            }

            if (_loc3_ < 0)
            {
                _loc3_ = 0;
            }

            _loc6_ += "<font color=\'#" + _root.toHex(_loc2_ * 65536 + _loc3_ * 256) + "\'>" +
                      str.Substr(_loc4_ + 1, 1) + "</font>";
            _loc4_ = _loc4_ + 1;
        }

        return _loc6_;
    }

    // MATCH: frame_3/DoAction.as:jewkB()
    public string jewkB(string str)
    {
        if (str.Length == 1)
        {
            return "<font color=\'#FFFF00\'>" + str + " </font>";
        }

        var _loc6_ = "";
        var _loc4_ = 0;
        var _loc5_ = str.Length;
        var _loc2_ = 0.0;
        var _loc3_ = 0.0;
        _loc4_ = 0;
        while (_loc4_ < _loc5_)
        {
            if (_loc4_ > (_loc5_ - 1) / 2)
            {
                _loc2_ = Math.round((_loc5_ - 1 - _loc4_) / (_loc5_ - 1) * 200) + 150;
                _loc3_ = 250;
            }
            else
            {
                _loc2_ = 250;
                _loc3_ = Math.round(_loc4_ / (_loc5_ - 1) * 200) + 150;
            }

            if (_loc2_ > 250)
            {
                _loc2_ = 250;
            }

            if (_loc3_ > 250)
            {
                _loc3_ = 250;
            }

            if (_loc2_ < 0)
            {
                _loc2_ = 0;
            }

            if (_loc3_ < 0)
            {
                _loc3_ = 0;
            }

            _loc6_ += "<font color=\'#" + _root.toHex(_loc2_ * 65536 + _loc3_ * 256) + "\'>" +
                      str.Substr(_loc4_ + 1, 1) + "</font>";
            _loc4_ = _loc4_ + 1;
        }

        return _loc6_;
    }

    // MATCH: frame_3/DoAction.as:jewkC()
    public string jewkC(string str)
    {
        if (str.Length == 1)
        {
            return "<font color=\'#FFFF00\'>" + str + " </font>";
        }

        var _loc6_ = "";
        var _loc4_ = 0;
        var _loc5_ = str.Length;
        var _loc2_ = .0;
        var _loc3_ = .0;
        var blue = .0;
        while (_loc4_ < _loc5_)
        {
            if (_loc4_ > (_loc5_ - 1) / 2)
            {
                _loc2_ = Math.round((_loc5_ - 1 - _loc4_) / (_loc5_ - 1) * 200) + 150;
                _loc3_ = 250;
                blue = 0;
            }
            else
            {
                _loc2_ = 250;
                _loc3_ = 250;
                blue = Math.round(((_loc5_ - 1) / 2 - _loc4_) / (_loc5_ - 1) * 250);
            }

            if (_loc2_ > 250)
            {
                _loc2_ = 250;
            }

            if (_loc3_ > 250)
            {
                _loc3_ = 250;
            }

            if (blue > 250)
            {
                blue = 250;
            }

            if (_loc2_ < 0)
            {
                _loc2_ = 0;
            }

            if (_loc3_ < 0)
            {
                _loc3_ = 0;
            }

            if (blue < 0)
            {
                blue = 0;
            }

            _loc6_ += "<font color=\'#" + _root.toHex(_loc2_ * 65536 + _loc3_ * 256 + blue) + "\'>" +
                      str.Substr(_loc4_ + 1, 1) + "</font>";
            _loc4_ = _loc4_ + 1;
        }

        return _loc6_;
    }

    // MATCH: frame_3/DoAction.as:clearChallenge()
    public void clearChallenge()
    {
        if (_root.saveid >= 20)
        {
            _root.save.challengeToken = Math.floor(_root.saveid * (_root.saveid + 1) * (_root.saveid - 7) * 156.4);
        }
    }

    // MATCH: frame_3/DoAction.as:scrollUp()
    public void scrollUp()
    {
        _root.scrollingDir = -1;
    }

    // MATCH: frame_3/DoAction.as:scrollDown()
    public void scrollDown()
    {
        _root.scrollingDir = 1;
    }

    // MATCH: frame_3/DoAction.as:calcPerf()
    public double calcPerf(double op)
    {
        var tempCPerf = .0;
        if (op == 0)
        {
            tempCPerf = 40 + _root.save.botLevel * 1;
        }
        else if (op == 1)
        {
            tempCPerf = Math.floor(100 + _root.save.highPong * 0.0065 +
                                   Math.pow(_root.save.totalPong / 100000, 0.4) * 10) * 100;
        }
        else if (op == 2)
        {
            tempCPerf = Math.floor(100 + _root.save.highAvoidance * 0.0065 +
                                   Math.pow(_root.save.totalAvoidance / 100000, 0.4) * 10) * 100;
        }
        else if (op == 3)
        {
            tempCPerf = Math.floor(100 + _root.save.highMath * 0.0065 +
                                   Math.pow(_root.save.totalMath / 100000, 0.4) * 10) * 100;
        }
        else if (op == 4)
        {
            tempCPerf = Math.floor(100 + _root.save.highWhack * 0.0065 +
                                   Math.pow(_root.save.totalWhack / 100000, 0.4) * 10) * 100;
        }
        else if (op == 5)
        {
            tempCPerf = Math.floor(100 + _root.save.highCount * 0.0065 +
                                   Math.pow(_root.save.totalCount / 100000, 0.4) * 10) * 100;
        }
        else if (op == 6)
        {
            tempCPerf = Math.floor(100 + _root.save.highMind * 0.0065 +
                                   Math.pow(_root.save.totalMind / 100000, 0.4) * 10) * 100;
        }
        else if (op == 7)
        {
            tempCPerf = Math.floor(100 + _root.save.highBalance * 0.0065 +
                                   Math.pow(_root.save.totalBalance / 100000, 0.4) * 10) * 100;
        }
        else if (op == 8)
        {
            tempCPerf = Math.floor(50 + _root.save.stadiumAbilityCost / 4 + Math.pow(_root.save.stadiumRace, 0.3) * 10 +
                                   Math.pow(_root.save.stadiumImpossibleRace, 0.4) * 15) / 10;
        }
        else if (op == 9)
        {
            tempCPerf = Math.floor(50 + _root.save.stadiumAbilityCost / 4 + Math.pow(_root.save.stadiumItem, 0.3) * 10 +
                                   Math.pow(_root.save.stadiumImpossibleItem, 0.4) * 15) / 10;
        }
        else if (op == 10)
        {
            tempCPerf = Math.floor(50 + _root.save.stadiumAbilityCost / 8 + _root.save.stadiumBestDeathMatch * 0.65 +
                                   Math.pow(_root.save.stadiumDeathMatch, 0.5) * 2);
        }
        else if (op == 11)
        {
            tempCPerf = Math.floor(100 + _root.save.highMMRX * 0.0065 +
                                   Math.pow(_root.save.totalMMRX / 100000, 0.4) * 10) * 100;
        }
        else if (op == 12)
        {
            tempCPerf = Math.floor(45 + 500 * _root.save.fcgMaxStreak1 / (_root.save.fcgMaxStreak1 + 25) +
                                   Math.pow(_root.save.fcgLevel1, 0.4) * 14 + _root.save.fcgLevel * 9) / 10;
        }
        else if (op == 13)
        {
            tempCPerf = Math.floor(40 + 500 * _root.save.fcgMaxStreak2 / (_root.save.fcgMaxStreak2 + 25) +
                                   Math.pow(_root.save.fcgLevel2, 0.4) * 13 + _root.save.fcgLevel * 8) / 10;
        }
        else if (op == 14)
        {
            tempCPerf = Math.floor(35 + 500 * _root.save.fcgMaxStreak3 / (_root.save.fcgMaxStreak3 + 25) +
                                   Math.pow(_root.save.fcgLevel3, 0.4) * 12 + _root.save.fcgLevel * 7) / 10;
        }
        else if (op == 15)
        {
            tempCPerf = Math.floor(30 + 500 * _root.save.fcgMaxStreak4 / (_root.save.fcgMaxStreak4 + 25) +
                                   Math.pow(_root.save.fcgLevel4, 0.4) * 11 + _root.save.fcgLevel * 6) / 10;
        }
        else if (op == 16)
        {
            tempCPerf = Math.floor(25 + 500 * _root.save.fcgMaxStreak6 / (_root.save.fcgMaxStreak6 + 25) +
                                   Math.pow(_root.save.fcgLevel6, 0.3) * 9 + _root.save.fcgLevel * 4) / 10;
        }
        else if (op == 17)
        {
            tempCPerf = Math.floor(20 + 500 * _root.save.fcgMaxStreak7 / (_root.save.fcgMaxStreak7 + 25) +
                                   Math.pow(_root.save.fcgLevel7, 0.3) * 8 + _root.save.fcgLevel * 3) / 10;
        }
        else if (op == 18)
        {
            tempCPerf = Math.floor(15 + 500 * _root.save.fcgMaxStreak8 / (_root.save.fcgMaxStreak8 + 25) +
                                   Math.pow(_root.save.fcgLevel8, 0.3) * 7 + _root.save.fcgLevel * 2) / 10;
        }
        else if (op == 19)
        {
            tempCPerf = Math.floor(10 + 500 * _root.save.fcgMaxStreak10 / (_root.save.fcgMaxStreak10 + 25) +
                                   Math.pow(_root.save.fcgLevel10, 0.3) * 5 + _root.save.fcgLevel * 1) / 10;
        }
        else if (op == 20)
        {
            tempCPerf = Math.floor(10 + 500 * _root.save.fishBestStreak / (_root.save.fishBestStreak + 25) +
                                   Math.pow(_root.save.fishPerfect, 0.3) * 5 + _root.save.fishBestLevel * 5) / 10;
        }

        if (op != 0 && tempCPerf < _root.cyborgActMaxPerf[op])
        {
            tempCPerf += (_root.cyborgActMaxPerf[op] - tempCPerf) * (_root.save.botLevel * 0.0025 +
                                                                     Math.pow(
                                                                         _root.save.botOp[op] * Math.max(30,
                                                                             _root.cyborgActTime[op]) / 30, 0.45) *
                                                                     0.001);
        }

        if ((op >= 1 && op <= 7) || op == 11)
        {
            tempCPerf = Math.floor(tempCPerf / 100) * 100;
        }
        else if (op == 10)
        {
            tempCPerf = Math.floor(tempCPerf);
        }
        else
        {
            tempCPerf = Math.floor(tempCPerf * 10) / 10;
        }

        if (tempCPerf > _root.cyborgActMaxPerf[op])
        {
            tempCPerf = _root.cyborgActMaxPerf[op];
        }

        if (tempCPerf < _root.cyborgActMinPerf[op])
        {
            tempCPerf = _root.cyborgActMinPerf[op];
        }

        if (isNaN(tempCPerf))
        {
            tempCPerf = 0;
        }

        return tempCPerf;
    }

    // MATCH: frame_3/DoAction.as:calcMaxPerfCount()
    public void calcMaxPerfCount()
    {
        var maxPerfCount = 0;
        var tmpOp = 1;
        while (tmpOp <= 20)
        {
            if (_root.cyborgActMaxPerf[tmpOp] == _root.calcPerf(tmpOp))
            {
                maxPerfCount += 1;
            }

            tmpOp++;
        }

        _root.save.botMaxTask = maxPerfCount;
    }

    // MATCH: frame_3/DoAction.as:cyborgOp()
    public void cyborgOp(double op)
    {
        var baseExp = .0;
        var baseCoin = .0;
        var baseBlueCoin = .0;
        var baseGreenCoin = .0;
        var baseToken = .0;
        if (op == 0)
        {
            _root.save.botEnergy += _root.calcPerf(0);
            if (_root.save.botEnergy > 359999)
            {
                _root.save.botEnergy = 359999;
            }
        }
        else if ((op >= 1 && op <= 7) || op == 11)
        {
            var tempCScore = Math.floor(_root.calcPerf(op) * (0.005 + Math.random() * 0.0025 + Math.random() * 0.001 +
                                                              Math.random() * Math.random() * 0.0015)) * 100;
            var cybA = "";
            var medMult = 0;
            var div = 50;

            if (op == 1)
            {
                _root.gainWhiteCoin(6 + random(10));
                cybA = "Pong";
                medMult = 3;

                div = 50;
                if (_root.save.highPong < tempCScore)
                {
                    _root.save.highPong = tempCScore;
                }

                if (_root.save.todayHighPong < tempCScore)
                {
                    _root.save.todayHighPong = tempCScore;
                }

                _root.save.totalPong += tempCScore;
                _root.dispNews(175, "[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in Pong.");
            }
            else if (op == 2)
            {
                _root.gainWhiteCoin(2 + random(6));
                cybA = "Ultimate Avoidance";
                medMult = 3;
                div = 50;
                if (_root.save.highAvoidance < tempCScore)
                {
                    _root.save.highAvoidance = tempCScore;
                }

                if (_root.save.todayHighAvoidance < tempCScore)
                {
                    _root.save.todayHighAvoidance = tempCScore;
                }

                _root.save.totalAvoidance += tempCScore;
                _root.dispNews(175,
                    "[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in Ultimate Avoidance.");
            }
            else if (op == 3)
            {
                _root.gainWhiteCoin(1 + random(4));
                cybA = "Math Master";
                medMult = 2;
                div = 150;
                if (_root.save.highMath < tempCScore)
                {
                    _root.save.highMath = tempCScore;
                }

                if (_root.save.todayHighMath < tempCScore)
                {
                    _root.save.todayHighMath = tempCScore;
                }

                _root.save.totalMath += tempCScore;
                _root.dispNews(175,
                    "[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in Math Master.");
            }
            else if (op == 4)
            {
                _root.gainWhiteCoin(2 + random(6));
                cybA = "Whack-a-greg";
                medMult = 2;
                div = 100;
                if (_root.save.highWhack < tempCScore)
                {
                    _root.save.highWhack = tempCScore;
                }

                if (_root.save.todayHighWhack < tempCScore)
                {
                    _root.save.todayHighWhack = tempCScore;
                }

                _root.save.totalWhack += tempCScore;
                _root.dispNews(175,
                    "[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in Whack-a-greg.");
            }
            else if (op == 5)
            {
                _root.gainWhiteCoin(8 + random(14));
                cybA = "Triangle Count";
                medMult = 3;
                div = 100;
                if (_root.save.highCount < tempCScore)
                {
                    _root.save.highCount = tempCScore;
                }

                if (_root.save.todayHighCount < tempCScore)
                {
                    _root.save.todayHighCount = tempCScore;
                }

                _root.save.totalCount += tempCScore;
                _root.dispNews(175,
                    "[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in Triangle Count.");
            }
            else if (op == 6)
            {
                _root.gainWhiteCoin(4 + random(8));
                cybA = "MindSweeper";
                medMult = 4;
                div = 100;
                if (_root.save.highMind < tempCScore)
                {
                    _root.save.highMind = tempCScore;
                }

                if (_root.save.todayHighMind < tempCScore)
                {
                    _root.save.todayHighMind = tempCScore;
                }

                _root.save.totalMind += tempCScore;
                _root.dispNews(175,
                    "[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in MindSweeper.");
            }
            else if (op == 7)
            {
                _root.gainWhiteCoin(6 + random(10));
                cybA = "Balance 3";
                medMult = 3;
                div = 80;
                if (_root.save.highBalance < tempCScore)
                {
                    _root.save.highBalance = tempCScore;
                }

                if (_root.save.todayHighBalance < tempCScore)
                {
                    _root.save.todayHighBalance = tempCScore;
                }

                _root.save.totalBalance += tempCScore;
                _root.dispNews(175,
                    "[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in Balance 3.");
            }
            else if (op == 11)
            {
                _root.gainWhiteCoin(6 + random(10));
                cybA = "MMR X";
                medMult = 4;
                div = 80;
                if (_root.save.highMMRX < tempCScore)
                {
                    _root.save.highMMRX = tempCScore;
                }

                if (_root.save.todayMMRX < tempCScore)
                {
                    _root.save.todayMMRX = tempCScore;
                }

                _root.save.totalMMRX += tempCScore;
                _root.dispNews(175, "[Cyborg] Simulation Cyborg scored " + _root.withComma(tempCScore) + " in MMR X.");
            }

            _root.gainCyborgEXP(Math.ceil(
                (tempCScore / _root.cyborgActMaxPerf[op] + 1) * (_root.cyborgActTime[op] / 20) +
                _root.cyborgActCost[op] / 10));
            if (tempCScore >= 100000)
            {
                var medalToGet =
                    Math.floor(Math.floor(tempCScore / 100000) * medMult * (1 + _root.curCareerLevel[6] * 0.02));
                _root.dispNews(175, "[Cyborg] You have gained " + medalToGet + " Arcade 100k Medals!");
                _root.save.arcade100kMedal += medalToGet;
            }

            if (_root.save.questType == cybA)
            {
                if (_root.save.questSubtype == "High Score")
                {
                    if (_root.save.questCount < tempCScore)
                    {
                        _root.save.questCount = tempCScore;
                    }
                }

                if (_root.save.questSubtype == "Total Score")
                {
                    _root.save.questCount += tempCScore;
                }
            }

            _root.arcadeRewardMult = 3;
            if (_root.save.careerLevel[6] >= 200)
            {
                _root.arcadeRewardMult *= 1 + _root.save.arcadeRating * 0.06;
            }
            else
            {
                _root.arcadeRewardMult *= 1 + _root.save.arcadeRating * 0.05;
            }

            _root.gainCareerEXP(6, Math.floor(tempCScore / div / 4 * _root.arcadeRewardMult), true);
            baseCoin = Math.floor(tempCScore / div / 2.4 * _root.arcadeRewardMult);
            baseExp = Math.floor(tempCScore / div / 1.8 * _root.arcadeRewardMult);
            baseGreenCoin = Math.floor(tempCScore / div * 2.5 * _root.arcadeRewardMult);
            baseBlueCoin = Math.floor(tempCScore / div / 200 * _root.arcadeRewardMult);
            baseExp = Math.floor(baseExp * (1 + _root.curCareerLevel[6] * 0.005) * (1 + _root.save.petStat[4] * 0.002));
            baseCoin = Math.floor(baseCoin * (1 + _root.curCareerLevel[6] * 0.01));
            baseGreenCoin = Math.floor(baseGreenCoin * (1 + _root.curCareerLevel[6] * 0.01));
            var finalExp = Math.ceil(baseExp * Math.pow(_root.save.level, 0.6) * (_root.save.boost / 100));
            var finalCoin = Math.ceil(baseCoin * Math.pow(_root.save.level, 0.6) * (_root.save.boost / 100));
            var finalGreenCoin = Math.ceil(baseGreenCoin);
            var finalBlueCoin = Math.ceil(baseBlueCoin);
            if (_root.save.permaBanPenalty[10] == 3)
            {
                finalExp = Math.floor(finalExp * 3);
            }
            else if (_root.save.permaBanPenalty[10] == 2)
            {
                finalExp = Math.floor(finalExp * 2.2);
            }
            else if (_root.save.permaBanPenalty[10] == 1)
            {
                finalExp = Math.floor(finalExp * 1.8);
            }

            if (_root.save.banPenalty[9] == 1)
            {
                finalExp = Math.floor(finalExp * 1.3);
            }

            if (finalExp > 99999999999)
            {
                finalExp = 99999999999;
            }

            if (finalCoin > 99999999999)
            {
                finalCoin = 99999999999;
            }

            _root.gainEXP(finalExp, 10);
            _root.gainCoin(finalCoin, 10);
            _root.gainGreenCoin(finalGreenCoin);
            _root.gainBlueCoin(finalBlueCoin);
            var tempProgToGet = cyborgActTime[op] * 25;
            _root.progPercent += tempProgToGet;
            _root.dispNews(175,
                "[Cyborg] You have gained: " + _root.withComma(finalExp) + " EXP + " + _root.withComma(finalCoin) +
                " Coins");
        }
        else if (op >= 8 && op <= 9)
        {
            var order = 0.0;
            if (Math.random() < _root.calcPerf(op) / 100)
            {
                order = 1;
                _root.gainCyborgEXP(2);
                if (Math.random() < 0.5)
                {
                    _root.gainWhiteCoin(1);
                }
            }
            else
            {
                order = 2 + random(4);
                if (order != 5)
                {
                    _root.gainCyborgEXP(1);
                }
            }

            if (op == 8)
            {
                baseExp = 3200;
                baseCoin = 5900;
                baseGreenCoin = 10000;
                baseBlueCoin = 20;
                baseToken = 600;
            }
            else
            {
                baseExp = 3750;
                baseCoin = 6900;
                baseGreenCoin = 12500;
                baseBlueCoin = 25;
                baseToken = 700;
            }

            var fReward = _root.save.stadiumReward;
            _root.gainCareerEXP(7, Math.floor(300 + (300 + (5 - order) * 50) * (100 + fReward) / 100 / order), true);
            var finalExp = Math.ceil((baseExp - 150) / order * Math.pow(_root.save.level, 0.6) *
                                     (_root.save.boost / 100) *
                                     (1 + fReward * 0.01));
            var finalCoin = Math.ceil((baseCoin - 150) / order * Math.pow(_root.save.level, 0.6) *
                                      (_root.save.boost / 100));
            var finalGreenCoin = Math.ceil(baseGreenCoin / order);
            var finalBlueCoin = Math.ceil(baseBlueCoin / order);
            var finalToken = Math.ceil(baseToken / order);
            finalExp = Math.floor(
                finalExp * (1 + _root.curCareerLevel[7] * 0.005) * (1 + _root.save.petStat[5] * 0.002));
            finalCoin = Math.floor(finalCoin * (1 + _root.curCareerLevel[7] * 0.005));
            finalToken = Math.floor(finalToken * (1 + _root.curCareerLevel[7] * 0.01));
            if (_root.save.careerLevel[7] >= 100)
            {
                finalGreenCoin = Math.floor(finalGreenCoin * 2);
            }

            if (_root.save.careerLevel[7] >= 200)
            {
                finalBlueCoin = Math.floor(finalBlueCoin * 4);
            }

            if (order >= 2)
            {
                finalCoin = Math.floor(finalCoin * 0.5);
                finalToken = Math.floor(finalToken * 0.5);
            }

            if (order == 5)
            {
                finalExp = Math.floor(finalExp * 0.5);
                finalCoin = Math.floor(finalCoin * 0.5);
                finalGreenCoin = Math.floor(finalGreenCoin * 0.5);
                finalBlueCoin = Math.floor(finalBlueCoin * 0.5);
                finalToken = Math.floor(finalToken * 0.5);
            }

            if (_root.save.banPenalty[9] == 1)
            {
                finalExp = Math.floor(finalExp * 1.3);
            }

            if (_root.save.stadiumProTime > 0)
            {
                finalExp = Math.floor(finalExp * 1.5);
                finalToken = Math.floor(finalToken * 2);
            }

            if (_root.save.permaBanPenalty[19] == 3)
            {
                finalExp = Math.floor(finalExp * 3);
            }
            else if (_root.save.permaBanPenalty[19] == 2)
            {
                finalExp = Math.floor(finalExp * 2.2);
            }
            else if (_root.save.permaBanPenalty[19] == 1)
            {
                finalExp = Math.floor(finalExp * 1.8);
            }

            if (finalExp < 0)
            {
                finalExp = 0;
            }

            if (finalCoin < 0)
            {
                finalCoin = 0;
            }

            _root.gainEXP(finalExp, 11);
            _root.gainCoin(finalCoin, 11);
            _root.gainGreenCoin(finalGreenCoin);
            _root.gainBlueCoin(finalBlueCoin);
            if (op == 8)
            {
                _root.dispNews(175, "[Cyborg] Simple Race COMPLETE! - Position: #" + order);
            }
            else if (op == 9)
            {
                _root.dispNews(175, "[Cyborg] Item Fight COMPLETE! - Position: #" + order);
            }

            _root.dispNews(175,
                "[Cyborg] You have gained: " + _root.withComma(finalExp) + " EXP + " + _root.withComma(finalCoin) +
                " Coins");
            _root.dispNews(175, "[Cyborg] You have gained " + _root.withComma(finalToken) + " Stadium Tokens!");
            if (order == 1)
            {
                if ((_root.save.questType == "Simple Race" && op == 8) ||
                    (_root.save.questType == "Item Fight" && op == 9))
                {
                    if (_root.save.questSubtype == "Easy")
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Medium")
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Hard")
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Impossible")
                    {
                        _root.save.questCount += 1;
                    }
                }

                if (op == 8)
                {
                    _root.save.stadiumRace += 1;
                    _root.save.stadiumImpossibleRace += 1;
                }
                else if (op == 9)
                {
                    _root.save.stadiumItem += 1;
                    _root.save.stadiumImpossibleItem += 1;
                }
            }

            _root.save.stadiumToken += finalToken;
        }
        else if (op == 10)
        {
            var tempCScore = Math.floor(_root.calcPerf(op) * (0.5 + Math.random() * 0.3 + Math.random() * 0.2));
            baseExp = 250000;
            baseCoin = 250000;
            baseGreenCoin = 500000;
            baseBlueCoin = 1000;
            baseToken = 10000;
            var fReward = _root.save.stadiumReward;
            if (_root.save.questType == "Death Match")
            {
                if (_root.save.questSubtype == "PWNt")
                {
                    if (_root.save.questCount < tempCScore)
                    {
                        _root.save.questCount = tempCScore;
                    }
                }
            }

            var order = 0.0;
            if (Math.random() < 0.95 && Math.random() < (tempCScore - 200) / 500)
            {
                order = 1;
                _root.gainCyborgEXP(Math.ceil((tempCScore / 1100 + 1) * (_root.cyborgActTime[op] / 20) + 50));
            }
            else
            {
                order = 2 + random(4);
                if (tempCScore >= 600)
                {
                    order = 2;
                }

                _root.gainCyborgEXP(Math.ceil((tempCScore / 1100 + 1) * (_root.cyborgActTime[op] / 20) + 10));
            }

            _root.gainCareerEXP(7,
                Math.floor(10000 + (20000 + tempCScore * 50 + (5 - order) * 5000) * (100 + fReward) / 100 / order),
                true);
            var finalExp = Math.ceil((baseExp + Math.floor(tempCScore * 250)) / order *
                                     Math.pow(_root.save.level, 0.6) *
                                     (_root.save.boost / 100) * (1 + fReward * 0.01));
            var finalCoin = Math.ceil((baseCoin + Math.floor(tempCScore * 250)) / order *
                                      Math.pow(_root.save.level, 0.6) *
                                      (_root.save.boost / 100));
            var finalGreenCoin = Math.ceil((baseGreenCoin + tempCScore * 500) / order);
            var finalBlueCoin = Math.ceil((baseBlueCoin + tempCScore * 1) / order);
            var finalToken = Math.ceil((baseToken + tempCScore * 10) / order);
            finalExp = Math.floor(
                finalExp * (1 + _root.curCareerLevel[7] * 0.005) * (1 + _root.save.petStat[5] * 0.002));
            finalCoin = Math.floor(finalCoin * (1 + _root.curCareerLevel[7] * 0.005));
            finalToken = Math.floor(finalToken * (1 + _root.curCareerLevel[7] * 0.01));
            if (_root.save.careerLevel[7] >= 100)
            {
                finalGreenCoin = Math.floor(finalGreenCoin * 2);
            }

            if (_root.save.careerLevel[7] >= 200)
            {
                finalBlueCoin = Math.floor(finalBlueCoin * 4);
            }

            if (order >= 2)
            {
                finalCoin = Math.floor(finalCoin * 0.5);
                finalToken = Math.floor(finalToken * 0.5);
            }

            if (order == 5)
            {
                finalExp = Math.floor(finalExp * 0.5);
                finalCoin = Math.floor(finalCoin * 0.5);
                finalGreenCoin = Math.floor(finalGreenCoin * 0.5);
                finalBlueCoin = Math.floor(finalBlueCoin * 0.5);
                finalToken = Math.floor(finalToken * 0.5);
            }

            if (_root.save.banPenalty[9] == 1)
            {
                finalExp = Math.floor(finalExp * 1.3);
            }

            if (_root.save.stadiumProTime > 0)
            {
                finalExp = Math.floor(finalExp * 1.5);
                finalToken = Math.floor(finalToken * 2);
            }

            if (_root.save.permaBanPenalty[19] == 3)
            {
                finalExp = Math.floor(finalExp * 3);
            }
            else if (_root.save.permaBanPenalty[19] == 2)
            {
                finalExp = Math.floor(finalExp * 2.2);
            }
            else if (_root.save.permaBanPenalty[19] == 1)
            {
                finalExp = Math.floor(finalExp * 1.8);
            }

            if (finalExp < 0)
            {
                finalExp = 0;
            }

            if (finalCoin < 0)
            {
                finalCoin = 0;
            }

            if (finalExp > 999999999999)
            {
                finalExp = 999999999999;
            }

            if (finalCoin > 999999999999)
            {
                finalCoin = 999999999999;
            }

            _root.gainEXP(finalExp, 11);
            _root.gainCoin(finalCoin, 11);
            _root.gainGreenCoin(finalGreenCoin);
            _root.gainBlueCoin(finalBlueCoin);
            _root.gainWhiteCoin(Math.floor((10 + tempCScore / 25) / order));
            _root.save.stadiumToken += finalToken;
            _root.dispNews(175,
                "[Cyborg] Death Match COMPLETE! - Position: #" + order + " - PWNts: " + _root.withComma(tempCScore));
            _root.dispNews(175,
                "[Cyborg] You have gained: " + _root.withComma(finalExp) + " EXP + " + _root.withComma(finalCoin) +
                " Coins");
            _root.dispNews(175, "[Cyborg] You have gained " + _root.withComma(finalToken) + " Stadium Tokens!");
            if (order == 1)
            {
                if (_root.save.questType == "Death Match")
                {
                    if (_root.save.questSubtype == "Win")
                    {
                        _root.save.questCount += 1;
                    }
                }

                _root.save.stadiumDeathMatch += 1;
            }

            if (_root.save.stadiumBestDeathMatch < tempCScore)
            {
                _root.save.stadiumBestDeathMatch = tempCScore;
            }

            if (_root.save.stadiumTodayDeathMatch < tempCScore)
            {
                _root.save.stadiumTodayDeathMatch = tempCScore;
            }
        }
        else if (op >= 11 && op <= 19)
        {
            _root.save.fcgPlay += 1;
            var fDiff = 0;
            var diffMult = 0;
            if (op == 11)
            {
                fDiff = 0;
                diffMult = 0;
            }
            else if (op == 12)
            {
                fDiff = 1;
                diffMult = 1;
            }
            else if (op == 13)
            {
                fDiff = 2;
                diffMult = 2;
            }
            else if (op == 14)
            {
                fDiff = 3;
                diffMult = 3;
            }
            else if (op == 15)
            {
                fDiff = 4;
                diffMult = 4;
            }
            else if (op == 16)
            {
                fDiff = 6;
                diffMult = 6;
            }
            else if (op == 17)
            {
                fDiff = 7;
                diffMult = 15;
            }
            else if (op == 18)
            {
                fDiff = 8;
                diffMult = 20;
            }
            else if (op == 19)
            {
                fDiff = 10;
                diffMult = 30;
            }

            if (op == 19)
            {
                _root.save.fcgSeriousDeck = 34 + random(35);
            }

            var actualWinRate = _root.calcPerf(op);
            if (op == 19 && _root.save.fcgSeriousDeck == 69)
            {
                actualWinRate *= 0.2;
            }

            if (Math.random() < actualWinRate / 100)
            {
                if (_root.save.questType == "Win")
                {
                    if (_root.save.questSubtype == "Any")
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Level 2" && fDiff >= 2)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Level 3" && fDiff >= 3)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Level 4" && fDiff >= 4)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Level 6" && fDiff >= 6)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Level 7" && fDiff >= 7)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Level 8" && fDiff >= 8)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Level 10" && fDiff >= 10)
                    {
                        _root.save.questCount += 1;
                    }
                }

                if (fDiff == 6)
                {
                    _root.gainWhiteCoin(1);
                }
                else if (fDiff == 7)
                {
                    _root.gainWhiteCoin(3);
                }
                else if (fDiff == 8)
                {
                    _root.gainWhiteCoin(5);
                }
                else if (fDiff == 10)
                {
                    if (_root.save.fcgStreak10 >= 4 && _root.save.fcgStreak10 % 5 == 4)
                    {
                        _root.save.fcgSeriousDeck = 69;
                    }

                    _root.gainWhiteCoin(10);
                }

                _root.save.fcgWin += 1;
                _root.save.fcgStreak += 1;
                var target = 2500.0;
                var finalFcgExp = 25.0;
                var finalFcgCash = 100.0;
                if (op == 19 && _root.save.fcgSeriousDeck == 69)
                {
                    target = 62500;
                    finalFcgExp = 1337;
                    finalFcgCash = 5000;
                    _root.gainWhiteCoin(50);
                }

                _root.save["fcgStreak" + fDiff] = (double)_root.save["fcgStreak" + fDiff] + 1;
                if ((double)_root.save["fcgMaxStreak" + fDiff] < (double)_root.save["fcgStreak" + fDiff])
                {
                    _root.save["fcgMaxStreak" + fDiff] = _root.save["fcgStreak" + fDiff];
                }

                _root.save["fcgLevel" + fDiff] = (double)_root.save["fcgLevel" + fDiff] + 1;
                target += 2500 + Math.min((double)_root.save["fcgStreak" + fDiff], 50) * diffMult * 100 +
                          diffMult * 1000;
                finalFcgExp += 25 + Math.min((double)_root.save["fcgStreak" + fDiff], 50) * diffMult * 1 +
                               diffMult * 25;
                finalFcgCash += 100 + Math.min((double)_root.save["fcgStreak" + fDiff], 50) * diffMult * 2 +
                                diffMult * 50;
                target = Math.floor(target * (1 + _root.save.fcgLevel * 0.02) * (1 + Math.random() * 0.05));
                finalFcgExp = Math.floor(finalFcgExp * (1 + _root.save.fcgLevel * 0.002) * (1 + Math.random() * 0.05));
                finalFcgCash =
                    Math.floor(finalFcgCash * (1 + _root.save.fcgLevel * 0.002) * (0.7 + Math.random() * 0.4));
                if (_root.save.powerUserTime > 0 && _root.save.banPenalty[9] == 1)
                {
                    target = Math.floor(target * 1.95);
                    finalFcgCash = Math.floor(finalFcgCash * 2);
                }
                else if (_root.save.powerUserTime > 0)
                {
                    target = Math.floor(target * 1.5);
                    finalFcgCash = Math.floor(finalFcgCash * 2);
                }
                else if (_root.save.banPenalty[9] == 1)
                {
                    target = Math.floor(target * 1.3);
                }

                target = Math.floor(target * (1 + _root.save.petStat[6] * 0.002));
                var finalExp =
                    Math.ceil(Math.pow(_root.save.level, 0.6) * Math.max(_root.boostMax, _root.save.boost) / 100) *
                    target;
                finalExp = Math.floor(finalExp * (1 + _root.curCareerLevel[8] * 0.005));
                if (_root.save.permaBanPenalty[20] == 3)
                {
                    finalExp = Math.floor(finalExp * 3);
                }
                else if (_root.save.permaBanPenalty[20] == 2)
                {
                    finalExp = Math.floor(finalExp * 2.2);
                }
                else if (_root.save.permaBanPenalty[20] == 1)
                {
                    finalExp = Math.floor(finalExp * 1.8);
                }

                if (_root.save.careerLevel[8] >= 100)
                {
                    finalFcgCash = Math.floor(finalFcgCash * 1.5);
                }

                _root.gainEXP(finalExp, 12);
                _root.save.fcgExp += finalFcgExp;
                _root.save.fcgCash += finalFcgCash;
                _root.gainBlueCoin(Math.floor(finalFcgExp / 2 * (1 + _root.curCareerLevel[8] * 0.01)));
                _root.gainCareerEXP(8, Math.floor(500 + finalFcgExp * 15), true);
                _root.gainCyborgEXP(Math.ceil(2 * (_root.cyborgActTime[op] / 20) + _root.cyborgActCost[op] / 10));
                _root.dispNews(175, "[Cyborg] Epic win! (+" + _root.withComma(finalExp) + " EXP)");
                _root.dispNews(175,
                    "[Cyborg] You have gained " + _root.withComma(finalFcgExp) + " FCG EXP + " +
                    _root.withComma(finalFcgCash) + " FCG Cash!");
            }
            else
            {
                var target = 500.0;
                var finalFcgExp = 5.0;
                var finalFcgCash = 10.0;
                _root.save["fcgStreak" + fDiff] = 0;
                _root.save.fcgStreak = 0;
                _root.save.fcgLose += 1;
                target = Math.floor(target * (1 + _root.save.fcgLevel * 0.02) * (1 + Math.random() * 0.05));
                finalFcgExp = Math.floor(finalFcgExp * (1 + _root.save.fcgLevel * 0.005) * (1 + Math.random() * 0.05));
                finalFcgCash =
                    Math.floor(finalFcgCash * (1 + _root.save.fcgLevel * 0.005) * (0.7 + Math.random() * 0.4));
                if (_root.save.powerUserTime > 0 && _root.save.banPenalty[9] == 1)
                {
                    target = Math.floor(target * 1.95);
                    finalFcgCash = Math.floor(finalFcgCash * 2);
                }
                else if (_root.save.powerUserTime > 0)
                {
                    target = Math.floor(target * 1.5);
                    finalFcgCash = Math.floor(finalFcgCash * 2);
                }
                else if (_root.save.banPenalty[9] == 1)
                {
                    target = Math.floor(target * 1.3);
                }

                target = Math.floor(target * (1 + _root.save.petStat[6] * 0.002));
                var finalExp =
                    Math.ceil(Math.pow(_root.save.level, 0.6) * Math.max(_root.boostMax, _root.save.boost) / 100) *
                    target;
                _root.gainEXP(finalExp, 12);
                _root.save.fcgExp += finalFcgExp;
                _root.save.fcgCash += finalFcgCash;
                _root.gainBlueCoin(Math.floor(finalFcgExp / 2 * (1 + _root.curCareerLevel[8] * 0.01)));
                _root.gainCareerEXP(8, Math.floor(500 + finalFcgExp * 15), true);
                _root.dispNews(175, "[Cyborg] Epic lose! (+" + _root.withComma(finalExp) + " EXP)");
                _root.dispNews(175,
                    "[Cyborg] You have gained " + _root.withComma(finalFcgExp) + " FCG EXP + " +
                    _root.withComma(finalFcgCash) + " FCG Cash!");
            }
        }
        else if (op == 20)
        {
            var chaos1 = random(200) + 1;
            if (_root.save.careerLevel[12] >= 200 && Math.random() < 0.03)
            {
                chaos1 = random(20) + 1;
            }

            if (Math.random() < 0.05 && _root.save.fishStreak >= 2)
            {
                cybFishCurrent = 59;
            }
            else if (chaos1 <= 3 && _root.save.fishStreak >= 5)
            {
                var chaos = random(100) + 1;
                if (chaos <= 4 && _root.save.fishLevel >= 25)
                {
                    cybFishCurrent = 3;
                }
                else if (chaos <= 20 && _root.save.fishLevel >= 15)
                {
                    cybFishCurrent = 2;
                }
                else
                {
                    cybFishCurrent = 1;
                }
            }
            else if (chaos1 <= 6 && _root.save.fishStreak >= 4)
            {
                var chaos = random(100) + 1;
                if (chaos <= 4 && _root.save.fishLevel >= 25)
                {
                    cybFishCurrent = 6;
                }
                else if (chaos <= 20 && _root.save.fishLevel >= 15)
                {
                    cybFishCurrent = 5;
                }
                else
                {
                    cybFishCurrent = 4;
                }
            }
            else if (chaos1 <= 12 && _root.save.fishStreak >= 3)
            {
                var chaos = random(100) + 1;
                var tempChance = _root.save.fishLevel;
                if (chaos <= tempChance)
                {
                    cybFishCurrent = 8;
                }
                else if (chaos <= 50)
                {
                    cybFishCurrent = 7;
                }
                else if (chaos <= 50 + tempChance)
                {
                    cybFishCurrent = 10;
                }
                else if (chaos <= 100)
                {
                    cybFishCurrent = 9;
                }
            }
            else if (chaos1 <= 17 && _root.save.fishStreak >= 6)
            {
                if (_root.save.fishStreak >= 10 && _root.save.fishLevel >= 20 && Math.random() < 0.6)
                {
                    cybFishCurrent = 54;
                }
                else if (_root.save.fishStreak >= 9 && _root.save.fishLevel >= 15 && Math.random() < 0.7)
                {
                    cybFishCurrent = 61;
                }
                else if (_root.save.fishStreak >= 8 && _root.save.fishLevel >= 10 && Math.random() < 0.8)
                {
                    cybFishCurrent = 53;
                }
                else if (_root.save.fishStreak >= 7 && _root.save.fishLevel >= 5 && Math.random() < 0.9)
                {
                    cybFishCurrent = 60;
                }
                else
                {
                    cybFishCurrent = 52;
                }
            }
            else if ((chaos1 <= 20 && _root.save.fishStreak >= 5) || (_root.save.eliteFisherTime > 0 &&
                                                                      _root.save.fishStreak >= 2 &&
                                                                      Math.random() < 0.02 && chaos1 > 20))
            {
                if (_root.save.fishStreak >= 11 && _root.save.fishLevel >= 30 && Math.random() < 0.4)
                {
                    cybFishCurrent = 58;
                }
                else if (_root.save.fishStreak >= 9 && _root.save.fishLevel >= 20 && Math.random() < 0.6)
                {
                    cybFishCurrent = 57;
                }
                else if (_root.save.fishStreak >= 7 && _root.save.fishLevel >= 10 && Math.random() < 0.8)
                {
                    cybFishCurrent = 56;
                }
                else
                {
                    cybFishCurrent = 55;
                }
            }
            else if (chaos1 <= 130)
            {
                var ftc = 11.0;
                var fL = _root.save.fishLevel + 1 + Math.ceil(Math.sqrt(_root.save.fishStreak / 3));
                if (_root.save.eliteFisherTime > 0)
                {
                    fL += 4;
                }

                var i = 1;
                while (i <= fL)
                {
                    if (ftc < 30)
                    {
                        var blah = _root.save.fishLevel - (double)_root.fishArray[ftc + 1].fishLevel.GetValue();
                        if (blah > 0)
                        {
                            chance = 45 + Math.pow(blah, 0.7) * 3;
                        }
                        else
                        {
                            chance = 35 - Math.pow(Math.abs(blah), 1.1) * 3;
                        }

                        if (ftc >= 20)
                        {
                            chance *= 0.6;
                        }

                        if (chance > 80)
                        {
                            chance = 80;
                        }

                        if (Math.random() < chance / 100)
                        {
                            ftc += 1;
                        }
                    }

                    i++;
                }

                if (Math.random() < 0.3)
                {
                    ftc = 11 + random(ftc - 10);
                }

                cybFishCurrent = ftc;
            }
            else
            {
                var ftc = 31.0;
                var fL = _root.save.fishLevel + 1 + Math.ceil(Math.sqrt(_root.save.fishStreak / 3));
                if (_root.save.eliteFisherTime > 0)
                {
                    fL += 4;
                }

                var i = 1;
                var blah = 0.0;
                while (i <= fL)
                {
                    if (ftc < 60)
                    {
                        if (ftc >= 50)
                        {
                            blah = _root.save.fishLevel - (double)_root.fishArray[ftc + 21].fishLevel.GetValue();
                        }
                        else
                        {
                            blah = _root.save.fishLevel - (double)_root.fishArray[ftc + 1].fishLevel.GetValue();
                        }

                        if (blah > 0)
                        {
                            chance = 45 + Math.pow(blah, 0.7) * 3;
                        }
                        else
                        {
                            chance = 35 - Math.pow(Math.abs(blah), 1.1) * 3;
                            if (ftc >= 50)
                            {
                                chance *= 0.1;
                            }
                        }

                        if (ftc >= 40)
                        {
                            chance *= 0.6;
                        }

                        if (ftc >= 50)
                        {
                            chance *= 0.5;
                        }

                        if (ftc >= 50 && _root.save.fishStreak < (ftc - 50) * 2)
                        {
                            chance *= 0.3;
                        }

                        if (chance > 80)
                        {
                            chance = 80;
                        }

                        if (Math.random() < chance / 100)
                        {
                            ftc += 1;
                        }
                    }

                    i++;
                }

                if (ftc > 50 && Math.random() < 0.95)
                {
                    ftc = 50 + random(ftc - 49);
                    if (Math.random() < 0.75)
                    {
                        ftc = 50;
                    }
                }

                if (Math.random() < 0.3)
                {
                    ftc = 31 + random(ftc - 30);
                }

                if (ftc > 50)
                {
                    ftc += 20;
                }

                cybFishCurrent = ftc;
            }

            var cybFishCurrentExp =
                Math.floor(_root.fishArray[cybFishCurrent].fishExp * (1 + _root.curCareerLevel[12] * 0.01));
            var cybFishCate = _root.fishArray[cybFishCurrent].fishCate;
            var cybFishSpec = _root.fishArray[cybFishCurrent].fishSpec;
            var cybFishLev = _root.fishArray[cybFishCurrent].fishLevel;
            var cybFishAExp =
                Math.floor(_root.fishArray[cybFishCurrent].fishAExp * (1 + _root.curCareerLevel[12] * 0.005));
            if (_root.save.eliteFisherTime > 0)
            {
                cybFishAExp = Math.floor(cybFishAExp * 1.5);
            }

            var tempName = "";
            if (cybFishCate == "Fish" || cybFishCate == "Junk")
            {
                tempName = "Lv. " + cybFishLev + " " + cybFishCate;
            }
            else if (cybFishLev == null)
            {
                tempName = cybFishCate;
            }
            else
            {
                tempName = cybFishLev + " " + cybFishCate;
            }

            if ((Math.random() < _root.calcPerf(op) / 100 && (_root.save.fishStreak < 250 || Math.random() < 0.7)) ||
                cybFishSpec == "Manual+")
            {
                _root.save.fishStreak += 1;
                if (_root.save.fishBestStreak < _root.save.fishStreak)
                {
                    _root.save.fishBestStreak = _root.save.fishStreak;
                }

                var streakBonus = _root.save.fishStreak;
                if (_root.save.fishStreak > 10)
                {
                    streakBonus = 9 + Math.ceil(_root.save.fishStreak / 10);
                }

                if (_root.save.fishStreak > 100)
                {
                    streakBonus = 20;
                }

                if (_root.save.fishStreak > 1000)
                {
                    streakBonus = 0;
                }

                _root.save.fishScore += cybFishCurrentExp * (200 + streakBonus * 50);
                _root.save.fishScoreToday += cybFishCurrentExp * (200 + streakBonus * 50);
                _root.save.fishExp += cybFishCurrentExp + streakBonus;
                _root.gainCareerEXP(12, 100 + cybFishCurrentExp * 3 + streakBonus * 5 + _root.save.fishLevel, true);
                if (_root.save.permaBanPenalty[35] == 3)
                {
                    _root.gainGreenCoin(30000 + streakBonus * 6000);
                }
                else if (_root.save.permaBanPenalty[35] == 2)
                {
                    _root.gainGreenCoin(20000 + streakBonus * 4000);
                }
                else if (_root.save.permaBanPenalty[35] == 1)
                {
                    _root.gainGreenCoin(15000 + streakBonus * 3000);
                }
                else
                {
                    _root.gainGreenCoin(5000 + streakBonus * 1000);
                }

                _root.gainBlueCoin(10 + streakBonus * 2);
                _root.dispNews(175,
                    "[Cyborg] Fishing Mastery increased! (+" + _root.withComma(cybFishCurrentExp + streakBonus) + ")");
                var expToGain = Math.floor(cybFishAExp * Math.pow(_root.save.level, 0.6) * _root.save.boost / 100 *
                                           (1 + streakBonus / 20));
                if (_root.save.permaBanPenalty[6] == 3)
                {
                    expToGain = Math.floor(expToGain * 3);
                }
                else if (_root.save.permaBanPenalty[6] == 2)
                {
                    expToGain = Math.floor(expToGain * 2.2);
                }
                else if (_root.save.permaBanPenalty[6] == 1)
                {
                    expToGain = Math.floor(expToGain * 1.8);
                }

                if (cybFishCurrent == 52)
                {
                    _root.save.awesomeRefill += 1;
                }

                if (cybFishCurrent == 53)
                {
                    _root.save.gardenFertilizer += 1;
                }

                if (cybFishCurrent == 54)
                {
                    _root.save.gardenMegaFertilizer += 1;
                }

                if (cybFishCurrent == 55)
                {
                    _root.save.mysteryBox[1] += 1;
                }

                if (cybFishCurrent == 56)
                {
                    _root.save.mysteryBox[7] += 1;
                }

                if (cybFishCurrent == 57)
                {
                    _root.save.mysteryBox[8] += 1;
                }

                if (cybFishCurrent == 58)
                {
                    _root.save.mysteryBox[4] += 1;
                }

                if (cybFishCurrent == 59)
                {
                    _root.gainWhiteCoin(1);
                }

                if (cybFishCurrent == 60)
                {
                    _root.save.boostPotion += 1;
                }

                if (cybFishCurrent == 61)
                {
                    _root.save.megaBoostPotion += 1;
                }

                _root.gainEXP(expToGain, 22);
                _root.dispNews(175,
                    "[Cyborg] PERFECT CATCH (" + _root.save.fishStreak + "x)! " + tempName + " GET! (+" +
                    _root.withComma(expToGain) + " EXP)");
                if (_root.save.questType == "Result")
                {
                    if (_root.save.questSubtype == "Perfect" || _root.save.questSubtype == "Success")
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Perfect Streak")
                    {
                        if (_root.save.questCount < _root.save.fishStreak)
                        {
                            _root.save.questCount = _root.save.fishStreak;
                        }
                    }
                }

                if (_root.save.fishLevel > 30)
                {
                    if (_root.save.fishLevel > 50)
                    {
                        expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.03 - 0.3));
                    }
                    else
                    {
                        expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.05 - 1.3));
                    }

                    _root.gainEXP(expToGain, 22);
                    _root.dispNews(175, "[Cyborg] Bonus LEGEND EXP gained! (+" + _root.withComma(expToGain) + " EXP)");
                }

                if (_root.save.fishStreak >= 3)
                {
                    _root.gainCyborgEXP(3);
                }
                else
                {
                    _root.gainCyborgEXP(2);
                }

                _root.save.fishPerfect += 1;
                _root.save.fishTotal += 1;
                _root.save.fishFound[cybFishCurrent] += 1;
                _root.save.fishLeft[cybFishCurrent] += 1;
                _root.gainBoost(1, 3);
            }
            else
            {
                _root.save.fishStreak = 0;
                _root.save.fishScore += cybFishCurrentExp * 100;
                _root.save.fishScoreToday += cybFishCurrentExp * 100;
                _root.save.fishExp += cybFishCurrentExp;
                _root.gainCareerEXP(12, 50 + cybFishCurrentExp * 3 + _root.save.fishLevel, true);
                if (_root.save.permaBanPenalty[35] == 3)
                {
                    _root.gainGreenCoin(15000);
                }
                else if (_root.save.permaBanPenalty[35] == 2)
                {
                    _root.gainGreenCoin(10000);
                }
                else if (_root.save.permaBanPenalty[35] == 1)
                {
                    _root.gainGreenCoin(7500);
                }
                else
                {
                    _root.gainGreenCoin(2500);
                }

                _root.gainBlueCoin(5);
                _root.dispNews(175,
                    "[Cyborg] Fishing Mastery increased! (+" + _root.withComma(cybFishCurrentExp) + ")");
                if (cybFishCurrent == 52)
                {
                    _root.save.awesomeRefill += 1;
                }

                if (cybFishCurrent == 53)
                {
                    _root.save.gardenFertilizer += 1;
                }

                if (cybFishCurrent == 54)
                {
                    _root.save.gardenMegaFertilizer += 1;
                }

                if (cybFishCurrent == 55)
                {
                    _root.save.mysteryBox[1] += 1;
                }

                if (cybFishCurrent == 56)
                {
                    _root.save.mysteryBox[7] += 1;
                }

                if (cybFishCurrent == 57)
                {
                    _root.save.mysteryBox[8] += 1;
                }

                if (cybFishCurrent == 58)
                {
                    _root.save.mysteryBox[4] += 1;
                }

                if (cybFishCurrent == 59)
                {
                    _root.gainWhiteCoin(1);
                }

                if (cybFishCurrent == 60)
                {
                    _root.save.boostPotion += 1;
                }

                if (cybFishCurrent == 61)
                {
                    _root.save.megaBoostPotion += 1;
                }

                var expToGain =
                    Math.floor(cybFishAExp * Math.pow(_root.save.level, 0.6) * _root.save.boost / 100 * 0.8);
                if (_root.save.permaBanPenalty[6] == 3)
                {
                    expToGain = Math.floor(expToGain * 2);
                }
                else if (_root.save.permaBanPenalty[6] == 2)
                {
                    expToGain = Math.floor(expToGain * 1.6);
                }
                else if (_root.save.permaBanPenalty[6] == 1)
                {
                    expToGain = Math.floor(expToGain * 1.4);
                }

                _root.gainEXP(expToGain, 22);
                _root.dispNews(175, "[Cyborg] " + tempName + " GET! (+" + _root.withComma(expToGain) + " EXP)");
                if (_root.save.fishLevel > 30)
                {
                    if (_root.save.fishLevel > 50)
                    {
                        expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.03 - 0.3));
                    }
                    else
                    {
                        expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.05 - 1.3));
                    }

                    _root.gainEXP(expToGain, 22);
                    _root.dispNews(175, "[Cyborg] Bonus LEGEND EXP gained! (+" + _root.withComma(expToGain) + " EXP)");
                }

                if (_root.save.questType == "Result")
                {
                    if (_root.save.questSubtype == "Success")
                    {
                        _root.save.questCount += 1;
                    }
                }

                _root.gainCyborgEXP(1);
                _root.save.fishTotal += 1;
                _root.save.fishFound[cybFishCurrent] += 1;
                _root.save.fishLeft[cybFishCurrent] += 1;
            }

            if (_root.save.questType == "Junk" && cybFishCurrent >= 11 && cybFishCurrent <= 30)
            {
                if (_root.save.questSubtype == "Any")
                {
                    _root.save.questCount += 1;
                }

                if (_root.save.questSubtype == "Lv. 5+" && cybFishCurrent >= 15)
                {
                    _root.save.questCount += 1;
                }

                if (_root.save.questSubtype == "Lv. 10+" && cybFishCurrent >= 20)
                {
                    _root.save.questCount += 1;
                }

                if (_root.save.questSubtype == "Lv. 20+" && cybFishCurrent >= 25)
                {
                    _root.save.questCount += 1;
                }

                if (_root.save.questSubtype == "Lv. 30" && cybFishCurrent >= 30)
                {
                    _root.save.questCount += 1;
                }
            }

            if (_root.save.questType == "Fish" &&
                ((cybFishCurrent >= 31 && cybFishCurrent <= 50) || cybFishCurrent >= 71))
            {
                if (_root.save.questSubtype == "Any")
                {
                    _root.save.questCount += 1;
                }

                if (_root.save.questSubtype == "Lv. 5+" && cybFishCurrent >= 35)
                {
                    _root.save.questCount += 1;
                }

                if (_root.save.questSubtype == "Lv. 10+" && cybFishCurrent >= 40)
                {
                    _root.save.questCount += 1;
                }

                if (_root.save.questSubtype == "Lv. 20+" && cybFishCurrent >= 45)
                {
                    _root.save.questCount += 1;
                }

                if (_root.save.questSubtype == "Lv. 30" && cybFishCurrent >= 50)
                {
                    _root.save.questCount += 1;
                }
            }

            if (_root.save.questType == "Special Item")
            {
                if (cybFishCurrent <= 10 || cybFishCurrent >= 52)
                {
                    if (_root.save.questSubtype == "Any")
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Treasure Box" && cybFishCurrent >= 1 && cybFishCurrent <= 3)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Key" && cybFishCurrent >= 4 && cybFishCurrent <= 6)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Energy Drink" && cybFishCurrent >= 7 && cybFishCurrent <= 8)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Pet Food" && cybFishCurrent >= 9 && cybFishCurrent <= 10)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Energy Refill" && cybFishCurrent == 52)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Fertilizer" && cybFishCurrent == 53)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Mega Fertilizer" && cybFishCurrent == 54)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Mystery Box" && cybFishCurrent >= 55 && cybFishCurrent <= 58)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Explosion Crate" && cybFishCurrent == 55)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Awesome Crate" && cybFishCurrent == 56)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Chaos Crate" && cybFishCurrent == 57)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Legendary Box" && cybFishCurrent == 58)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "White Coin" && cybFishCurrent == 59)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Regular Boost Potion" && cybFishCurrent == 60)
                    {
                        _root.save.questCount += 1;
                    }

                    if (_root.save.questSubtype == "Mega Boost Potion" && cybFishCurrent == 61)
                    {
                        _root.save.questCount += 1;
                    }
                }
            }
        }

        _root.save.botOp[op] += 1;
    }

    // MATCH: frame_3/DoAction.as:checkCyborg()
    public void checkCyborg()
    {
        if (_root.save.bestLevel >= 1250)
        {
            if ((_root.save.botCurrentOp >= 1 && _root.save.botCurrentOp <= 7) || _root.save.botCurrentOp == 11)
            {
                if (_root.save.featureArcade && _root.house._currentframe != 10)
                {
                    _root.save.botActive = true;
                }
                else
                {
                    _root.save.botActive = false;
                }
            }
            else if (_root.save.botCurrentOp >= 8 && _root.save.botCurrentOp <= 10)
            {
                if (_root.save.featureStadium && _root.house._currentframe != 11)
                {
                    _root.save.botActive = true;
                }
                else
                {
                    _root.save.botActive = false;
                }
            }
            else if (_root.save.botCurrentOp >= 12 && _root.save.botCurrentOp <= 19)
            {
                if (_root.save.featureTukkunFCG && _root.house._currentframe != 12)
                {
                    _root.save.botActive = true;
                }
                else
                {
                    _root.save.botActive = false;
                }
            }
            else if (_root.save.botCurrentOp == 20)
            {
                if (_root.save.featureFishing && _root.house._currentframe != 22 &&
                    _root.save.fishExamLeft <= 0)
                {
                    _root.save.botActive = true;
                }
                else
                {
                    _root.save.botActive = false;
                }
            }

            if (_root.save.botEnergy <= 0)
            {
                _root.save.botEnergy = 0;
                _root.save.botActive = false;
            }

            if (_root.save.botCurrentOp == 0)
            {
                _root.save.botActive = true;
                _root.save.botCurrentOpNum = 1;
                _root.save.botCurrentOpMax = 1;
            }

            if (_root.cyborgWorking && _root.save.botActive == false)
            {
                _root.dispNews(176, "[Cyborg] Simulation Cyborg status: PAUSED");
            }

            if (_root.save.botActive)
            {
                if (_root.cyborgWorking == false)
                {
                    if (_root.save.botCurrentOp != 0)
                    {
                        _root.dispNews(177, "[Cyborg] Simulation Cyborg status: WORKING");
                    }
                    else
                    {
                        _root.dispNews(177, "[Cyborg] Simulation Cyborg status: RECHARGING");
                    }
                }

                if (_root.save.botCurrentOp != 0)
                {
                    _root.save.botEnergy -= 1;
                }

                _root.save.botCurrentOpTime += 1;
                if (_root.save.botCurrentOpTime >= _root.cyborgActTime[_root.save.botCurrentOp])
                {
                    _root.save.botCurrentOpTime = 0;
                    _root.cyborgOp(_root.save.botCurrentOp);
                    _root.save.botCurrentOpNum += 1;
                    if (_root.save.botCurrentOpNum > _root.save.botCurrentOpMax)
                    {
                        if (_root.save.botCurrentOp != 0)
                        {
                            _root.save.botCurrentOp = 0;
                            _root.dispNews(178, "[Cyborg] Simulation Cyborg status: FINISHED");
                        }

                        _root.save.botActive = true;
                        _root.save.botCurrentOpNum = 1;
                        _root.save.botCurrentOpMax = 1;
                    }
                }
            }

            _root.cyborgWorking = _root.save.botActive;
        }
    }

    // MATCH: frame_3/DoAction.as:gainCyborgPoint()
    public void gainCyborgPoint(double amount)
    {
        if (!isNaN(amount) && amount > 0 && amount != Infinity && _root.save.bestLevel >= 1250)
        {
            _root.save.botPoint += Math.floor(amount);
            if (_root.save.botPoint > 9999999999)
            {
                _root.save.botPoint = 9999999999;
            }

            if (Math.floor(amount) >= 2)
            {
                _root.dispNews(174,
                    "[Cyborg] Gained " + _root.withComma(amount) + " Cyborg Points! You now have " +
                    _root.withComma(_root.save.botPoint) + ".");
            }
            else
            {
                _root.dispNews(174,
                    "[Cyborg] Gained 1 Cyborg Point! You now have " + _root.withComma(_root.save.botPoint) + ".");
            }
        }
    }

    // MATCH: frame_3/DoAction.as:gainCyborgEXP()
    public void gainCyborgEXP(double amount)
    {
        if (!isNaN(amount) && amount > 0 && amount != Infinity)
        {
            var expReq = _root.save.botLevel * 5;
            if (_root.save.botLevel > 100)
            {
                expReq = _root.save.botLevel * (_root.save.botLevel - 99) * 5;
            }

            if (_root.save.botLevel == 200)
            {
                expReq = -1;
            }

            if (amount > expReq && expReq > 0)
            {
                amount = expReq;
            }

            _root.save.botExp += Math.floor(amount);
            _root.dispNews(179, "[Cyborg] Simulation Cyborg gained " + _root.withComma(amount) + " EXP!");
            if (_root.save.botExp >= expReq && expReq > 0)
            {
                _root.save.botExp -= expReq;
                _root.save.botLevel += 1;
                _root.dispNews(180,
                    "[Cyborg] Simulation Cyborg LEVEL UP! Simulation Cyborg is now Lv. " +
                    _root.withComma(_root.save.botLevel) + ".");
            }
        }
    }

    // MATCH: frame_3/DoAction.as:equipModule()
    public void equipModule(double modLoc)
    {
        if (_root.save.progModuleTier[modLoc] > 0)
        {
            _root.organizeModule();
            if (_root.save.progModuleSize[modLoc] <= _root.moduleSlotLeft)
            {
                var im = _root.save.progModuleSize[modLoc] - 1;
                var i = 0;
                while (i <= im)
                {
                    _root.swapModulePiece(modLoc + i, _root.moduleSlotOccupied + i + 1);
                    i++;
                }
            }
            else
            {
                _root.showPopup("Error", "Insufficient space. This module is too large.");
            }
        }
        else
        {
            _root.showPopup("Error",
                "An unexpected error has occurred. The module you are trying to equip appears to be non-existent.");
        }

        _root.organizeModule();
    }

    // MATCH: frame_3/DoAction.as:unequipModule()
    public void unequipModule(double modLoc)
    {
        if (_root.save.progModuleTier[modLoc] > 0)
        {
            _root.organizeModule();
            if (_root.save.progModuleSize[modLoc] <= _root.moduleInvSlotLeft)
            {
                var im = _root.save.progModuleSize[modLoc] - 1;
                var i = 0;
                while (i <= im)
                {
                    _root.swapModulePiece(modLoc + i, _root.moduleInvSlotOccupied + i + 11);
                    i++;
                }
            }
            else
            {
                _root.showPopup("Error", "Insufficient inventory space. This module is too large.");
            }
        }
        else
        {
            _root.showPopup("Error",
                "An unexpected error has occurred. The module you are trying to unequip appears to be non-existent.");
        }

        _root.organizeModule();
    }

    // MATCH: frame_3/DoAction.as:organizeModule()
    public void organizeModule()
    {
        var i = 1;
        while (i <= 8)
        {
            if (_root.save.progModuleTier[i] == 0)
            {
                var mustSwap = false;
                var j = i + 1;
                while (j <= 9)
                {
                    if (_root.save.progModuleTier[j] != 0)
                    {
                        mustSwap = true;
                        j = 10;
                    }

                    j++;
                }

                if (mustSwap)
                {
                    j = i + 1;
                    while (j <= 9)
                    {
                        _root.swapModulePiece(j - 1, j);
                        j++;
                    }

                    i -= 1;
                }
                else
                {
                    i = 9;
                }
            }

            i++;
        }

        i = 11;
        while (i <= 110)
        {
            if (_root.save.progModuleTier[i] == 0)
            {
                var mustSwap = false;
                var j = i + 1;
                while (j <= 110)
                {
                    if (_root.save.progModuleTier[j] != 0)
                    {
                        mustSwap = true;
                        j = 111;
                    }

                    j++;
                }

                if (mustSwap)
                {
                    j = i + 1;
                    while (j <= 110)
                    {
                        _root.swapModulePiece(j - 1, j);
                        j++;
                    }

                    i -= 1;
                }
                else
                {
                    i = 111;
                }
            }

            i++;
        }

        _root.moduleSlotOccupied = 0;
        i = 1;
        while (i <= 9)
        {
            if (_root.save.progModuleTier[i] != 0)
            {
                _root.moduleSlotOccupied += 1;
            }
            else
            {
                i = 10;
            }

            i++;
        }

        _root.moduleInvSlotOccupied = 0;
        i = 11;
        while (i <= 110)
        {
            if (_root.save.progModuleTier[i] != 0)
            {
                _root.moduleInvSlotOccupied += 1;
            }
            else
            {
                i = 111;
            }

            i++;
        }

        _root.moduleSlotLeft = 9 - _root.moduleSlotOccupied;
        _root.moduleInvSlotLeft = _root.save.progModuleSlot - _root.moduleInvSlotOccupied;
    }

    // MATCH: frame_3/DoAction.as:buyModule()
    public void buyModule(double modLoc)
    {
        _root.organizeModule();
        var modName = _root.save.progModuleName[modLoc];
        var modTier = _root.save.progModuleTier[modLoc];
        var modSize = _root.save.progModuleSize[modLoc];
        var modShiny = _root.save.progModuleShiny[modLoc];
        var modType = _root.save.progModuleType[modLoc];
        var modChance = _root.save.progModuleChance[modLoc];
        var modEffect = _root.save.progModuleEffect[modLoc];
        var modCost = _root.save.progModuleCost[modLoc];
        var shinyCost = 0.0;
        if (modShiny == 1)
        {
            shinyCost = Math.floor((30 + modTier * 2 + modTier * modTier / 2) * modSize);
            if (modTier == 9)
            {
                shinyCost = 100 * modSize;
            }
        }

        if (modTier > 0)
        {
            if (_root.save.shinyToken < shinyCost)
            {
                _root.showPopup("Error",
                    "You don\'t have enough Shiny Tokens to buy this module. Buy more in the Mystery Shop!");
            }
            else if (_root.save.whiteCoin >= modCost && _root.moduleInvSlotLeft >= modSize)
            {
                _root.save.shinyToken -= shinyCost;
                _root.save.whiteCoin -= modCost;
                if (_root.save.progModuleSize[modLoc] <= _root.moduleInvSlotLeft)
                {
                    var i = 0;
                    while (i <= modSize - 1)
                    {
                        _root.swapModulePiece(_root.moduleInvSlotOccupied + i + 11, modLoc + i);
                        i++;
                    }
                }
            }
            else if (_root.save.whiteCoin < modCost)
            {
                _root.showPopup("Error", "You don\'t have enough White Coins to buy this module.");
            }
            else
            {
                _root.showPopup("Error", "You don\'t have sufficient inventory slots to buy this module.");
            }
        }
        else
        {
            _root.showPopup("Error",
                "An unexpected error has occurred. The module you are trying to buy appears to be non-existent.");
        }

        _root.organizeModule();
    }

    // MATCH: frame_3/DoAction.as:getModule()
    public void getModule(string modName, double modTier, double modSize, double modShiny,
        double modType, double modChance, double modEffect, double modCost)
    {
        if (modTier > 0)
        {
            _root.organizeModule();
            if (modSize <= _root.moduleInvSlotLeft)
            {
                _root.save.progModuleName[_root.moduleInvSlotOccupied + 11] = modName;
                _root.save.progModuleTier[_root.moduleInvSlotOccupied + 11] = modTier;
                _root.save.progModuleSize[_root.moduleInvSlotOccupied + 11] = modSize;
                _root.save.progModuleShiny[_root.moduleInvSlotOccupied + 11] = modShiny;
                _root.save.progModuleType[_root.moduleInvSlotOccupied + 11] = modType;
                _root.save.progModuleChance[_root.moduleInvSlotOccupied + 11] = modChance;
                _root.save.progModuleEffect[_root.moduleInvSlotOccupied + 11] = modEffect;
                _root.save.progModuleCost[_root.moduleInvSlotOccupied + 11] = modCost;
                var i = 1;
                while (i <= modSize - 1)
                {
                    _root.deleteModulePiece(_root.moduleInvSlotOccupied + i + 11);
                    _root.save.progModuleTier[_root.moduleInvSlotOccupied + i + 11] = -1;
                    i++;
                }
            }
            else
            {
                _root.showPopup("Error", "Insufficient inventory space. This module is too large.");
            }
        }
        else
        {
            _root.showPopup("Error",
                "An unexpected error has occurred. The module you are trying to get appears to be non-existent.");
        }

        _root.organizeModule();
    }

    // MATCH: frame_3/DoAction.as:sellModule()
    public void sellModule(double modLoc)
    {
        if (_root.save.progModuleTier[modLoc] > 0)
        {
            if (!isNaN(_root.save.progModuleCost[modLoc]) && _root.save.progModuleCost[modLoc] > 0)
            {
                _root.save.whiteCoin += Math.ceil(_root.save.progModuleCost[modLoc] / 2);
            }

            _root.organizeModule();
            var mi = _root.save.progModuleSize[modLoc] - 1;
            var i = 0;
            while (i <= mi)
            {
                _root.deleteModulePiece(modLoc + i);
                i++;
            }
        }
        else
        {
            _root.showPopup("Error",
                "An unexpected error has occurred. The module you are trying to sell appears to be non-existent.");
        }

        _root.organizeModule();
    }

    // MATCH: frame_3/DoAction.as:swapModulePiece()
    public void swapModulePiece(double pieceA, double pieceB)
    {
        _root.copyModulePiece(pieceA, 141);
        _root.copyModulePiece(pieceB, pieceA);
        _root.copyModulePiece(141, pieceB);
        _root.deleteModulePiece(141);
    }

    // MATCH: frame_3/DoAction.as:copyModulePiece()
    public void copyModulePiece(double pieceOrig, double pieceDest)
    {
        _root.save.progModuleName[pieceDest] = _root.save.progModuleName[pieceOrig];
        _root.save.progModuleTier[pieceDest] = _root.save.progModuleTier[pieceOrig];
        _root.save.progModuleSize[pieceDest] = _root.save.progModuleSize[pieceOrig];
        _root.save.progModuleShiny[pieceDest] = _root.save.progModuleShiny[pieceOrig];
        _root.save.progModuleType[pieceDest] = _root.save.progModuleType[pieceOrig];
        _root.save.progModuleChance[pieceDest] = _root.save.progModuleChance[pieceOrig];
        _root.save.progModuleEffect[pieceDest] = _root.save.progModuleEffect[pieceOrig];
        _root.save.progModuleCost[pieceDest] = _root.save.progModuleCost[pieceOrig];
    }

    // MATCH: frame_3/DoAction.as:deleteModulePiece()
    public void deleteModulePiece(double pieceA)
    {
        _root.save.progModuleName[pieceA] = "";
        _root.save.progModuleTier[pieceA] = 0;
        _root.save.progModuleSize[pieceA] = 0;
        _root.save.progModuleShiny[pieceA] = 0;
        _root.save.progModuleType[pieceA] = 0;
        _root.save.progModuleChance[pieceA] = 0;
        _root.save.progModuleEffect[pieceA] = 0;
        _root.save.progModuleCost[pieceA] = 0;
    }

    // MATCH: frame_3/DoAction.as:restockModule()
    public void restockModule(double typ)
    {
        var curPos = 111;
        var tierUpChance = .0;
        var minTier = .0;
        var maxTier = .0;
        var shinyChance = .0;
        if (typ == 1)
        {
            tierUpChance = 0.5;
            minTier = 1;
            maxTier = 6;
            shinyChance = 0.02;
        }
        else if (typ == 2)
        {
            tierUpChance = 0.6;
            minTier = 3;
            maxTier = 7;
            shinyChance = 0.05;
        }
        else if (typ == 3)
        {
            tierUpChance = 0.7;
            minTier = 5;
            maxTier = 8;
            shinyChance = 0.15;
        }
        else if (typ == 4)
        {
            tierUpChance = 0.8;
            minTier = 7;
            maxTier = 9;
            shinyChance = 0.3;
        }
        else
        {
            tierUpChance = 0.42;
            minTier = 1;
            maxTier = 4 + _root.save.banned;
            shinyChance = 0.008;
            if (_root.save.bestLevel >= 9000)
            {
                shinyChance = 0.069;
            }

            tierUpChance += _root.save.whiteCoin / 2500000;
            if (_root.dow == 0 || _root.dow == 2 || _root.dow == 4 || _root.dow == 6)
            {
                tierUpChance += 0.1;
            }

            if (_root.dow == 5 || _root.dow == 6)
            {
                shinyChance += 0.1;
            }

            if (_root.clock_year == 2015 && _root.clock_month == 1 && _root.clock_date >= 25)
            {
                shinyChance += 0.2;
            }
        }

        var i = 111;
        while (i <= 140)
        {
            _root.deleteModulePiece(i);
            _root.save.progModuleTier[i] = -1;
            i++;
        }

        while (curPos <= 140)
        {
            var maxSize = 141 - curPos;
            var tempModuleType = random(42) + 1;
            if (Math.random() < 0.2)
            {
                tempModuleType = random(4) + 1;
            }

            if (tempModuleType == 5 || tempModuleType == 13 || tempModuleType == 22 || tempModuleType == 24 ||
                tempModuleType == 25 || tempModuleType == 27 || (tempModuleType >= 33 && tempModuleType <= 39) ||
                tempModuleType == 41)
            {
                tempModuleType = random(42) + 1;
            }

            var tempShiny = 0;
            var tempTier = 1;
            i = 1;
            while (i <= 8)
            {
                if (Math.random() < shinyChance && maxSize >= 2)
                {
                    tempShiny = 1;
                }

                if ((Math.random() < tierUpChance && tempTier < maxTier) || tempTier < minTier)
                {
                    tempTier += 1;
                }
                else if (Math.random() < 0.5)
                {
                    i = 9;
                }

                i++;
            }

            var tempNameA = "";
            var tempSize = 0;
            var tempChance = 0.0;
            var tempEffect = 0.0;
            var tempCost = 0.0;
            if (tempModuleType == 1)
            {
                tempNameA = "EXP Module";
                tempSize = 1;
                tempChance = 1000;
                tempEffect = 15;
                tempCost = 25;
            }
            else if (tempModuleType == 2)
            {
                tempNameA = "Coin Module";
                tempSize = 1;
                tempChance = 1000;
                tempEffect = 15;
                tempCost = 10;
            }
            else if (tempModuleType == 3)
            {
                tempNameA = "Green Coin Module";
                tempSize = 1;
                tempChance = 1000;
                tempEffect = 250;
                tempCost = 10;
            }
            else if (tempModuleType == 4)
            {
                tempNameA = "Blue Coin Module";
                tempSize = 2;
                tempChance = 500;
                tempEffect = 2;
                tempCost = 25;
            }
            else if (tempModuleType == 5)
            {
                tempNameA = "White Coin Module";
                tempSize = 4;
                tempChance = 10;
                tempEffect = 1;
                tempCost = 250;
            }
            else if (tempModuleType == 6)
            {
                tempNameA = "Boost Module";
                tempSize = 2;
                tempChance = 250;
                tempEffect = 2;
                tempCost = 50;
            }
            else if (tempModuleType == 7)
            {
                tempNameA = "Boost Freeze Module";
                tempSize = 2;
                tempChance = 50;
                tempEffect = 5;
                tempCost = 100;
            }
            else if (tempModuleType == 8)
            {
                tempNameA = "1.5x EXP Module";
                tempSize = 2;
                tempChance = 100;
                tempEffect = 10;
                tempCost = 25;
            }
            else if (tempModuleType == 9)
            {
                tempNameA = "1.5x Coin Module";
                tempSize = 2;
                tempChance = 100;
                tempEffect = 10;
                tempCost = 10;
            }
            else if (tempModuleType == 10)
            {
                tempNameA = "Harvest Value Module";
                tempSize = 2;
                tempChance = 500;
                tempEffect = 100;
                tempCost = 25;
            }
            else if (tempModuleType == 11)
            {
                tempNameA = "Pet Mana Module";
                tempSize = 2;
                tempChance = 50;
                tempEffect = 1;
                tempCost = 25;
            }
            else if (tempModuleType == 12)
            {
                tempNameA = "Garden Point Module";
                tempSize = 2;
                tempChance = 500;
                tempEffect = 5;
                tempCost = 25;
            }
            else if (tempModuleType == 13)
            {
                tempNameA = "Randomfruit Module";
                tempSize = 4;
                tempChance = 100;
                tempEffect = 1;
                tempCost = 50;
            }
            else if (tempModuleType == 14)
            {
                tempNameA = "HP Recovery Module";
                tempSize = 1;
                tempChance = 2000;
                tempEffect = 25;
                tempCost = 25;
            }
            else if (tempModuleType == 15)
            {
                tempNameA = "MP Recovery Module";
                tempSize = 1;
                tempChance = 2000;
                tempEffect = 25;
                tempCost = 50;
            }
            else if (tempModuleType == 16)
            {
                tempNameA = "Rage Module";
                tempSize = 2;
                tempChance = 250;
                tempEffect = 3;
                tempCost = 50;
            }
            else if (tempModuleType == 17)
            {
                tempNameA = "Pixel Module";
                tempSize = 2;
                tempChance = 500;
                tempEffect = 1000;
                tempCost = 25;
            }
            else if (tempModuleType == 18)
            {
                tempNameA = "CM Module";
                tempSize = 2;
                tempChance = 500;
                tempEffect = 100;
                tempCost = 25;
            }
            else if (tempModuleType == 19)
            {
                tempNameA = "SCM Module";
                tempSize = 2;
                tempChance = 500;
                tempEffect = 1;
                tempCost = 25;
            }
            else if (tempModuleType == 20)
            {
                tempNameA = "Unobtainium Module";
                tempSize = 3;
                tempChance = 200;
                tempEffect = 1;
                tempCost = 50;
            }
            else if (tempModuleType == 21)
            {
                tempNameA = "Enhancer Fragment Module";
                tempSize = 1;
                tempChance = 500;
                tempEffect = 10;
                tempCost = 10;
            }
            else if (tempModuleType == 22)
            {
                tempNameA = "Bacon Module";
                tempSize = 3;
                tempChance = 200;
                tempEffect = 1;
                tempCost = 25;
            }
            else if (tempModuleType == 23)
            {
                tempNameA = "Crystal Module";
                tempSize = 3;
                tempChance = 100;
                tempEffect = 1;
                tempCost = 25;
            }
            else if (tempModuleType == 24)
            {
                tempNameA = "Ultimate Crystal Module";
                tempSize = 4;
                tempChance = 25;
                tempEffect = 1;
                tempCost = 50;
            }
            else if (tempModuleType == 25)
            {
                tempNameA = "Purple Button Module";
                tempSize = 3;
                tempChance = 200;
                tempEffect = 1;
                tempCost = 25;
            }
            else if (tempModuleType == 26)
            {
                tempNameA = "Career EXP Module";
                tempSize = 1;
                tempChance = 500;
                tempEffect = 50;
                tempCost = 10;
            }
            else if (tempModuleType == 27)
            {
                tempNameA = "100k Medal Module";
                tempSize = 3;
                tempChance = 200;
                tempEffect = 1;
                tempCost = 25;
            }
            else if (tempModuleType == 28)
            {
                tempNameA = "Stadium Token Module";
                tempSize = 1;
                tempChance = 500;
                tempEffect = 20;
                tempCost = 10;
            }
            else if (tempModuleType == 29)
            {
                tempNameA = "FCG Cash Module";
                tempSize = 1;
                tempChance = 500;
                tempEffect = 20;
                tempCost = 10;
            }
            else if (tempModuleType >= 30 && tempModuleType <= 39)
            {
                tempNameA = "LolMarket Lv. " + (tempModuleType - 29) + " Module";
                if (tempModuleType == 30)
                {
                    tempSize = 1;
                    tempChance = 10;
                    tempEffect = 1;
                    tempCost = 10;
                }
                else if (tempModuleType == 31)
                {
                    tempSize = 2;
                    tempChance = 10;
                    tempEffect = 1;
                    tempCost = 10;
                }
                else if (tempModuleType == 32)
                {
                    tempSize = 2;
                    tempChance = 10;
                    tempEffect = 1;
                    tempCost = 20;
                }
                else if (tempModuleType == 33)
                {
                    tempSize = 3;
                    tempChance = 15;
                    tempEffect = 1;
                    tempCost = 20;
                }
                else if (tempModuleType == 34)
                {
                    tempSize = 3;
                    tempChance = 15;
                    tempEffect = 1;
                    tempCost = 30;
                }
                else if (tempModuleType == 35)
                {
                    tempSize = 3;
                    tempChance = 15;
                    tempEffect = 1;
                    tempCost = 50;
                }
                else if (tempModuleType == 36)
                {
                    tempSize = 4;
                    tempChance = 20;
                    tempEffect = 1;
                    tempCost = 50;
                }
                else if (tempModuleType == 37)
                {
                    tempSize = 4;
                    tempChance = 20;
                    tempEffect = 1;
                    tempCost = 60;
                }
                else if (tempModuleType == 38)
                {
                    tempSize = 4;
                    tempChance = 20;
                    tempEffect = 1;
                    tempCost = 75;
                }
                else if (tempModuleType == 39)
                {
                    tempSize = 4;
                    tempChance = 20;
                    tempEffect = 1;
                    tempCost = 100;
                }
            }
            else if (tempModuleType == 40)
            {
                tempNameA = "Adventure Time Module";
                tempSize = 2;
                tempChance = 200;
                tempEffect = 2;
                tempCost = 25;
            }
            else if (tempModuleType == 41)
            {
                tempNameA = "Special Food Module";
                tempSize = 4;
                tempChance = 400;
                tempEffect = 1;
                tempCost = 10;
            }
            else if (tempModuleType == 42)
            {
                tempNameA = "Fatigue Recovery Module";
                tempSize = 2;
                tempChance = 250;
                tempEffect = 3;
                tempCost = 50;
            }

            if (tempTier >= 9)
            {
                tempTier = 9;
                if (tempEffect == 1)
                {
                    tempChance = Math.round(tempChance * 4);
                }
                else
                {
                    tempChance = Math.round(tempChance * 2);
                    tempEffect = Math.floor(tempEffect * 2);
                }

                tempCost = Math.round(tempCost * 100);
            }
            else
            {
                if (tempEffect == 1)
                {
                    tempChance = Math.round(tempChance * (1 + (tempTier - 1) / 10) * (1 + (tempTier - 1) / 10));
                }
                else
                {
                    tempChance = Math.round(tempChance * (1 + (tempTier - 1) / 10));
                    tempEffect = Math.floor(tempEffect * (1 + (tempTier - 1) / 10));
                }

                tempCost = Math.round(tempCost * tempTier * tempTier);
            }

            if (tempShiny == 1)
            {
                tempSize += 1;
                if (tempEffect == 1)
                {
                    tempChance = Math.ceil(tempChance * 5);
                }
                else
                {
                    tempChance = Math.ceil(tempChance * 2.5);
                    tempEffect = Math.floor(tempEffect * 2);
                }

                tempCost = Math.round(tempCost * 10);
            }

            if (tempTier < 9)
            {
                tempCost = Math.ceil(tempCost * (tempTier + 11) / 20);
            }

            if (tempCost < 100)
            {
                tempCost = Math.ceil(tempCost / 10) * 10;
            }
            else if (tempCost < 1000)
            {
                tempCost = Math.ceil(tempCost / 100) * 100;
            }
            else
            {
                tempCost = Math.ceil(tempCost / 1000) * 1000;
            }

            var tempValid = true;
            if (tempSize > maxSize)
            {
                tempValid = false;
            }

            if (tempModuleType >= 14 && tempModuleType <= 16)
            {
                tempValid = false;
            }

            if (tempValid)
            {
                _root.save.progModuleName[curPos] = tempNameA;
                _root.save.progModuleTier[curPos] = tempTier;
                _root.save.progModuleSize[curPos] = tempSize;
                _root.save.progModuleShiny[curPos] = tempShiny;
                _root.save.progModuleType[curPos] = tempModuleType;
                _root.save.progModuleChance[curPos] = tempChance;
                _root.save.progModuleEffect[curPos] = tempEffect;
                _root.save.progModuleCost[curPos] = tempCost;
                curPos += tempSize;
            }
        }
    }

    public void addArenaCraftWeapon(string recipeType, string recipeReq)
    {
        var item = new Header();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        craftWeapon.Add(new CraftItem<Item, Header>.H(item));
    }

    // MATCH: frame_4/DoAction.as:addArenaCraftWeapon()
    public void addArenaCraftWeapon(double recipeType, double recipeReq, double recipeLimit = 0, double reqRank = 0,
        string subtype = "", bool range = false, double frame = 0, double attack = 0, double speed = 0,
        double defense = 0, double crit = 0,
        double dexterity = 0, double health = 0, double maxLevel = 0, double expTNL = 0, double enhance = 0,
        double bonusPow = 0, string bonus = "",
        string ability = "", string moreBonus = "", double sell = 0, double expiry = 0, bool noBonus = false,
        bool noLife = false, bool noFuse = false,
        bool noUnique = false, bool spirit = false, double unob = 0, double costPixel = 0, double costCraft = 0,
        double costSpec = 0, double careerExp = 0,
        string name = "", string desc = "")
    {
        var item = new Item();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        item.recipeLimit = recipeLimit;
        item.name = name;
        item.reqRank = reqRank;
        item.subtype = subtype;
        item.frame = frame;
        item.range = range;
        item.attack = attack;
        item.speed = speed;
        item.defense = defense;
        item.bonus = bonus;
        item.ability = ability;
        item.moreBonus = moreBonus;
        item.maxLevel = maxLevel;
        item.expTNL = expTNL;
        item.enhance = enhance;
        item.bonusPow = bonusPow;
        item.sell = sell;
        item.expiry = expiry * 86400000;
        if (noLife == false)
        {
            item.expiry = Infinity;
        }

        item.noBonus = noBonus;
        item.noLife = noLife;
        item.noFuse = noFuse;
        item.noUnique = noUnique;
        item.spirit = spirit;
        item.unob = unob;
        item.costPixel = costPixel;
        item.costCraft = costCraft;
        item.costSpec = costSpec;
        item.careerExp = careerExp;
        item.crit = crit;
        item.dexterity = dexterity;
        item.health = health;
        item.desc = desc;
        craftWeapon.Add(new CraftItem<Item, Header>.I(item));
    }

    public void addArenaCraftArmor(string recipeType, string recipeReq)
    {
        var item = new Header();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        craftArmor.Add(new CraftItem<Item, Header>.H(item));
    }

    // MATCH: frame_4/DoAction.as:addArenaCraftArmor()
    public void addArenaCraftArmor(double recipeType, double recipeReq, double recipeLimit, double reqRank,
        string subtype, double frame, double attack, double speed, double defense, double crit, double dexterity,
        double health, double maxLevel, double expTNL, double enhance, double bonusPow, string bonus, string ability,
        string moreBonus, double sell, double expiry, bool noBonus, bool noLife, bool noFuse, bool noUnique,
        bool spirit, double unob, double costPixel, double costCraft, double costSpec, double careerExp, string name,
        string desc)
    {
        var item = new Item();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        item.recipeLimit = recipeLimit;
        item.name = name;
        item.reqRank = reqRank;
        item.subtype = subtype;
        item.frame = frame;
        item.attack = attack;
        item.speed = speed;
        item.defense = defense;
        item.bonus = bonus;
        item.ability = ability;
        item.moreBonus = moreBonus;
        item.maxLevel = maxLevel;
        item.expTNL = expTNL;
        item.enhance = enhance;
        item.bonusPow = bonusPow;
        item.sell = sell;
        item.expiry = expiry * 86400000;
        if (noLife == false)
        {
            item.expiry = Infinity;
        }

        item.noBonus = noBonus;
        item.noLife = noLife;
        item.noFuse = noFuse;
        item.noUnique = noUnique;
        item.spirit = spirit;
        item.unob = unob;
        item.costPixel = costPixel;
        item.costCraft = costCraft;
        item.costSpec = costSpec;
        item.careerExp = careerExp;
        item.crit = crit;
        item.dexterity = dexterity;
        item.health = health;
        item.desc = desc;
        craftArmor.Add(new CraftItem<Item, Header>.I(item));
    }

    public void addArenaCraftAccessory(string recipeType, string recipeReq)
    {
        var item = new Header();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        craftAccessory.Add(new CraftItem<Item, Header>.H(item));
    }

    // MATCH: frame_4/DoAction.as:addArenaCraftAccessory()
    public void addArenaCraftAccessory(double recipeType, double recipeReq, double recipeLimit, double reqRank,
        string subtype, double frame, double attack, double speed, double defense, double crit, double dexterity,
        double health, double maxLevel, double expTNL, double enhance, double bonusPow, string bonus, string ability,
        string moreBonus, double sell, double expiry, bool noBonus, bool noLife, bool noUnique,
        bool spirit, double unob, double costPixel, double costCraft, double costSpec, double careerExp, string name,
        string desc)
    {
        var item = new Item();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        item.recipeLimit = recipeLimit;
        item.name = name;
        item.reqRank = reqRank;
        item.subtype = subtype;
        item.frame = frame;
        item.attack = attack;
        item.speed = speed;
        item.defense = defense;
        item.bonus = bonus;
        item.ability = ability;
        item.moreBonus = moreBonus;
        item.maxLevel = maxLevel;
        item.expTNL = expTNL;
        item.enhance = enhance;
        item.bonusPow = bonusPow;
        item.sell = sell;
        item.expiry = expiry * 86400000;
        if (noLife == false)
        {
            item.expiry = Infinity;
        }

        item.noBonus = noBonus;
        item.noLife = noLife;
        item.noFuse = false;
        item.noUnique = noUnique;
        item.spirit = spirit;
        item.unob = unob;
        item.costPixel = costPixel;
        item.costCraft = costCraft;
        item.costSpec = costSpec;
        item.careerExp = careerExp;
        item.crit = crit;
        item.dexterity = dexterity;
        item.health = health;
        item.desc = desc;
        craftAccessory.Add(new CraftItem<Item, Header>.I(item));
    }

    public void addArenaCraftMedal(string recipeType, string recipeReq)
    {
        var item = new Header();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        craftMedal.Add(new CraftItem<Item, Header>.H(item));
    }

    // MATCH: frame_4/DoAction.as:addArenaCraftMedal()
    public void addArenaCraftMedal(double recipeType, double recipeReq, double recipeLimit, double reqRank,
        string subtype, double frame, double attack, double speed, double defense, double crit, double dexterity,
        double health, double maxLevel, double expTNL, double enhance, double bonusPow, string bonus, string ability,
        string moreBonus, double sell, double expiry, bool noBonus, bool noLife, bool noUnique,
        bool spirit, double unob, double costPixel, double costCraft, double costSpec, double careerExp, string name,
        string desc)
    {
        var item = new Item();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        item.recipeLimit = recipeLimit;
        item.name = name;
        item.reqRank = reqRank;
        item.subtype = subtype;
        item.frame = frame;
        item.attack = attack;
        item.speed = speed;
        item.defense = defense;
        item.bonus = bonus;
        item.ability = ability;
        item.moreBonus = moreBonus;
        item.maxLevel = maxLevel;
        item.expTNL = expTNL;
        item.enhance = enhance;
        item.bonusPow = bonusPow;
        item.sell = sell;
        item.expiry = expiry * 86400000;
        if (noLife == false)
        {
            item.expiry = Infinity;
        }

        item.noBonus = noBonus;
        item.noLife = noLife;
        item.noFuse = false;
        item.noUnique = noUnique;
        item.spirit = spirit;
        item.unob = unob;
        item.costPixel = costPixel;
        item.costCraft = costCraft;
        item.costSpec = costSpec;
        item.careerExp = careerExp;
        item.crit = crit;
        item.dexterity = dexterity;
        item.health = health;
        item.desc = desc;
        craftMedal.Add(new CraftItem<Item, Header>.I(item));
    }

    public void addArenaCraftEnhancer(string recipeType, string recipeReq)
    {
        var item = new Header();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        craftEnhancer.Add(new CraftItem<Item, Header>.H(item));
    }

    // MATCH: frame_4/DoAction.as:addArenaCraftEnhancer()
    public void addArenaCraftEnhancer(double recipeType, double recipeReq, double recipeLimit,
        string subtype, double frame, double power, double curse, double success,
        double enhance, double bonusPow, string bonus, string ability,
        string moreBonus, double sell, double expiry,
        double costPixel, double costCraft, double costSpec, double careerExp, string name,
        string desc)
    {
        var item = new Item();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        item.recipeLimit = recipeLimit;
        item.name = name;
        item.subtype = subtype;
        item.frame = frame;
        item.power = power;
        item.curse = curse;
        item.success = success;
        item.bonus = bonus;
        item.ability = ability;
        item.moreBonus = moreBonus;
        item.enhance = enhance;
        item.bonusPow = bonusPow;
        item.sell = sell;
        item.expiry = expiry * 86400000;
        item.costPixel = costPixel;
        item.costCraft = costCraft;
        item.costSpec = costSpec;
        item.careerExp = careerExp;
        item.desc = desc;
        craftEnhancer.Add(new CraftItem<Item, Header>.I(item));
    }

    public void addArenaCraftPotion(string recipeType, string recipeReq)
    {
        var item = new Header();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        craftPotion.Add(new CraftItem<Item, Header>.H(item));
    }

    // MATCH: frame_4/DoAction.as:addArenaCraftPotion()
    public void addArenaCraftPotion(double recipeType, double recipeReq, double recipeLimit,
        string subtype, double frame, double attack, double defense,
        double enhance, double bonusPow, double sell, double expiry,
        double costPixel, double costCraft, double costSpec, double careerExp, string name, string desc)
    {
        var item = new Item();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        item.recipeLimit = recipeLimit;
        item.name = name;
        item.subtype = subtype;
        item.frame = frame;
        item.attack = attack;
        item.defense = defense;
        item.enhance = enhance;
        item.bonusPow = bonusPow;
        item.sell = sell;
        item.expiry = expiry * 86400000;
        item.costPixel = costPixel;
        item.costCraft = costCraft;
        item.costSpec = costSpec;
        item.careerExp = careerExp;
        item.desc = desc;
        craftPotion.Add(new CraftItem<Item, Header>.I(item));
    }

    public void addArenaCraftChip(string recipeType, string recipeReq)
    {
        var item = new Header();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        craftChip.Add(new CraftItem<Item, Header>.H(item));
    }

    // MATCH: frame_4/DoAction.as:addArenaCraftChip()
    public void addArenaCraftChip(double recipeType, double recipeReq, double recipeLimit,
        string subtype, double frame, double attack, double defense,
        double enhance, double bonusPow, double sell, double expiry,
        double costPixel, double costCraft, double costSpec, double careerExp, string name, string desc)
    {
        var item = new Item();
        item.recipeType = recipeType;
        item.recipeReq = recipeReq;
        item.recipeLimit = recipeLimit;
        item.name = name;
        item.subtype = subtype;
        item.frame = frame;
        item.attack = attack;
        item.defense = defense;
        item.enhance = enhance;
        item.bonusPow = bonusPow;
        item.sell = sell;
        item.expiry = expiry * 86400000;
        item.costPixel = costPixel;
        item.costCraft = costCraft;
        item.costSpec = costSpec;
        item.careerExp = careerExp;
        item.desc = desc;
        craftChip.Add(new CraftItem<Item, Header>.I(item));
    }

    // MATCH: frame_4/DoAction.as:addArenaSet()
    public void addArenaSet(string setNameD, List<double> bonusReq, List<string> bonusStat, List<double> bonusAmnt,
        List<string> setItems)
    {
        var _loc1_ = new SetBonus();
        _loc1_.setNameD = setNameD;
        _loc1_.setItems = setItems;
        _loc1_.bonusReq = bonusReq;
        _loc1_.bonusStat = bonusStat;
        _loc1_.bonusAmnt = bonusAmnt;
        setArray.Add(_loc1_);
    }

    // MATCH: frame_4/DoAction.as:checkArenaSet()
    public int checkArenaSet(string itemName)
    {
        var tempSetID = 0;
        var n = 1;
        while (n <= setArray.Count - 1)
        {
            var p = 0;
            while (p <= setArray[n].setItems.Count - 1)
            {
                var tempName = setArray[n].setItems[p];
                if (itemName == tempName)
                {
                    tempSetID = n;
                }

                if (tempName == "Any Weapon of DOOOOOOM")
                {
                    if (itemName.indexOf("DOOOOOOM") != -1)
                    {
                        tempSetID = n;
                    }
                }

                if (tempName == "Any Meteoric Weapon")
                {
                    if (itemName.indexOf("Meteoric") != -1)
                    {
                        tempSetID = n;
                    }
                }

                if (tempName == "Any Dragon Slayer Weapon")
                {
                    if (itemName.indexOf("Dragon Slayer") != -1)
                    {
                        tempSetID = n;
                    }
                }

                if (tempName == "Any Demon Slayer Weapon")
                {
                    if (itemName.indexOf("Demon Slayer") != -1)
                    {
                        tempSetID = n;
                    }
                }

                if (tempName == "Any Tukkonium Weapon")
                {
                    if (itemName.indexOf("Tukkonium") != -1)
                    {
                        tempSetID = n;
                    }
                }

                if (tempName == "Any Pickaxe")
                {
                    if (itemName.indexOf("Pickaxe") != -1)
                    {
                        tempSetID = n;
                    }
                }

                if (tempName.indexOf("Any Alien") != -1)
                {
                    if (itemName.indexOf("Alien") != -1)
                    {
                        tempSetID = n;
                    }
                }

                if (tempName.indexOf("Dragon Slayer") != -1)
                {
                    if (itemName.indexOf("Dragon Slayer") != -1)
                    {
                        tempSetID = n;
                    }
                }

                if (tempName.indexOf("Demon Slayer") != -1)
                {
                    if (itemName.indexOf("Demon Slayer") != -1)
                    {
                        tempSetID = n;
                    }
                }

                p++;
            }

            n++;
        }

        return tempSetID;
    }

    // MATCH: frame_4/DoAction.as:displaySetItems()
    public string displaySetItems(int setID)
    {
        var tempDisp = "";
        var equipCount = 0;
        var i = 0;
        while (i <= setArray[setID].setItems.Count - 1)
        {
            var tempName = setArray[setID].setItems[i];
            var equipped = false;
            if (_root.save.inventoryName[_root.save.arenaWeapon] == tempName)
            {
                equipped = true;
            }

            if (_root.save.inventoryName[_root.save.arenaSubWeapon] == tempName)
            {
                equipped = true;
            }

            if (_root.save.inventoryName[_root.save.arenaHat] == tempName)
            {
                equipped = true;
            }

            if (_root.save.inventoryName[_root.save.arenaShirt] == tempName)
            {
                equipped = true;
            }

            if (_root.save.inventoryName[_root.save.arenaGloves] == tempName)
            {
                equipped = true;
            }

            if (_root.save.inventoryName[_root.save.arenaPants] == tempName)
            {
                equipped = true;
            }

            if (_root.save.inventoryName[_root.save.arenaShoes] == tempName)
            {
                equipped = true;
            }

            if (_root.save.inventoryName[_root.save.arenaSkin] == tempName)
            {
                equipped = true;
            }

            if (_root.save.inventoryName[_root.save.arenaMedal] == tempName &&
                _root.save.inventoryDesc[_root.save.arenaMedal] !=
                "This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works." &&
                _root.save.inventoryDesc[_root.save.arenaMedal] !=
                "Thank you for your donation and your continued support!")
            {
                equipped = true;
            }

            if (_root.save.inventoryName[_root.save.arenaPendant] == tempName)
            {
                equipped = true;
            }

            if (_root.save.inventoryName[_root.save.arenaEarring] == tempName)
            {
                equipped = true;
            }

            if (_root.save.inventoryName[_root.save.arenaTrinket] == tempName)
            {
                equipped = true;
            }

            if (tempName == "Any Weapon of DOOOOOOM")
            {
                if (_root.save.inventoryName[_root.save.arenaWeapon].indexOf("DOOOOOOM") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Meteoric Weapon")
            {
                if (_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Meteoric") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Dragon Slayer Weapon")
            {
                if (_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Dragon Slayer") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Demon Slayer Weapon")
            {
                if (_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Demon Slayer") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Tukkonium Weapon")
            {
                if (_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Tukkonium") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Dragon Slayer Hat")
            {
                if (_root.save.inventoryName[_root.save.arenaHat].indexOf("Dragon Slayer") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Dragon Slayer Shirt")
            {
                if (_root.save.inventoryName[_root.save.arenaShirt].indexOf("Dragon Slayer") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Dragon Slayer Gloves")
            {
                if (_root.save.inventoryName[_root.save.arenaGloves].indexOf("Dragon Slayer") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Dragon Slayer Pants")
            {
                if (_root.save.inventoryName[_root.save.arenaPants].indexOf("Dragon Slayer") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Dragon Slayer Shoes")
            {
                if (_root.save.inventoryName[_root.save.arenaShoes].indexOf("Dragon Slayer") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Demon Slayer Hat")
            {
                if (_root.save.inventoryName[_root.save.arenaHat].indexOf("Demon Slayer") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Demon Slayer Shirt")
            {
                if (_root.save.inventoryName[_root.save.arenaShirt].indexOf("Demon Slayer") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Demon Slayer Gloves")
            {
                if (_root.save.inventoryName[_root.save.arenaGloves].indexOf("Demon Slayer") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Demon Slayer Pants")
            {
                if (_root.save.inventoryName[_root.save.arenaPants].indexOf("Demon Slayer") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Demon Slayer Shoes")
            {
                if (_root.save.inventoryName[_root.save.arenaShoes].indexOf("Demon Slayer") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Pickaxe")
            {
                if (_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Pickaxe") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Alien Weapon")
            {
                if (_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Alien") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Alien Hat")
            {
                if (_root.save.inventoryName[_root.save.arenaHat].indexOf("Alien") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Alien Shirt")
            {
                if (_root.save.inventoryName[_root.save.arenaShirt].indexOf("Alien") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Alien Gloves")
            {
                if (_root.save.inventoryName[_root.save.arenaGloves].indexOf("Alien") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Alien Pants")
            {
                if (_root.save.inventoryName[_root.save.arenaPants].indexOf("Alien") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Alien Shoes")
            {
                if (_root.save.inventoryName[_root.save.arenaShoes].indexOf("Alien") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Crystal Hat")
            {
                if (_root.save.inventoryName[_root.save.arenaHat].indexOf("Crystal") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Crystal Shirt")
            {
                if (_root.save.inventoryName[_root.save.arenaShirt].indexOf("Crystal") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Crystal Gloves")
            {
                if (_root.save.inventoryName[_root.save.arenaGloves].indexOf("Crystal") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Crystal Pants")
            {
                if (_root.save.inventoryName[_root.save.arenaPants].indexOf("Crystal") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Crystal Shoes")
            {
                if (_root.save.inventoryName[_root.save.arenaShoes].indexOf("Crystal") != -1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Rank 200+ Weapon")
            {
                if (_root.save.inventoryReqRank[_root.save.arenaWeapon] >= 200)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Rank 300+ Weapon")
            {
                if (_root.save.inventoryReqRank[_root.save.arenaWeapon] >= 300)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Rank 400+ Weapon")
            {
                if (_root.save.inventoryReqRank[_root.save.arenaWeapon] >= 400)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Finalized Weapon")
            {
                if (_root.save.inventoryLevel[_root.save.arenaWeapon] == 9999)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Finalized Hat")
            {
                if (_root.save.inventoryLevel[_root.save.arenaHat] == 9999)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Finalized Shirt")
            {
                if (_root.save.inventoryLevel[_root.save.arenaShirt] == 9999)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Finalized Gloves")
            {
                if (_root.save.inventoryLevel[_root.save.arenaGloves] == 9999)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Finalized Pants")
            {
                if (_root.save.inventoryLevel[_root.save.arenaPants] == 9999)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Finalized Shoes")
            {
                if (_root.save.inventoryLevel[_root.save.arenaShoes] == 9999)
                {
                    equipped = true;
                }
            }

            if (tempName == "Any Finalized Skin")
            {
                if (_root.save.inventoryLevel[_root.save.arenaSkin] == 9999)
                {
                    equipped = true;
                }
            }

            if (tempName == "Invisible X")
            {
                if (_root.save.arenaAlly == 1)
                {
                    equipped = true;
                }
            }

            if (tempName == "Apocalypse Mode")
            {
                if (_root.apocalypse == true)
                {
                    equipped = true;
                }
            }

            if (tempName == "Rune of Rage")
            {
                if (_root.save.arenaRuneDuration[3] > 0)
                {
                    equipped = true;
                }
            }

            if (equipped == true)
            {
                tempDisp += "\n<font color=\'#FFFF00\'>" + tempName + "</font>";
                equipCount += 1;
            }
            else
            {
                tempDisp += "\n<font color=\'#CCCCCC\'>" + tempName + "</font>";
            }

            i++;
        }

        tempDisp += "\n\n<font color=\'#CC9900\'><b>Set Bonus</b></font>";
        i = 0;
        string plu;
        while (i <= setArray[setID].bonusStat.Count - 1)
        {
            if (setArray[setID].bonusAmnt[i] == -1)
            {
                if (setArray[setID].bonusReq[i] == 1)
                {
                    plu = " item";
                }
                else
                {
                    plu = " items";
                }

                if (equipCount >= setArray[setID].bonusReq[i])
                {
                    tempDisp += "\n<font color=\'#FFFF00\'>[" + setArray[setID].bonusReq[i] + plu + "]" +
                                "</font> <font color=\'#CCFF33\'>" + setArray[setID].bonusStat[i];
                }
                else
                {
                    tempDisp += "\n<font color=\'#CCCCCC\'>[" + setArray[setID].bonusReq[i] + plu + "]" +
                                "</font> <font color=\'#BBBBBB\'>" + setArray[setID].bonusStat[i];
                }
            }
            else
            {
                if (setArray[setID].bonusReq[i] == 1)
                {
                    plu = " item";
                }
                else
                {
                    plu = " items";
                }

                if (equipCount >= setArray[setID].bonusReq[i])
                {
                    tempDisp += "\n<font color=\'#FFFF00\'>[" + setArray[setID].bonusReq[i] + plu + "]" +
                                "</font> <font color=\'#CCFF33\'>" + setArray[setID].bonusStat[i] + " <b>+" +
                                setArray[setID].bonusAmnt[i] + "%</b>";
                }
                else
                {
                    tempDisp += "\n<font color=\'#CCCCCC\'>[" + setArray[setID].bonusReq[i] + plu + "]" +
                                "</font> <font color=\'#BBBBBB\'>" + setArray[setID].bonusStat[i] + " <b>+" +
                                setArray[setID].bonusAmnt[i] + "%</b>";
                }
            }

            i++;
        }

        return tempDisp;
    }

    // MATCH: frame_4/DoAction.as:checkSetBonus()
    public void checkSetBonus()
    {
        var i = 1;
        while (i <= setArray.Count - 1)
        {
            _root.setCount[i] = 0;
            i++;
        }

        _root.setHighest = 0;
        _root.setCount[_root.save.inventorySet[_root.save.arenaWeapon]] += 1;
        _root.setCount[_root.save.inventorySet[_root.save.arenaHat]] += 1;
        _root.setCount[_root.save.inventorySet[_root.save.arenaShirt]] += 1;
        _root.setCount[_root.save.inventorySet[_root.save.arenaGloves]] += 1;
        _root.setCount[_root.save.inventorySet[_root.save.arenaPants]] += 1;
        _root.setCount[_root.save.inventorySet[_root.save.arenaShoes]] += 1;
        _root.setCount[_root.save.inventorySet[_root.save.arenaSkin]] += 1;
        _root.setCount[_root.save.inventorySet[_root.save.arenaMedal]] += 1;
        _root.setCount[_root.save.inventorySet[_root.save.arenaPendant]] += 1;
        _root.setCount[_root.save.inventorySet[_root.save.arenaEarring]] += 1;
        _root.setCount[_root.save.inventorySet[_root.save.arenaTrinket]] += 1;
        _root.setCount[_root.save.inventorySet[_root.save.arenaSubWeapon]] += 1;
        if (_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Constancy")
        {
            if (_root.save.inventoryLevel[_root.save.arenaWeapon] == 9999)
            {
                _root.setCount[1] += 1;
            }

            if (_root.save.inventoryLevel[_root.save.arenaHat] == 9999)
            {
                _root.setCount[1] += 1;
            }

            if (_root.save.inventoryLevel[_root.save.arenaShirt] == 9999)
            {
                _root.setCount[1] += 1;
            }

            if (_root.save.inventoryLevel[_root.save.arenaGloves] == 9999)
            {
                _root.setCount[1] += 1;
            }

            if (_root.save.inventoryLevel[_root.save.arenaPants] == 9999)
            {
                _root.setCount[1] += 1;
            }

            if (_root.save.inventoryLevel[_root.save.arenaShoes] == 9999)
            {
                _root.setCount[1] += 1;
            }

            if (_root.save.inventoryLevel[_root.save.arenaSkin] == 9999)
            {
                _root.setCount[1] += 1;
            }
        }

        if (_root.save.inventoryName[_root.save.arenaTrinket] == "Empowering Gem")
        {
            if (_root.save.inventoryReqRank[_root.save.arenaWeapon] >= 200)
            {
                _root.setCount[2] += 1;
            }

            if (_root.save.inventoryReqRank[_root.save.arenaWeapon] >= 300)
            {
                _root.setCount[2] += 1;
            }

            if (_root.save.inventoryReqRank[_root.save.arenaWeapon] >= 400)
            {
                _root.setCount[2] += 1;
            }
        }

        if (_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Pickaxe") != -1)
        {
            if (_root.save.inventoryName[_root.save.arenaHat].indexOf("Crystal") != -1)
            {
                _root.setCount[3] += 1;
            }

            if (_root.save.inventoryName[_root.save.arenaShirt].indexOf("Crystal") != -1)
            {
                _root.setCount[3] += 1;
            }

            if (_root.save.inventoryName[_root.save.arenaGloves].indexOf("Crystal") != -1)
            {
                _root.setCount[3] += 1;
            }

            if (_root.save.inventoryName[_root.save.arenaPants].indexOf("Crystal") != -1)
            {
                _root.setCount[3] += 1;
            }

            if (_root.save.inventoryName[_root.save.arenaShoes].indexOf("Crystal") != -1)
            {
                _root.setCount[3] += 1;
            }
        }

        if (_root.setCount[48] > 0 && _root.apocalypse == true)
        {
            _root.setCount[48] += 1;
        }

        if (_root.setCount[64] > 0 && _root.apocalypse == true)
        {
            _root.setCount[64] += 1;
        }

        if (_root.setCount[70] > 0 && _root.save.arenaAlly == 1)
        {
            _root.setCount[70] += 1;
        }

        if (_root.setCount[75] > 0 && _root.save.arenaRuneDuration[3] > 0)
        {
            _root.setCount[75] += 1;
        }

        _root.setExpBonus = 0;
        _root.setCoinBonus = 0;
        _root.setPixelBonus = 0;
        _root.setDropBonus = 0;
        _root.setSpawnBonus = 0;
        _root.setDamageBonus = 0;
        _root.setDefenseBonus = 0;
        _root.setAccuracyBonus = 0;
        _root.setEvasionBonus = 0;
        _root.setHealthBonus = 0;
        _root.setManaBonus = 0;
        _root.setSpeedBonus = 0;
        _root.setRareBonus = 0;
        _root.setEpicBonus = 0;
        i = 1;
        while (i <= setArray.Count - 1)
        {
            if (_root.setCount[i] > 0)
            {
                var tmpItemCount = _root.setCount[i];
                if (i == 48 && _root.setCount[48] > 0 && _root.apocalypse == true)
                {
                    tmpItemCount -= 1;
                }

                if (i == 64 && _root.setCount[64] > 0 && _root.apocalypse == true)
                {
                    tmpItemCount -= 1;
                }

                if (i == 70 && _root.setCount[70] > 0 && _root.save.arenaAlly == 1)
                {
                    tmpItemCount -= 1;
                }

                if (_root.setHighest < tmpItemCount)
                {
                    _root.setHighest = tmpItemCount;
                }

                var k = 0;
                while (k <= setArray[i].bonusStat.Count - 1)
                {
                    if (_root.setCount[i] >= setArray[i].bonusReq[k])
                    {
                        if (setArray[i].bonusStat[k] == "EXP")
                        {
                            _root.setExpBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "Coin")
                        {
                            _root.setCoinBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "Pixel")
                        {
                            _root.setPixelBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "Drop Rate")
                        {
                            _root.setDropBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "Spawn Rate")
                        {
                            _root.setSpawnBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "Damage")
                        {
                            _root.setDamageBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "Defense")
                        {
                            _root.setDefenseBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "Accuracy")
                        {
                            _root.setAccuracyBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "Evasion")
                        {
                            _root.setEvasionBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "MaxHP")
                        {
                            _root.setHealthBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "MaxMP")
                        {
                            _root.setManaBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "Attack Speed")
                        {
                            _root.setSpeedBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "Rare Monster Rate")
                        {
                            _root.setRareBonus += setArray[i].bonusAmnt[k];
                        }
                        else if (setArray[i].bonusStat[k] == "Epic Monster Rate")
                        {
                            _root.setEpicBonus += setArray[i].bonusAmnt[k];
                        }
                    }

                    k++;
                }
            }

            i++;
        }
    }

    // MATCH: frame_4/DoAction.as:previewFusedWeapon()
    public void previewFusedWeapon(double reqRank, string subtype, double frame, bool range, double attack,
        double speed, double defense, double crit, double dexterity, double health, double maxLevel, double expTNL,
        double level, double exp, double enhance, double bonusPow, string bonus, string ability, string moreBonus,
        double sell, double expiry, bool noBonus, bool noLife, bool noFuse, bool noUnique, bool spirit, double unob,
        string name, string desc, bool guard)
    {
        var k = 1331;
        if (noBonus == null)
        {
            noBonus = false;
        }

        if (noLife == null)
        {
            noLife = true;
        }

        if (noFuse == null)
        {
            noFuse = false;
        }

        if (noUnique == null)
        {
            noUnique = false;
        }

        if (spirit == null)
        {
            spirit = false;
        }

        if (guard == null)
        {
            guard = false;
        }

        if (isNaN(level))
        {
            level = 1;
            _root.breakNews("[Error]", "ERROR: " + name + " / [level] not defined.", 16711680, 9002);
        }

        if (isNaN(exp))
        {
            exp = 0;
            _root.breakNews("[Error]", "ERROR: " + name + " / [exp] not defined.", 16711680, 9002);
        }

        if (isNaN(crit))
        {
            crit = 10;
            dexterity = 0;
            health = 0;
            _root.breakNews("[Error]", "ERROR: " + name + " / [crit] not defined.", 16711680, 9002);
        }

        if (isNaN(unob))
        {
            unob = 0;
            _root.breakNews("[Error]", "ERROR: " + name + " / [unob] not defined.", 16711680, 9002);
        }

        var itemSet = (double)_root.checkArenaSet(name);
        if (moreBonus == null)
        {
            moreBonus = "";
            _root.breakNews("[Error]", "ERROR: " + name + " / [moreBonus] not defined.", 16711680, 9002);
        }

        if (desc == null)
        {
            desc = "";
            _root.breakNews("[Error]", "ERROR: " + name + " / [desc] not defined.", 16711680, 9002);
        }

        _root.save.inventoryExist[k] = 1;
        _root.save.inventoryName[k] = name;
        _root.save.inventoryReqRank[k] = reqRank;
        _root.save.inventoryType[k] = "Weapon";
        _root.save.inventorySubtype[k] = subtype;
        _root.save.inventoryFrame[k] = frame;
        _root.save.inventoryRange[k] = range;
        _root.save.inventoryAttack[k] = attack;
        _root.save.inventorySpeed[k] = speed;
        _root.save.inventoryDefense[k] = defense;
        _root.save.inventoryBonus[k] = bonus;
        _root.save.inventoryAbility[k] = ability;
        _root.save.inventoryMoreBonus[k] = moreBonus;
        _root.save.inventoryLevel[k] = level;
        _root.save.inventoryMaxLevel[k] = maxLevel;
        _root.save.inventoryExp[k] = exp;
        _root.save.inventoryExpTNL[k] = expTNL;
        _root.save.inventoryEnhance[k] = enhance;
        _root.save.inventoryBonusPow[k] = bonusPow;
        _root.save.inventorySell[k] = sell;
        _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
        if (noLife == false)
        {
            _root.save.inventoryExpiry[k] = Infinity;
        }

        _root.save.inventoryObtainTime[k] = _root.systemtimenow;
        _root.save.inventoryDesc[k] = desc;
        _root.save.inventoryCrit[k] = crit;
        _root.save.inventoryDexterity[k] = dexterity;
        _root.save.inventoryHealth[k] = health;
        _root.save.inventoryNoBonus[k] = noBonus;
        _root.save.inventoryNoFuse[k] = noFuse;
        _root.save.inventoryNoUnique[k] = noUnique;
        _root.save.inventorySpirit[k] = spirit;
        _root.save.inventoryGuard[k] = guard;
        _root.save.inventoryUnob[k] = unob;
        _root.save.inventorySet[k] = itemSet;
        if (_root.save.inventoryBonus[k] == "Random")
        {
            var bonusToGet = random(22) + 1;
            if (bonusToGet == 1 || bonusToGet == 2)
            {
                _root.save.inventoryBonus[k] = "Reward";
            }

            if (bonusToGet == 3 || bonusToGet == 4)
            {
                _root.save.inventoryBonus[k] = "EXP";
            }

            if (bonusToGet == 5 || bonusToGet == 6)
            {
                _root.save.inventoryBonus[k] = "Coin";
            }

            if (bonusToGet == 7 || bonusToGet == 8)
            {
                _root.save.inventoryBonus[k] = "Pixel";
            }

            if (bonusToGet == 9 || bonusToGet == 10)
            {
                _root.save.inventoryBonus[k] = "Drop Rate";
            }

            if (bonusToGet == 11 || bonusToGet == 12)
            {
                _root.save.inventoryBonus[k] = "Spawn Rate";
            }

            if (bonusToGet == 13)
            {
                _root.save.inventoryBonus[k] = "Fire Element";
            }

            if (bonusToGet == 14)
            {
                _root.save.inventoryBonus[k] = "Ice Element";
            }

            if (bonusToGet == 15)
            {
                _root.save.inventoryBonus[k] = "Wind Element";
            }

            if (bonusToGet == 16)
            {
                _root.save.inventoryBonus[k] = "Earth Element";
            }

            if (bonusToGet == 17)
            {
                _root.save.inventoryBonus[k] = "Thunder Element";
            }

            if (bonusToGet == 18)
            {
                _root.save.inventoryBonus[k] = "Water Element";
            }

            if (bonusToGet == 19)
            {
                _root.save.inventoryBonus[k] = "Light Element";
            }

            if (bonusToGet == 20)
            {
                _root.save.inventoryBonus[k] = "Dark Element";
            }

            if (bonusToGet == 21)
            {
                _root.save.inventoryBonus[k] = "Rare Monster Rate";
            }

            if (bonusToGet == 22)
            {
                _root.save.inventoryBonus[k] = "Epic Monster Rate";
            }

            if (_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
            {
                _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
            }
            else if (_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
            {
                _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
            }
        }

        if (_root.save.inventoryAbility[k] == "Random")
        {
            var bonusToGet = random(47) + 1;
            if (bonusToGet == 1)
            {
                _root.save.inventoryAbility[k] = "Attack";
            }

            if (bonusToGet == 2)
            {
                _root.save.inventoryAbility[k] = "Attack Speed";
            }

            if (bonusToGet == 3)
            {
                _root.save.inventoryAbility[k] = "Ignore Defense";
            }

            if (bonusToGet == 4)
            {
                _root.save.inventoryAbility[k] = "Mastery";
            }

            if (bonusToGet == 5)
            {
                _root.save.inventoryAbility[k] = "Critical Chance";
            }

            if (bonusToGet == 6)
            {
                _root.save.inventoryAbility[k] = "Critical Damage";
            }

            if (bonusToGet == 7)
            {
                _root.save.inventoryAbility[k] = "Defense";
            }

            if (bonusToGet == 8)
            {
                _root.save.inventoryAbility[k] = "Damage Taken";
            }

            if (bonusToGet == 9)
            {
                _root.save.inventoryAbility[k] = "Reflect";
            }

            if (bonusToGet == 10)
            {
                _root.save.inventoryAbility[k] = "Accuracy";
            }

            if (bonusToGet == 11)
            {
                _root.save.inventoryAbility[k] = "Hit Chance";
            }

            if (bonusToGet == 12)
            {
                _root.save.inventoryAbility[k] = "Evasion";
            }

            if (bonusToGet == 13)
            {
                _root.save.inventoryAbility[k] = "Dodge Chance";
            }

            if (bonusToGet == 14)
            {
                _root.save.inventoryAbility[k] = "Poison Chance";
            }

            if (bonusToGet == 15)
            {
                _root.save.inventoryAbility[k] = "Weaken Chance";
            }

            if (bonusToGet == 16)
            {
                _root.save.inventoryAbility[k] = "Blind Chance";
            }

            if (bonusToGet == 17)
            {
                _root.save.inventoryAbility[k] = "Stun Chance";
            }

            if (bonusToGet == 18)
            {
                _root.save.inventoryAbility[k] = "HP";
            }

            if (bonusToGet == 19)
            {
                _root.save.inventoryAbility[k] = "MP";
            }

            if (bonusToGet == 20)
            {
                _root.save.inventoryAbility[k] = "HP Regen";
            }

            if (bonusToGet == 21)
            {
                _root.save.inventoryAbility[k] = "MP Regen";
            }

            if (bonusToGet == 22)
            {
                _root.save.inventoryAbility[k] = "Rage Depletion";
            }

            if (bonusToGet == 23)
            {
                _root.save.inventoryAbility[k] = "Drain";
            }

            if (bonusToGet == 24)
            {
                _root.save.inventoryAbility[k] = "Mana Eater";
            }

            if (bonusToGet == 25)
            {
                _root.save.inventoryAbility[k] = "Autosteal";
            }

            if (bonusToGet == 26)
            {
                _root.save.inventoryAbility[k] = "Double Hit Chance";
            }

            if (bonusToGet == 27)
            {
                _root.save.inventoryAbility[k] = "Rage Attack";
            }

            if (bonusToGet == 28)
            {
                _root.save.inventoryAbility[k] = "Rage Speed";
            }

            if (bonusToGet == 29)
            {
                _root.save.inventoryAbility[k] = "Poison Damage";
            }

            if (bonusToGet == 30)
            {
                _root.save.inventoryAbility[k] = "Poison Duration";
            }

            if (bonusToGet == 31)
            {
                _root.save.inventoryAbility[k] = "Weaken Effect";
            }

            if (bonusToGet == 32)
            {
                _root.save.inventoryAbility[k] = "Weaken Duration";
            }

            if (bonusToGet == 33)
            {
                _root.save.inventoryAbility[k] = "Blind Effect";
            }

            if (bonusToGet == 34)
            {
                _root.save.inventoryAbility[k] = "Blind Duration";
            }

            if (bonusToGet == 35)
            {
                _root.save.inventoryAbility[k] = "Potion Efficiency";
            }

            if (bonusToGet == 36)
            {
                _root.save.inventoryAbility[k] = "Boss Damage";
            }

            if (bonusToGet == 37)
            {
                _root.save.inventoryAbility[k] = "Magic Resist";
            }

            if (bonusToGet == 38)
            {
                _root.save.inventoryAbility[k] = "Instant Kill";
            }

            if (bonusToGet == 39)
            {
                _root.save.inventoryAbility[k] = "Negate Effect";
            }

            if (bonusToGet == 40)
            {
                _root.save.inventoryAbility[k] = "Non-Boss Damage";
            }

            if (bonusToGet == 41)
            {
                _root.save.inventoryAbility[k] = "Damage";
            }

            if (bonusToGet == 42)
            {
                _root.save.inventoryAbility[k] = "Extra Combo";
            }

            if (bonusToGet == 43)
            {
                _root.save.inventoryAbility[k] = "Magic Reflect";
            }

            if (bonusToGet == 44)
            {
                _root.save.inventoryAbility[k] = "Nullify Death Penalty";
            }

            if (bonusToGet == 45)
            {
                _root.save.inventoryAbility[k] = "Buff Effect";
            }

            if (bonusToGet == 46)
            {
                _root.save.inventoryAbility[k] = "All Elements";
            }

            if (bonusToGet == 47)
            {
                _root.save.inventoryAbility[k] = "Max Spirit";
            }

            if (_root.save.arenaAbilityPreference1 != "None" && Math.random() < 0.2)
            {
                _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference1;
            }
            else if (_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.1)
            {
                _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
            }
            else if (_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.05)
            {
                _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
            }
        }

        if (_root.save.inventoryMoreBonus[k] == "Random")
        {
            var bonusToGet = random(11) + 1;
            if (bonusToGet == 1)
            {
                _root.save.inventoryMoreBonus[k] = "Equipment Attack";
            }

            if (bonusToGet == 2)
            {
                _root.save.inventoryMoreBonus[k] = "Equipment Defense";
            }

            if (bonusToGet == 3)
            {
                _root.save.inventoryMoreBonus[k] = "Attack Power";
            }

            if (bonusToGet == 4)
            {
                _root.save.inventoryMoreBonus[k] = "Defense Power";
            }

            if (bonusToGet == 5)
            {
                _root.save.inventoryMoreBonus[k] = "MaxHP";
            }

            if (bonusToGet == 6)
            {
                _root.save.inventoryMoreBonus[k] = "MaxMP";
            }

            if (bonusToGet == 7)
            {
                _root.save.inventoryMoreBonus[k] = "Accuracy";
            }

            if (bonusToGet == 8)
            {
                _root.save.inventoryMoreBonus[k] = "Evasion";
            }

            if (bonusToGet == 9)
            {
                _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
            }

            if (bonusToGet == 10)
            {
                _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
            }

            if (bonusToGet == 11)
            {
                _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
            }

            if (_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
            {
                _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
            }
            else if (_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
            {
                _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
            }
        }
    }


    // MATCH: frame_4/DoAction.as:previewFusedArmor()
    public void previewFusedArmor(double reqRank, string subtype, double frame, double attack, double speed,
        double defense, double crit, double dexterity, double health, double maxLevel, double expTNL, double level,
        double exp, double enhance, double bonusPow, string bonus, string ability, string moreBonus, double sell,
        double expiry, bool noBonus, bool noLife, bool noFuse, bool noUnique, bool spirit, double unob, string name,
        string desc, bool guard)
    {
        var k = 1331;
        if (noBonus == null)
        {
            noBonus = false;
        }

        if (noLife == null)
        {
            noLife = true;
        }

        if (noFuse == null)
        {
            noFuse = false;
        }

        if (noUnique == null)
        {
            noUnique = false;
        }

        if (spirit == null)
        {
            spirit = false;
        }

        if (guard == null)
        {
            guard = false;
        }

        if (isNaN(level))
        {
            level = 1;
            _root.breakNews("[Error]", "ERROR: " + name + " / [level] not defined.", 16711680, 9002);
        }

        if (isNaN(exp))
        {
            exp = 0;
            _root.breakNews("[Error]", "ERROR: " + name + " / [exp] not defined.", 16711680, 9002);
        }

        if (isNaN(crit))
        {
            crit = 10;
            dexterity = 0;
            health = 0;
            _root.breakNews("[Error]", "ERROR: " + name + " / [crit] not defined.", 16711680, 9002);
        }

        if (isNaN(unob))
        {
            unob = 0;
            _root.breakNews("[Error]", "ERROR: " + name + " / [unob] not defined.", 16711680, 9002);
        }

        var itemSet = _root.checkArenaSet(name);
        if (moreBonus == null)
        {
            moreBonus = "";
            _root.breakNews("[Error]", "ERROR: " + name + " / [moreBonus] not defined.", 16711680, 9002);
        }

        if (desc == null)
        {
            desc = "";
            _root.breakNews("[Error]", "ERROR: " + name + " / [desc] not defined.", 16711680, 9002);
        }

        _root.save.inventoryExist[k] = 1;
        _root.save.inventoryName[k] = name;
        _root.save.inventoryReqRank[k] = reqRank;
        _root.save.inventoryType[k] = "Armor";
        _root.save.inventorySubtype[k] = subtype;
        _root.save.inventoryFrame[k] = frame;
        _root.save.inventoryRange[k] = false;
        _root.save.inventoryAttack[k] = attack;
        _root.save.inventorySpeed[k] = speed;
        _root.save.inventoryDefense[k] = defense;
        _root.save.inventoryBonus[k] = bonus;
        _root.save.inventoryAbility[k] = ability;
        _root.save.inventoryMoreBonus[k] = moreBonus;
        _root.save.inventoryLevel[k] = level;
        _root.save.inventoryMaxLevel[k] = maxLevel;
        _root.save.inventoryExp[k] = exp;
        _root.save.inventoryExpTNL[k] = expTNL;
        _root.save.inventoryEnhance[k] = enhance;
        _root.save.inventoryBonusPow[k] = bonusPow;
        _root.save.inventorySell[k] = sell;
        _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
        if (noLife == false)
        {
            _root.save.inventoryExpiry[k] = Infinity;
        }

        _root.save.inventoryObtainTime[k] = _root.systemtimenow;
        _root.save.inventoryDesc[k] = desc;
        _root.save.inventoryCrit[k] = crit;
        _root.save.inventoryDexterity[k] = dexterity;
        _root.save.inventoryHealth[k] = health;
        _root.save.inventoryNoBonus[k] = noBonus;
        _root.save.inventoryNoFuse[k] = noFuse;
        _root.save.inventoryNoUnique[k] = noUnique;
        _root.save.inventorySpirit[k] = spirit;
        _root.save.inventoryGuard[k] = guard;
        _root.save.inventoryUnob[k] = unob;
        _root.save.inventorySet[k] = itemSet;
        if (_root.save.inventoryBonus[k] == "Random")
        {
            var bonusToGet = random(15) + 1;
            if (Math.random() < 0.2)
            {
                bonusToGet = random(22) + 1;
            }

            if (bonusToGet == 1 || bonusToGet == 2)
            {
                _root.save.inventoryBonus[k] = "Reward";
            }

            if (bonusToGet == 3 || bonusToGet == 4)
            {
                _root.save.inventoryBonus[k] = "EXP";
            }

            if (bonusToGet == 5 || bonusToGet == 6)
            {
                _root.save.inventoryBonus[k] = "Coin";
            }

            if (bonusToGet == 7 || bonusToGet == 8)
            {
                _root.save.inventoryBonus[k] = "Pixel";
            }

            if (bonusToGet == 9 || bonusToGet == 10)
            {
                _root.save.inventoryBonus[k] = "Drop Rate";
            }

            if (bonusToGet == 11 || bonusToGet == 12)
            {
                _root.save.inventoryBonus[k] = "Spawn Rate";
            }

            if (bonusToGet == 13)
            {
                _root.save.inventoryBonus[k] = "Fire Element";
            }

            if (bonusToGet == 14)
            {
                _root.save.inventoryBonus[k] = "Ice Element";
            }

            if (bonusToGet == 15)
            {
                _root.save.inventoryBonus[k] = "Wind Element";
            }

            if (bonusToGet == 16)
            {
                _root.save.inventoryBonus[k] = "Earth Element";
            }

            if (bonusToGet == 17)
            {
                _root.save.inventoryBonus[k] = "Thunder Element";
            }

            if (bonusToGet == 18)
            {
                _root.save.inventoryBonus[k] = "Water Element";
            }

            if (bonusToGet == 19)
            {
                _root.save.inventoryBonus[k] = "Light Element";
            }

            if (bonusToGet == 20)
            {
                _root.save.inventoryBonus[k] = "Dark Element";
            }

            if (bonusToGet == 21)
            {
                _root.save.inventoryBonus[k] = "Rare Monster Rate";
            }

            if (bonusToGet == 22)
            {
                _root.save.inventoryBonus[k] = "Epic Monster Rate";
            }

            if (_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
            {
                _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
            }
            else if (_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
            {
                _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
            }
        }

        if (_root.save.inventoryAbility[k] == "Random")
        {
            var bonusToGet = random(25) + 1;
            if (bonusToGet == 1)
            {
                _root.save.inventoryAbility[k] = "Attack";
            }

            if (bonusToGet == 2)
            {
                _root.save.inventoryAbility[k] = "Attack Speed";
            }

            if (bonusToGet == 3)
            {
                _root.save.inventoryAbility[k] = "Ignore Defense";
            }

            if (bonusToGet == 4)
            {
                _root.save.inventoryAbility[k] = "Mastery";
            }

            if (bonusToGet == 5)
            {
                _root.save.inventoryAbility[k] = "Critical Chance";
            }

            if (bonusToGet == 6)
            {
                _root.save.inventoryAbility[k] = "Critical Damage";
            }

            if (bonusToGet == 7)
            {
                _root.save.inventoryAbility[k] = "Defense";
            }

            if (bonusToGet == 8)
            {
                _root.save.inventoryAbility[k] = "Damage Taken";
            }

            if (bonusToGet == 9)
            {
                _root.save.inventoryAbility[k] = "Reflect";
            }

            if (bonusToGet == 10)
            {
                _root.save.inventoryAbility[k] = "Accuracy";
            }

            if (bonusToGet == 11)
            {
                _root.save.inventoryAbility[k] = "Hit Chance";
            }

            if (bonusToGet == 12)
            {
                _root.save.inventoryAbility[k] = "Evasion";
            }

            if (bonusToGet == 13)
            {
                _root.save.inventoryAbility[k] = "Dodge Chance";
            }

            if (bonusToGet == 14)
            {
                _root.save.inventoryAbility[k] = "Poison Chance";
            }

            if (bonusToGet == 15)
            {
                _root.save.inventoryAbility[k] = "Weaken Chance";
            }

            if (bonusToGet == 16)
            {
                _root.save.inventoryAbility[k] = "Blind Chance";
            }

            if (bonusToGet == 17)
            {
                _root.save.inventoryAbility[k] = "Stun Chance";
            }

            if (bonusToGet == 18)
            {
                _root.save.inventoryAbility[k] = "HP";
            }

            if (bonusToGet == 19)
            {
                _root.save.inventoryAbility[k] = "MP";
            }

            if (bonusToGet == 20)
            {
                _root.save.inventoryAbility[k] = "HP Regen";
            }

            if (bonusToGet == 21)
            {
                _root.save.inventoryAbility[k] = "MP Regen";
            }

            if (bonusToGet == 22)
            {
                _root.save.inventoryAbility[k] = "Rage Depletion";
            }

            if (bonusToGet == 23)
            {
                _root.save.inventoryAbility[k] = "Drain";
            }

            if (bonusToGet == 24)
            {
                _root.save.inventoryAbility[k] = "Mana Eater";
            }

            if (bonusToGet == 25)
            {
                _root.save.inventoryAbility[k] = "Autosteal";
            }

            if (_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.2)
            {
                _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
            }
            else if (_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.07)
            {
                _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
            }
        }

        if (_root.save.inventoryMoreBonus[k] == "Random")
        {
            var bonusToGet = random(11) + 1;
            if (bonusToGet == 1)
            {
                _root.save.inventoryMoreBonus[k] = "Equipment Attack";
            }

            if (bonusToGet == 2)
            {
                _root.save.inventoryMoreBonus[k] = "Equipment Defense";
            }

            if (bonusToGet == 3)
            {
                _root.save.inventoryMoreBonus[k] = "Attack Power";
            }

            if (bonusToGet == 4)
            {
                _root.save.inventoryMoreBonus[k] = "Defense Power";
            }

            if (bonusToGet == 5)
            {
                _root.save.inventoryMoreBonus[k] = "MaxHP";
            }

            if (bonusToGet == 6)
            {
                _root.save.inventoryMoreBonus[k] = "MaxMP";
            }

            if (bonusToGet == 7)
            {
                _root.save.inventoryMoreBonus[k] = "Accuracy";
            }

            if (bonusToGet == 8)
            {
                _root.save.inventoryMoreBonus[k] = "Evasion";
            }

            if (bonusToGet == 9)
            {
                _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
            }

            if (bonusToGet == 10)
            {
                _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
            }

            if (bonusToGet == 11)
            {
                _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
            }

            if (_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
            {
                _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
            }
            else if (_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
            {
                _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
            }
        }
    }

    // MATCH: frame_4/DoAction.as:previewFusedAccessory()
    public void previewFusedAccessory(double reqRank, string subtype, double frame, double attack, double speed,
        double defense, double crit, double dexterity, double health, double maxLevel, double expTNL, double level,
        double exp, double enhance, double bonusPow, string bonus, string ability, string moreBonus, double sell,
        double expiry, bool noBonus, bool noLife, bool noFuse, bool noUnique, bool spirit, double unob, string name,
        string desc, bool guard)
    {
        var k = 1331;
        if (noBonus == null)
        {
            noBonus = false;
        }

        if (noLife == null)
        {
            noLife = true;
        }

        if (noFuse == null)
        {
            noFuse = false;
        }

        if (noUnique == null)
        {
            noUnique = false;
        }

        if (spirit == null)
        {
            spirit = false;
        }

        if (guard == null)
        {
            guard = false;
        }

        if (isNaN(level))
        {
            level = 1;
            _root.breakNews("[Error]", "ERROR: " + name + " / [level] not defined.", 16711680, 9002);
        }

        if (isNaN(exp))
        {
            exp = 0;
            _root.breakNews("[Error]", "ERROR: " + name + " / [exp] not defined.", 16711680, 9002);
        }

        if (isNaN(crit))
        {
            crit = 10;
            dexterity = 0;
            health = 0;
            _root.breakNews("[Error]", "ERROR: " + name + " / [crit] not defined.", 16711680, 9002);
        }

        if (isNaN(unob))
        {
            unob = 0;
            _root.breakNews("[Error]", "ERROR: " + name + " / [unob] not defined.", 16711680, 9002);
        }

        var itemSet = _root.checkArenaSet(name);
        if (moreBonus == null)
        {
            moreBonus = "";
            _root.breakNews("[Error]", "ERROR: " + name + " / [moreBonus] not defined.", 16711680, 9002);
        }

        if (desc == null)
        {
            desc = "";
            _root.breakNews("[Error]", "ERROR: " + name + " / [desc] not defined.", 16711680, 9002);
        }

        _root.save.inventoryExist[k] = 1;
        _root.save.inventoryName[k] = name;
        _root.save.inventoryReqRank[k] = reqRank;
        _root.save.inventoryType[k] = "Armor";
        _root.save.inventorySubtype[k] = subtype;
        _root.save.inventoryFrame[k] = frame;
        _root.save.inventoryRange[k] = false;
        _root.save.inventoryAttack[k] = attack;
        _root.save.inventorySpeed[k] = speed;
        _root.save.inventoryDefense[k] = defense;
        _root.save.inventoryBonus[k] = bonus;
        _root.save.inventoryAbility[k] = ability;
        _root.save.inventoryMoreBonus[k] = moreBonus;
        _root.save.inventoryLevel[k] = level;
        _root.save.inventoryMaxLevel[k] = maxLevel;
        _root.save.inventoryExp[k] = exp;
        _root.save.inventoryExpTNL[k] = expTNL;
        _root.save.inventoryEnhance[k] = enhance;
        _root.save.inventoryBonusPow[k] = bonusPow;
        _root.save.inventorySell[k] = sell;
        _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
        if (noLife == false)
        {
            _root.save.inventoryExpiry[k] = Infinity;
        }

        _root.save.inventoryObtainTime[k] = _root.systemtimenow;
        _root.save.inventoryDesc[k] = desc;
        _root.save.inventoryCrit[k] = crit;
        _root.save.inventoryDexterity[k] = dexterity;
        _root.save.inventoryHealth[k] = health;
        _root.save.inventoryNoBonus[k] = noBonus;
        _root.save.inventoryNoFuse[k] = noFuse;
        _root.save.inventoryNoUnique[k] = noUnique;
        _root.save.inventorySpirit[k] = spirit;
        _root.save.inventoryGuard[k] = guard;
        _root.save.inventoryUnob[k] = unob;
        _root.save.inventorySet[k] = itemSet;
        if (_root.save.inventoryBonus[k] == "Random")
        {
            var bonusToGet = random(15) + 1;
            if (Math.random() < 0.2)
            {
                bonusToGet = random(22) + 1;
            }

            if (bonusToGet == 1 || bonusToGet == 2)
            {
                _root.save.inventoryBonus[k] = "Reward";
            }

            if (bonusToGet == 3 || bonusToGet == 4)
            {
                _root.save.inventoryBonus[k] = "EXP";
            }

            if (bonusToGet == 5 || bonusToGet == 6)
            {
                _root.save.inventoryBonus[k] = "Coin";
            }

            if (bonusToGet == 7 || bonusToGet == 8)
            {
                _root.save.inventoryBonus[k] = "Pixel";
            }

            if (bonusToGet == 9 || bonusToGet == 10)
            {
                _root.save.inventoryBonus[k] = "Drop Rate";
            }

            if (bonusToGet == 11 || bonusToGet == 12)
            {
                _root.save.inventoryBonus[k] = "Spawn Rate";
            }

            if (bonusToGet == 13)
            {
                _root.save.inventoryBonus[k] = "Fire Element";
            }

            if (bonusToGet == 14)
            {
                _root.save.inventoryBonus[k] = "Ice Element";
            }

            if (bonusToGet == 15)
            {
                _root.save.inventoryBonus[k] = "Wind Element";
            }

            if (bonusToGet == 16)
            {
                _root.save.inventoryBonus[k] = "Earth Element";
            }

            if (bonusToGet == 17)
            {
                _root.save.inventoryBonus[k] = "Thunder Element";
            }

            if (bonusToGet == 18)
            {
                _root.save.inventoryBonus[k] = "Water Element";
            }

            if (bonusToGet == 19)
            {
                _root.save.inventoryBonus[k] = "Light Element";
            }

            if (bonusToGet == 20)
            {
                _root.save.inventoryBonus[k] = "Dark Element";
            }

            if (bonusToGet == 21)
            {
                _root.save.inventoryBonus[k] = "Rare Monster Rate";
            }

            if (bonusToGet == 22)
            {
                _root.save.inventoryBonus[k] = "Epic Monster Rate";
            }

            if (_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
            {
                _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
            }
            else if (_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
            {
                _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
            }
        }

        if (_root.save.inventoryAbility[k] == "Random")
        {
            var bonusToGet = random(25) + 1;
            if (bonusToGet == 1)
            {
                _root.save.inventoryAbility[k] = "Attack";
            }

            if (bonusToGet == 2)
            {
                _root.save.inventoryAbility[k] = "Attack Speed";
            }

            if (bonusToGet == 3)
            {
                _root.save.inventoryAbility[k] = "Ignore Defense";
            }

            if (bonusToGet == 4)
            {
                _root.save.inventoryAbility[k] = "Mastery";
            }

            if (bonusToGet == 5)
            {
                _root.save.inventoryAbility[k] = "Critical Chance";
            }

            if (bonusToGet == 6)
            {
                _root.save.inventoryAbility[k] = "Critical Damage";
            }

            if (bonusToGet == 7)
            {
                _root.save.inventoryAbility[k] = "Defense";
            }

            if (bonusToGet == 8)
            {
                _root.save.inventoryAbility[k] = "Damage Taken";
            }

            if (bonusToGet == 9)
            {
                _root.save.inventoryAbility[k] = "Reflect";
            }

            if (bonusToGet == 10)
            {
                _root.save.inventoryAbility[k] = "Accuracy";
            }

            if (bonusToGet == 11)
            {
                _root.save.inventoryAbility[k] = "Hit Chance";
            }

            if (bonusToGet == 12)
            {
                _root.save.inventoryAbility[k] = "Evasion";
            }

            if (bonusToGet == 13)
            {
                _root.save.inventoryAbility[k] = "Dodge Chance";
            }

            if (bonusToGet == 14)
            {
                _root.save.inventoryAbility[k] = "Poison Chance";
            }

            if (bonusToGet == 15)
            {
                _root.save.inventoryAbility[k] = "Weaken Chance";
            }

            if (bonusToGet == 16)
            {
                _root.save.inventoryAbility[k] = "Blind Chance";
            }

            if (bonusToGet == 17)
            {
                _root.save.inventoryAbility[k] = "Stun Chance";
            }

            if (bonusToGet == 18)
            {
                _root.save.inventoryAbility[k] = "HP";
            }

            if (bonusToGet == 19)
            {
                _root.save.inventoryAbility[k] = "MP";
            }

            if (bonusToGet == 20)
            {
                _root.save.inventoryAbility[k] = "HP Regen";
            }

            if (bonusToGet == 21)
            {
                _root.save.inventoryAbility[k] = "MP Regen";
            }

            if (bonusToGet == 22)
            {
                _root.save.inventoryAbility[k] = "Rage Depletion";
            }

            if (bonusToGet == 23)
            {
                _root.save.inventoryAbility[k] = "Drain";
            }

            if (bonusToGet == 24)
            {
                _root.save.inventoryAbility[k] = "Mana Eater";
            }

            if (bonusToGet == 25)
            {
                _root.save.inventoryAbility[k] = "Autosteal";
            }

            if (_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.2)
            {
                _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
            }
            else if (_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.07)
            {
                _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
            }
        }

        if (_root.save.inventoryMoreBonus[k] == "Random")
        {
            var bonusToGet = random(11) + 1;
            if (bonusToGet == 1)
            {
                _root.save.inventoryMoreBonus[k] = "Equipment Attack";
            }

            if (bonusToGet == 2)
            {
                _root.save.inventoryMoreBonus[k] = "Equipment Defense";
            }

            if (bonusToGet == 3)
            {
                _root.save.inventoryMoreBonus[k] = "Attack Power";
            }

            if (bonusToGet == 4)
            {
                _root.save.inventoryMoreBonus[k] = "Defense Power";
            }

            if (bonusToGet == 5)
            {
                _root.save.inventoryMoreBonus[k] = "MaxHP";
            }

            if (bonusToGet == 6)
            {
                _root.save.inventoryMoreBonus[k] = "MaxMP";
            }

            if (bonusToGet == 7)
            {
                _root.save.inventoryMoreBonus[k] = "Accuracy";
            }

            if (bonusToGet == 8)
            {
                _root.save.inventoryMoreBonus[k] = "Evasion";
            }

            if (bonusToGet == 9)
            {
                _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
            }

            if (bonusToGet == 10)
            {
                _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
            }

            if (bonusToGet == 11)
            {
                _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
            }

            if (_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
            {
                _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
            }
            else if (_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
            {
                _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
            }
        }
    }

    // MATCH: frame_4/DoAction.as:getArenaWeapon()
    public void getArenaWeapon(double reqRank, string subtype, double frame, bool range, double attack, double speed,
        double defense, double crit, double dexterity, double health, double maxLevel, double expTNL, double level,
        double exp, double enhance, double bonusPow, string bonus, string ability, string moreBonus, double sell,
        double expiry, bool noBonus, bool noLife, bool noFuse, bool noUnique, bool spirit, double unob, string name,
        string desc, bool guard = false)
    {
        var k = 9999;
        var i = 1;
        while (i <= 30)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                if (k > i)
                {
                    k = i;
                }
            }

            i++;
        }

        if (k == 9999)
        {
            k = (int)_root.save.arenaDeletedSlot;
            _root.save.arenaDeletedSlot += 1;
            if (_root.save.arenaDeletedSlot > 830)
            {
                _root.save.arenaDeletedSlot = 801;
            }

            _root.deleteArenaItem(k);
        }

        if (name != null)
        {
            if (noBonus == null)
            {
                noBonus = false;
            }

            if (noLife == null)
            {
                noLife = true;
            }

            if (noFuse == null)
            {
                noFuse = false;
            }

            if (noUnique == null)
            {
                noUnique = false;
            }

            if (spirit == null)
            {
                spirit = false;
            }

            if (guard == null)
            {
                guard = false;
            }

            if (isNaN(level))
            {
                level = 1;
                _root.breakNews("[Error]", "ERROR: " + name + " / [level] not defined.", 16711680, 9002);
            }

            if (isNaN(exp))
            {
                exp = 0;
                _root.breakNews("[Error]", "ERROR: " + name + " / [exp] not defined.", 16711680, 9002);
            }

            if (isNaN(crit))
            {
                crit = 10;
                dexterity = 0;
                health = 0;
                _root.breakNews("[Error]", "ERROR: " + name + " / [crit] not defined.", 16711680, 9002);
            }

            if (isNaN(unob))
            {
                unob = 0;
                _root.breakNews("[Error]", "ERROR: " + name + " / [unob] not defined.", 16711680, 9002);
            }

            var itemSet = _root.checkArenaSet(name);
            if (moreBonus == null)
            {
                moreBonus = "";
                _root.breakNews("[Error]", "ERROR: " + name + " / [moreBonus] not defined.", 16711680, 9002);
            }

            if (desc == null)
            {
                desc = "";
                _root.breakNews("[Error]", "ERROR: " + name + " / [desc] not defined.", 16711680, 9002);
            }

            _root.save.inventoryExist[k] = 1;
            _root.save.inventoryName[k] = name;
            _root.save.inventoryReqRank[k] = reqRank;
            _root.save.inventoryType[k] = "Weapon";
            _root.save.inventorySubtype[k] = subtype;
            _root.save.inventoryFrame[k] = frame;
            _root.save.inventoryRange[k] = range;
            _root.save.inventoryAttack[k] = attack;
            _root.save.inventorySpeed[k] = speed;
            _root.save.inventoryDefense[k] = defense;
            _root.save.inventoryBonus[k] = bonus;
            _root.save.inventoryAbility[k] = ability;
            _root.save.inventoryMoreBonus[k] = moreBonus;
            _root.save.inventoryLevel[k] = level;
            _root.save.inventoryMaxLevel[k] = maxLevel;
            _root.save.inventoryExp[k] = exp;
            _root.save.inventoryExpTNL[k] = expTNL;
            _root.save.inventoryEnhance[k] = enhance;
            _root.save.inventoryBonusPow[k] = bonusPow;
            _root.save.inventorySell[k] = sell;
            _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
            if (noLife == false)
            {
                _root.save.inventoryExpiry[k] = Infinity;
            }

            _root.save.inventoryObtainTime[k] = _root.systemtimenow;
            _root.save.inventoryDesc[k] = desc;
            _root.save.inventoryCrit[k] = crit;
            _root.save.inventoryDexterity[k] = dexterity;
            _root.save.inventoryHealth[k] = health;
            _root.save.inventoryNoBonus[k] = noBonus;
            _root.save.inventoryNoFuse[k] = noFuse;
            _root.save.inventoryNoUnique[k] = noUnique;
            _root.save.inventorySpirit[k] = spirit;
            _root.save.inventoryGuard[k] = guard;
            _root.save.inventoryUnob[k] = unob;
            _root.save.inventorySet[k] = itemSet;
            if (_root.save.inventoryBonus[k] == "Random")
            {
                var bonusToGet = random(22) + 1;
                if (bonusToGet == 1 || bonusToGet == 2)
                {
                    _root.save.inventoryBonus[k] = "Reward";
                }

                if (bonusToGet == 3 || bonusToGet == 4)
                {
                    _root.save.inventoryBonus[k] = "EXP";
                }

                if (bonusToGet == 5 || bonusToGet == 6)
                {
                    _root.save.inventoryBonus[k] = "Coin";
                }

                if (bonusToGet == 7 || bonusToGet == 8)
                {
                    _root.save.inventoryBonus[k] = "Pixel";
                }

                if (bonusToGet == 9 || bonusToGet == 10)
                {
                    _root.save.inventoryBonus[k] = "Drop Rate";
                }

                if (bonusToGet == 11 || bonusToGet == 12)
                {
                    _root.save.inventoryBonus[k] = "Spawn Rate";
                }

                if (bonusToGet == 13)
                {
                    _root.save.inventoryBonus[k] = "Fire Element";
                }

                if (bonusToGet == 14)
                {
                    _root.save.inventoryBonus[k] = "Ice Element";
                }

                if (bonusToGet == 15)
                {
                    _root.save.inventoryBonus[k] = "Wind Element";
                }

                if (bonusToGet == 16)
                {
                    _root.save.inventoryBonus[k] = "Earth Element";
                }

                if (bonusToGet == 17)
                {
                    _root.save.inventoryBonus[k] = "Thunder Element";
                }

                if (bonusToGet == 18)
                {
                    _root.save.inventoryBonus[k] = "Water Element";
                }

                if (bonusToGet == 19)
                {
                    _root.save.inventoryBonus[k] = "Light Element";
                }

                if (bonusToGet == 20)
                {
                    _root.save.inventoryBonus[k] = "Dark Element";
                }

                if (bonusToGet == 21)
                {
                    _root.save.inventoryBonus[k] = "Rare Monster Rate";
                }

                if (bonusToGet == 22)
                {
                    _root.save.inventoryBonus[k] = "Epic Monster Rate";
                }

                if (_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
                {
                    _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
                }
                else if (_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
                {
                    _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
                }
            }

            if (_root.save.inventoryAbility[k] == "Random")
            {
                var bonusToGet = random(47) + 1;
                if (bonusToGet == 1)
                {
                    _root.save.inventoryAbility[k] = "Attack";
                }

                if (bonusToGet == 2)
                {
                    _root.save.inventoryAbility[k] = "Attack Speed";
                }

                if (bonusToGet == 3)
                {
                    _root.save.inventoryAbility[k] = "Ignore Defense";
                }

                if (bonusToGet == 4)
                {
                    _root.save.inventoryAbility[k] = "Mastery";
                }

                if (bonusToGet == 5)
                {
                    _root.save.inventoryAbility[k] = "Critical Chance";
                }

                if (bonusToGet == 6)
                {
                    _root.save.inventoryAbility[k] = "Critical Damage";
                }

                if (bonusToGet == 7)
                {
                    _root.save.inventoryAbility[k] = "Defense";
                }

                if (bonusToGet == 8)
                {
                    _root.save.inventoryAbility[k] = "Damage Taken";
                }

                if (bonusToGet == 9)
                {
                    _root.save.inventoryAbility[k] = "Reflect";
                }

                if (bonusToGet == 10)
                {
                    _root.save.inventoryAbility[k] = "Accuracy";
                }

                if (bonusToGet == 11)
                {
                    _root.save.inventoryAbility[k] = "Hit Chance";
                }

                if (bonusToGet == 12)
                {
                    _root.save.inventoryAbility[k] = "Evasion";
                }

                if (bonusToGet == 13)
                {
                    _root.save.inventoryAbility[k] = "Dodge Chance";
                }

                if (bonusToGet == 14)
                {
                    _root.save.inventoryAbility[k] = "Poison Chance";
                }

                if (bonusToGet == 15)
                {
                    _root.save.inventoryAbility[k] = "Weaken Chance";
                }

                if (bonusToGet == 16)
                {
                    _root.save.inventoryAbility[k] = "Blind Chance";
                }

                if (bonusToGet == 17)
                {
                    _root.save.inventoryAbility[k] = "Stun Chance";
                }

                if (bonusToGet == 18)
                {
                    _root.save.inventoryAbility[k] = "HP";
                }

                if (bonusToGet == 19)
                {
                    _root.save.inventoryAbility[k] = "MP";
                }

                if (bonusToGet == 20)
                {
                    _root.save.inventoryAbility[k] = "HP Regen";
                }

                if (bonusToGet == 21)
                {
                    _root.save.inventoryAbility[k] = "MP Regen";
                }

                if (bonusToGet == 22)
                {
                    _root.save.inventoryAbility[k] = "Rage Depletion";
                }

                if (bonusToGet == 23)
                {
                    _root.save.inventoryAbility[k] = "Drain";
                }

                if (bonusToGet == 24)
                {
                    _root.save.inventoryAbility[k] = "Mana Eater";
                }

                if (bonusToGet == 25)
                {
                    _root.save.inventoryAbility[k] = "Autosteal";
                }

                if (bonusToGet == 26)
                {
                    _root.save.inventoryAbility[k] = "Double Hit Chance";
                }

                if (bonusToGet == 27)
                {
                    _root.save.inventoryAbility[k] = "Rage Attack";
                }

                if (bonusToGet == 28)
                {
                    _root.save.inventoryAbility[k] = "Rage Speed";
                }

                if (bonusToGet == 29)
                {
                    _root.save.inventoryAbility[k] = "Poison Damage";
                }

                if (bonusToGet == 30)
                {
                    _root.save.inventoryAbility[k] = "Poison Duration";
                }

                if (bonusToGet == 31)
                {
                    _root.save.inventoryAbility[k] = "Weaken Effect";
                }

                if (bonusToGet == 32)
                {
                    _root.save.inventoryAbility[k] = "Weaken Duration";
                }

                if (bonusToGet == 33)
                {
                    _root.save.inventoryAbility[k] = "Blind Effect";
                }

                if (bonusToGet == 34)
                {
                    _root.save.inventoryAbility[k] = "Blind Duration";
                }

                if (bonusToGet == 35)
                {
                    _root.save.inventoryAbility[k] = "Potion Efficiency";
                }

                if (bonusToGet == 36)
                {
                    _root.save.inventoryAbility[k] = "Boss Damage";
                }

                if (bonusToGet == 37)
                {
                    _root.save.inventoryAbility[k] = "Magic Resist";
                }

                if (bonusToGet == 38)
                {
                    _root.save.inventoryAbility[k] = "Instant Kill";
                }

                if (bonusToGet == 39)
                {
                    _root.save.inventoryAbility[k] = "Negate Effect";
                }

                if (bonusToGet == 40)
                {
                    _root.save.inventoryAbility[k] = "Non-Boss Damage";
                }

                if (bonusToGet == 41)
                {
                    _root.save.inventoryAbility[k] = "Damage";
                }

                if (bonusToGet == 42)
                {
                    _root.save.inventoryAbility[k] = "Extra Combo";
                }

                if (bonusToGet == 43)
                {
                    _root.save.inventoryAbility[k] = "Magic Reflect";
                }

                if (bonusToGet == 44)
                {
                    _root.save.inventoryAbility[k] = "Nullify Death Penalty";
                }

                if (bonusToGet == 45)
                {
                    _root.save.inventoryAbility[k] = "Buff Effect";
                }

                if (bonusToGet == 46)
                {
                    _root.save.inventoryAbility[k] = "All Elements";
                }

                if (bonusToGet == 47)
                {
                    _root.save.inventoryAbility[k] = "Max Spirit";
                }

                if (_root.save.arenaAbilityPreference1 != "None" && Math.random() < 0.2)
                {
                    _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference1;
                }
                else if (_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.1)
                {
                    _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
                }
                else if (_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.05)
                {
                    _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
                }
            }

            if (_root.save.inventoryMoreBonus[k] == "Random")
            {
                var bonusToGet = random(11) + 1;
                if (bonusToGet == 1)
                {
                    _root.save.inventoryMoreBonus[k] = "Equipment Attack";
                }

                if (bonusToGet == 2)
                {
                    _root.save.inventoryMoreBonus[k] = "Equipment Defense";
                }

                if (bonusToGet == 3)
                {
                    _root.save.inventoryMoreBonus[k] = "Attack Power";
                }

                if (bonusToGet == 4)
                {
                    _root.save.inventoryMoreBonus[k] = "Defense Power";
                }

                if (bonusToGet == 5)
                {
                    _root.save.inventoryMoreBonus[k] = "MaxHP";
                }

                if (bonusToGet == 6)
                {
                    _root.save.inventoryMoreBonus[k] = "MaxMP";
                }

                if (bonusToGet == 7)
                {
                    _root.save.inventoryMoreBonus[k] = "Accuracy";
                }

                if (bonusToGet == 8)
                {
                    _root.save.inventoryMoreBonus[k] = "Evasion";
                }

                if (bonusToGet == 9)
                {
                    _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
                }

                if (bonusToGet == 10)
                {
                    _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
                }

                if (bonusToGet == 11)
                {
                    _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
                }

                if (_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
                {
                    _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
                }
                else if (_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
                {
                    _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
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

    // MATCH: frame_4/DoAction.as:getArenaArmor()
    public void getArenaArmor(double reqRank, string subtype, double frame, double attack, double speed, double defense,
        double crit, double dexterity, double health, double maxLevel, double expTNL, double level, double exp,
        double enhance, double bonusPow, string bonus, string ability, string moreBonus, double sell, double expiry,
        bool noBonus, bool noLife, bool noFuse, bool noUnique, bool spirit, double unob, string name, string desc,
        bool guard = false)
    {
        var k = 9999;
        var i = 101;
        while (i <= 130)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                if (k > i)
                {
                    k = i;
                }
            }

            i++;
        }

        if (k == 9999)
        {
            k = (int)_root.save.arenaDeletedSlot;
            _root.save.arenaDeletedSlot += 1;
            if (_root.save.arenaDeletedSlot > 830)
            {
                _root.save.arenaDeletedSlot = 801;
            }

            _root.deleteArenaItem(k);
        }

        if (name != null)
        {
            if (noBonus == null)
            {
                noBonus = false;
            }

            if (noLife == null)
            {
                noLife = true;
            }

            if (noFuse == null)
            {
                noFuse = false;
            }

            if (noUnique == null)
            {
                noUnique = false;
            }

            if (spirit == null)
            {
                spirit = false;
            }

            if (guard == null)
            {
                guard = false;
            }

            if (isNaN(level))
            {
                level = 1;
                _root.breakNews("[Error]", "ERROR: " + name + " / [level] not defined.", 16711680, 9002);
            }

            if (isNaN(exp))
            {
                exp = 0;
                _root.breakNews("[Error]", "ERROR: " + name + " / [exp] not defined.", 16711680, 9002);
            }

            if (isNaN(crit))
            {
                crit = 10;
                dexterity = 0;
                health = 0;
                _root.breakNews("[Error]", "ERROR: " + name + " / [crit] not defined.", 16711680, 9002);
            }

            if (isNaN(unob))
            {
                unob = 0;
                _root.breakNews("[Error]", "ERROR: " + name + " / [unob] not defined.", 16711680, 9002);
            }

            var itemSet = _root.checkArenaSet(name);
            if (moreBonus == null)
            {
                moreBonus = "";
                _root.breakNews("[Error]", "ERROR: " + name + " / [moreBonus] not defined.", 16711680, 9002);
            }

            if (desc == null)
            {
                desc = "";
                _root.breakNews("[Error]", "ERROR: " + name + " / [desc] not defined.", 16711680, 9002);
            }

            _root.save.inventoryExist[k] = 1;
            _root.save.inventoryName[k] = name;
            _root.save.inventoryReqRank[k] = reqRank;
            _root.save.inventoryType[k] = "Armor";
            _root.save.inventorySubtype[k] = subtype;
            _root.save.inventoryFrame[k] = frame;
            _root.save.inventoryRange[k] = false;
            _root.save.inventoryAttack[k] = attack;
            _root.save.inventorySpeed[k] = speed;
            _root.save.inventoryDefense[k] = defense;
            _root.save.inventoryBonus[k] = bonus;
            _root.save.inventoryAbility[k] = ability;
            _root.save.inventoryMoreBonus[k] = moreBonus;
            _root.save.inventoryLevel[k] = level;
            _root.save.inventoryMaxLevel[k] = maxLevel;
            _root.save.inventoryExp[k] = exp;
            _root.save.inventoryExpTNL[k] = expTNL;
            _root.save.inventoryEnhance[k] = enhance;
            _root.save.inventoryBonusPow[k] = bonusPow;
            _root.save.inventorySell[k] = sell;
            _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
            if (noLife == false)
            {
                _root.save.inventoryExpiry[k] = Infinity;
            }

            _root.save.inventoryObtainTime[k] = _root.systemtimenow;
            _root.save.inventoryDesc[k] = desc;
            _root.save.inventoryCrit[k] = crit;
            _root.save.inventoryDexterity[k] = dexterity;
            _root.save.inventoryHealth[k] = health;
            _root.save.inventoryNoBonus[k] = noBonus;
            _root.save.inventoryNoFuse[k] = noFuse;
            _root.save.inventoryNoUnique[k] = noUnique;
            _root.save.inventorySpirit[k] = spirit;
            _root.save.inventoryGuard[k] = guard;
            _root.save.inventoryUnob[k] = unob;
            _root.save.inventorySet[k] = itemSet;
            if (_root.save.inventoryBonus[k] == "Random")
            {
                var bonusToGet = random(15) + 1;
                if (Math.random() < 0.2)
                {
                    bonusToGet = random(22) + 1;
                }

                if (bonusToGet == 1 || bonusToGet == 2)
                {
                    _root.save.inventoryBonus[k] = "Reward";
                }

                if (bonusToGet == 3 || bonusToGet == 4)
                {
                    _root.save.inventoryBonus[k] = "EXP";
                }

                if (bonusToGet == 5 || bonusToGet == 6)
                {
                    _root.save.inventoryBonus[k] = "Coin";
                }

                if (bonusToGet == 7 || bonusToGet == 8)
                {
                    _root.save.inventoryBonus[k] = "Pixel";
                }

                if (bonusToGet == 9 || bonusToGet == 10)
                {
                    _root.save.inventoryBonus[k] = "Drop Rate";
                }

                if (bonusToGet == 11 || bonusToGet == 12)
                {
                    _root.save.inventoryBonus[k] = "Spawn Rate";
                }

                if (bonusToGet == 13)
                {
                    _root.save.inventoryBonus[k] = "Fire Element";
                }

                if (bonusToGet == 14)
                {
                    _root.save.inventoryBonus[k] = "Ice Element";
                }

                if (bonusToGet == 15)
                {
                    _root.save.inventoryBonus[k] = "Wind Element";
                }

                if (bonusToGet == 16)
                {
                    _root.save.inventoryBonus[k] = "Earth Element";
                }

                if (bonusToGet == 17)
                {
                    _root.save.inventoryBonus[k] = "Thunder Element";
                }

                if (bonusToGet == 18)
                {
                    _root.save.inventoryBonus[k] = "Water Element";
                }

                if (bonusToGet == 19)
                {
                    _root.save.inventoryBonus[k] = "Light Element";
                }

                if (bonusToGet == 20)
                {
                    _root.save.inventoryBonus[k] = "Dark Element";
                }

                if (bonusToGet == 21)
                {
                    _root.save.inventoryBonus[k] = "Rare Monster Rate";
                }

                if (bonusToGet == 22)
                {
                    _root.save.inventoryBonus[k] = "Epic Monster Rate";
                }

                if (_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
                {
                    _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
                }
                else if (_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
                {
                    _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
                }
            }

            if (_root.save.inventoryAbility[k] == "Random")
            {
                var bonusToGet = random(25) + 1;
                if (bonusToGet == 1)
                {
                    _root.save.inventoryAbility[k] = "Attack";
                }

                if (bonusToGet == 2)
                {
                    _root.save.inventoryAbility[k] = "Attack Speed";
                }

                if (bonusToGet == 3)
                {
                    _root.save.inventoryAbility[k] = "Ignore Defense";
                }

                if (bonusToGet == 4)
                {
                    _root.save.inventoryAbility[k] = "Mastery";
                }

                if (bonusToGet == 5)
                {
                    _root.save.inventoryAbility[k] = "Critical Chance";
                }

                if (bonusToGet == 6)
                {
                    _root.save.inventoryAbility[k] = "Critical Damage";
                }

                if (bonusToGet == 7)
                {
                    _root.save.inventoryAbility[k] = "Defense";
                }

                if (bonusToGet == 8)
                {
                    _root.save.inventoryAbility[k] = "Damage Taken";
                }

                if (bonusToGet == 9)
                {
                    _root.save.inventoryAbility[k] = "Reflect";
                }

                if (bonusToGet == 10)
                {
                    _root.save.inventoryAbility[k] = "Accuracy";
                }

                if (bonusToGet == 11)
                {
                    _root.save.inventoryAbility[k] = "Hit Chance";
                }

                if (bonusToGet == 12)
                {
                    _root.save.inventoryAbility[k] = "Evasion";
                }

                if (bonusToGet == 13)
                {
                    _root.save.inventoryAbility[k] = "Dodge Chance";
                }

                if (bonusToGet == 14)
                {
                    _root.save.inventoryAbility[k] = "Poison Chance";
                }

                if (bonusToGet == 15)
                {
                    _root.save.inventoryAbility[k] = "Weaken Chance";
                }

                if (bonusToGet == 16)
                {
                    _root.save.inventoryAbility[k] = "Blind Chance";
                }

                if (bonusToGet == 17)
                {
                    _root.save.inventoryAbility[k] = "Stun Chance";
                }

                if (bonusToGet == 18)
                {
                    _root.save.inventoryAbility[k] = "HP";
                }

                if (bonusToGet == 19)
                {
                    _root.save.inventoryAbility[k] = "MP";
                }

                if (bonusToGet == 20)
                {
                    _root.save.inventoryAbility[k] = "HP Regen";
                }

                if (bonusToGet == 21)
                {
                    _root.save.inventoryAbility[k] = "MP Regen";
                }

                if (bonusToGet == 22)
                {
                    _root.save.inventoryAbility[k] = "Rage Depletion";
                }

                if (bonusToGet == 23)
                {
                    _root.save.inventoryAbility[k] = "Drain";
                }

                if (bonusToGet == 24)
                {
                    _root.save.inventoryAbility[k] = "Mana Eater";
                }

                if (bonusToGet == 25)
                {
                    _root.save.inventoryAbility[k] = "Autosteal";
                }

                if (_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.2)
                {
                    _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
                }
                else if (_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.07)
                {
                    _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
                }
            }

            if (_root.save.inventoryMoreBonus[k] == "Random")
            {
                var bonusToGet = random(11) + 1;
                if (bonusToGet == 1)
                {
                    _root.save.inventoryMoreBonus[k] = "Equipment Attack";
                }

                if (bonusToGet == 2)
                {
                    _root.save.inventoryMoreBonus[k] = "Equipment Defense";
                }

                if (bonusToGet == 3)
                {
                    _root.save.inventoryMoreBonus[k] = "Attack Power";
                }

                if (bonusToGet == 4)
                {
                    _root.save.inventoryMoreBonus[k] = "Defense Power";
                }

                if (bonusToGet == 5)
                {
                    _root.save.inventoryMoreBonus[k] = "MaxHP";
                }

                if (bonusToGet == 6)
                {
                    _root.save.inventoryMoreBonus[k] = "MaxMP";
                }

                if (bonusToGet == 7)
                {
                    _root.save.inventoryMoreBonus[k] = "Accuracy";
                }

                if (bonusToGet == 8)
                {
                    _root.save.inventoryMoreBonus[k] = "Evasion";
                }

                if (bonusToGet == 9)
                {
                    _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
                }

                if (bonusToGet == 10)
                {
                    _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
                }

                if (bonusToGet == 11)
                {
                    _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
                }

                if (_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
                {
                    _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
                }
                else if (_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
                {
                    _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
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

    // MATCH: frame_4/DoAction.as:getArenaOutfit()
    public void getArenaOutfit(double reqRank, string subtype, double frame, double bonusPow, double sell, string name,
        string desc)
    {
        var k = 9999;
        var i = 601;
        while (i <= 630)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                if (k > i)
                {
                    k = i;
                }
            }

            i++;
        }

        if (k == 9999)
        {
            k = (int)_root.save.arenaDeletedSlot;
            _root.save.arenaDeletedSlot += 1;
            if (_root.save.arenaDeletedSlot > 830)
            {
                _root.save.arenaDeletedSlot = 801;
            }

            _root.deleteArenaItem(k);
        }

        if (name != null)
        {
            _root.save.inventoryExist[k] = 1;
            _root.save.inventoryName[k] = name;
            _root.save.inventoryReqRank[k] = reqRank;
            _root.save.inventoryType[k] = "Outfit";
            _root.save.inventorySubtype[k] = subtype;
            _root.save.inventoryFrame[k] = frame;
            _root.save.inventoryEnhance[k] = 0;
            _root.save.inventoryBonusPow[k] = bonusPow;
            _root.save.inventorySell[k] = sell;
            _root.save.inventoryExpiry[k] = Infinity;
            _root.save.inventoryObtainTime[k] = _root.systemtimenow;
            _root.save.inventoryDesc[k] = desc;
            if (k <= 630)
            {
                _root.dispNews(54, "Outfit GET! [" + name + "]");
            }
            else
            {
                _root.dispNews(60, "Outfit inventory full! [" + name + "] moved to Recently Deleted tab.");
            }
        }
        else
        {
            _root.dispNews(60, "Outfit inventory full! [" + name + "] deleted :(");
        }

        checkFullInventory();
    }

    // MATCH: frame_4/DoAction.as:getArenaAccessory()
    public void getArenaAccessory(double reqRank, string subtype, double frame, double attack, double speed,
        double defense, double crit, double dexterity, double health, double maxLevel, double expTNL, double level,
        double exp, double enhance, double bonusPow, string bonus, string ability, string moreBonus, double sell,
        double expiry, bool noBonus, bool noLife, bool noFuse, bool noUnique, bool spirit, double unob, string name,
        string desc, bool guard = false)
    {
        var k = 9999;
        var i = 501;
        while (i <= 530)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                if (k > i)
                {
                    k = i;
                }
            }

            i++;
        }

        if (k == 9999)
        {
            k = (int)_root.save.arenaDeletedSlot;
            _root.save.arenaDeletedSlot += 1;
            if (_root.save.arenaDeletedSlot > 830)
            {
                _root.save.arenaDeletedSlot = 801;
            }

            _root.deleteArenaItem(k);
        }

        if (name != null)
        {
            if (noBonus == null)
            {
                noBonus = false;
            }

            if (noLife == null)
            {
                noLife = true;
            }

            if (noFuse == null)
            {
                noFuse = false;
            }

            if (noUnique == null)
            {
                noUnique = false;
            }

            if (spirit == null)
            {
                spirit = false;
            }

            if (guard == null)
            {
                guard = false;
            }

            if (isNaN(level))
            {
                level = 1;
                _root.breakNews("[Error]", "ERROR: " + name + " / [level] not defined.", 16711680, 9002);
            }

            if (isNaN(exp))
            {
                exp = 0;
                _root.breakNews("[Error]", "ERROR: " + name + " / [exp] not defined.", 16711680, 9002);
            }

            if (isNaN(crit))
            {
                crit = 10;
                dexterity = 0;
                health = 0;
                _root.breakNews("[Error]", "ERROR: " + name + " / [crit] not defined.", 16711680, 9002);
            }

            if (isNaN(unob))
            {
                unob = 0;
                _root.breakNews("[Error]", "ERROR: " + name + " / [unob] not defined.", 16711680, 9002);
            }

            var itemSet = _root.checkArenaSet(name);
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
                _root.breakNews("[Error]", "ERROR: " + name + " / [moreBonus] not defined.", 16711680, 9002);
            }

            if (desc == null)
            {
                desc = "";
                _root.breakNews("[Error]", "ERROR: " + name + " / [desc] not defined.", 16711680, 9002);
            }

            _root.save.inventoryExist[k] = 1;
            _root.save.inventoryName[k] = name;
            _root.save.inventoryReqRank[k] = reqRank;
            _root.save.inventoryType[k] = "Accessory";
            _root.save.inventorySubtype[k] = subtype;
            _root.save.inventoryFrame[k] = frame;
            _root.save.inventoryRange[k] = false;
            _root.save.inventoryAttack[k] = attack;
            _root.save.inventorySpeed[k] = speed;
            _root.save.inventoryDefense[k] = defense;
            _root.save.inventoryBonus[k] = bonus;
            _root.save.inventoryAbility[k] = ability;
            if (moreBonus == null)
            {
                moreBonus = "";
            }

            _root.save.inventoryMoreBonus[k] = moreBonus;
            _root.save.inventoryLevel[k] = level;
            _root.save.inventoryMaxLevel[k] = maxLevel;
            _root.save.inventoryExp[k] = exp;
            if (isNaN(level))
            {
                _root.save.inventoryLevel[k] = 1;
            }

            if (isNaN(exp))
            {
                _root.save.inventoryExp[k] = 0;
            }

            _root.save.inventoryExpTNL[k] = expTNL;
            _root.save.inventoryEnhance[k] = enhance;
            _root.save.inventoryBonusPow[k] = bonusPow;
            _root.save.inventorySell[k] = sell;
            _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
            if (noLife == false)
            {
                _root.save.inventoryExpiry[k] = Infinity;
            }

            _root.save.inventoryObtainTime[k] = _root.systemtimenow;
            _root.save.inventoryDesc[k] = desc;
            _root.save.inventoryCrit[k] = crit;
            _root.save.inventoryDexterity[k] = dexterity;
            _root.save.inventoryHealth[k] = health;
            _root.save.inventoryNoBonus[k] = noBonus;
            _root.save.inventoryNoFuse[k] = false;
            _root.save.inventoryNoUnique[k] = noUnique;
            _root.save.inventorySpirit[k] = spirit;
            _root.save.inventoryGuard[k] = guard;
            _root.save.inventoryUnob[k] = unob;
            _root.save.inventorySet[k] = itemSet;
            if (_root.save.inventoryBonus[k] == "Random")
            {
                var bonusToGet = random(22) + 1;
                if (bonusToGet == 1 || bonusToGet == 2)
                {
                    _root.save.inventoryBonus[k] = "Reward";
                }

                if (bonusToGet == 3 || bonusToGet == 4)
                {
                    _root.save.inventoryBonus[k] = "EXP";
                }

                if (bonusToGet == 5 || bonusToGet == 6)
                {
                    _root.save.inventoryBonus[k] = "Coin";
                }

                if (bonusToGet == 7 || bonusToGet == 8)
                {
                    _root.save.inventoryBonus[k] = "Pixel";
                }

                if (bonusToGet == 9 || bonusToGet == 10)
                {
                    _root.save.inventoryBonus[k] = "Drop Rate";
                }

                if (bonusToGet == 11 || bonusToGet == 12)
                {
                    _root.save.inventoryBonus[k] = "Spawn Rate";
                }

                if (bonusToGet == 13)
                {
                    _root.save.inventoryBonus[k] = "Fire Element";
                }

                if (bonusToGet == 14)
                {
                    _root.save.inventoryBonus[k] = "Ice Element";
                }

                if (bonusToGet == 15)
                {
                    _root.save.inventoryBonus[k] = "Wind Element";
                }

                if (bonusToGet == 16)
                {
                    _root.save.inventoryBonus[k] = "Earth Element";
                }

                if (bonusToGet == 17)
                {
                    _root.save.inventoryBonus[k] = "Thunder Element";
                }

                if (bonusToGet == 18)
                {
                    _root.save.inventoryBonus[k] = "Water Element";
                }

                if (bonusToGet == 19)
                {
                    _root.save.inventoryBonus[k] = "Light Element";
                }

                if (bonusToGet == 20)
                {
                    _root.save.inventoryBonus[k] = "Dark Element";
                }

                if (bonusToGet == 21)
                {
                    _root.save.inventoryBonus[k] = "Rare Monster Rate";
                }

                if (bonusToGet == 22)
                {
                    _root.save.inventoryBonus[k] = "Epic Monster Rate";
                }

                if (_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
                {
                    _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
                }
                else if (_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
                {
                    _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
                }
            }

            if (_root.save.inventoryAbility[k] == "Random")
            {
                var bonusToGet = random(25) + 1;
                if (bonusToGet == 1)
                {
                    _root.save.inventoryAbility[k] = "Attack";
                }

                if (bonusToGet == 2)
                {
                    _root.save.inventoryAbility[k] = "Attack Speed";
                }

                if (bonusToGet == 3)
                {
                    _root.save.inventoryAbility[k] = "Ignore Defense";
                }

                if (bonusToGet == 4)
                {
                    _root.save.inventoryAbility[k] = "Mastery";
                }

                if (bonusToGet == 5)
                {
                    _root.save.inventoryAbility[k] = "Critical Chance";
                }

                if (bonusToGet == 6)
                {
                    _root.save.inventoryAbility[k] = "Critical Damage";
                }

                if (bonusToGet == 7)
                {
                    _root.save.inventoryAbility[k] = "Defense";
                }

                if (bonusToGet == 8)
                {
                    _root.save.inventoryAbility[k] = "Damage Taken";
                }

                if (bonusToGet == 9)
                {
                    _root.save.inventoryAbility[k] = "Reflect";
                }

                if (bonusToGet == 10)
                {
                    _root.save.inventoryAbility[k] = "Accuracy";
                }

                if (bonusToGet == 11)
                {
                    _root.save.inventoryAbility[k] = "Hit Chance";
                }

                if (bonusToGet == 12)
                {
                    _root.save.inventoryAbility[k] = "Evasion";
                }

                if (bonusToGet == 13)
                {
                    _root.save.inventoryAbility[k] = "Dodge Chance";
                }

                if (bonusToGet == 14)
                {
                    _root.save.inventoryAbility[k] = "Poison Chance";
                }

                if (bonusToGet == 15)
                {
                    _root.save.inventoryAbility[k] = "Weaken Chance";
                }

                if (bonusToGet == 16)
                {
                    _root.save.inventoryAbility[k] = "Blind Chance";
                }

                if (bonusToGet == 17)
                {
                    _root.save.inventoryAbility[k] = "Stun Chance";
                }

                if (bonusToGet == 18)
                {
                    _root.save.inventoryAbility[k] = "HP";
                }

                if (bonusToGet == 19)
                {
                    _root.save.inventoryAbility[k] = "MP";
                }

                if (bonusToGet == 20)
                {
                    _root.save.inventoryAbility[k] = "HP Regen";
                }

                if (bonusToGet == 21)
                {
                    _root.save.inventoryAbility[k] = "MP Regen";
                }

                if (bonusToGet == 22)
                {
                    _root.save.inventoryAbility[k] = "Rage Depletion";
                }

                if (bonusToGet == 23)
                {
                    _root.save.inventoryAbility[k] = "Drain";
                }

                if (bonusToGet == 24)
                {
                    _root.save.inventoryAbility[k] = "Mana Eater";
                }

                if (bonusToGet == 25)
                {
                    _root.save.inventoryAbility[k] = "Autosteal";
                }

                if (_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.2)
                {
                    _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
                }
                else if (_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.07)
                {
                    _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
                }
            }

            if (_root.save.inventoryMoreBonus[k] == "Random")
            {
                var bonusToGet = random(11) + 1;
                if (bonusToGet == 1)
                {
                    _root.save.inventoryMoreBonus[k] = "Equipment Attack";
                }

                if (bonusToGet == 2)
                {
                    _root.save.inventoryMoreBonus[k] = "Equipment Defense";
                }

                if (bonusToGet == 3)
                {
                    _root.save.inventoryMoreBonus[k] = "Attack Power";
                }

                if (bonusToGet == 4)
                {
                    _root.save.inventoryMoreBonus[k] = "Defense Power";
                }

                if (bonusToGet == 5)
                {
                    _root.save.inventoryMoreBonus[k] = "MaxHP";
                }

                if (bonusToGet == 6)
                {
                    _root.save.inventoryMoreBonus[k] = "MaxMP";
                }

                if (bonusToGet == 7)
                {
                    _root.save.inventoryMoreBonus[k] = "Accuracy";
                }

                if (bonusToGet == 8)
                {
                    _root.save.inventoryMoreBonus[k] = "Evasion";
                }

                if (bonusToGet == 9)
                {
                    _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
                }

                if (bonusToGet == 10)
                {
                    _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
                }

                if (bonusToGet == 11)
                {
                    _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
                }

                if (_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
                {
                    _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
                }
                else if (_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
                {
                    _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
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

    // MATCH: frame_4/DoAction.as:getArenaEnhancer()
    public void getArenaEnhancer(string subtype, double frame, double power, double curse, double success, string bonus,
        string ability, string moreBonus, double enhance, double bonusPow, double sell, double expiry, string name,
        string desc, bool guard = false)
    {
        var k = 9999;
        var i = 201;
        while (i <= 230)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                if (k > i)
                {
                    k = i;
                }
            }

            i++;
        }

        if (k == 9999)
        {
            k = (int)_root.save.arenaDeletedSlot;
            _root.save.arenaDeletedSlot += 1;
            if (_root.save.arenaDeletedSlot > 830)
            {
                _root.save.arenaDeletedSlot = 801;
            }

            _root.deleteArenaItem(k);
        }

        if (name != null)
        {
            if (guard == null)
            {
                guard = false;
            }

            if (moreBonus == null)
            {
                moreBonus = "";
                _root.breakNews("[Error]", "ERROR: " + name + " / [moreBonus] not defined.", 16711680, 9002);
            }

            if (desc == null)
            {
                desc = "";
                _root.breakNews("[Error]", "ERROR: " + name + " / [desc] not defined.", 16711680, 9002);
            }

            _root.save.inventoryExist[k] = 1;
            _root.save.inventoryName[k] = name;
            _root.save.inventoryReqRank[k] = 1;
            _root.save.inventoryType[k] = "Enhancer";
            _root.save.inventorySubtype[k] = subtype;
            _root.save.inventoryFrame[k] = frame;
            _root.save.inventoryRange[k] = false;
            _root.save.inventoryAttack[k] = power;
            _root.save.inventoryBonus[k] = bonus;
            _root.save.inventoryAbility[k] = ability;
            _root.save.inventoryMoreBonus[k] = moreBonus;
            _root.save.inventoryEnhance[k] = enhance;
            _root.save.inventoryBonusPow[k] = bonusPow;
            _root.save.inventorySell[k] = sell;
            _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
            _root.save.inventoryObtainTime[k] = _root.systemtimenow;
            _root.save.inventoryNoBonus[k] = false;
            _root.save.inventoryNoRecycle[k] = false;
            _root.save.inventoryNoFuse[k] = false;
            _root.save.inventoryNoUnique[k] = false;
            _root.save.inventorySpirit[k] = false;
            _root.save.inventoryGuard[k] = guard;
            _root.save.inventoryDesc[k] = desc;
            if (_root.save.inventoryBonus[k] == "Random")
            {
                var bonusToGet = random(22) + 1;
                if (bonusToGet == 1 || bonusToGet == 2)
                {
                    _root.save.inventoryBonus[k] = "Reward";
                }

                if (bonusToGet == 3 || bonusToGet == 4)
                {
                    _root.save.inventoryBonus[k] = "EXP";
                }

                if (bonusToGet == 5 || bonusToGet == 6)
                {
                    _root.save.inventoryBonus[k] = "Coin";
                }

                if (bonusToGet == 7 || bonusToGet == 8)
                {
                    _root.save.inventoryBonus[k] = "Pixel";
                }

                if (bonusToGet == 9 || bonusToGet == 10)
                {
                    _root.save.inventoryBonus[k] = "Drop Rate";
                }

                if (bonusToGet == 11 || bonusToGet == 12)
                {
                    _root.save.inventoryBonus[k] = "Spawn Rate";
                }

                if (bonusToGet == 13)
                {
                    _root.save.inventoryBonus[k] = "Fire Element";
                }

                if (bonusToGet == 14)
                {
                    _root.save.inventoryBonus[k] = "Ice Element";
                }

                if (bonusToGet == 15)
                {
                    _root.save.inventoryBonus[k] = "Wind Element";
                }

                if (bonusToGet == 16)
                {
                    _root.save.inventoryBonus[k] = "Earth Element";
                }

                if (bonusToGet == 17)
                {
                    _root.save.inventoryBonus[k] = "Thunder Element";
                }

                if (bonusToGet == 18)
                {
                    _root.save.inventoryBonus[k] = "Water Element";
                }

                if (bonusToGet == 19)
                {
                    _root.save.inventoryBonus[k] = "Light Element";
                }

                if (bonusToGet == 20)
                {
                    _root.save.inventoryBonus[k] = "Dark Element";
                }

                if (bonusToGet == 21)
                {
                    _root.save.inventoryBonus[k] = "Rare Monster Rate";
                }

                if (bonusToGet == 22)
                {
                    _root.save.inventoryBonus[k] = "Epic Monster Rate";
                }

                if (_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
                {
                    _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
                }
                else if (_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
                {
                    _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
                }
            }

            if (_root.save.inventoryAbility[k] == "Random")
            {
                var bonusToGet = random(25) + 1;
                if (subtype == "Weapon Bonus Adder")
                {
                    bonusToGet = random(47) + 1;
                }

                if (bonusToGet == 1)
                {
                    _root.save.inventoryAbility[k] = "Attack";
                }

                if (bonusToGet == 2)
                {
                    _root.save.inventoryAbility[k] = "Attack Speed";
                }

                if (bonusToGet == 3)
                {
                    _root.save.inventoryAbility[k] = "Ignore Defense";
                }

                if (bonusToGet == 4)
                {
                    _root.save.inventoryAbility[k] = "Mastery";
                }

                if (bonusToGet == 5)
                {
                    _root.save.inventoryAbility[k] = "Critical Chance";
                }

                if (bonusToGet == 6)
                {
                    _root.save.inventoryAbility[k] = "Critical Damage";
                }

                if (bonusToGet == 7)
                {
                    _root.save.inventoryAbility[k] = "Defense";
                }

                if (bonusToGet == 8)
                {
                    _root.save.inventoryAbility[k] = "Damage Taken";
                }

                if (bonusToGet == 9)
                {
                    _root.save.inventoryAbility[k] = "Reflect";
                }

                if (bonusToGet == 10)
                {
                    _root.save.inventoryAbility[k] = "Accuracy";
                }

                if (bonusToGet == 11)
                {
                    _root.save.inventoryAbility[k] = "Hit Chance";
                }

                if (bonusToGet == 12)
                {
                    _root.save.inventoryAbility[k] = "Evasion";
                }

                if (bonusToGet == 13)
                {
                    _root.save.inventoryAbility[k] = "Dodge Chance";
                }

                if (bonusToGet == 14)
                {
                    _root.save.inventoryAbility[k] = "Poison Chance";
                }

                if (bonusToGet == 15)
                {
                    _root.save.inventoryAbility[k] = "Weaken Chance";
                }

                if (bonusToGet == 16)
                {
                    _root.save.inventoryAbility[k] = "Blind Chance";
                }

                if (bonusToGet == 17)
                {
                    _root.save.inventoryAbility[k] = "Stun Chance";
                }

                if (bonusToGet == 18)
                {
                    _root.save.inventoryAbility[k] = "HP";
                }

                if (bonusToGet == 19)
                {
                    _root.save.inventoryAbility[k] = "MP";
                }

                if (bonusToGet == 20)
                {
                    _root.save.inventoryAbility[k] = "HP Regen";
                }

                if (bonusToGet == 21)
                {
                    _root.save.inventoryAbility[k] = "MP Regen";
                }

                if (bonusToGet == 22)
                {
                    _root.save.inventoryAbility[k] = "Rage Depletion";
                }

                if (bonusToGet == 23)
                {
                    _root.save.inventoryAbility[k] = "Drain";
                }

                if (bonusToGet == 24)
                {
                    _root.save.inventoryAbility[k] = "Mana Eater";
                }

                if (bonusToGet == 25)
                {
                    _root.save.inventoryAbility[k] = "Autosteal";
                }

                if (bonusToGet == 26)
                {
                    _root.save.inventoryAbility[k] = "Double Hit Chance";
                }

                if (bonusToGet == 27)
                {
                    _root.save.inventoryAbility[k] = "Rage Attack";
                }

                if (bonusToGet == 28)
                {
                    _root.save.inventoryAbility[k] = "Rage Speed";
                }

                if (bonusToGet == 29)
                {
                    _root.save.inventoryAbility[k] = "Poison Damage";
                }

                if (bonusToGet == 30)
                {
                    _root.save.inventoryAbility[k] = "Poison Duration";
                }

                if (bonusToGet == 31)
                {
                    _root.save.inventoryAbility[k] = "Weaken Effect";
                }

                if (bonusToGet == 32)
                {
                    _root.save.inventoryAbility[k] = "Weaken Duration";
                }

                if (bonusToGet == 33)
                {
                    _root.save.inventoryAbility[k] = "Blind Effect";
                }

                if (bonusToGet == 34)
                {
                    _root.save.inventoryAbility[k] = "Blind Duration";
                }

                if (bonusToGet == 35)
                {
                    _root.save.inventoryAbility[k] = "Potion Efficiency";
                }

                if (bonusToGet == 36)
                {
                    _root.save.inventoryAbility[k] = "Boss Damage";
                }

                if (bonusToGet == 37)
                {
                    _root.save.inventoryAbility[k] = "Magic Resist";
                }

                if (bonusToGet == 38)
                {
                    _root.save.inventoryAbility[k] = "Instant Kill";
                }

                if (bonusToGet == 39)
                {
                    _root.save.inventoryAbility[k] = "Negate Effect";
                }

                if (bonusToGet == 40)
                {
                    _root.save.inventoryAbility[k] = "Non-Boss Damage";
                }

                if (bonusToGet == 41)
                {
                    _root.save.inventoryAbility[k] = "Damage";
                }

                if (bonusToGet == 42)
                {
                    _root.save.inventoryAbility[k] = "Extra Combo";
                }

                if (bonusToGet == 43)
                {
                    _root.save.inventoryAbility[k] = "Magic Reflect";
                }

                if (bonusToGet == 44)
                {
                    _root.save.inventoryAbility[k] = "Nullify Death Penalty";
                }

                if (bonusToGet == 45)
                {
                    _root.save.inventoryAbility[k] = "Buff Effect";
                }

                if (bonusToGet == 46)
                {
                    _root.save.inventoryAbility[k] = "All Elements";
                }

                if (bonusToGet == 47)
                {
                    _root.save.inventoryAbility[k] = "Max Spirit";
                }

                if (subtype == "Weapon Bonus Adder")
                {
                    if (_root.save.arenaAbilityPreference1 != "None" && Math.random() < 0.2)
                    {
                        _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference1;
                    }
                    else if (_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.1)
                    {
                        _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
                    }
                    else if (_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.05)
                    {
                        _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
                    }
                }
                else if (_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.2)
                {
                    _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
                }
                else if (_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.07)
                {
                    _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
                }
            }

            if (_root.save.inventoryMoreBonus[k] == "Random")
            {
                var bonusToGet = random(11) + 1;
                if (bonusToGet == 1)
                {
                    _root.save.inventoryMoreBonus[k] = "Equipment Attack";
                }

                if (bonusToGet == 2)
                {
                    _root.save.inventoryMoreBonus[k] = "Equipment Defense";
                }

                if (bonusToGet == 3)
                {
                    _root.save.inventoryMoreBonus[k] = "Attack Power";
                }

                if (bonusToGet == 4)
                {
                    _root.save.inventoryMoreBonus[k] = "Defense Power";
                }

                if (bonusToGet == 5)
                {
                    _root.save.inventoryMoreBonus[k] = "MaxHP";
                }

                if (bonusToGet == 6)
                {
                    _root.save.inventoryMoreBonus[k] = "MaxMP";
                }

                if (bonusToGet == 7)
                {
                    _root.save.inventoryMoreBonus[k] = "Accuracy";
                }

                if (bonusToGet == 8)
                {
                    _root.save.inventoryMoreBonus[k] = "Evasion";
                }

                if (bonusToGet == 9)
                {
                    _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
                }

                if (bonusToGet == 10)
                {
                    _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
                }

                if (bonusToGet == 11)
                {
                    _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
                }

                if (_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
                {
                    _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
                }
                else if (_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
                {
                    _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
                }
            }

            if (k <= 230)
            {
                _root.dispNews(52, "Enhancer GET! [" + name + "]");
            }
            else
            {
                _root.dispNews(58, "Enhancer inventory full! [" + name + "] moved to Recently Deleted tab.");
            }
        }
        else
        {
            _root.dispNews(58, "Enhancer inventory full! [" + name + "] deleted :(");
        }

        checkFullInventory();
    }

    // MATCH: frame_4/DoAction.as:getArenaPotion()
    public void getArenaPotion(string subtype, double frame, double attack, double defense, double enhance,
        double bonusPow, double sell, double expiry, string name, string desc)
    {
        var k = 9999;
        var i = 401;
        while (i <= 430)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                if (k > i)
                {
                    k = i;
                }
            }

            i++;
        }

        if (k == 9999)
        {
            k = (int)_root.save.arenaDeletedSlot;
            _root.save.arenaDeletedSlot += 1;
            if (_root.save.arenaDeletedSlot > 830)
            {
                _root.save.arenaDeletedSlot = 801;
            }

            _root.deleteArenaItem(k);
        }

        if (name != undefined)
        {
            _root.save.inventoryExist[k] = 1;
            _root.save.inventoryName[k] = name;
            _root.save.inventoryReqRank[k] = 1;
            _root.save.inventoryType[k] = "Potion";
            _root.save.inventorySubtype[k] = subtype;
            _root.save.inventoryFrame[k] = frame;
            _root.save.inventoryAttack[k] = attack;
            _root.save.inventoryDefense[k] = defense;
            _root.save.inventoryEnhance[k] = enhance;
            _root.save.inventoryBonusPow[k] = bonusPow;
            _root.save.inventorySell[k] = sell;
            _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
            _root.save.inventoryObtainTime[k] = _root.systemtimenow;
            _root.save.inventoryDesc[k] = desc;
            if (k <= 430)
            {
                _root.dispNews(53, "Potion GET! [" + name + "]");
            }
            else
            {
                _root.dispNews(59, "Potion inventory full! [" + name + "] moved to Recently Deleted tab.");
            }
        }
        else
        {
            _root.dispNews(59, "Potion inventory full! [" + name + "] deleted :(");
        }

        checkFullInventory();
    }

    // MATCH: frame_4/DoAction.as:getArenaChip()
    public void getArenaChip(string subtype, double frame, double attack, double defense, double enhance,
        double bonusPow, double sell, double expiry, string name, string desc)
    {
        var k = 9999;
        var i = 701;
        while (i <= 730)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                if (k > i)
                {
                    k = i;
                }
            }

            i++;
        }

        if (k == 9999)
        {
            k = (int)_root.save.arenaDeletedSlot;
            _root.save.arenaDeletedSlot += 1;
            if (_root.save.arenaDeletedSlot > 830)
            {
                _root.save.arenaDeletedSlot = 801;
            }

            _root.deleteArenaItem(k);
        }

        if (name != undefined)
        {
            _root.save.inventoryExist[k] = 1;
            _root.save.inventoryName[k] = name;
            _root.save.inventoryReqRank[k] = 1;
            _root.save.inventoryType[k] = "Chip";
            _root.save.inventorySubtype[k] = subtype;
            _root.save.inventoryFrame[k] = frame;
            _root.save.inventoryAttack[k] = attack;
            _root.save.inventoryDefense[k] = defense;
            _root.save.inventoryEnhance[k] = enhance;
            _root.save.inventoryBonusPow[k] = bonusPow;
            _root.save.inventorySell[k] = sell;
            _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
            _root.save.inventoryObtainTime[k] = _root.systemtimenow;
            _root.save.inventoryDesc[k] = desc;
            if (k <= 730)
            {
                _root.dispNews(170, "Chip GET! [" + name + "]");
            }
            else
            {
                _root.dispNews(171, "Chip inventory full! [" + name + "] moved to Recently Deleted tab.");
            }
        }
        else
        {
            _root.dispNews(171, "Chip inventory full! [" + name + "] deleted :(");
        }

        checkFullInventory();
    }

    // MATCH: frame_4/DoAction.as:addArenaWeapon()
    public void addArenaWeapon(string name, double reqRank, string subtype, double frame, bool range, double attack,
        double speed, double defense, string bonus, string ability, double maxLevel, double expTNL, double enhance,
        double bonusPow, double sell, double expiry, bool noBonus, bool noLife, bool noRecycle, bool spirit,
        double crit, double dexterity, double health, string desc, bool noFuse, double level, double exp, bool noUnique,
        double unob, string moreBonus)
    {
        getArenaWeapon(reqRank, subtype, frame, range, attack, speed, defense, crit, dexterity, health, maxLevel,
            expTNL, level, exp, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noFuse,
            noUnique, spirit, unob, name, desc);
    }

    // MATCH: frame_4/DoAction.as:addArenaArmor()
    public void addArenaArmor(string name, double reqRank, string subtype, double frame, double attack, double speed,
        double defense, string bonus, string ability, double maxLevel, double expTNL, double enhance, double bonusPow,
        double sell, double expiry, bool noBonus, bool noLife, bool noRecycle, bool spirit, double crit,
        double dexterity, double health, string desc, bool noFuse, double level, double exp, bool noUnique, double unob,
        string moreBonus)
    {
        getArenaArmor(reqRank, subtype, frame, attack, speed, defense, crit, dexterity, health, maxLevel, expTNL, level,
            exp, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noFuse, noUnique, spirit,
            unob, name, desc);
    }


    // MATCH: frame_4/DoAction.as:addArenaAccessory()
    public void addArenaAccessory(string name, double reqRank, string subtype, double frame, double attack,
        double speed, double defense, string bonus, string ability, double maxLevel, double expTNL, double enhance,
        double bonusPow, double sell, double expiry, bool noBonus, bool noLife, bool noRecycle, bool spirit,
        double crit, double dexterity, double health, string desc, bool noFuse, double level, double exp, bool noUnique,
        double unob)
    {
        string moreBonus = null;
        getArenaAccessory(
            reqRank, subtype, frame, attack, speed, defense, crit, dexterity, health, maxLevel, expTNL, level, exp,
            enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noFuse, noUnique, spirit, unob,
            name, desc
        );
    }

    // MATCH: frame_4/DoAction.as:addArenaEnhancer()
    public void addArenaEnhancer(string name, string subtype, double frame, double power, double curse, double success,
        string bonus, string ability, double enhance, double bonusPow, double sell, double expiry, string desc,
        string moreBonus)
    {
        getArenaEnhancer(subtype, frame, power, curse, success, bonus, ability, moreBonus, enhance, bonusPow, sell,
            expiry, name, desc);
    }

    // MATCH: frame_4/DoAction.as:addArenaPotion()
    public void addArenaPotion(string name, string subtype, double frame, double attack, double defense, double enhance,
        double bonusPow, double sell, double expiry, string desc)
    {
        getArenaPotion(subtype, frame, attack, defense, enhance, bonusPow, sell, expiry, name, desc);
    }

    // MATCH: frame_4/DoAction.as:swapArenaItem()
    public void swapArenaItem(double item1, double item2)
    {
        var j = item1;
        var k = item2;
        _root.xSwapArenaItem(900, item1);
        _root.xSwapArenaItem(item1, item2);
        _root.xSwapArenaItem(item2, 900);
        _root.deleteArenaItem(900);
        _root.arenaSwap1 = 0;
        checkFullInventory();
    }

    // MATCH: frame_4/DoAction.as:xSwapArenaItem()
    public void xSwapArenaItem(double xitem1, double xitem2)
    {
        var j = xitem2;
        var k = xitem1;
        _root.save.inventoryExist[k] = _root.save.inventoryExist[j];
        _root.save.inventoryName[k] = _root.save.inventoryName[j];
        _root.save.inventoryReqRank[k] = _root.save.inventoryReqRank[j];
        _root.save.inventoryType[k] = _root.save.inventoryType[j];
        _root.save.inventorySubtype[k] = _root.save.inventorySubtype[j];
        _root.save.inventoryFrame[k] = _root.save.inventoryFrame[j];
        _root.save.inventoryRange[k] = _root.save.inventoryRange[j];
        _root.save.inventoryAttack[k] = _root.save.inventoryAttack[j];
        _root.save.inventorySpeed[k] = _root.save.inventorySpeed[j];
        _root.save.inventoryDefense[k] = _root.save.inventoryDefense[j];
        _root.save.inventoryBonus[k] = _root.save.inventoryBonus[j];
        _root.save.inventoryAbility[k] = _root.save.inventoryAbility[j];
        _root.save.inventoryMoreBonus[k] = _root.save.inventoryMoreBonus[j];
        _root.save.inventoryLevel[k] = _root.save.inventoryLevel[j];
        _root.save.inventoryMaxLevel[k] = _root.save.inventoryMaxLevel[j];
        _root.save.inventoryExp[k] = _root.save.inventoryExp[j];
        _root.save.inventoryExpTNL[k] = _root.save.inventoryExpTNL[j];
        _root.save.inventoryEnhance[k] = _root.save.inventoryEnhance[j];
        _root.save.inventoryBonusPow[k] = _root.save.inventoryBonusPow[j];
        _root.save.inventorySell[k] = _root.save.inventorySell[j];
        _root.save.inventoryExpiry[k] = _root.save.inventoryExpiry[j];
        _root.save.inventoryObtainTime[k] = _root.save.inventoryObtainTime[j];
        _root.save.inventoryNoBonus[k] = _root.save.inventoryNoBonus[j];
        _root.save.inventoryNoRecycle[k] = _root.save.inventoryNoRecycle[j];
        _root.save.inventoryNoFuse[k] = _root.save.inventoryNoFuse[j];
        _root.save.inventoryNoUnique[k] = _root.save.inventoryNoUnique[j];
        _root.save.inventoryUnob[k] = _root.save.inventoryUnob[j];
        _root.save.inventorySpirit[k] = _root.save.inventorySpirit[j];
        _root.save.inventoryCrit[k] = _root.save.inventoryCrit[j];
        _root.save.inventoryDexterity[k] = _root.save.inventoryDexterity[j];
        _root.save.inventoryHealth[k] = _root.save.inventoryHealth[j];
        _root.save.inventoryDesc[k] = _root.save.inventoryDesc[j];
        _root.save.inventorySet[k] = _root.save.inventorySet[j];
        _root.save.inventoryGuard[k] = _root.save.inventoryGuard[j];
        checkFullInventory();
    }


    // MATCH: frame_4/DoAction.as:deleteArenaItem()
    public void deleteArenaItem(double k)
    {
        _root.save.inventoryExist[k] = 0;
        _root.save.inventoryName[k] = null;
        _root.save.inventoryReqRank[k] = 0;
        _root.save.inventoryType[k] = null;
        _root.save.inventorySubtype[k] = null;
        _root.save.inventoryFrame[k] = 0;
        _root.save.inventoryRange[k] = false;
        _root.save.inventoryAttack[k] = 0;
        _root.save.inventorySpeed[k] = 0;
        _root.save.inventoryDefense[k] = 0;
        _root.save.inventoryBonus[k] = null;
        _root.save.inventoryAbility[k] = null;
        _root.save.inventoryMoreBonus[k] = null;
        _root.save.inventoryLevel[k] = 0;
        _root.save.inventoryMaxLevel[k] = 0;
        _root.save.inventoryExp[k] = 0;
        _root.save.inventoryExpTNL[k] = 0;
        _root.save.inventoryEnhance[k] = 0;
        _root.save.inventoryBonusPow[k] = 0;
        _root.save.inventorySell[k] = 0;
        _root.save.inventoryExpiry[k] = 0;
        _root.save.inventoryObtainTime[k] = 0;
        _root.save.inventoryNoBonus[k] = false;
        _root.save.inventoryNoRecycle[k] = false;
        _root.save.inventoryNoFuse[k] = false;
        _root.save.inventoryNoUnique[k] = false;
        _root.save.inventoryUnob[k] = 0;
        _root.save.inventorySpirit[k] = false;
        _root.save.inventoryCrit[k] = 0;
        _root.save.inventoryDexterity[k] = 0;
        _root.save.inventoryHealth[k] = 0;
        _root.save.inventoryDesc[k] = null;
        _root.save.inventorySet[k] = 0;
        _root.save.inventoryGuard[k] = false;
        checkFullInventory();
    }

    // MATCH: frame_4/DoAction.as:sellArenaItem()
    public void sellArenaItem(double k)
    {
        _root.deleteArenaItem(_root.save.arenaDeletedSlot);
        if (_root.save.inventorySell[k] > 0 && !isNaN(_root.save.inventorySell[k]) &&
            _root.save.inventorySell[k] != Infinity)
        {
            _root.save.arenaPixel += _root.save.inventorySell[k];
        }

        _root.swapArenaItem(k, _root.save.arenaDeletedSlot);
        _root.deleteArenaItem(k);
        _root.save.arenaDeletedSlot += 1;
        if (_root.save.arenaDeletedSlot > 830)
        {
            _root.save.arenaDeletedSlot = 801;
        }
    }

    // MATCH: frame_4/DoAction.as:enhanceArenaItem()
    public void enhanceArenaItem(double j, double k)
    {
        var canEnhance = false;
        if (_root.save.inventoryEnhance[k] < 10 || _root.save.inventorySubtype[j] == "Weapon Bonus Adder" ||
            _root.save.inventorySubtype[j] == "Armor Bonus Adder" ||
            _root.save.inventorySubtype[j] == "Weapon Lifespan Extender" ||
            _root.save.inventorySubtype[j] == "Armor Lifespan Extender" ||
            _root.save.inventorySubtype[j] == "Weapon Recycler" || _root.save.inventorySubtype[j] == "Armor Recycler" ||
            _root.save.inventorySubtype[j] == "Weapon Spirit Rock" ||
            _root.save.inventorySubtype[j] == "Armor Spirit Rock" ||
            _root.save.inventorySubtype[j] == "Accessory Spirit Rock" ||
            _root.save.inventorySubtype[j] == "Weapon Unique Enhancer" ||
            _root.save.inventorySubtype[j] == "Armor Unique Enhancer" ||
            _root.save.inventorySubtype[j] == "Accessory Bonus Adder" ||
            _root.save.inventorySubtype[j] == "Accessory Lifespan Extender" ||
            _root.save.inventorySubtype[j] == "Accessory Growth Rock" ||
            _root.save.inventorySubtype[j] == "Accessory Unique Enhancer" ||
            _root.save.inventorySubtype[j] == "Mystery Enhancer Identifier" || _root
                .save.inventorySubtype[j] == "Weapon Unobtainium Enhancer" ||
            _root.save.inventorySubtype[j] == "Armor Unobtainium Enhancer" ||
            _root.save.inventorySubtype[j] == "Accessory Unobtainium Enhancer" ||
            _root.save.inventorySubtype[j] == "Weapon Protector" ||
            _root.save.inventorySubtype[j] == "Armor Protector" ||
            _root.save.inventorySubtype[j] == "Accessory Protector" ||
            _root.save.inventorySubtype[j] == "Enhancer Protector" ||
            _root.save.inventorySubtype[j] == "Weapon Finalizer" ||
            _root.save.inventorySubtype[j] == "Armor Finalizer" ||
            _root.save.inventorySubtype[j] == "Accessory Finalizer" ||
            _root.save.inventorySubtype[j] == "Weapon Cleansing Rock" ||
            _root.save.inventorySubtype[j] == "Armor Cleansing Rock" ||
            _root.save.inventorySubtype[j] == "Weapon Tukkonium Enhancer" ||
            _root.save.inventorySubtype[j] == "Armor Tukkonium Enhancer" ||
            _root.save.inventorySubtype[j] == "Accessory Tukkonium Enhancer")
        {
            canEnhance = true;
            if (j == k)
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Weapon Attack Enhancer" && _root.save.inventoryAttack[k] < 1)
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Weapon Unique Enhancer" && _root.save.inventoryAttack[k] < 1)
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Weapon Unique Enhancer" && _root.save.inventoryAttack[k] >= 3000)
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Armor Unique Enhancer" && _root.save.inventoryDefense[k] >= 1800)
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Accessory Unique Enhancer" && _root.save.inventoryDefense[k] >= 1800)
            {
                canEnhance = false;
            }

            if ((_root.save.inventorySubtype[j] == "Weapon Unique Enhancer" ||
                 _root.save.inventorySubtype[j] == "Armor Unique Enhancer" ||
                 _root.save.inventorySubtype[j] == "Accessory Unique Enhancer") && _root.save.inventoryEnhance[k] < 10)
            {
                canEnhance = false;
            }

            if ((_root.save.inventorySubtype[j] == "Weapon Unique Enhancer" ||
                 _root.save.inventorySubtype[j] == "Armor Unique Enhancer" ||
                 _root.save.inventorySubtype[j] == "Accessory Unique Enhancer") &&
                _root.save.inventoryLevel[k] < _root.save.inventoryMaxLevel[k])
            {
                canEnhance = false;
            }

            if ((_root.save.inventorySubtype[j] == "Weapon Unique Enhancer" ||
                 _root.save.inventorySubtype[j] == "Armor Unique Enhancer" ||
                 _root.save.inventorySubtype[j] == "Accessory Unique Enhancer") &&
                _root.save.inventoryNoUnique[k] == true)
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Weapon Speed Enhancer" && _root.save.inventorySpeed[k] < 3)
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Weapon Growth Rock" && _root.save.inventoryAttack[k] < 1)
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Mystery Enhancer Identifier" &&
                _root.save.inventorySubtype[k] != "Weapon Mystery Enhancer" &&
                _root.save.inventorySubtype[k] != "Armor Mystery Enhancer")
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Weapon Lifespan Extender" ||
                _root.save.inventorySubtype[j] == "Armor Lifespan Extender" ||
                _root.save.inventorySubtype[j] == "Accessory Lifespan Extender")
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "GIGA LIFE ROCK" &&
                (_root.save.inventoryName[k] == "GIGA PENDANT" || _root.save.inventoryName[k] == "GIGA EARRINGS") &&
                _root.save.inventorySubtype[k] != "Medal")
            {
                canEnhance = true;
            }

            if (_root.save.inventoryName[j] == "GIGA LIFE ROCK EX" &&
                (_root.save.inventoryName[k] == "GIGA PENDANT" || _root.save.inventoryName[k] == "GIGA EARRINGS") &&
                _root.save.inventorySubtype[k] != "Medal")
            {
                canEnhance = true;
            }

            if (_root.save.inventoryName[j] == "GIGA ENHANCER" && _root.save.inventoryName[k] != "GIGA PENDANT" &&
                _root.save.inventoryName[k] != "GIGA EARRINGS")
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "GIGA ENHANCER" && _root.save.inventorySubtype[k] != "Pendant" &&
                _root.save.inventorySubtype[k] != "Earring")
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "GIGA ENHANCER EX" && _root.save.inventoryName[k] != "GIGA PENDANT" &&
                _root.save.inventoryName[k] != "GIGA EARRINGS")
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "GIGA ENHANCER EX" && _root.save.inventorySubtype[k] != "Pendant" &&
                _root.save.inventorySubtype[k] != "Earring")
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "TERA LIFE ROCK" &&
                (_root.save.inventoryName[k] == "TERA PENDANT" || _root.save.inventoryName[k] == "TERA EARRINGS") &&
                _root.save.inventorySubtype[k] != "Medal")
            {
                canEnhance = true;
            }

            if (_root.save.inventoryName[j] == "TERA LIFE ROCK EX" &&
                (_root.save.inventoryName[k] == "TERA PENDANT" || _root.save.inventoryName[k] == "TERA EARRINGS") &&
                _root.save.inventorySubtype[k] != "Medal")
            {
                canEnhance = true;
            }

            if (_root.save.inventoryName[j] == "TERA ENHANCER" && _root.save.inventoryName[k] != "TERA PENDANT" &&
                _root.save.inventoryName[k] != "TERA EARRINGS")
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "TERA ENHANCER" && _root.save.inventorySubtype[k] != "Pendant" &&
                _root.save.inventorySubtype[k] != "Earring")
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "TERA ENHANCER EX" && _root.save.inventoryName[k] != "TERA PENDANT" &&
                _root.save.inventoryName[k] != "TERA EARRINGS")
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "TERA ENHANCER EX" && _root.save.inventorySubtype[k] != "Pendant" &&
                _root.save.inventorySubtype[k] != "Earring")
            {
                canEnhance = false;
            }

            if ((_root.save.inventorySubtype[j] == "Weapon Bonus Adder" ||
                 _root.save.inventorySubtype[j] == "Armor Bonus Adder" ||
                 _root.save.inventorySubtype[j] == "Accessory Bonus Adder") && _root.save.inventoryNoBonus[k] == true &&
                _root.save.inventoryName[j].indexOf("[S]") == -1)
            {
                canEnhance = false;
            }

            if ((_root.save.inventorySubtype[j] == "Weapon Bonus Adder" ||
                 _root.save.inventorySubtype[j] == "Armor Bonus Adder" ||
                 _root.save.inventorySubtype[j] == "Accessory Bonus Adder") && _root.save.inventoryNoBonus[k] == true &&
                _root.save.inventorySubtype[k] == "Trinket")
            {
                canEnhance = false;
            }

            if ((_root.save.inventorySubtype[j] == "Weapon Bonus Adder" ||
                 _root.save.inventorySubtype[j] == "Armor Bonus Adder" ||
                 _root.save.inventorySubtype[j] == "Accessory Bonus Adder") && _root.save.inventoryNoBonus[k] == true &&
                _root.save.inventorySubtype[k] == "Medal")
            {
                canEnhance = false;
            }

            if ((_root.save.inventorySubtype[j] == "Weapon Spirit Rock" ||
                 _root.save.inventorySubtype[j] == "Armor Spirit Rock" ||
                 _root.save.inventorySubtype[j] == "Accessory Spirit Rock") &&
                _root.save.inventoryName[j].indexOf("[S]") == -1)
            {
                if (_root.save.inventoryEnhance[k] < 10 || _root.save.inventoryEnhance[k] > 1000)
                {
                    canEnhance = false;
                }
            }

            if ((_root.save.inventorySubtype[j] == "Weapon Spirit Rock" ||
                 _root.save.inventorySubtype[j] == "Armor Spirit Rock" ||
                 _root.save.inventorySubtype[j] == "Accessory Spirit Rock") &&
                _root.save.inventoryName[k] == "Dark Ruler")
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Fairy Weapon Enhancer" &&
                _root.save.inventoryName[k].indexOf("Fairy") == -1)
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Fairy Armor Enhancer" &&
                _root.save.inventoryName[k].indexOf("Fairy") == -1)
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Dominator Gem Enhancer" &&
                (_root.save.inventoryName[k] != "Dominator Gem" || _root.save.inventorySubtype[k] != "Trinket"))
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Mega Triangle Gem Enhancer" &&
                (_root.save.inventoryName[k] != "Mega Triangle Gem" || _root.save.inventorySubtype[k] != "Trinket"))
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Crystal Unique Enhancer MAX" &&
                _root.save.inventoryName[k].indexOf("Crystal") == -1)
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Alien Core" && _root.save.inventoryName[k].indexOf("Alien") == -1)
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Alien Core" && isNaN(_root.save.inventoryName[k].indexOf("Alien")))
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Weapon Cleansing Rock" &&
                _root.save.inventoryName[k].indexOf("(Cursed)") == -1)
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Weapon Cleansing Rock" &&
                isNaN(_root.save.inventoryName[k].indexOf("(Cursed)")))
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Armor Cleansing Rock" &&
                _root.save.inventoryName[k].indexOf("(Cursed)") == -1)
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Armor Cleansing Rock" &&
                isNaN(_root.save.inventoryName[k].indexOf("(Cursed)")))
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Anti-Nerfer" && _root.save.inventoryName[k] != "Nerf Accepted!")
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Awesome Enhancer" &&
                (_root.save.inventoryName[k] != "Awesome Earrings" || _root.save.inventorySubtype[k] != "Earring"))
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] != "Humblebee Armor Upgrade" && _root.save.inventoryEnhance[k] == 8 &&
                _root.save.inventoryMaxLevel[k] < 184 && _root.save.inventoryName[k].indexOf("Humblebee") != -1)
            {
                if (!(_root.save.inventorySubtype[j] == "Armor Bonus Adder" ||
                      _root.save.inventorySubtype[j] == "Armor Spirit Rock" ||
                      _root.save.inventorySubtype[j] == "Armor Unobtainium Enhancer" ||
                      _root.save.inventorySubtype[j] == "Armor Protector" ||
                      _root.save.inventorySubtype[j] == "Armor Finalizer"))
                {
                    canEnhance = false;
                }
            }

            if (_root.save.inventoryName[j] != "Humblebee Armor Upgrade" && _root.save.inventoryEnhance[k] == 9 &&
                _root.save.inventoryMaxLevel[k] < 284 && _root.save.inventoryName[k].indexOf("Humblebee") != -1)
            {
                if (!(_root.save.inventorySubtype[j] == "Armor Bonus Adder" ||
                      _root.save.inventorySubtype[j] == "Armor Spirit Rock" ||
                      _root.save.inventorySubtype[j] == "Armor Unobtainium Enhancer" ||
                      _root.save.inventorySubtype[j] == "Armor Protector" ||
                      _root.save.inventorySubtype[j] == "Armor Finalizer"))
                {
                    canEnhance = false;
                }
            }

            if (_root.save.inventoryName[j] == "Humblebee Armor Upgrade")
            {
                if (_root.save.inventoryName[k].indexOf("Humblebee") == -1)
                {
                    canEnhance = false;
                }

                if (_root.save.inventoryMaxLevel[k] >= 284)
                {
                    canEnhance = false;
                }
            }

            if (_root.save.inventoryName[j] == "Corrupted Bonus Rock" &&
                _root.save.inventoryName[k].indexOf("Elm") == -1)
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j] == "Corrupted Bonus Rock" &&
                isNaN(_root.save.inventoryName[k].indexOf("Elm")))
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Weapon Unobtainium Enhancer" &&
                _root.save.inventoryUnob[k] >= _root.save.inventoryAttack[j])
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Armor Unobtainium Enhancer" &&
                _root.save.inventoryUnob[k] >= _root.save.inventoryAttack[j])
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Accessory Unobtainium Enhancer" &&
                _root.save.inventoryUnob[k] >= _root.save.inventoryAttack[j])
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Weapon Finalizer" &&
                _root.save.inventoryReqRank[k] > _root.save.inventoryAttack[j])
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Armor Finalizer" &&
                _root.save.inventoryReqRank[k] > _root.save.inventoryAttack[j])
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Accessory Finalizer" &&
                _root.save.inventoryReqRank[k] > _root.save.inventoryAttack[j])
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[j] == "Accessory Finalizer" && _root.save.inventorySubtype[k] == "Trinket")
            {
                canEnhance = false;
            }

            if (_root.save.inventorySubtype[k] == "Secondary Weapon" &&
                _root.save.inventorySubtype[j].indexOf("Protector") == -1)
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[k] == "Eric\'s Shovel")
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[k] == "Eric\'s Gun-Shovel")
            {
                canEnhance = false;
            }

            if (_root.save.inventoryLevel[k] == 9999 && _root.save.inventorySubtype[j].indexOf("Protector") == -1 &&
                _root.save.inventoryName[j].indexOf("[S]") == -1 &&
                _root.save.inventoryName[j].indexOf("Tukkonium") == -1)
            {
                canEnhance = false;
            }

            if (_root.save.inventoryLevel[k] != 9999 && _root.save.inventoryName[j].indexOf("Tukkonium") != -1)
            {
                canEnhance = false;
            }

            if (_root.save.inventoryName[j].indexOf("Auto Buff") != -1 &&
                (_root.save.inventoryName[k] != "Auto Buff Gem" || _root.save.inventorySubtype[k] != "Trinket"))
            {
                canEnhance = false;
            }
        }

        canEnhance = false;
        if (_root.save.inventoryName[j].indexOf("Auto Buff") != -1 && _root.save.inventoryName[k] == "Auto Buff Gem" &&
            _root.save.inventorySubtype[k] == "Trinket")
        {
            canEnhance = true;
        }

        if (canEnhance == true)
        {
            var pow = _root.save.inventoryAttack[j];
            if (_root.save.inventoryBonus[j] != "")
            {
                _root.save.inventoryBonus[k] = _root.save.inventoryBonus[j];
            }

            if (_root.save.inventoryAbility[j] != "")
            {
                _root.save.inventoryAbility[k] = _root.save.inventoryAbility[j];
            }

            if (_root.save.inventoryMoreBonus[j] != "")
            {
                _root.save.inventoryMoreBonus[k] = _root.save.inventoryMoreBonus[j];
            }

            if (_root.save.inventoryBonus[j] == "Random")
            {
                var bonusToGet = random(20) + 1;
                if (bonusToGet == 1 || bonusToGet == 2)
                {
                    _root.save.inventoryBonus[k] = "Reward";
                }

                if (bonusToGet == 3 || bonusToGet == 4)
                {
                    _root.save.inventoryBonus[k] = "EXP";
                }

                if (bonusToGet == 5 || bonusToGet == 6)
                {
                    _root.save.inventoryBonus[k] = "Coin";
                }

                if (bonusToGet == 7 || bonusToGet == 8)
                {
                    _root.save.inventoryBonus[k] = "Pixel";
                }

                if (bonusToGet == 9 || bonusToGet == 10)
                {
                    _root.save.inventoryBonus[k] = "Drop Rate";
                }

                if (bonusToGet == 11 || bonusToGet == 12)
                {
                    _root.save.inventoryBonus[k] = "Spawn Rate";
                }

                if (bonusToGet == 13)
                {
                    _root.save.inventoryBonus[k] = "Fire Element";
                }

                if (bonusToGet == 14)
                {
                    _root.save.inventoryBonus[k] = "Ice Element";
                }

                if (bonusToGet == 15)
                {
                    _root.save.inventoryBonus[k] = "Wind Element";
                }

                if (bonusToGet == 16)
                {
                    _root.save.inventoryBonus[k] = "Earth Element";
                }

                if (bonusToGet == 17)
                {
                    _root.save.inventoryBonus[k] = "Thunder Element";
                }

                if (bonusToGet == 18)
                {
                    _root.save.inventoryBonus[k] = "Water Element";
                }

                if (bonusToGet == 19)
                {
                    _root.save.inventoryBonus[k] = "Light Element";
                }

                if (bonusToGet == 20)
                {
                    _root.save.inventoryBonus[k] = "Dark Element";
                }
            }

            if (_root.save.inventoryAbility[j] == "Random")
            {
                var bonusToGet = random(25) + 1;
                if (bonusToGet == 1)
                {
                    _root.save.inventoryAbility[k] = "Attack";
                }

                if (bonusToGet == 2)
                {
                    _root.save.inventoryAbility[k] = "Attack Speed";
                }

                if (bonusToGet == 3)
                {
                    _root.save.inventoryAbility[k] = "Ignore Defense";
                }

                if (bonusToGet == 4)
                {
                    _root.save.inventoryAbility[k] = "Mastery";
                }

                if (bonusToGet == 5)
                {
                    _root.save.inventoryAbility[k] = "Critical Chance";
                }

                if (bonusToGet == 6)
                {
                    _root.save.inventoryAbility[k] = "Critical Damage";
                }

                if (bonusToGet == 7)
                {
                    _root.save.inventoryAbility[k] = "Defense";
                }

                if (bonusToGet == 8)
                {
                    _root.save.inventoryAbility[k] = "Damage Taken";
                }

                if (bonusToGet == 9)
                {
                    _root.save.inventoryAbility[k] = "Reflect";
                }

                if (bonusToGet == 10)
                {
                    _root.save.inventoryAbility[k] = "Accuracy";
                }

                if (bonusToGet == 11)
                {
                    _root.save.inventoryAbility[k] = "Hit Chance";
                }

                if (bonusToGet == 12)
                {
                    _root.save.inventoryAbility[k] = "Evasion";
                }

                if (bonusToGet == 13)
                {
                    _root.save.inventoryAbility[k] = "Dodge Chance";
                }

                if (bonusToGet == 14)
                {
                    _root.save.inventoryAbility[k] = "Poison Chance";
                }

                if (bonusToGet == 15)
                {
                    _root.save.inventoryAbility[k] = "Weaken Chance";
                }

                if (bonusToGet == 16)
                {
                    _root.save.inventoryAbility[k] = "Blind Chance";
                }

                if (bonusToGet == 17)
                {
                    _root.save.inventoryAbility[k] = "Stun Chance";
                }

                if (bonusToGet == 18)
                {
                    _root.save.inventoryAbility[k] = "HP";
                }

                if (bonusToGet == 19)
                {
                    _root.save.inventoryAbility[k] = "MP";
                }

                if (bonusToGet == 20)
                {
                    _root.save.inventoryAbility[k] = "HP Regen";
                }

                if (bonusToGet == 21)
                {
                    _root.save.inventoryAbility[k] = "MP Regen";
                }

                if (bonusToGet == 22)
                {
                    _root.save.inventoryAbility[k] = "Rage Depletion";
                }

                if (bonusToGet == 23)
                {
                    _root.save.inventoryAbility[k] = "Drain";
                }

                if (bonusToGet == 24)
                {
                    _root.save.inventoryAbility[k] = "Mana Eater";
                }

                if (bonusToGet == 25)
                {
                    _root.save.inventoryAbility[k] = "Autosteal";
                }
            }

            var tukkoniumPow = 0.0;
            if (_root.save.inventorySubtype[j] == "Weapon Attack Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventoryAttack[k] += pow;
                _root.save.inventoryBonusPow[k] += pow;
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Unique Enhancer")
            {
                _root.save.inventoryAttack[k] += pow;
                _root.save.inventoryBonusPow[k] += pow;
                if (_root.save.inventoryAttack[k] > 3000)
                {
                    _root.save.inventoryAttack[k] = 3000;
                }
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Tukkonium Enhancer")
            {
                if (_root.save.inventoryBonusPow[k] < 100000)
                {
                    tukkoniumPow = Math.ceil((5000 - _root.save.inventoryAttack[k]) / 5);
                }
                else
                {
                    tukkoniumPow = Math.ceil((5000 - _root.save.inventoryAttack[k]) / 10);
                }

                if (_root.save.inventoryName[k] == "Glaive of Smiting")
                {
                    tukkoniumPow = 1;
                }

                if (_root.save.inventoryName[k] == "Darkglaive of Smiting")
                {
                    tukkoniumPow = 1;
                }

                if (_root.save.inventoryName[k] == "Fiend Glaive")
                {
                    tukkoniumPow = 1;
                }

                if (_root.save.inventoryName[k] == "CHAOS AURA")
                {
                    tukkoniumPow = 1;
                }

                if (_root.save.inventoryName[k] == "Dark Ruler")
                {
                    tukkoniumPow = 1;
                }

                if (_root.save.inventoryName[k] == "Ultimate Weapon")
                {
                    tukkoniumPow = 1;
                }

                if (_root.save.inventoryName[k] == "Reincarnation Weapon")
                {
                    tukkoniumPow = 1;
                }

                if (_root.save.inventoryNoUnique[k] == true)
                {
                    tukkoniumPow = 1;
                }

                if (tukkoniumPow < 1)
                {
                    tukkoniumPow = 1;
                }

                _root.save.inventoryAttack[k] += tukkoniumPow;
                if (_root.save.inventoryBonusPow[k] < 100000)
                {
                    _root.save.inventoryBonusPow[k] = 100000;
                }

                _root.save.inventoryBonusPow[k] += tukkoniumPow;
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Speed Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventorySpeed[k] += pow;
                _root.save.inventoryBonusPow[k] += pow * 20;
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Defense Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventoryDefense[k] += pow;
                _root.save.inventoryBonusPow[k] += Math.round(pow * 5 / 12);
            }
            else if (_root.save.inventorySubtype[j] == "Armor Attack Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventoryAttack[k] += pow;
                _root.save.inventoryBonusPow[k] += Math.round(pow * 5 / 2);
            }
            else if (_root.save.inventorySubtype[j] == "Accessory Attack Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventoryAttack[k] += pow;
                _root.save.inventoryBonusPow[k] += Math.round(pow * 5 / 2);
            }
            else if (_root.save.inventorySubtype[j] == "Armor Speed Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventorySpeed[k] += pow;
                _root.save.inventoryBonusPow[k] += pow * 20;
            }
            else if (_root.save.inventorySubtype[j] == "Armor Defense Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventoryDefense[k] += pow;
                _root.save.inventoryBonusPow[k] += pow;
            }
            else if (_root.save.inventorySubtype[j] == "Armor Unique Enhancer")
            {
                _root.save.inventoryDefense[k] += pow;
                _root.save.inventoryBonusPow[k] += pow;
                if (_root.save.inventoryDefense[k] > 1800)
                {
                    _root.save.inventoryDefense[k] = 1800;
                }
            }
            else if (_root.save.inventorySubtype[j] == "Armor Tukkonium Enhancer")
            {
                if (_root.save.inventorySubtype[k] == "Skin")
                {
                    if (_root.save.inventoryBonusPow[k] < 100000)
                    {
                        tukkoniumPow = Math.ceil((3000 - _root.save.inventoryDefense[k]) / 5);
                    }
                    else
                    {
                        tukkoniumPow = Math.ceil((3000 - _root.save.inventoryDefense[k]) / 10);
                    }
                }
                else if (_root.save.inventoryBonusPow[k] < 100000)
                {
                    tukkoniumPow = Math.ceil((30000 - _root.save.inventoryDefense[k]) / 5);
                }
                else
                {
                    tukkoniumPow = Math.ceil((30000 - _root.save.inventoryDefense[k]) / 10);
                }

                if (_root.save.inventoryNoUnique[k] == true)
                {
                    tukkoniumPow = 5;
                }

                if (tukkoniumPow < 5)
                {
                    tukkoniumPow = 5;
                }

                if (_root.save.inventoryDefense[k] > 29990 && _root.save.inventoryDefense[k] < 30000)
                {
                    tukkoniumPow = 30000 - _root.save.inventoryDefense[k];
                }

                _root.save.inventoryDefense[k] += tukkoniumPow;
                if (_root.save.inventoryBonusPow[k] < 100000)
                {
                    _root.save.inventoryBonusPow[k] = 100000;
                }

                _root.save.inventoryBonusPow[k] += 1;
            }
            else if (_root.save.inventorySubtype[j] == "Accessory Unique Enhancer")
            {
                _root.save.inventoryDefense[k] += pow;
                _root.save.inventoryBonusPow[k] += pow;
                if (_root.save.inventoryDefense[k] > 1800)
                {
                    _root.save.inventoryDefense[k] = 1800;
                }
            }
            else if (_root.save.inventorySubtype[j] == "Accessory Tukkonium Enhancer")
            {
                if (_root.save.inventoryBonusPow[k] < 100000)
                {
                    tukkoniumPow = Math.ceil((30000 - _root.save.inventoryDefense[k]) / 5);
                }
                else
                {
                    tukkoniumPow = Math.ceil((30000 - _root.save.inventoryDefense[k]) / 10);
                }

                if (_root.save.inventoryNoUnique[k] == true)
                {
                    tukkoniumPow = 1;
                }

                if (tukkoniumPow < 1)
                {
                    tukkoniumPow = 1;
                }

                _root.save.inventoryDefense[k] += tukkoniumPow;
                if (_root.save.inventoryBonusPow[k] < 100000)
                {
                    _root.save.inventoryBonusPow[k] = 100000;
                }

                _root.save.inventoryBonusPow[k] += 1;
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Spirit Rock" ||
                     _root.save.inventorySubtype[j] == "Armor Spirit Rock" ||
                     _root.save.inventorySubtype[j] == "Accessory Spirit Rock")
            {
                if (_root.save.inventorySpirit[k] != true)
                {
                    _root.save.inventorySpirit[k] = true;
                }
                else
                {
                    _root.save.inventorySpirit[k] = false;
                }
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Growth Rock")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                if (_root.save.inventoryExpTNL[k] < 400)
                {
                    _root.save.inventoryExpTNL[k] =
                        400 * _root.save.inventoryReqRank[k] * _root.save.inventoryReqRank[k];
                }

                if (_root.save.inventoryLevel[k] == _root.save.inventoryMaxLevel[k])
                {
                    _root.save.inventoryExp[k] = 0;
                }

                _root.save.inventoryMaxLevel[k] += pow;
            }
            else if (_root.save.inventorySubtype[j] == "Armor Growth Rock")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                if (_root.save.inventoryExpTNL[k] < 400)
                {
                    _root.save.inventoryExpTNL[k] =
                        400 * _root.save.inventoryReqRank[k] * _root.save.inventoryReqRank[k];
                }

                if (_root.save.inventoryLevel[k] == _root.save.inventoryMaxLevel[k])
                {
                    _root.save.inventoryExp[k] = 0;
                }

                _root.save.inventoryMaxLevel[k] += pow;
            }
            else if (_root.save.inventorySubtype[j] == "Accessory Growth Rock")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                if (_root.save.inventoryExpTNL[k] < 400)
                {
                    _root.save.inventoryExpTNL[k] =
                        400 * _root.save.inventoryReqRank[k] * _root.save.inventoryReqRank[k];
                }

                if (_root.save.inventoryLevel[k] == _root.save.inventoryMaxLevel[k])
                {
                    _root.save.inventoryExp[k] = 0;
                }

                if (_root.save.inventoryEnhance[k] <= 10)
                {
                    _root.save.inventoryMaxLevel[k] += pow;
                }
                else
                {
                    _root.save.inventoryDefense[k] += 180;
                    if (_root.save.inventoryDefense[k] > 1800)
                    {
                        _root.save.inventoryDefense[k] = 1800;
                    }
                }
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Critical Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventoryCrit[k] += pow;
                _root.save.inventoryBonusPow[k] += pow * 5;
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Dexterity Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventoryDexterity[k] += pow;
                _root.save.inventoryBonusPow[k] += pow * 5;
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Health Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventoryHealth[k] += pow;
                _root.save.inventoryBonusPow[k] += pow * 5;
            }
            else if (_root.save.inventorySubtype[j] == "Armor Critical Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventoryCrit[k] += pow;
                _root.save.inventoryBonusPow[k] += pow * 5;
            }
            else if (_root.save.inventorySubtype[j] == "Armor Dexterity Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventoryDexterity[k] += pow;
                _root.save.inventoryBonusPow[k] += pow * 5;
            }
            else if (_root.save.inventorySubtype[j] == "Armor Health Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventoryHealth[k] += pow;
                _root.save.inventoryBonusPow[k] += pow * 5;
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Cleansing Rock")
            {
                _root.save.inventoryName[k] =
                    _root.save.inventoryName[k].substr(0, _root.save.inventoryName[k].Length - 9);
            }
            else if (_root.save.inventorySubtype[j] == "Armor Cleansing Rock")
            {
                _root.save.inventoryName[k] =
                    _root.save.inventoryName[k].substr(0, _root.save.inventoryName[k].Length - 9);
            }
            else if (_root.save.inventorySubtype[j] == "Accessory Lifespan Extender")
            {
                if (_root.save.inventoryExpiry[k] < _root.systemtimenow)
                {
                    _root.save.inventoryExpiry[k] = _root.systemtimenow;
                }

                _root.save.inventoryExpiry[k] += pow * 86400000;
                if (pow >= 99999)
                {
                    _root.save.inventoryExpiry[k] = Infinity;
                }
            }
            else if (_root.save.inventorySubtype[j] == "Mystery Enhancer Identifier")
            {
                if (_root.save.inventorySubtype[k] == "Weapon Mystery Enhancer")
                {
                    _root.save.inventoryBonusPow[k] += 500;
                    var typeX = random(5) + 1;
                    if (typeX == 1)
                    {
                        _root.save.inventorySubtype[k] = "Weapon Attack Enhancer";
                        _root.save.inventoryAttack[k] *= 5;
                    }

                    if (typeX == 2)
                    {
                        _root.save.inventorySubtype[k] = "Weapon Defense Enhancer";
                        _root.save.inventoryAttack[k] *= 12;
                    }

                    if (typeX == 3)
                    {
                        _root.save.inventorySubtype[k] = "Weapon Critical Enhancer";
                    }

                    if (typeX == 4)
                    {
                        _root.save.inventorySubtype[k] = "Weapon Dexterity Enhancer";
                    }

                    if (typeX == 5)
                    {
                        _root.save.inventorySubtype[k] = "Weapon Health Enhancer";
                    }
                }

                if (_root.save.inventorySubtype[k] == "Armor Mystery Enhancer")
                {
                    _root.save.inventoryBonusPow[k] += 500;
                    var typeX = random(5) + 1;
                    if (typeX == 1)
                    {
                        _root.save.inventorySubtype[k] = "Armor Attack Enhancer";
                        _root.save.inventoryAttack[k] *= 2;
                    }

                    if (typeX == 2)
                    {
                        _root.save.inventorySubtype[k] = "Armor Defense Enhancer";
                        _root.save.inventoryAttack[k] *= 5;
                    }

                    if (typeX == 3)
                    {
                        _root.save.inventorySubtype[k] = "Armor Critical Enhancer";
                    }

                    if (typeX == 4)
                    {
                        _root.save.inventorySubtype[k] = "Armor Dexterity Enhancer";
                    }

                    if (typeX == 5)
                    {
                        _root.save.inventorySubtype[k] = "Armor Health Enhancer";
                    }
                }
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Mystery Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                var typeX = 0.0;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                if (_root.save.inventoryAttack[k] != 0)
                {
                    typeX = random(5) + 1;
                }
                else
                {
                    typeX = random(4) + 2;
                }

                if (typeX == 1)
                {
                    _root.save.inventoryAttack[k] += pow * 5;
                    _root.save.inventoryBonusPow[k] += pow * 5;
                }

                if (typeX == 2)
                {
                    _root.save.inventoryDefense[k] += pow * 12;
                    _root.save.inventoryBonusPow[k] += pow * 5;
                }

                if (typeX == 3)
                {
                    _root.save.inventoryCrit[k] += pow;
                    _root.save.inventoryBonusPow[k] += pow * 5;
                }

                if (typeX == 4)
                {
                    _root.save.inventoryDexterity[k] += pow;
                    _root.save.inventoryBonusPow[k] += pow * 5;
                }

                if (typeX == 5)
                {
                    _root.save.inventoryHealth[k] += pow;
                    _root.save.inventoryBonusPow[k] += pow * 5;
                }
            }
            else if (_root.save.inventorySubtype[j] == "Armor Mystery Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                var typeX = random(5) + 1;
                if (typeX == 1)
                {
                    _root.save.inventoryAttack[k] += pow * 2;
                    _root.save.inventoryBonusPow[k] += pow * 5;
                }

                if (typeX == 2)
                {
                    _root.save.inventoryDefense[k] += pow * 5;
                    _root.save.inventoryBonusPow[k] += pow * 5;
                }

                if (typeX == 3)
                {
                    _root.save.inventoryCrit[k] += pow;
                    _root.save.inventoryBonusPow[k] += pow * 5;
                }

                if (typeX == 4)
                {
                    _root.save.inventoryDexterity[k] += pow;
                    _root.save.inventoryBonusPow[k] += pow * 5;
                }

                if (typeX == 5)
                {
                    _root.save.inventoryHealth[k] += pow;
                    _root.save.inventoryBonusPow[k] += pow * 5;
                }
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Unobtainium Enhancer")
            {
                _root.save.inventoryUnob[k] = pow;
            }
            else if (_root.save.inventorySubtype[j] == "Armor Unobtainium Enhancer")
            {
                _root.save.inventoryUnob[k] = pow;
            }
            else if (_root.save.inventorySubtype[j] == "Accessory Unobtainium Enhancer")
            {
                _root.save.inventoryUnob[k] = pow;
            }
            else if (_root.save.inventorySubtype[j] == "Enhancer Success Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventoryDefense[k] = Math.ceil(_root.save.inventoryDefense[k] * pow / 100);
                _root.save.inventoryBonusPow[k] += pow - 100;
            }
            else if (_root.save.inventorySubtype[j] == "Enhancer Destruction Enhancer")
            {
                _root.save.inventoryEnhance[k] += 1;
                if (_root.save.inventoryEnhance[k] == 10)
                {
                    _root.save.arenaMaxEnhance += 1;
                }

                _root.save.inventorySpeed[k] = Math.floor(_root.save.inventorySpeed[k] * pow / 100);
                _root.save.inventoryBonusPow[k] += Math.floor((100 - pow) / 2);
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Protector")
            {
                if (_root.save.inventoryGuard[k] != true)
                {
                    _root.save.inventoryGuard[k] = true;
                }
                else
                {
                    _root.save.inventoryGuard[k] = false;
                }
            }
            else if (_root.save.inventorySubtype[j] == "Armor Protector")
            {
                if (_root.save.inventoryGuard[k] != true)
                {
                    _root.save.inventoryGuard[k] = true;
                }
                else
                {
                    _root.save.inventoryGuard[k] = false;
                }
            }
            else if (_root.save.inventorySubtype[j] == "Accessory Protector")
            {
                if (_root.save.inventoryGuard[k] != true)
                {
                    _root.save.inventoryGuard[k] = true;
                }
                else
                {
                    _root.save.inventoryGuard[k] = false;
                }
            }
            else if (_root.save.inventorySubtype[j] == "Enhancer Protector")
            {
                if (_root.save.inventoryGuard[k] != true)
                {
                    _root.save.inventoryGuard[k] = true;
                }
                else
                {
                    _root.save.inventoryGuard[k] = false;
                }
            }
            else if (_root.save.inventorySubtype[j] == "Weapon Finalizer")
            {
                _root.save.inventoryAttack[k] = Math.ceil(_root.save.inventoryAttack[k] * 1.2);
                _root.save.inventorySpeed[k] = Math.ceil(_root.save.inventorySpeed[k] * 1.2);
                _root.save.inventoryDefense[k] = Math.ceil(_root.save.inventoryDefense[k] * 1.2);
                _root.save.inventoryCrit[k] = Math.ceil(_root.save.inventoryCrit[k] * 1.2);
                _root.save.inventoryDexterity[k] = Math.ceil(_root.save.inventoryDexterity[k] * 1.2);
                _root.save.inventoryHealth[k] = Math.ceil(_root.save.inventoryHealth[k] * 1.2);
                _root.save.inventoryLevel[k] = 9999;
                _root.save.inventoryMaxLevel[k] = 9999;
                _root.save.inventoryExp[k] = 0;
                _root.save.inventoryExpTNL[k] = 0;
                _root.save.inventoryNoBonus[k] = true;
                _root.save.inventoryNoFuse[k] = true;
                _root.save.inventoryNoUnique[k] = false;
            }
            else if (_root.save.inventorySubtype[j] == "Armor Finalizer")
            {
                _root.save.inventoryAttack[k] = Math.ceil(_root.save.inventoryAttack[k] * 1.2);
                _root.save.inventorySpeed[k] = Math.ceil(_root.save.inventorySpeed[k] * 1.2);
                _root.save.inventoryDefense[k] = Math.ceil(_root.save.inventoryDefense[k] * 1.2);
                _root.save.inventoryCrit[k] = Math.ceil(_root.save.inventoryCrit[k] * 1.2);
                _root.save.inventoryDexterity[k] = Math.ceil(_root.save.inventoryDexterity[k] * 1.2);
                _root.save.inventoryHealth[k] = Math.ceil(_root.save.inventoryHealth[k] * 1.2);
                _root.save.inventoryLevel[k] = 9999;
                _root.save.inventoryMaxLevel[k] = 9999;
                _root.save.inventoryExp[k] = 0;
                _root.save.inventoryExpTNL[k] = 0;
                _root.save.inventoryNoBonus[k] = true;
                _root.save.inventoryNoFuse[k] = true;
                _root.save.inventoryNoUnique[k] = false;
            }
            else if (_root.save.inventorySubtype[j] == "Accessory Finalizer")
            {
                _root.save.inventoryAttack[k] = Math.ceil(_root.save.inventoryAttack[k] * 1.2);
                _root.save.inventorySpeed[k] = Math.ceil(_root.save.inventorySpeed[k] * 1.2);
                _root.save.inventoryDefense[k] = Math.ceil(_root.save.inventoryDefense[k] * 1.2);
                _root.save.inventoryCrit[k] = Math.ceil(_root.save.inventoryCrit[k] * 1.2);
                _root.save.inventoryDexterity[k] = Math.ceil(_root.save.inventoryDexterity[k] * 1.2);
                _root.save.inventoryHealth[k] = Math.ceil(_root.save.inventoryHealth[k] * 1.2);
                _root.save.inventoryLevel[k] = 9999;
                _root.save.inventoryMaxLevel[k] = 9999;
                _root.save.inventoryExp[k] = 0;
                _root.save.inventoryExpTNL[k] = 0;
                _root.save.inventoryNoBonus[k] = true;
                _root.save.inventoryNoFuse[k] = true;
                _root.save.inventoryNoUnique[k] = false;
            }

            _root.dispNews(61,
                "[" + _root.save.inventoryName[k] + "] enhanced with [" + _root.save.inventoryName[j] + "]!");
            if (_root.save.inventorySubtype[j].indexOf("Protector") == -1 &&
                _root.save.inventoryName[j].indexOf("[I]") == -1)
            {
                if (_root.save.questType == "Enhance")
                {
                    if (_root.save.questSubtype == "Success")
                    {
                        _root.save.questCount += 1;
                    }
                }

                if (_root.save.inventorySell[j] > 0)
                {
                    _root.gainCareerEXP(4, Math.ceil(_root.save.inventorySell[j] / 1000000), true);
                }

                deleteArenaItem(j);
            }
        }
        else if (_root.save.inventorySubtype[k] == "Secondary Weapon")
        {
            _root.showPopup("Cannot Enhance", "Secondary Weapons cannot be enhanced.");
        }
        else
        {
            _root.showPopup("Cannot Enhance", "You cannot use this enhancer on this item!");
        }

        _root.enhancerToUse = 0;
    }

    // MATCH: frame_4/DoAction.as:checkFullInventory()
    public void checkFullInventory()
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
            if (_root.save.inventoryExist[i] != 1)
            {
                _root.emptyWeaponSlot += 1;
            }

            i++;
        }

        i = 101;
        while (i <= 130)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                _root.emptyArmorSlot += 1;
            }

            i++;
        }

        i = 201;
        while (i <= 230)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                _root.emptyEnhancerSlot += 1;
            }

            i++;
        }

        i = 401;
        while (i <= 430)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                _root.emptyPotionSlot += 1;
            }

            i++;
        }

        i = 501;
        while (i <= 530)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                _root.emptyAccessorySlot += 1;
            }

            i++;
        }

        i = 601;
        while (i <= 630)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                _root.emptyOutfitSlot += 1;
            }

            i++;
        }

        i = 701;
        while (i <= 730)
        {
            if (_root.save.inventoryExist[i] != 1)
            {
                _root.emptyChipSlot += 1;
            }

            i++;
        }
    }

    // MATCH: frame_4/DoAction.as:addArenaEnemy()
    public void addArenaEnemy(double level, double speed, double attack, double defense, double accuracy,
        double evasion, double hp, double exp, double coin, double pixel, string name, string element, bool boss,
        double evolve, double heal, bool zombie, double rangeDamage, double explode, double explodeDamage,
        double rampagePct, string skill, double skillLevel, string art, string loc, string allyPassive1,
        double allyPassive1X, string allyPassive2, double allyPassive2X, string allyPassive3, double allyPassive3X,
        string allyActive1, double allyActive1X, double allyActive1Y, double allyActive1Z, string allyActive2,
        double allyActive2X, double allyActive2Y, double allyActive2Z, string allyActive3, double allyActive3X,
        double allyActive3Y, double allyActive3Z)
    {
        var enemy = new Enemy();
        enemy.level = level;
        enemy.speed = speed;
        enemy.attack = attack;
        enemy.defense = defense;
        enemy.accuracy = accuracy;
        enemy.evasion = evasion;
        enemy.hp = hp;
        enemy.exp = exp;
        enemy.coin = coin;
        enemy.pixel = pixel;
        enemy.name = name;
        enemy.element = element;
        enemy.boss = boss;
        enemy.evolve = evolve;
        enemy.heal = heal;
        enemy.zombie = zombie;
        enemy.rangeDamage = rangeDamage;
        enemy.explode = explode;
        enemy.explodeDamage = explodeDamage;
        enemy.rampagePct = rampagePct;
        enemy.skill = skill;
        enemy.skillLevel = skillLevel;
        enemy.art = art;
        enemy.loc = loc;
        enemy.allyPassive1 = allyPassive1;
        enemy.allyPassive1X = allyPassive1X;
        enemy.allyPassive2 = allyPassive2;
        enemy.allyPassive2X = allyPassive2X;
        enemy.allyPassive3 = allyPassive3;
        enemy.allyPassive3X = allyPassive3X;
        enemy.allyActive1 = allyActive1;
        enemy.allyActive1X = allyActive1X;
        enemy.allyActive1Y = allyActive1Y;
        enemy.allyActive1Z = allyActive1Z;
        enemy.allyActive2 = allyActive2;
        enemy.allyActive2X = allyActive2X;
        enemy.allyActive2Y = allyActive2Y;
        enemy.allyActive2Z = allyActive2Z;
        enemy.allyActive3 = allyActive3;
        enemy.allyActive3X = allyActive3X;
        enemy.allyActive3Y = allyActive3Y;
        enemy.allyActive3Z = allyActive3Z;
        enemyList.Add(enemy);
    }

    // MATCH: frame_4/DoAction.as:obtainAlly()
    public void obtainAlly(double ID)
    {
        if (isNaN(_root.save.arenaAllyEXP[ID]))
        {
            _root.save.arenaAllyEXP[ID] = 0;
            _root.save.arenaAllyUpgrade[ID] = 0;
            _root.dispNews(35, "Invisible Ally GET! [" + _root.enemyList[(int)ID].name + "]!");
        }
    }

    // MATCH: frame_4/DoAction.as:addKommanderMission()
    public void addKommanderMission(double monID, double minDiff, double monCount)
    {
        _root.komDiff[monID] = minDiff;
        _root.komCount[monID] = monCount;
    }

    // MATCH: frame_4/DoAction.as:addMuseumItem()
    public void addMuseumItem(double mSlotID, double mValue, string mName)
    {
        _root.museumItem[mSlotID] = mName;
        _root.museumValue[mSlotID] = mValue;
        _root.museumMaxItem += 1;
        _root.museumMaxValue += mValue;
    }

    // MATCH: frame_4/DoAction.as:addMuseumArmorSet()
    public void addMuseumArmorSet(double mSlotID, double mValue, string mName)
    {
        _root.museumItem[mSlotID] = mName + " Hat";
        _root.museumValue[mSlotID] = mValue;
        _root.museumItem[mSlotID + 1] = mName + " Shirt";
        _root.museumValue[mSlotID + 1] = mValue;
        _root.museumItem[mSlotID + 2] = mName + " Gloves";
        _root.museumValue[mSlotID + 2] = mValue;
        _root.museumItem[mSlotID + 3] = mName + " Pants";
        _root.museumValue[mSlotID + 3] = mValue;
        _root.museumItem[mSlotID + 4] = mName + " Shoes";
        _root.museumValue[mSlotID + 4] = mValue;
        _root.museumMaxItem += 5;
        _root.museumMaxValue += mValue * 5;
    }

    // MATCH: frame_4/DoAction.as:recalcMuseumScore()
    public void recalcMuseumScore()
    {
        _root.save.collectionPoint = 0;
        _root.save.collectionPointTrophy = 0;
        var i = 1401;
        while (i <= 3000)
        {
            if (_root.save.inventoryExist[i] == 1 && !isNaN(_root.museumValue[i]))
            {
                _root.save.collectionPoint += _root.museumValue[i];
                if (_root.save.inventorySubtype[i] == "Trophy")
                {
                    _root.save.collectionPointTrophy += 1;
                }
            }

            i++;
        }

        if (_root.save.collectionPointMax < _root.save.collectionPoint)
        {
            _root.save.collectionPointMax = _root.save.collectionPoint;
        }
    }

    // MATCH: frame_7/DoAction.as:verif()
    public void verif(string username, double saveID, double refCode)
    {
        if (_root.kongregate_username == username)
        {
            _root.verifyA = saveID;
            _root.verifyB = refCode;
        }
    }

    // MATCH: frame_7/DoAction.as:addEvent()
    public void addEvent(double rating, int year, int month, int date, string eventName)
    {
        _root.eventRating[year][month][date] += rating;
        _root.eventList[year][month][date][0] = "" + int.Parse(_root.eventList[year][month][date][0]) + 1;
        _root.eventList[year][month][date].Add(eventName);
    }


    // MATCH: frame_7/DoAction.as:overrideEvent()
    public void overrideEvent(int year, int month, int date)
    {
        _root.eventRating[year][month][date] = 0;
        _root.eventList[year][month][date] = new();
        _root.eventList[year][month][date][0] = "0";
    }

    // MATCH: frame_7/DoAction.as:displayEvent()
    public string displayEvent(int year, int month, int date)
    {
        var temp = "";
        var i = 1;
        while (i <= int.Parse(_root.eventList[year][month][date][0]))
        {
            temp += "* " + _root.eventList[year][month][date][i] + "\n";
            i++;
        }

        return temp;
    }

    // MATCH: frame_7/DoAction.as:addRedCoin()
    public void addRedCoin(string user, double amount, string reason)
    {
        if (_root.kongregate_username == user)
        {
            _root.contributorRC += amount;
            _root.rcEarnLog += "\n" + amount + " Red Coins / Reason: " + reason;
        }
    }

    // MATCH: frame_7/DoAction.as:banhammer()
    public void banhammer(string user, string reason)
    {
        if (_root.kongregate_username == user || user == "[everyone]")
        {
            _root.canPlay = false;
            _root.banReason += reason + "\n";
        }
    }

    // MATCH: frame_11/DoAction.as:selectSavefile()
    public void selectSavefile(double sid)
    {
        if (sid <= 4)
        {
            _root.saveid = sid;
        }
        else if (sid == 5)
        {
            // TODO: challenge mode save
            //_root.challengeMode.gotoAndStop(2);
        }
    }

    // MATCH: frame_13/DoAction_2.as:killPet()
    public void killPet()
    {
        if (_root.save.petExist != 0)
        {
            _root.save.deadPetName = _root.save.petName;
            _root.save.deadPetStat[1] = _root.save.petStat[1];
            _root.save.deadPetStat[2] = _root.save.petStat[2];
            _root.save.deadPetStat[3] = _root.save.petStat[3];
            _root.save.deadPetStat[4] = _root.save.petStat[4];
            _root.save.deadPetStat[5] = _root.save.petStat[5];
            _root.save.deadPetStat[6] = _root.save.petStat[6];
            _root.save.deadPetStat[7] = _root.save.petStat[7];
            _root.save.deadPetStat[8] = _root.save.petStat[8];
            _root.save.petExist = 0;
            _root.save.petHealth = 0;
            _root.save.petMana = 0;
            _root.save.petStat[1] = 0;
            _root.save.petStat[2] = 0;
            _root.save.petStat[3] = 0;
            _root.save.petStat[4] = 0;
            _root.save.petStat[5] = 0;
            _root.save.petStat[6] = 0;
            _root.save.petStat[7] = 0;
            _root.save.petStat[8] = 0;
            _root.dispNews(153, "Your pet has died.");
        }
    }

    // MATCH: frame_13/DoAction_2.as:checkPet()
    public void checkPet()
    {
        if (_root.save.petExist == 1)
        {
            _root.petTotalFeed = 0;
            var i = 1;
            while (i <= 8)
            {
                _root.petTotalFeed += _root.save.petStat[i];
                i++;
            }

            if (_root.save.petBestLevel < Math.floor(_root.petTotalFeed / 8))
            {
                _root.save.petBestLevel = Math.floor(_root.petTotalFeed / 8);
            }

            var petMaxHealth = 0d;
            var petMaxMana = 0d;
            if (_root.save.petFullness > 0)
            {
                _root.save.petFullness -= 1;
                _root.dispNews(149, "Pet Fullness decreased! (-1) / Remaining: " + _root.save.petFullness);
                _root.gainCareerEXP(11, _root.save.petFullness * 25, true);
                if (_root.cursoridle < 300)
                {
                    var pl = Math.floor((_root.save.petStat[1] + _root.save.petStat[2] + _root.save.petStat[3] +
                                         _root.save.petStat[4] + _root.save.petStat[5] + _root.save.petStat[6] +
                                         _root.save.petStat[7] + _root.save.petStat[8]) / 8);
                    petMaxMana = Math.floor((100 + Math.min(pl, 100) + Math.max(Math.floor(pl * (pl - 100) / 25), 0)) *
                                            Math.max(1, pl / 10 - 10));
                    petMaxHealth = 100 + Math.min(pl, 100) + Math.max(Math.floor(pl * (pl - 100) / 25), 0);
                    if (_root.save.petMana < petMaxMana)
                    {
                        _root.save.petMana += 1;
                        _root.dispNews(148, "Pet Mana increased! (+1) / Current: " + _root.save.petMana);
                        if (Math.random() < _root.curCareerLevel[11] / 200)
                        {
                            _root.save.petMana += 5;
                            _root.dispNews(148, "Pet Mana increased! (+5) / Current: " + _root.save.petMana);
                        }
                    }
                }

                if (_root.save.petFullness > 90 && _root.save.petHealth < petMaxHealth)
                {
                    _root.save.petHealth += 1;
                    _root.dispNews(147, "Pet Health increased! (+1) / Current: " + _root.save.petHealth);
                }
                else if (_root.save.petFullness < 30)
                {
                    _root.dispNews(151, "Your pet is hungry. Feed it before its health drops.");
                }
            }
            else if (_root.save.petHealth > 0)
            {
                _root.save.petFullness = 0;
                if (_root.save.careerLevel[11] < 100 || Math.random() < 0.5)
                {
                    _root.save.petHealth -= 1;
                    _root.dispNews(150, "Pet Health decreased! (-1) / Remaining: " + _root.save.petHealth);
                    _root.dispNews(152, "Your pet is very hungry. Feed it before it dies.");
                }
            }
        }
        else
        {
            var i = 1;
            while (i <= 8)
            {
                _root.save.petStat[i] = 0;
                i++;
            }
        }
    }

    // MATCH: frame_13/DoAction_2.as:checkCareer()
    public void checkCareer()
    {
        _root.curCareerLevel = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
        _root.totalCareerLevel = 0;
        _root.careerActivated = 0;
        var i = 1;
        while (i <= 16)
        {
            _root.totalCareerLevel += _root.save.careerLevel[i];
            if (_root.save.careerActive[i] > 0)
            {
                _root.careerActivated += 1;
                _root.curCareerLevel[i] = _root.save.careerLevel[i];
            }

            if (_root.save.careerBoost[i] > 0)
            {
                _root.curCareerLevel[i] = _root.save.careerLevel[i];
            }

            _root["careerLevel" + i] = _root.save.careerLevel[i];
            i++;
        }
    }

    // MATCH: frame_13/DoAction_2.as:checkBestiary()
    public void checkBestiary()
    {
        _root.totalRing = 0;
        var i = 1;
        while (i <= 22)
        {
            if (_root.save.arenaRingOwned[i] == 1)
            {
                _root.totalRing += 1;
            }

            i++;
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
            if (!isNaN(_root.save.arenaBestiary[i]))
            {
                _root.uniqueKill += 1;
            }

            if (!isNaN(_root.save.arenaBestiaryUlt1[i]))
            {
                _root.uniqueUlt1 += 1;
            }

            if (!isNaN(_root.save.arenaBestiaryUlt2[i]))
            {
                _root.uniqueUlt2 += 1;
            }

            if (!isNaN(_root.save.arenaBestiaryUlt3[i]))
            {
                _root.uniqueUlt3 += 1;
            }

            if (!isNaN(_root.save.arenaAllyEXP[i]))
            {
                _root.totalAllyTamed += 1;
                if (_root.save.arenaAllyEXP[i] >= 10000)
                {
                    _root.totalAllyMastered += 1;
                }

                if (_root.save.arenaAllyUpgrade[i] >= 10)
                {
                    _root.totalAllyMaxed += 1;
                }

                if (_root.save.arenaAllyUpgrade[i] == 15)
                {
                    _root.totalUltra += 1;
                }
            }

            if (!isNaN(_root.save.arenaBestiary[i]))
            {
                if (_root.save.arenaBestiary[i] >= 100000)
                {
                    _root.bestiaryLevel += 6;
                }
                else if (_root.save.arenaBestiary[i] >= 10000)
                {
                    _root.bestiaryLevel += 5;
                }
                else if (_root.save.arenaBestiary[i] >= 1000)
                {
                    _root.bestiaryLevel += 4;
                }
                else if (_root.save.arenaBestiary[i] >= 100)
                {
                    _root.bestiaryLevel += 3;
                }
                else if (_root.save.arenaBestiary[i] >= 10)
                {
                    _root.bestiaryLevel += 2;
                }
                else if (_root.save.arenaBestiary[i] >= 1)
                {
                    _root.bestiaryLevel += 1;
                }
            }

            i++;
        }

        if (_root.saveid == 26 && _root.totalAllyTamed >= 200)
        {
            _root.clearChallenge();
        }
    }

    // MATCH: frame_13/DoAction_2.as:incDt()
    public void incDt()
    {
        _root.summonCount += 1;
        _root.antiLag += 1;
    }
    // MATCH: frame_13/DoAction_2.as:incDt2()
    public void incDt2()
    {
        _root.summonCount += 1;
        _root.antiLag += 1;
    }

    // MATCH: frame_13/DoAction_2.as:trackZoneKill()
    public void trackZoneKill()
    {
        _root.treasureHunterKill = _root.save.arenaBestiary[240];
        _root.crystalKill = _root.save.arenaBestiary[322];
        if (isNaN(_root.crystalKill))
        {
            _root.crystalKill = 0;
        }
        if (!isNaN(_root.save.arenaBestiary[435]))
        {
            _root.crystalKill += _root.save.arenaBestiary[435];
        }
        if (!isNaN(_root.save.arenaBestiaryExtra[322]))
        {
            _root.crystalKill -= _root.save.arenaBestiaryExtra[322];
        }
        if (!isNaN(_root.save.arenaBestiaryExtra[435]))
        {
            _root.crystalKill -= _root.save.arenaBestiaryExtra[435];
        }
        if (!isNaN(_root.save.arenaBestiaryExtra[240]))
        {
            _root.treasureHunterKill -= _root.save.arenaBestiaryExtra[240];
        }
        if (isNaN(_root.treasureHunterKill))
        {
            _root.treasureHunterKill = 0;
        }
        var i = 1;
        while (i <= 91)
        {
            _root["zoneKill" + i] = _root.save.arenaZoneKill[i];
            i++;
        }
    }

    // MATCH: frame_13/DoAction_2.as:trackRuneLevel()
    public void trackRuneLevel()
    {
        var i = 1;
        while (i <= 6)
        {
            _root["runeLevel" + i] = _root.save.arenaRuneLevel[i];
            i++;
        }
    }

    // MATCH: frame_13/DoAction_2.as:fixStuff()
    public void fixStuff()
    {
        if (isNaN(_root.save.currentExp) || isNaN(_root.save.totalExp))
        {
            _root.save.currentExp = 0;
            _root.save.totalExp = 0;
            _root.save.level = 1;
        }
        if (isNaN(_root.save.arenaExp))
        {
            _root.save.arenaExp = 0;
        }
        if (isNaN(_root.save.coin))
        {
            _root.save.coin = 0;
        }
        if (isNaN(_root.save.greenCoin))
        {
            _root.save.greenCoin = 0;
        }
        if (isNaN(_root.save.blueCoin))
        {
            _root.save.blueCoin = 0;
        }
    }

    // MATCH: frame_13/DoAction_2.as:calcReqExp()
    public void calcReqExp()
    {
        _root.requiredExp = _root.save.level * _root.save.level * 10 + 10;
        if (_root.save.gDifficulty == 3)
        {
            _root.requiredExp = Math.floor(_root.requiredExp * 4);
            if (_root.save.level == 8999)
            {
                _root.requiredExp = 10000000000000 - _root.save.totalExp;
                if (_root.save.gOldAscension == false)
                {
                    if (_root.save.banned >= 1000)
                    {
                        _root.requiredExp += 25000000000000;
                    }
                    else if (_root.save.banned >= 800)
                    {
                        _root.requiredExp += 10000000000 * (_root.save.banned - 800) + 23000000000000;
                    }
                    else if (_root.save.banned >= 600)
                    {
                        _root.requiredExp += 20000000000 * (_root.save.banned - 600) + 19000000000000;
                    }
                    else if (_root.save.banned >= 400)
                    {
                        _root.requiredExp += 30000000000 * (_root.save.banned - 400) + 13000000000000;
                    }
                    else if (_root.save.banned >= 200)
                    {
                        _root.requiredExp += 40000000000 * (_root.save.banned - 200) + 5000000000000;
                    }
                    else if (_root.save.banned >= 100)
                    {
                        _root.requiredExp += 50000000000 * (_root.save.banned - 100);
                    }
                }
            }
            if (_root.save.level == 9000)
            {
                _root.requiredExp = 12000000000000 - _root.save.totalExp;
                if (_root.save.gOldAscension == false)
                {
                    if (_root.save.banned >= 1000)
                    {
                        _root.requiredExp += 25000000000000;
                    }
                    else if (_root.save.banned >= 800)
                    {
                        _root.requiredExp += 10000000000 * (_root.save.banned - 800) + 23000000000000;
                    }
                    else if (_root.save.banned >= 600)
                    {
                        _root.requiredExp += 20000000000 * (_root.save.banned - 600) + 19000000000000;
                    }
                    else if (_root.save.banned >= 400)
                    {
                        _root.requiredExp += 30000000000 * (_root.save.banned - 400) + 13000000000000;
                    }
                    else if (_root.save.banned >= 200)
                    {
                        _root.requiredExp += 40000000000 * (_root.save.banned - 200) + 5000000000000;
                    }
                    else if (_root.save.banned >= 100)
                    {
                        _root.requiredExp += 50000000000 * (_root.save.banned - 100);
                    }
                }
            }
        }
        else if (_root.save.gDifficulty == 2)
        {
            _root.requiredExp = Math.floor(_root.requiredExp * 2);
            if (_root.save.level == 8999)
            {
                _root.requiredExp = 5000000000000 - _root.save.totalExp;
                if (_root.save.gOldAscension == false)
                {
                    if (_root.save.banned >= 1000)
                    {
                        _root.requiredExp += 25000000000000;
                    }
                    else if (_root.save.banned >= 800)
                    {
                        _root.requiredExp += 10000000000 * (_root.save.banned - 800) + 23000000000000;
                    }
                    else if (_root.save.banned >= 600)
                    {
                        _root.requiredExp += 20000000000 * (_root.save.banned - 600) + 19000000000000;
                    }
                    else if (_root.save.banned >= 400)
                    {
                        _root.requiredExp += 30000000000 * (_root.save.banned - 400) + 13000000000000;
                    }
                    else if (_root.save.banned >= 200)
                    {
                        _root.requiredExp += 40000000000 * (_root.save.banned - 200) + 5000000000000;
                    }
                    else if (_root.save.banned >= 100)
                    {
                        _root.requiredExp += 50000000000 * (_root.save.banned - 100);
                    }
                }
            }
            if (_root.save.level == 9000)
            {
                _root.requiredExp = 6000000000000 - _root.save.totalExp;
                if (_root.save.gOldAscension == false)
                {
                    if (_root.save.banned >= 1000)
                    {
                        _root.requiredExp += 25000000000000;
                    }
                    else if (_root.save.banned >= 800)
                    {
                        _root.requiredExp += 10000000000 * (_root.save.banned - 800) + 23000000000000;
                    }
                    else if (_root.save.banned >= 600)
                    {
                        _root.requiredExp += 20000000000 * (_root.save.banned - 600) + 19000000000000;
                    }
                    else if (_root.save.banned >= 400)
                    {
                        _root.requiredExp += 30000000000 * (_root.save.banned - 400) + 13000000000000;
                    }
                    else if (_root.save.banned >= 200)
                    {
                        _root.requiredExp += 40000000000 * (_root.save.banned - 200) + 5000000000000;
                    }
                    else if (_root.save.banned >= 100)
                    {
                        _root.requiredExp += 50000000000 * (_root.save.banned - 100);
                    }
                }
            }
        }
        else if (_root.save.level == 8999)
        {
            _root.requiredExp = 2500000000000 - _root.save.totalExp;
            if (_root.save.gOldAscension == false)
            {
                if (_root.save.banned >= 1000)
                {
                    _root.requiredExp += 25000000000000;
                }
                else if (_root.save.banned >= 800)
                {
                    _root.requiredExp += 10000000000 * (_root.save.banned - 800) + 23000000000000;
                }
                else if (_root.save.banned >= 600)
                {
                    _root.requiredExp += 20000000000 * (_root.save.banned - 600) + 19000000000000;
                }
                else if (_root.save.banned >= 400)
                {
                    _root.requiredExp += 30000000000 * (_root.save.banned - 400) + 13000000000000;
                }
                else if (_root.save.banned >= 200)
                {
                    _root.requiredExp += 40000000000 * (_root.save.banned - 200) + 5000000000000;
                }
                else if (_root.save.banned >= 100)
                {
                    _root.requiredExp += 50000000000 * (_root.save.banned - 100);
                }
            }
        }
        else if (_root.save.level == 9000)
        {
            _root.requiredExp = 3000000000000 - _root.save.totalExp;
            if (_root.save.gOldAscension == false)
            {
                if (_root.save.banned >= 1000)
                {
                    _root.requiredExp += 25000000000000;
                }
                else if (_root.save.banned >= 800)
                {
                    _root.requiredExp += 10000000000 * (_root.save.banned - 800) + 23000000000000;
                }
                else if (_root.save.banned >= 600)
                {
                    _root.requiredExp += 20000000000 * (_root.save.banned - 600) + 19000000000000;
                }
                else if (_root.save.banned >= 400)
                {
                    _root.requiredExp += 30000000000 * (_root.save.banned - 400) + 13000000000000;
                }
                else if (_root.save.banned >= 200)
                {
                    _root.requiredExp += 40000000000 * (_root.save.banned - 200) + 5000000000000;
                }
                else if (_root.save.banned >= 100)
                {
                    _root.requiredExp += 50000000000 * (_root.save.banned - 100);
                }
            }
        }
        if (_root.save.level > 9002 || _root.save.level == 9002 && _root.save.totalExp < 999000000000000)
        {
            _root.save.level = 1;
            _root.save.currentExp = 0;
            _root.save.totalExp = 0;
            _root.save.bestLevel = 1;
        }
        if (_root.save.level == 9002)
        {
            _root.save.currentExp = 0;
            _root.save.totalExp = 999999999999999;
            _root.requiredExp = 1;
        }
        else if (_root.save.level == 9001)
        {
            _root.requiredExp = 999999999999999 - _root.save.totalExp;
        }
    }

    // MATCH: frame_13/DoAction_2.as:checkLevel()
    public void checkLevel()
    {
        if (_root.save.banned >= 5)
        {
            if (_root.save.reforgingCoin >= 10000000000000)
            {
                _root.save.reforgingOrb1 += Math.floor(_root.save.reforgingCoin / 10000000000000);
                _root.save.reforgingOrbTotal1 += Math.floor(_root.save.reforgingCoin / 10000000000000);
                _root.save.reforgingCoin %= 10000000000000;
            }
            if (_root.save.reforgingGreenCoin >= 10000000000)
            {
                _root.save.reforgingOrb2 += Math.floor(_root.save.reforgingGreenCoin / 10000000000);
                _root.save.reforgingOrbTotal2 += Math.floor(_root.save.reforgingGreenCoin / 10000000000);
                _root.save.reforgingGreenCoin %= 10000000000;
            }
            if (_root.save.reforgingBlueCoin >= 10000000)
            {
                _root.save.reforgingOrb3 += Math.floor(_root.save.reforgingBlueCoin / 10000000);
                _root.save.reforgingOrbTotal3 += Math.floor(_root.save.reforgingBlueCoin / 10000000);
                _root.save.reforgingBlueCoin %= 10000000;
            }
            if ((bool)_root.save["autoAscendEnabled" + _root.save.gDifficulty] == true && _root.save.gOldAscension != true)
            {
                if (_root.save.level >= 9001)
                {
                    var toAutoAscend = false;
                    if (_root.save.gDifficulty == 1)
                    {
                        if (_root.save.reforgingOrb1 >= 1)
                        {
                            _root.save.reforgingOrb1 -= 1;
                            toAutoAscend = true;
                        }
                    }
                    else if (_root.save.gDifficulty == 2)
                    {
                        if (_root.save.reforgingOrb1 >= 2 && _root.save.reforgingOrb2 >= 1)
                        {
                            _root.save.reforgingOrb1 -= 2;
                            _root.save.reforgingOrb2 -= 1;
                            toAutoAscend = true;
                        }
                    }
                    else if (_root.save.gDifficulty == 3)
                    {
                        if (_root.save.reforgingOrb1 >= 4 && _root.save.reforgingOrb2 >= 2 && _root.save.reforgingOrb3 >= 1)
                        {
                            _root.save.reforgingOrb1 -= 4;
                            _root.save.reforgingOrb2 -= 2;
                            _root.save.reforgingOrb3 -= 1;
                            toAutoAscend = true;
                        }
                    }
                    if (toAutoAscend == true)
                    {
                        _root.save.ascStupidity = 0;
                        _root.save.progBoxAsc = 0;
                        _root.save.refillAsc = 0;
                        var i = 0;
                        while (i <= 40)
                        {
                            _root.save.expSauceAsc[i] = 0;
                            i++;
                        }
                        if (_root.save.gDifficulty >= 2)
                        {
                            _root.save.bannedHard += 1;
                            _root.save.permaStupidityHard += 1;
                            _root.save.autoAscendCount2 += 1;
                            if (_root.save.speedRunAscendHard > Math.floor(_root.save.ascendPlayTime / 60))
                            {
                                _root.save.speedRunAscendHard = Math.floor(_root.save.ascendPlayTime / 60);
                            }
                        }
                        if (_root.save.gDifficulty >= 3)
                        {
                            _root.save.bannedImpossible += 1;
                            _root.save.permaStupidityImpossible += 1;
                            _root.save.autoAscendCount3 += 1;
                            if (_root.save.speedRunAscendImpossible > Math.floor(_root.save.ascendPlayTime / 60))
                            {
                                _root.save.speedRunAscendImpossible = Math.floor(_root.save.ascendPlayTime / 60);
                            }
                        }
                        _root.save.level = 8999;
                        if (_root.save.gDifficulty == 3)
                        {
                            _root.save.currentExp = 9718380419960;
                            _root.gainWhiteCoinB(2250);
                            _root.save.stupidity += 9;
                            _root.save.remStupidity += 9;
                            _root.save.totalStupidity += 9;
                        }
                        else if (_root.save.gDifficulty == 2)
                        {
                            _root.save.currentExp = 4859190209980;
                            _root.gainWhiteCoinB(750);
                            _root.save.stupidity += 3;
                            _root.save.remStupidity += 3;
                            _root.save.totalStupidity += 3;
                        }
                        else
                        {
                            _root.save.currentExp = 2429595104990;
                            _root.gainWhiteCoinB(250);
                            _root.save.stupidity += 1;
                            _root.save.remStupidity += 1;
                            _root.save.totalStupidity += 1;
                        }
                        _root.save.totalExp = _root.save.currentExp;
                        _root.save.expLag = 0;
                        if (_root.save.speedRunAscend > Math.floor(_root.save.ascendPlayTime / 60))
                        {
                            _root.save.speedRunAscend = Math.floor(_root.save.ascendPlayTime / 60);
                        }
                        _root.save.autoAscendCount1 += 1;
                        _root.save.banned += 1;
                        _root.save.permaStupidity += 1;
                        _root.save.ascendPlayTime = 0;
                        _root.save.seppukuAscension = 0;
                        var ti = 1;
                        while (ti <= _root.save.autoAp)
                        {
                            var tmpCost = ti * (ti + 1) / 2;
                            if (ti >= 10)
                            {
                                tmpCost *= ti - 9;
                            }
                            if (_root.save.remStupidity >= tmpCost)
                            {
                                _root.save.remStupidity -= tmpCost;
                                _root.save.ascStupidity += 1;
                            }
                            ti++;
                        }
                        _root.topBar.ascentText.Text = "+" + _root.save.banned;
                    }
                }
            }
        }
        calcReqExp();
        var lfrt = 0d;
        var lfrYC = 0d;
        var lfrGC = 0d;
        var lfrBC = 0d;
        var lfr = 1d;
        while (lfr <= 1)
        {
            if (_root.save.currentExp >= _root.requiredExp && !isNaN(_root.save.currentExp) && _root.save.currentExp != Infinity && _root.save.level < 9002)
            {
                _root.save.level += 1;
                lfrt += 1;
                if (lfrt < 50 && _root.save.level < 8998)
                {
                    lfr -= 1;
                }
                _root.save.totalExp += _root.requiredExp;
                _root.save.currentExp -= _root.requiredExp;
                if (_root.save.level == 9000)
                {
                    _root.save.currentExp = Math.floor(_root.save.currentExp / 2);
                }
                if (_root.save.level == 9001)
                {
                    _root.save.currentExp = Math.floor(_root.save.currentExp / 10);
                }
                lfrYC += 200 * _root.save.level;
                if (_root.save.level % 1000 == 0)
                {
                    lfrBC += _root.save.level;
                }
                else if (_root.save.level % 100 == 0)
                {
                    lfrGC += 10 * _root.save.level;
                }
                else
                {
                    lfrGC += 1 * _root.save.level;
                }
                if (_root.save.showBanner != false)
                {
                    if (_root.save.level % 1000 == 0 || _root.save.level == 9001 || _root.save.level == 9002)
                    {
                        _root.accomplishPop.targetX = 10;
                        _root.accomplishPop.count = 0;
                        _root.accomplishPop.gotoAndStop(3);
                        _root.accomplishPop.lolMessage.Text = "You are now Lv. " + _root.withComma(_root.save.level) + "! Congratulations!";
                    }
                }
                if (_root.save.questType == "Level Up")
                {
                    _root.save.questCount += 1;
                }
                calcReqExp();
            }
            lfr++;
        }
        if (lfrt > 0)
        {
            if (_root.save.bestLevel < _root.save.level)
            {
                _root.save.bestLevel = _root.save.level;
            }
            if (_root.save.level == 8999)
            {
                _root.save.yoEpicFail = 25465;
                if (_root.save.gDifficulty >= 2)
                {
                    _root.save.coin += _root.save.bankCoin;
                    _root.save.greenCoin += _root.save.bankGreenCoin;
                    _root.save.blueCoin += _root.save.bankBlueCoin;
                    _root.save.bankCoin = 0;
                    _root.save.bankGreenCoin = 0;
                    _root.save.bankBlueCoin = 0;
                    _root.save.featureBoostGen = true;
                    _root.save.featureBoostAuto = true;
                    _root.save.featureGarden = true;
                    _root.save.featureBattleArena = true;
                    _root.save.featureButtonMachine = true;
                    _root.save.featureMoneyPrinter = true;
                    _root.save.featureMysteryShop = true;
                    _root.save.featureArcade = true;
                    _root.save.featureStadium = true;
                    _root.save.featureTukkunFCG = true;
                    _root.save.featureLolMarket = true;
                    _root.save.featureAwesomeAdventures = true;
                    _root.save.featureFishing = true;
                    _root.save.featureEpicLicense = true;
                    _root.save.featureMiniGarden = true;
                    _root.save.featureTravelingTicket = true;
                    _root.save.featureSuperBattery = true;
                    _root.save.featureArcadePack = true;
                    _root.save.featureManualSprayer = true;
                    _root.save.featureSpecialSprayer = true;
                    _root.save.featureDoomSprayer = true;
                    _root.save.featureEnergyToolbar = true;
                    _root.save.featurePremiumSprayer = true;
                    _root.save.boostMax = 1600;
                }
            }
            else if (_root.save.level == 9000)
            {
                if (_root.save.banned < 100)
                {
                    _root.gainWhiteCoinB(1000);
                }
            }
            else if (_root.save.level == 9001)
            {
                if (_root.saveid >= 10 && _root.saveid <= 13)
                {
                    if (isNaN(_root.saveGlobal.challengeTime[0]) || _root.saveGlobal.challengeTime[0] > Math.floor(_root.save.ascendPlayTime))
                    {
                        _root.saveGlobal.challengeTime[0] = Math.floor(_root.save.ascendPlayTime);
                        _root.saveGlobal.challengeAttempted[0] = true;
                        _root.saveGlobal.challengePerfect[0] = true;
                    }
                }
                if (_root.save.speedRun9001 > Math.floor(_root.save.ascendPlayTime / 60))
                {
                    _root.save.speedRun9001 = Math.floor(_root.save.ascendPlayTime / 60);
                }
                _root.gainBlueCoin(Math.min(Math.floor(_root.finalExp / 200000000), 100000));
                if (_root.save.gOldAscension == true)
                {
                    if (_root.save.gDifficulty == 3)
                    {
                        _root.gainWhiteCoinB(500);
                    }
                    else if (_root.save.gDifficulty == 2)
                    {
                        _root.gainWhiteCoinB(250);
                    }
                    else if (_root.save.gDifficulty == 1)
                    {
                        _root.gainWhiteCoinB(125);
                    }
                }
                else if (_root.save.gDifficulty == 3)
                {
                    _root.gainWhiteCoinB(1000);
                }
                else if (_root.save.gDifficulty == 2)
                {
                    _root.gainWhiteCoinB(500);
                }
                else if (_root.save.gDifficulty == 1)
                {
                    _root.gainWhiteCoinB(250);
                }
            }
            else if (_root.save.level == 9002)
            {
                if (_root.save.speedRun9002 > Math.floor(_root.save.ascendPlayTime / 60))
                {
                    _root.save.speedRun9002 = Math.floor(_root.save.ascendPlayTime / 60);
                }
                _root.save.count9002 += 1;
            }
            _root.gainCoin(lfrYC, 39);
            if (lfrGC > 0)
            {
                _root.gainGreenCoinND(lfrGC);
            }
            if (lfrBC > 0)
            {
                _root.gainBlueCoin(lfrBC);
            }
            _root.gainBoost(100 * lfrt, 1);
            _root.dispNews(2, "LEVEL UP! You are now Lv. " + _root.withComma(_root.save.level) + ".");
            if (_root._quality != "LOW")
            {
                _root.topBar.levelStar.levelAnim._alpha = 100;
            }
        }
        _root.finalExp = _root.save.currentExp + _root.save.totalExp;
        if (isNaN(_root.finalExp))
        {
            _root.finalExp = 0;
        }
        if (_root.finalExp > 999999999999999)
        {
            _root.finalExp = 999999999999999;
        }
        if (_root.save.bestExp < _root.finalExp)
        {
            _root.save.bestExp = _root.finalExp;
        }
        if (_root.saveid == 23 && _root.save.level >= 3000)
        {
            _root.clearChallenge();
        }
        else if (_root.saveid == 24 && _root.save.level >= 1337)
        {
            _root.clearChallenge();
        }
    }

    // MATCH: frame_13/DoAction_2.as:checkMini()
    public void checkMini()
    {
        if (_root.save.featureMiniGarden == true || _root.save.autoHarvestTime > 0)
        {
            _root.mini1.gotoAndStop(1);
            var plantedTrees = 0;
            var readyTrees = 0;
            var i = 1;
            while (i <= _root.save.gardenCapacity)
            {
                if (_root.save.gardenTrees[i] > 0 && _root.save.gardenPurchaseTime[i] + _root.save.gardenExpiryTime[i] - _root.systemtimenow > 0)
                {
                    plantedTrees += 1;
                    if (_root.save.gardenRecentTime[i] + _root.save.gardenHarvestTime[i] - _root.systemtimenow <= 0)
                    {
                        readyTrees += 1;
                    }
                }
                i++;
            }
            mini1.miniGardenText.Text = readyTrees + " / " + plantedTrees;
            if (readyTrees > 0)
            {
                mini1.miniGardenText.LabelSettings.FontColor = c(16776960);
                if (_root.save.autoHarvestTime > 0)
                {
                    _root.harvestAllTree();
                }
            }
            else if (plantedTrees == 0)
            {
                mini1.miniGardenText.LabelSettings.FontColor = c(16711680);
            }
            else
            {
                mini1.miniGardenText.LabelSettings.FontColor = c(10066329);
            }
            if (readyTrees > 0)
            {
                if (mini1._alpha != 100)
                {
                    mini1._alpha = 100;
                }
                else
                {
                    mini1._alpha = 50;
                }
            }
            else
            {
                mini1._alpha = 30;
            }
        }
        else
        {
            mini1.gotoAndStop(2);
        }
        if (_root.save.featureSuperBattery == true)
        {
            mini2.gotoAndStop(1);
        }
        else
        {
            mini2.gotoAndStop(2);
        }
        if (_root.save.featureEnergyToolbar == true)
        {
            mini3.gotoAndStop(1);
            if (_root.save.awesomeEnergy > 0)
            {
                mini3._alpha = 100;
            }
            else
            {
                mini3._alpha = 30;
            }
            mini3.adventureText.Text = _root.save.awesomeEnergy.ToString();
        }
        else
        {
            mini3.gotoAndStop(2);
        }
        if (_root.save.doubleExpTime > 0)
        {
            mini4.gotoAndStop(2);
            mini4.timeText.Text = _root.convertMin(_root.save.doubleExpTime);
        }
        else
        {
            mini4.gotoAndStop(1);
        }
        if (_root.save.doubleCoinTime > 0)
        {
            mini5.gotoAndStop(2);
            mini5.timeText.Text = _root.convertMin(_root.save.doubleCoinTime);
        }
        else
        {
            mini5.gotoAndStop(1);
        }
    }

    // MATCH: frame_13/DoAction_2.as:dispStuff()

    public void dispStuff()
    {
        // TODO: tech light
        // if (_root.save.featureTechnicalLight == true)
        // {
        //     if (_root.tLight._currentframe != 2)
        //     {
        //         _root.tLight.gotoAndStop(2);
        //     }
        //     _root.tLight.t1.checkLight();
        //     _root.tLight.t2.checkLight();
        //     _root.tLight.t3.checkLight();
        //     _root.tLight.t4.checkLight();
        //     _root.tLight.t5.checkLight();
        //     _root.tLight.t6.checkLight();
        //     _root.tLight.t7.checkLight();
        //     _root.tLight.t8.checkLight();
        //     _root.tLight.t9.checkLight();
        // }
        // else
        // {
        //     _root.tLight.gotoAndStop(3);
        // }
        if (_root.topBar.titleText.Text != _root.save.userTitle)
        {
            _root.topBar.titleText.Text = _root.save.userTitle;
        }
        var titleColor = c((uint)(_root.save.titlered * 65536 + _root.save.titlegreen * 256 + _root.save.titleblue));
        if (_root.topBar.titleText.LabelSettings.FontColor != titleColor)
        {
            _root.topBar.nameText.LabelSettings.FontColor = titleColor;
            _root.topBar.titleText.LabelSettings.FontColor = titleColor;
        }
        if (_root.saveid >= 10)
        {
            _root.dispAsc();
        }
    }

    // MATCH: frame_13/DoAction_2.as:dispAsc()
    public void dispAsc()
    {
        var elapsed_days_int = Math.floor(_root.save.ascendPlayTime / 86400); ;
        elapsed_days = "" + elapsed_days_int;
        var remaining = _root.save.ascendPlayTime - elapsed_days_int * 86400;
        if (_root.saveid >= 20 && !isNaN(_root.save.challengeTime))
        {
            elapsed_days = "" + Math.floor(_root.save.challengeTime / 86400);
            remaining = _root.save.challengeTime - elapsed_days_int * 86400;
        }
        var elapsed_hours_int = Math.floor(remaining / 3600);
        elapsed_hours = "" + elapsed_hours_int;
        remaining -= elapsed_hours_int * 3600;
        var elapsed_minutes_int = Math.floor(remaining / 60);
        elapsed_minutes = "" + elapsed_minutes_int;
        remaining -= elapsed_minutes_int * 60;
        var elapsed_seconds_int = Math.floor(remaining / 1);
        elapsed_seconds = "" + elapsed_seconds_int;
        remaining -= elapsed_seconds_int * 1;
        if (elapsed_hours_int < 10)
        {
            elapsed_hours = "0" + elapsed_hours;
        }
        if (elapsed_minutes_int < 10)
        {
            elapsed_minutes = "0" + elapsed_minutes;
        }
        if (elapsed_seconds_int < 10)
        {
            elapsed_seconds = "0" + elapsed_seconds;
        }
        _root.topBar.ascentText.Text = elapsed_days + "d + " + elapsed_hours + ":" + elapsed_minutes + ":" + elapsed_seconds;
    }

    // MATCH: frame_13/DoAction_2.as:progressUp()
    public void progressUp()
    {
        double progSpeed;
        if (_root.progPercent < _root.save.progStore)
        {
            if (_root.save.idleMode == false || _root.idlerAppreciate == true || _root.saveid >= 10 && _root.saveid < 20)
            {
                if (_root.save.progSpeedManual > _root.save.progSpeedAuto)
                {
                    progSpeed = _root.save.progSpeedManual;
                }
                else
                {
                    progSpeed = _root.save.progSpeedAuto;
                }
            }
            else
            {
                progSpeed = _root.save.progSpeedAuto;
                if (_root.save.careerLevel[1] >= 100)
                {
                    progSpeed += 30;
                }
                progSpeed += _root.curCareerLevel[1] * 0.6;
            }
            progSpeed *= 1 + Math.min(Math.floor(_root.save.totalStupidity / 50), 20) * 0.01;
            if (_root.save.permaBanPenalty[31] == 3)
            {
                progSpeed *= 1.25;
            }
            else if (_root.save.permaBanPenalty[31] == 2)
            {
                progSpeed *= 1.15;
            }
            else if (_root.save.permaBanPenalty[31] == 1)
            {
                progSpeed *= 1.1;
            }
            if (_root.save.rewardClaim < 5)
            {
                progSpeed *= 2.5;
            }
            if (_root.save.gDifficulty >= 3 && _root.save.level < 8999)
            {
                progSpeed *= 0.8;
            }
            else if (_root.save.gDifficulty >= 2 && _root.save.level < 8999)
            {
                progSpeed *= 0.9;
            }
            _root.progPercent += 0.02 * (_root.save.boost / 100) * (40 / _root.fps) * (progSpeed / 100);
            if (_root.save.rewardClaim < 5)
            {
                _root.progPercent += 20 / _root.fps;
            }
            else if (_root.save.bestLevel < 35)
            {
                _root.progPercent += 0.125 * (_root.save.boost / 100) * (40 / _root.fps) * (progSpeed / 100);
            }
        }
    }

    // MATCH: frame_9/DoAction.as:checkAchievements()
    public void checkAchievements()
    {
        _root.awards = 0;
        _root.sawards = 0;
        _root.achRedCoin = 0;
        if (_root.saveid >= 10)
        {
            _root.save.achEarnTime[1150] = 99999999999;
            _root.save.achEarnTime[1151] = 99999999999;
            _root.save.achEarnTime[1152] = 99999999999;
            _root.save.achEarnTime[1153] = 99999999999;
            _root.save.achEarnTime[1154] = 99999999999;
            _root.save.achEarnTime[1155] = 99999999999;
            _root.save.achEarnTime[1156] = 99999999999;
            _root.save.achEarnTime[1157] = 99999999999;
            _root.save.achEarnTime[1158] = 99999999999;
            _root.save.achEarnTime[1159] = 99999999999;
            _root.save.achEarnTime[1160] = 99999999999;
            _root.save.achEarnTime[1161] = 99999999999;
            _root.save.achEarnTime[1162] = 99999999999;
            _root.save.achEarnTime[1163] = 99999999999;
            _root.save.achEarnTime[1164] = 99999999999;
            _root.save.achEarnTime[1165] = 99999999999;
            _root.save.achEarnTime[9035] = 99999999999;
        }
        var i = 1;
        while (i <= _root.totalachievements)
        {
            double achCurrent = 0;
            if (_root.achList[i].where == "save")
            {
                achCurrent = (double)_root.save[_root.achList[i].need];
            }
            else if (_root.achList[i].where == "root")
            {
                achCurrent = (double)_root[_root.achList[i].need];
            }
            var achRequired = _root.achList[i].amnt;
            if (!isNaN(achCurrent) && achCurrent >= achRequired && _root.achList[i].type == "Max" || achCurrent <= achRequired && _root.achList[i].type == "Min" || !isNaN(_root.save.achEarnTime[_root.achList[i].ID]))
            {
                if (isNaN(_root.save.achEarnTime[_root.achList[i].ID]))
                {
                    _root.save.achEarnTime[_root.achList[i].ID] = _root.systemtimenow;
                    if (_root.save.showBanner != false)
                    {
                        // TODO: port accomplishPop
                        // _root.accomplishPop.targetX = 10;
                        // _root.accomplishPop.count = 0;
                        // _root.accomplishPop.gotoAndStop(2);
                        // _root.accomplishPop.lolMessage.text = _root.achList[i].name;
                        // _root.accomplishPop.rcText.text = "Progress Bar Reward: +" + _root.achList[i].redCoin / 100 + "%";
                        // _root.accomplishPop.countText.text = _root.save.maxAchievement + 1 + " / " + _root.totalachievements;
                    }
                    _root.dispNews(3, "Achievement earned! [" + _root.achList[i].name + "] (" + (_root.save.maxAchievement + 1) + " / " + _root.totalachievements + ")");
                    _root.newAchName = _root.achList[i].name;
                    _root.newAchRedCoin = _root.achList[i].redCoin;
                }
                _root.awards += 1;
                if (_root.achList[i].secret == true)
                {
                    _root.sawards += 1;
                }
                _root.achRedCoin += _root.achList[i].redCoin;
            }
            i++;
        }
        if (_root.save.maxAchievement < _root.awards)
        {
            _root.save.maxAchievement = _root.awards;
        }
    }



    // MATCH: frame_13/DoAction_2.as:depleteBoost()
    public void depleteBoost()
    {
        var ascendBonus = 100 * _root.save.banned;
        if (ascendBonus > 500)
        {
            ascendBonus = 500;
        }
        _root.boostMax = _root.save.boostMax + _root.save.boostZebra + ascendBonus;
        if (_root.saveid == 24)
        {
            _root.boostMax = 500;
        }
        _root.boostMin = 100;
        if (_root.boostMax < _root.boostMin + 1)
        {
            _root.boostMax = _root.boostMin + 1;
        }
        var antFreq = 0.3;
        var maxAnts = 50d;
        if (_root.save.boost > _root.boostMax * 2.5)
        {
            _root.save.boost = _root.boostMax * 2.5;
        }
        if (_root.save.boost > _root.boostMax * 1.5)
        {
            antFreq *= 2 + (_root.save.boost - _root.boostMax) / 20 + (_root.save.boost - _root.boostMax * 1.5) / 5;
            maxAnts = Math.floor(maxAnts * (2 + (_root.save.boost - _root.boostMax) / 20 + (_root.save.boost - _root.boostMax * 1.5) / 5));
        }
        else if (_root.save.boost > _root.boostMax)
        {
            antFreq *= 2 + (_root.save.boost - _root.boostMax) / 20;
            maxAnts = Math.floor(maxAnts * (2 + (_root.save.boost - _root.boostMax) / 20));
        }
        else
        {
            antFreq *= 1 + (_root.save.boost - _root.boostMin) / (_root.boostMax - _root.boostMin) * 0.5;
            maxAnts = Math.floor(maxAnts * (1 + (_root.save.boost - _root.boostMin) / (_root.boostMax - _root.boostMin) * 0.5));
        }
        if (_root.save.featureSpecialSprayer == true)
        {
            maxAnts = Math.floor(maxAnts * 0.95);
        }
        if (_root.save.permaBanPenalty[9] == 3)
        {
            maxAnts = Math.floor(maxAnts * 0.8);
        }
        else if (_root.save.permaBanPenalty[9] == 2)
        {
            maxAnts = Math.floor(maxAnts * 0.88);
        }
        else if (_root.save.permaBanPenalty[9] == 1)
        {
            maxAnts = Math.floor(maxAnts * 0.92);
        }
        if (_root.save.permaBanPenalty[34] == 3)
        {
            antFreq *= 0.5;
        }
        else if (_root.save.permaBanPenalty[34] == 2)
        {
            antFreq *= 0.7;
        }
        else if (_root.save.permaBanPenalty[34] == 1)
        {
            antFreq *= 0.8;
        }
        if (maxAnts > 60000)
        {
            maxAnts = 60000;
        }
        if (maxAnts < 0)
        {
            maxAnts = 0;
        }
        if (_root.save.boost <= _root.boostMin)
        {
            antFreq = 0;
            maxAnts = 0;
            _root.save.boost = _root.boostMin;
        }
        if (_root.save.ants < maxAnts && _root.sprayCooldown1 < 165 && _root.sprayCooldown2 < 540)
        {
            _root.save.ants += Math.ceil(Math.random() * maxAnts * antFreq / 100);
        }
        else if (_root.save.ants > maxAnts)
        {
            _root.save.ants -= Math.ceil((_root.save.ants - maxAnts) / 2);
        }
        if (_root.save.boostFreeze > 3600)
        {
            _root.save.boostFreeze = 3600;
        }
        if (_root.save.boostFreeze > 0 && _root.save.ants > 0)
        {
            _root.save.boostFreeze -= 1;
        }
        else
        {
            if (_root.save.boost < _root.boostMax * 1.5 || _root.save.ants > 0)
            {
                _root.save.boost -= _root.save.ants / 600;
            }
            _root.save.boostProg = _root.save.boost;
            _root.save.boostExp = _root.save.boost;
            _root.save.boostCoin = _root.save.boost;
        }
        if (_root.save.boost > 500 && _root.saveid == 24)
        {
            _root.save.boost = 500;
        }
        if (_root.save.boostZebra > 300)
        {
            _root.save.boostZebra = 300;
        }
        if (_root.save.refundCooldown > 0)
        {
            _root.save.refundCooldown -= 1;
        }
        if (_root.save.restTime > 0)
        {
            _root.save.restTime -= 1;
        }
        if (_root.save.doubleExpTime > 0)
        {
            _root.save.doubleExpTime -= 1;
            if (_root.save.doubleExpTime <= 0)
            {
                _root.dispNews(129, "1.5x EXP is deactivated.");
            }
        }
        if (_root.save.doubleCoinTime > 0)
        {
            _root.save.doubleCoinTime -= 1;
            if (_root.save.doubleCoinTime <= 0)
            {
                _root.dispNews(129, "1.5x Coin is deactivated.");
            }
        }
        if (_root.save.rewardBotTime > 0)
        {
            _root.save.rewardBotTime -= 1;
            if (_root.save.rewardBotTime >= 3 && _root.save.rewardBotTime < 4)
            {
                _root.dispNews(129, "Idlebot is deactivated.");
            }
        }
        if (_root.save.autoHarvestTime > 0)
        {
            _root.save.autoHarvestTime -= 1;
            if (_root.save.autoHarvestTime >= 3 && _root.save.autoHarvestTime < 4)
            {
                _root.dispNews(129, "Autoharvest is deactivated.");
            }
        }
        if (_root.save.eliteButtonTime > 0)
        {
            _root.save.eliteButtonTime -= 1;
            if (_root.save.eliteButtonTime <= 0)
            {
                _root.dispNews(129, "Invincibility Stars is deactivated.");
            }
        }
        if (_root.save.batteryChargerTime > 0)
        {
            _root.save.batteryChargerTime -= 1;
            if (_root.save.batteryChargerTime >= 3 && _root.save.batteryChargerTime < 4)
            {
                _root.dispNews(129, "Battery Charger is deactivated.");
            }
        }
        if (_root.save.stadiumProTime > 0)
        {
            _root.save.stadiumProTime -= 1;
            if (_root.save.stadiumProTime <= 0)
            {
                _root.dispNews(129, "Stadium Pro is deactivated.");
            }
        }
        if (_root.save.powerUserTime > 0)
        {
            _root.save.powerUserTime -= 1;
            if (_root.save.powerUserTime <= 0)
            {
                _root.dispNews(129, "FCG Power User is deactivated.");
            }
        }
        if (_root.save.demandMasterTime > 0)
        {
            _root.save.demandMasterTime -= 1;
            if (_root.save.demandMasterTime <= 0)
            {
                _root.dispNews(129, "Demand Master is deactivated.");
            }
        }
        if (_root.save.quickAdventuresTime > 0)
        {
            _root.save.quickAdventuresTime -= 1;
            if (_root.save.quickAdventuresTime <= 0)
            {
                _root.dispNews(129, "Quick Adventures is deactivated.");
            }
        }
        if (_root.save.eliteFisherTime > 0)
        {
            _root.save.eliteFisherTime -= 1;
            if (_root.save.eliteFisherTime <= 0)
            {
                _root.dispNews(129, "Elite Fisher is deactivated.");
            }
        }
        if (_root.save.noAntsTime > 0)
        {
            _root.save.noAntsTime -= 1;
            if (_root.save.noAntsTime >= 3 && _root.save.noAntsTime < 4)
            {
                _root.dispNews(129, "Automatic Ant Spray is deactivated.");
            }
        }
        if (_root.save.doubleQuestTime > 0)
        {
            _root.save.doubleQuestTime -= 1;
            if (_root.save.doubleQuestTime <= 0)
            {
                _root.dispNews(129, "2x Random Quest Reward is deactivated.");
            }
        }
    }

    // MATCH: frame_13/DoAction_2.as:lagExp()
    public void lagExp()
    {
        if (_root.save.expLag > 0)
        {
            _root.save.currentExp += Math.ceil(_root.save.expLag / 1.1);
            _root.save.expLag -= Math.ceil(_root.save.expLag / 1.1);
        }
        if (_root.save.coinLag > 0)
        {
            _root.save.coin += Math.ceil(_root.save.coinLag / 1.1);
            _root.save.coinLag -= Math.ceil(_root.save.coinLag / 1.1);
        }
    }

    // MATCH: frame_13/DoAction_2.as:checkPrinter()
    public void checkPrinter()
    {
        var moneyToPrint = Math.floor(((_root.save.printerLevel + 25) * Math.pow(Math.min(_root.save.level, 9001), 0.65) * 0.63 * 10 + 4560) * (100 + _root.save.printerLevel) / 100);
        moneyToPrint = Math.round(moneyToPrint / 125) * 500;
        var printSpeed = _root.save.printerCharge * 0.04 / _root.fps;
        if (_root.save.permaBanPenalty[4] == 3)
        {
            moneyToPrint = Math.round(moneyToPrint * 5);
        }
        else if (_root.save.permaBanPenalty[4] == 2)
        {
            moneyToPrint = Math.round(moneyToPrint * 3.4);
        }
        else if (_root.save.permaBanPenalty[4] == 1)
        {
            moneyToPrint = Math.round(moneyToPrint * 2.6);
        }
        _root.printPercent += printSpeed;
        if (_root.printPercent >= 100)
        {
            _root.printMoney(moneyToPrint);
        }
    }

    // MATCH: frame_13/DoAction_2.as:checkExpiry()
    public void checkExpiry()
    {
        var expireCount = 0;
        var firstExpire = 0;
        var i = 1;
        while (i <= _root.save.gardenCapacity)
        {
            if (_root.save.gardenTrees[i] > 0)
            {
                if (_root.save.gardenPurchaseTime[i] + _root.save.gardenExpiryTime[i] - _root.systemtimenow < 0)
                {
                    _root.save.gardenTrees[i] = 0;
                    expireCount += 1;
                    if (expireCount == 1)
                    {
                        firstExpire = i;
                    }
                }
            }
            i++;
        }
        if (expireCount >= 3)
        {
            _root.dispNews(20, "Tree #" + firstExpire + " and " + (expireCount - 1) + " others expired.");
        }
        else if (expireCount == 2)
        {
            _root.dispNews(20, "Tree #" + firstExpire + " and 1 other expired.");
        }
        else if (expireCount == 1)
        {
            _root.dispNews(20, "Tree #" + firstExpire + " expired.");
        }
    }

    // MATCH: frame_13/DoAction_2.as:updateMarket()
    public void updateMarket()
    {
        if (_root.save.featureLolMarket == true)
        {
            _root.dispNews(107, "LolMarket prices have changed.");
            var i = 1;
            while (i <= 10)
            {
                if (_root.save.lolDemand[i] > 100)
                {
                    _root.save.lolDemand[i] = 100;
                }
                else if (_root.save.lolDemand[i] < -100)
                {
                    _root.save.lolDemand[i] = -100;
                }
                _root.save.lolPrice[i] += _root.save.lolDemand[i];
                _root.save.lolDemand[i] += Math.round((Math.random() - Math.random()) * (2.5 + i / 4));
                if (_root.save.lolPrice[i] < 1000 * i)
                {
                    _root.save.lolDemand[i] += i;
                }
                else if (_root.save.lolPrice[i] < 1250 * i)
                {
                    _root.save.lolDemand[i] += 1;
                }
                else if (_root.save.lolPrice[i] > 2000 * i)
                {
                    _root.save.lolDemand[i] -= i;
                }
                else if (_root.save.lolPrice[i] > 1750 * i)
                {
                    _root.save.lolDemand[i] -= 1;
                }
                if (_root.save.lolPrice[i] < 450 * i)
                {
                    _root.save.lolPrice[i] = 450 * i;
                }
                else if (_root.save.lolPrice[i] > 2550 * i)
                {
                    _root.save.lolPrice[i] = 2550 * i;
                }
                if (_root.save.demandMasterTime > 0 && Math.random() < 0.35)
                {
                    if (_root.save.lolGems[i] >= Math.ceil(_root.save.lolCapacity / 2) && _root.save.lolDemand[i] < 15)
                    {
                        _root.save.lolDemand[i] += 1;
                    }
                    else if (_root.save.lolGems[i] < Math.ceil(_root.save.lolCapacity / 2) && _root.save.lolDemand[i] > -15)
                    {
                        _root.save.lolDemand[i] -= 1;
                    }
                }
                if (_root.save.careerLevel[9] >= 100 && Math.random() < 0.1)
                {
                    if (_root.save.lolGems[i] >= Math.ceil(_root.save.lolCapacity / 2) && _root.save.lolDemand[i] < 20)
                    {
                        _root.save.lolDemand[i] += 2;
                    }
                    else if (_root.save.lolGems[i] < Math.ceil(_root.save.lolCapacity / 2) && _root.save.lolDemand[i] > -20)
                    {
                        _root.save.lolDemand[i] -= 2;
                    }
                }
                if (Math.random() < 0.15)
                {
                    if (_root.save.lolGems[i] >= Math.ceil(_root.save.lolCapacity / 2))
                    {
                        _root.save.lolDemand[i] += 1;
                    }
                    else if (_root.save.lolGems[i] < Math.ceil(_root.save.lolCapacity / 2))
                    {
                        _root.save.lolDemand[i] -= 1;
                    }
                }
                if (_root.save.lolDemand[i] > 30)
                {
                    _root.save.lolDemand[i] -= Math.ceil(i / 2) + 1;
                }
                else if (_root.save.lolDemand[i] < -30)
                {
                    _root.save.lolDemand[i] += Math.ceil(i / 2) + 1;
                }
                if (_root.save.lolDemand[i] > 40)
                {
                    _root.save.lolDemand[i] -= i;
                }
                else if (_root.save.lolDemand[i] < -40)
                {
                    _root.save.lolDemand[i] += i;
                }
                i++;
            }
        }
    }


    public void gotoAndPlay(int index)
    {
        GD.Print($"WARNING: unconverted gotoAndPlay({index})");
    }

    public double gainCoin(double index)
    {
        return 0;
    }

    public void breakNews(string a, string b, double c, double d)
    {
    }


    public object this[string key]
    {
        get => GetType().GetField(key)?.GetValue(this) ?? throw new ArgumentException($"Property `{key}` not found");
        set
        {
            var prop = GetType().GetField(key) ?? throw new ArgumentException($"Property `{key}` not found");
            prop.SetValue(this, value);
        }
    }
}