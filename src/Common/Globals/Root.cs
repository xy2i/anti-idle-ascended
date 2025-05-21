using System.Collections.Generic;
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
    public string _quality;
    public double achRedCoin;
    public double actualKpaCount;
    public double actualShinyKpaCount;
    public double arenaBot;
    public bool autoStart;
    public double awards;
    public double bestiaryLevel;
    public List<string> careerName;
    public int clock_date;
    public double clock_display;
    public int clock_month;
    public int clock_year;
    public double correctTier;
    public double cursoridle;
    public List<double> cyborgActCost;
    public List<string> cyborgActLongName;
    public List<double> cyborgActMaxPerf;
    public List<double> cyborgActMinPerf;
    public List<string> cyborgActPerfSign;
    public List<string> cyborgActPerfText;
    public List<string> cyborgActShortName;
    public List<double> cyborgActTime;
    public bool cyborgWorking;
    public List<List<List<List<string>>>> eventList;
    public double fishRodCount;
    public string flashVer;
    public int fps = 40;
    public GlobalSettingWrapper globalSetting;
    public House house = new();
    public Kongregate kongregate;
    public string kongregate_username;
    public bool kpaChip;
    public bool lootMagnet;
    public double luckyNumber;
    public double maxredcoin;
    public double nameValue;
    public Dictionary<string, object> news;
    public FlashList<string> newsFeature;
    public bool offlineVersion;
    public bool preloadedFile0;
    public bool preloadedFile1;
    public bool preloadedFile2;
    public bool preloadedFile3;
    public double questCount;
    public double refresh_date;
    public double refresh_max_date;
    public double refresh_month;
    public double refresh_year;
    public Save save = new();
    public GlobalSetting saveGlobal = new();
    public double saveid;
    public double sawards;
    public bool scoreBanned;
    public double sessionTimeLeft;
    public double stadiumHatUnlocked;
    public double systemTimeNow;
    public double thisSession;
    public double todayEvent;
    public double totalachievements;
    public double totalAllyMastered;
    public double totalAllyMaxed;
    public double totalAllyTamed;
    public double totalCareerLevel;
    public double totalRestEfficiency;
    public double totalsachievements;
    public double totalUltra;
    public double totalUnrankedPower;
    public double uniqueUlt1;
    public double uniqueUlt2;
    public double uniqueUlt3;
    public double updateBreakNews;
    public double upnumber;
    public double upnumberHidden;

    public int getBytesLoaded()
    {
        return 0;
    }

    public int getBytesTotal()
    {
        return 0;
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
        if (kpaName == undefined || kpaName == "" || kpaName.Length < 1)
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
        if (_root.kongregate_username != undefined && _root.kongregate_username != "Guest")
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
        if (_root.kongregate_username != undefined && _root.kongregate_username != "Guest")
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
            // if (_root.saveGlobal.defTab == 5)
            // {
            //     if (_root.saveGlobal.breakAll[type] || (_root.saveGlobal.breakFeature[type] &&
            //                                             _root.house._currentframe == _root.newsFeature[type]))
            //     {
            //         b = 30;
            //         while (b >= 2)
            //         {
            //             if (_root.saveGlobal.breakAll[type])
            //             {
            //                 c = 1;
            //                 while (c <= 30)
            //                 {
            //                     _root["F" + c + "breakNews" + b] = _root["F" + c + "breakNews" + (b - 1)];
            //                     _root["F" + c + "breakStamp" + b] = _root["F" + c + "breakStamp" + (b - 1)];
            //                     _root["F" + c + "breakColor" + b] = _root["F" + c + "breakColor" + (b - 1)];
            //                     c++;
            //                 }
            //             }
            //             else if (_root.saveGlobal.breakFeature[type])
            //             {
            //                 ft = _root.newsFeature[type];
            //                 _root["F" + ft + "breakNews" + b] = _root["F" + ft + "breakNews" + (b - 1)];
            //                 _root["F" + ft + "breakStamp" + b] = _root["F" + ft + "breakStamp" + (b - 1)];
            //                 _root["F" + ft + "breakColor" + b] = _root["F" + ft + "breakColor" + (b - 1)];
            //             }
            //
            //             b -= 1;
            //         }
            //
            //         if (_root.saveGlobal.breakAll[type])
            //         {
            //             c = 1;
            //             while (c <= 30)
            //             {
            //                 _root["F" + c + "breakNews1"] = news;
            //                 _root["F" + c + "breakStamp1"] = "[" + _root.clock_display + "]";
            //                 _root["F" + c + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 +
            //                                                  _root.saveGlobal.breakG[type] * 256 +
            //                                                  _root.saveGlobal.breakB[type];
            //                 c++;
            //             }
            //         }
            //         else if (_root.saveGlobal.breakFeature[type])
            //         {
            //             ft = _root.newsFeature[type];
            //             _root["F" + ft + "breakNews1"] = news;
            //             _root["F" + ft + "breakStamp1"] = "[" + _root.clock_display + "]";
            //             _root["F" + ft + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 +
            //                                               _root.saveGlobal.breakG[type] * 256 +
            //                                               _root.saveGlobal.breakB[type];
            //         }
            //
            //         _root.updateBreakNews = 1;
            //     }
            // }
            // else if (_root.saveGlobal.defTab == 0 ||
            //          _root.saveGlobal["breakTab" + _root.saveGlobal.defTab][type] == true)
            // {
            //     imp = _root.saveGlobal.defTab;
            //     b = 30;
            //     while (b >= 2)
            //     {
            //         _root["X" + imp + "breakNews" + b] = _root["X" + imp + "breakNews" + (b - 1)];
            //         _root["X" + imp + "breakStamp" + b] = _root["X" + imp + "breakStamp" + (b - 1)];
            //         _root["X" + imp + "breakColor" + b] = _root["X" + imp + "breakColor" + (b - 1)];
            //         b -= 1;
            //     }
            //
            //     _root["X" + imp + "breakNews1"] = news;
            //     _root["X" + imp + "breakStamp1"] = "[" + _root.clock_display + "]";
            //     _root["X" + imp + "breakColor1"] = _root.saveGlobal.breakR[type] * 65536 +
            //                                        _root.saveGlobal.breakG[type] * 256 + _root.saveGlobal.breakB[type];
            //     _root.updateBreakNews = 1;
            // }
        }
    }

    public void gotoAndPlay(int index)
    {
        GD.Print($"WARNING: unconverted gotoAndPlay({index})");
    }

    public string withComma(double index)
    {
        return "";
    }

    public double gainCoin(double index)
    {
        return 0;
    }

    public double gainGreenCoin(double index)
    {
        return 0;
    }

    public double gainBlueCoin(double index)
    {
        return 0;
    }

    public double gainBoost(double index, double x)
    {
        return 0;
    }

    public double gainCareerEXP(double index, double x, bool y)
    {
        return 0;
    }

    public void checkBestiary()
    {
    }

    public double obtainAlly(double lootValue)
    {
        return 0;
    }

    internal double gainWhiteCoin(double lootValue)
    {
        return 0;
    }

    public FlashList<double> arenaSkillMaxF;

    public FlashList<double> arenaSkillNameF;
}
