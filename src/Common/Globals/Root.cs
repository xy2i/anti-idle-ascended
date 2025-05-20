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
    public double arenaBot;
    public bool autoStart;
    public List<string> careerName;
    public int clock_date;
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
    public string flashVer;
    public int fps = 40;
    public GlobalSettingWrapper globalSetting;
    public House house = new();
    public Kongregate kongregate;
    public string kongregate_username;
    public bool kpaChip;
    public bool lootMagnet;
    public double luckyNumber;
    public double nameValue;
    public Dictionary<string, object> news;
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
    public GlobalSetting saveGlobal;
    public double saveid;
    public bool scoreBanned;
    public double sessionTimeLeft;
    public double thisSession;
    public double todayEvent;
    public double upnumber;
    public double upnumberHidden;
    public double totalRestEfficiency;
    public double awards;
    public double sawards;
    public double achRedCoin;
    public double actualKpaCount;
    public double actualShinyKpaCount;

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
                planDeck[myDeckArray[i]] += 1;
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
    public void submitKong(string scoreName, double amount, double hardCap, bool submitZero)
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
}