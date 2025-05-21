using System;
using System.Collections.Generic;
using AntiIdle.Common.Globals;

namespace AntiIdle.Common;

/// <summary>
///     Global variables.
/// </summary>
public class Global
{
    public static Root _root = new();

    public static string undefined = null;

    public static UnderscoreGlobal _global = new();
}

public class Save
{
    public double aagStat1 = 50;
    public double aagStat2 = 50;
    public double aagStat3 = 50;
    public double aagStat4 = 50;
    public double aceFinish = 0;
    public FlashList<double> achEarnTime = new();
    public bool activityLoot = false;
    public double ants = 100;
    public double antsSprayed = 0;
    public double apocalypseCrateOpened = 0;
    public double apocSecretKill = 0;
    public double aprilFoolsBest = 0;
    public double arcade100kMedal = 0;
    public double arcadeBless = 0;
    public double arcadeBlessMode = 1;
    public double arcadeBuyCount = 0;
    public bool arcadeConfig1 = true;
    public bool arcadeConfig2 = true;
    public bool arcadeConfig3 = true;
    public bool arcadeConfig4 = false;
    public bool arcadeConfig5 = true;
    public bool arcadeConfig6 = false;
    public bool arcadeConfig7 = false;
    public FlashList<double> arcadeDifficulty = new([2, 2, 2, 2, 2, 2, 2, 2, 2, 2]);
    public double arcadeHighPercent = 0;
    public double arcadeHighTrade = 0;
    public double arcadeMmrNoteSkin = 0;
    public double arcadeRating = 0;
    public double arcadeTodayPercent = 0;
    public double arcadeToken = 25;
    public bool arcadeTradeIn = false;
    public string arenaAbilityPreference1 = "None";
    public string arenaAbilityPreference2 = "None";
    public string arenaAbilityPreference3 = "None";
    public double arenaAccuracy = 100;
    public double arenaAlly = 0;
    public FlashList<double> arenaAllyEXP = new();
    public FlashList<bool> arenaAllyFavorite = new();
    public FlashList<double> arenaAllyUpgrade = new();
    public double arenaAttack = 100;
    public double arenaAuto = 0;
    public double arenaAutoTime = 0;
    public double arenaBacon = 0;
    public FlashList<double> arenaBestiary = new();
    public FlashList<double> arenaBestiaryExtra = new();
    public FlashList<double> arenaBestiaryUlt1 = new();
    public FlashList<string> arenaBestiaryUlt1F = new();
    public FlashList<double> arenaBestiaryUlt1V = new();
    public FlashList<double> arenaBestiaryUlt2 = new();
    public FlashList<string> arenaBestiaryUlt2F = new();
    public FlashList<double> arenaBestiaryUlt2V = new();
    public FlashList<double> arenaBestiaryUlt3 = new();
    public FlashList<string> arenaBestiaryUlt3F = new();
    public FlashList<double> arenaBestiaryUlt3V = new();
    public double arenaBonusChange = 100;
    public string arenaBonusPreference1 = "None";
    public string arenaBonusPreference2 = "None";
    public double arenaBuffDuration = 0;
    public double arenaBuffType = 0;
    public double arenaChaosLeft = 15;
    public double arenaChaosMax = 15;
    public double arenaChaoticFragment = 0;
    public double arenaCorruptAccuracy = 50;
    public double arenaCorruptAttack = 50;
    public double arenaCorruptBestDifficulty = 0;
    public double arenaCorruptDefense = 50;
    public double arenaCorruptDifficulty = 1;
    public double arenaCorruptEvasion = 50;
    public double arenaCorruptHealth = 50;
    public double arenaCorruptionCraftT = 0;
    public double arenaCorruptionEntry = 10;
    public double arenaCorruptMaxDifficulty = 20;
    public double arenaCorruptScore = 0;
    public double arenaCorruptToday = 0;
    public double arenaCorruptWmBestDifficulty = 0;
    public double arenaCorruptWmDifficulty = 1;
    public double arenaCorruptWmMaxDifficulty = 1;
    public double arenaCraft = 0;
    public double arenaCraftMax = 0;
    public double arenaCraftUsed = 0;
    public double arenaCrystal1 = 0;
    public double arenaCrystal2 = 0;
    public double arenaDeath = 0;
    public double arenaDefendComplete = 0;
    public double arenaDefendMega = 0;
    public double arenaDefense = 100;
    public double arenaDeletedSlot = 801;
    public bool arenaDiscoverAlley = false;
    public bool arenaDiscoverPokayman = false;
    public bool arenaDiscoverSmiley = false;
    public bool arenaDisplayMonsterPercentage = false;
    public bool arenaDisplayMonsterStats = true;
    public double arenaEarring = 0;
    public double arenaEndlessCraftT = 0;
    public double arenaEndlessEntry = 1;
    public double arenaEnhancerFragment = 0;
    public double arenaEvasion = 100;
    public double arenaEvent = 0;
    public FlashList<double> arenaEventKey = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public FlashList<double> arenaEventPoint = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public FlashList<bool> arenaEventReward = new();
    public double arenaExp = 0;
    public double arenaExpExcess = 0;
    public double arenaExpTotal = 0;
    public string arenaFilter = "Item Name 1,Item Name 2";
    public double arenaFreeReset = 0;
    public double arenaFury = 0;
    public double arenaGloves = 103;
    public bool arenaHardcore = false;
    public double arenaHat = 101;
    public double arenaHealth = 2500;
    public double arenaKill = 0;
    public double arenaKillEpic = 0;
    public double arenaKillPurple = 0;
    public double arenaKillRare = 0;
    public double arenaKillRed = 0;
    public double arenaKillWhite = 0;
    public double arenaKommanderComplete = 0;
    public double arenaKommanderMonCount = 5;
    public double arenaKommanderMonID = 2;
    public double arenaKommanderPixBox = 5;
    public double arenaKommanderProgBox = 5;
    public double arenaKommanderProgress = 0;
    public double arenaKommanderProof = 5;
    public double arenaKommanderSkip = 3;
    public double arenaLevel = 1;
    public double arenaLoot = 0;
    public double arenaMana = 1000;
    public bool arenaManaPower = false;
    public double arenaMaxCombo = 0;
    public double arenaMaxDamage = 0;
    public double arenaMaxEnhance = 0;
    public double arenaMaxEntry = 10;
    public double arenaMaxHealth = 2500;
    public double arenaMaxMana = 1000;
    public double arenaMedal = 0;
    public double arenaMegabossCraftT = 0;
    public double arenaMegabossEntry = 10;
    public double arenaMission = 0;
    public string arenaMoreBonusPreference1 = "None";
    public string arenaMoreBonusPreference2 = "None";
    public double arenaNerfCount = 0;
    public double arenaNerfGem = 0;
    public double arenaNerfNext = 1000;
    public double arenaOutfitEarring = 0;
    public double arenaOutfitGloves = 0;
    public double arenaOutfitHat = 0;
    public double arenaOutfitMedal = 0;
    public double arenaOutfitPants = 0;
    public double arenaOutfitShirt = 0;
    public double arenaOutfitShoes = 0;
    public double arenaOutfitSkin = 0;
    public double arenaOutfitWeapon = 0;
    public double arenaOxygenPenalty = 0;
    public double arenaPants = 104;
    public double arenaPendant = 0;
    public double arenaPixel = 0;
    public double arenaPixelMax = 0;
    public FlashList<double> arenaPotion = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double arenaPrehistoricComplete = 0;
    public double arenaPrehistoricMega = 0;
    public double arenaProofMission = 0;
    public double arenaProofTraining = 0;
    public double arenaPyramidCraftT = 0;
    public double arenaPyramidEntry = 10;
    public double arenaRage = 0;
    public double arenaRevengeCraftT = 0;
    public double arenaRevengeEntry = 10;
    public double arenaRevengeScore = 0;
    public double arenaRing = 0;

    public FlashList<double> arenaRingOwned =
        new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);

    public FlashList<bool> arenaRuneAuto = new([false, false, false, false, false, false, false]);
    public FlashList<double> arenaRuneDuration = new([0, 0, 0, 0, 0, 0, 0]);
    public FlashList<double> arenaRuneLevel = new([0, 1, 1, 1, 1, 1, 1]);
    public double arenaSampleCraft = 3;
    public double arenaShirt = 102;
    public double arenaShoes = 105;

    public FlashList<double> arenaSkill = new(
    [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0
    ], new Dictionary<int, double>
    {
        [101] = 0,
        [102] = 0,
        [103] = 0,
        [104] = 0,
        [105] = 0,
        [106] = 0
    });

    public double arenaSkillBook = 0;

    public FlashList<double> arenaSkillMax = new([
        0, 30, 30, 30, 30, 10, 1, 1, 1, 10, 10, 20, 20, 30, 30, 30, 20, 0, 30, 10, 30, 10, 30, 30, 10, 30, 1, 10, 10,
        20, 30, 10, 30, 30, 50, 50, 30, 10, 30, 10, 20, 10, 20, 10, 20, 30, 0, 0, 0, 1, 30, 10, 10, 30, 20, 10, 10, 10,
        10, 10, 10, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double arenaSkin = 0;
    public double arenaSP = 20;
    public double arenaSpirit = 0;
    public bool arenaSpookyKey = false;
    public double arenaSpookyScore = 0;
    public double arenaSpookyToday = 0;
    public bool arenaStorage2 = false;
    public bool arenaStorage3 = false;
    public bool arenaStorage4 = false;
    public double arenaSubWeapon = 0;
    public double arenaSuperiorCraft = 0;
    public double arenaTotalSkill = 0;
    public double arenaTotalSP = 0;
    public double arenaTriangleScore = 0;
    public double arenaTriangleToday = 0;
    public double arenaTrinket = 0;
    public double arenaTukkonium = 0;
    public bool arenaTurnBased = false;
    public double arenaTutorial = 0;
    public double arenaUltimateSP = 0;
    public double arenaUniqueStock = 10;
    public double arenaUnobtainium = 0;
    public double arenaWeapon = 1;
    public double arenaZone = 0;

    public FlashList<double> arenaZoneChallenge = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public FlashList<double> arenaZoneFound = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public FlashList<double> arenaZoneKill = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double arenaZoneOrig = 0;

    public FlashList<double> artifact =
        new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);

    public double artificialStupidity = 0;
    public double ascendPlayTime = 0;
    public double ascMilestone = 0;
    public double ascStupidity = 0;
    public double au = 0;
    public double autoAp = 0;
    public double autoAscendCount1 = 0;
    public double autoAscendCount2 = 0;
    public double autoAscendCount3 = 0;
    public bool autoAscendEnabled1 = false;
    public bool autoAscendEnabled2 = false;
    public double autoAscendEnabled3 = 0;
    public bool autoFight = false;
    public double autoHarvestTime = 0;

    public FlashList<double> awesomeAuto = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double awesomeBestRun = 0;
    public double awesomeBestRun1 = 0;
    public double awesomeBestRun2 = 0;
    public double awesomeBestRun3 = 0;
    public double awesomeBestRun4 = 0;
    public double awesomeBless = 250;
    public double awesomeCrateOpened = 0;
    public double awesomeEnergy = 5;
    public double awesomeEnergyNext = 60;
    public double awesomeMaxEnergy = 5;
    public double awesomeMaxReputation = 0;
    public double awesomeMineQuest = 0;
    public double awesomeRedCoin = 0;
    public double awesomeRefill = 1;
    public double awesomeReputation = 0;
    public double awesomeTotalAdv = 0;
    public double awesomeTotalAdv1 = 0;
    public double awesomeTotalAdv2 = 0;
    public double awesomeTotalAdv3 = 0;
    public double awesomeTotalAdv4 = 0;
    public double awesomeTotalRun = 0;
    public double bankArenaCraft = 0;
    public double bankArenaPixel = 0;
    public double bankBlueCoin = 0;
    public double bankCoin = 0;
    public double bankGardenFruit = 0;
    public double bankGardenPoint = 0;
    public double bankGreenCoin = 0;
    public double banned = 0;
    public double banned1662 = 0;
    public double bannedB = 0;
    public double bannedHard = 0;
    public double bannedImpossible = 0;
    public FlashList<double> banPenalty = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double batteryChargerTime = 0;
    public bool battleDaily = false;
    public double battlePoint = 0;
    public double battleReward = 0;
    public double bestExp = 0;
    public double bestLevel = 1;
    public double bestWpm = 0;
    public double bgblue = 20;
    public double bggreen = 25;
    public double bgNum = 8;
    public double bgred = 30;
    public double blackHoleBlueCoin = 0;
    public double blackHoleBlueCoinRem = 0;
    public double blackHoleCoin = 0;
    public double blackHoleCoinRem = 0;
    public double blackHoleGreenCoin = 0;
    public double blackHoleGreenCoinRem = 0;
    public double blackHoleWhiteCoin = 0;
    public double blueCoin = 0;
    public double blueCoinFrame = 0;
    public FlashList<double> blueCoinGraph = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public FlashList<double> blueCoinGraph2 = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public double blueCoinMax = 0;
    public double blueCoinOvercap = 0;

    public FlashList<double> blueCoinSauce = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ]);

    public FlashList<double> blueCoinTotal = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ]);

    public double boost = 100;
    public bool boostAuto = false;
    public bool boostAuto2 = false;
    public double boostAutoCondition = 4;
    public double boostAutoMax = 150;
    public double boostAutoPct = 100;
    public double boostAutoToday = 0;
    public double boostCoin = 100;
    public double boostExp = 100;
    public double boostFreeze = 0;
    public double boostMax = 500;
    public double boostMin = 100;
    public double boostPotion = 0;
    public double boostPremium = 0;
    public double boostProg = 100;
    public double boostPurchased = 0;
    public double boostTemp = 0;
    public double boostZebra = 0;
    public bool botActive = false;
    public double botCurrentOp = 0;
    public double botCurrentOpMax = 0;
    public double botCurrentOpNum = 0;
    public double botCurrentOpTime = 0;
    public double botEnergy = 14400;
    public double botExp = 0;
    public double botLevel = 1;
    public double botMaxTask = 0;
    public FlashList<double> botOp = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double botPill = 0;
    public double botPillCrafted = 0;
    public double botPillUsed = 0;
    public double botPoint = 1000;
    public FlashList<double> botTrain = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public bool bouncyLoot = true;
    public double breakNewsMode = 1;
    public bool businessDisplay = false;
    public FlashList<double> businessEXP = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double businessHigh = 0;
    public double businessTotal = 0;
    public double buttonBless = 0;
    public double buttonBlessMode = 1;
    public double buttonBreak = 0;
    public bool buttonBroken = false;
    public double buttonGrandpa = 0;
    public double buttonGrandpaAccuracy = 1;
    public double buttonGrandpaDiscipline = 1;
    public double buttonGrandpaPress = 0;
    public double buttonGrandpaSpeed = 1;
    public double buttonMaxCombo = 0;
    public double buttonMultiplier = 0;
    public double buttonPerfect = 0;
    public double buttonPress = 0;
    public double buttonPressToday = 0;
    public double buttonPurple = 0;
    public FlashList<double> careerActive = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public FlashList<double> careerBoost = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public FlashList<double> careerEXP = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public FlashList<double> careerLevel = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double careerPotion = 0;
    public FlashList<bool> challengeAttempted = new([false]);
    public FlashList<bool> challengeClear = new([false]);
    public bool challengeInit = false;
    public FlashList<bool> challengePerfect = new([false]);
    public double challengeTime = 0;
    public double challengeToken = 0;
    public double chaosCrateOpened = 0;
    public double cheat = 0;
    public bool cheatEnabled = false;
    public double chuckNorris = 0;
    public double coin = 10000;
    public double coinFrame = 0;

    public FlashList<double> coinGraph = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public FlashList<double> coinGraph2 = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public double coinLag = 0;
    public double coinMax = 10000;
    public double coinOvercap = 0;

    public FlashList<double> coinSauce = new(
    [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ], new Dictionary<int, double>
    {
        [41] = 0
    });

    public FlashList<double> coinTotal = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ]);

    public double collectionPoint = 0;
    public double collectionPointMax = 0;
    public double collectionPointTrophy = 0;
    public double comboWaster = 0;
    public double consecutiveDays = 1;
    public double correctedFeature = 13;
    public double count9002 = 0;
    public double curAttMedPend = 0;
    public double curAttMiss = 0;
    public double curAttStamp = 0;
    public double curBanRefID = 201508;
    public double curBusiness = 0;
    public double curBusinessActivity = 0;
    public double curBusinessOffline = 0;
    public double curBusinessOnline = 0;
    public double curDateID = 1;
    public double curDoingItWrong = 0;
    public double curForestDestroyer = 0;
    public double currentExp = 0;
    public double curSheetID = 201507;
    public double cursornum = 1;

    public string customSongStr =
        "MMR Song #1 (MMR X Arr.)|???|Tukkun|113|65|16|26|29|30|17D1_1_1_1_2N1i1i1i1i2D4N1i1i1i1i2X1s1s1s1s2X1X1N1D1_1_1_1_1_2N1i1i1i1i2D1_1_1_1_1_1_1_1_1_1_1_1_4X1X1N1D1_1_1_1_1_2N1i1i1i1i2D4N1i1i1i1i2X1s1s1s1s2X1X1N1D1_1_1_1_1_2N1i1i1i1i2D1_1_1_1_8D0N0X1D0N0X3D0N0X1D0N0X2D0N0X5D2D2N2N2N2D1_1_1_1_1_1_1_1_1_1_10D2D2N2N1i1i4D2X1s1s2X2N1i1i1i1i1i1i6D2D2N2N2D2N2X4N2N2D1_1_1_1_1_1_6D2D2N2N2N2D4N2N2N2X2N1i1i1i1i4D1_1_1_1_1_1_1_1_2N2X2D2N2N2N2X2N4D1_1_1_1_8D2N2X2D4N2X2N1i1i1i1i2D1D1N1D1X1s2X1s2N1i1i1i1i2D1D1N1D1N1i2N1i2D1_1_1_1_2D1D1N1D1N1i1i2X2N1i1i1i1D0i4D2X1s1s2N1i1i1i1i1i1i2D1D1N1D1X1s2X1s2N1i1i1i1i2D1D1N1D1X1s1s2D2N1i1i1i1i2D1D1N1D1N1i1i2X2N1i1i1i1i4D2X1s1s2N1i1i2D0N0X1D0N0X3D0N0X1D0N0X3D1_1_1_1_1_1_1_1_1_1_1_1_1_1_2X1s2X1s2N1i1i1i1i6D1_1_1_1_1_1_1_1_1_1_1_1_1_1_2X1s2X1s2N1i1i1i1i6D1_1_0N1_0N1_0X1_0N1_0X1_1_0N1_0N1_0X1_0N1_0X1_1_2X1s2X1s2N1i1i1i1i6D1_1_0N1_0N1_0X1_0N1_0X1_1_0N1_0N1_0X1_0N1_0X1_1_2X1s2X1s2N1i1i1i1i6D4X4D4X4D4X4D4X4D4X4D4X4N0X1i0s1i0s1i0s1i0s2D0N1_0i1_0i1_0i1_0i1_0i1_0i1_0i1_0i2D4X4D4X4D4X4D4X4D4X4D4X4N0X1i0s1i0s1i0s1i0s2D0N2X1X1X1X1X1X1X2D1_1_1_1_1_1_1_1_1_1_1_1_4N1i1i1i1i1i1i1i1i0X1i0s1i0s1i0s1i0s4X1s1s1s1s1s1s1s1s1s1s1s1s4N1i1i1i1i1i1i1i1i1i3D1D1N1D1X1s2X1s2N1i1i1i1i2D1D1N1D1N1i2N1i2D1_1_1_1_2D1D1N1D1N1i1i2X2N1i1i1i1D0i4D2X1s1s2N1i1i1i1i1i1i2D1D1N1D1X1s2X1s2N1i1i1i1i2D1D1N1D1X1s1s2D2N1i1i1i1i2D1D1N1D1N1i1i2X2N1i1i1i1i4D2X1s1s2N1i1i1i1i1i1i2D1D1N1D1X1s2X1s2N1i1i1i1i2D1D1N1D1N1i2N1i2D1_1_1_1_2D1D1N1D1N1i1i2X2N1i1i1i1D0i4D2X1s1s2N1i1i1i1i1i1i2D1D1N1D1X1s2X1s2N1i1i1i1i2D1D1N1D1X1s1s2D2N1i1i1i1i2D1D1N1D1N1i1i2X2N1i1i1i1i4D2X1s1s2N1i1i1i1i1i1i1i1i|7P1L2L1L1L1P1P1P1P1B0F1]0a1]0a1]0a1]0a2L0P1g0k1g0k1g0k1g0k2B4L0P1g0k1g0k1g0k1g0k2V0Z1q0u1q0u1q0u1q0u2V0Z1V0Z1L0P1B0F1]0a1]0a1]0a1]0a1]0a2L0P1g0k1g0k1g0k1g0k2B1]1]1]1]1]1]1]1]1]1]1]1]2B1B1V0Z1V0Z1L0P1B0F1]0a1]0a1]0a1]0a1]0a2L0P1g0k1g0k1g0k1g0k2B4L0P1g0k1g0k1g0k1g0k2V0Z1q0u1q0u1q0u1q0u2V0Z1V0Z1L0P1B0F1]0a1]0a1]0a1]0a1]0a2L0P1g0k1g0k1g0k1g0k2B1]1]1]1]1]1]1]1]1]1]2B0L0P0Z1B0L0P0Z3B0L0P0Z1B0L0P0Z2B0L0P0Z1V1q1q1q1q0F1q1q0F1q1q0P1q1q0P1q1q0P1q1q0F1a1L0a1g0a1g0a1g0a1g0a1g0a1g0a1g0a1g0a1g1g1g1g1g1g2V1q1q0F1q1q0F1q1q0P1q1q0P1q0k1q0k1q1q1q1q0F2V0Z1q0u1q0u1q1q0Z2L0P1g0k1g0k1g0k1g0k1g0k1g0k1g1g2V1q1q0F1q1q0F1q1q0P1q1q0P1q1q0F1q1q0P1q1q0Z2L1g1g0P1g1g0P1g1g0F1g0a1g0a1g0a1g0a1g0a1g0a1g1g2L0V1g0q1g0q0F1g0q1g0q0F1g0q1g0q0P1g0q1g0q0P1g0q1g0q0P1g0q1g0q0F1g0q1g0q1g0q1g0q0P2B0V0P1]0q1]0q0P2B0L0Z1]0g1]0g0P1k1B0V0k1]0q0k1]0q0k2B0L2L0F1g0a1g0a1g0a1g0a1g0a1g0a1g0a1g0a1g1g0P1g1g0Z1g1g0F2B0P1]1]0P1]1]0P1]1]0Z1]1]0P1]1]1]1]0F1]0a1]0a1a1L0a1g1g1g1g1g1g1g1g0F1g1g0P1g1g0Z1g1g0F2V2P1V1Z2L0P1k1k1k1B0k1B1L0F1V0F1P1F1B0Z1]0u1]1]0Z1]0u2L0P1g0k1g0k1g0k1g0k2B0F1F1P1F1L0P1g0k1g1g0P1g0k2V0F1q0a1q0a1q0a1q0a2V0F1V0F1L0P1B0F1]0P1]0k1]0k1]1]0Z2L0P1g0k1g0k1g0k1g0F0k2B1]1]0F1]1]0Z1]0u1]0u1]1]0P1]0k1]0k1]0k1]0k1k1k2V0F1V0F1L0P1B0F1]0Z1]0u1]1]0Z1]0u2L0P1g0k1g0k1g0k1g0k2B0F1F1P1F1L0P0Z1g0k0u1g0k0u1g1g0F2V0P1q0k1q0k1q0k1q0k2V0F1V0F1L0P1B0F1]0P1]0k1]0k1]1]0Z2L0P1g0k1g0k1g0k1g0k2B1]1]0F1]1]0Z1]0u1]0u1]1]0P1k1k2B0L0P0Z1B0L0P0Z3B0L0P0Z1B0L0P0Z3B1]1]1]1]1]1]1]1]1]1]1]1]1]1]2L0Z1g0u2L0Z1g0u2B0P1]0k1]0k1]0k1]0k6B1]1]1]1]1]1]1]1]1]1]1]1]1]1]2L0Z1g0u2L0Z1g0u2B0P1]0k1]0k1]0k1]0k6B1]1]0F1]0F1]0P1]0F1]0Z1]1]0F1]0F1]0P1]0F1]0Z1]1]2L0Z1g0u2L0Z1g0u2B0P1]0k1]0k1]0k1]0k6B1]1]0F1]0F1]0P1]0F1]0Z1]1]0F1]0F1]0P1]0F1]0Z1]1]2L0Z1g0u2L0Z1g0u2B0P1]0k1]0k1]0k1]0k8P2P2F2P2Z1u1u4P2P2F1a1a1a1a1a1a1a1a6P2P2P2Z2P2F1a1a2L0V1g0q1g0q0P0Z1g0q1g0q0P0Z2B0L0F0P1]0g0a0k1]0g0a0k1]0g1]0g0P0Z1]0g1]0g0F0Z1]0g1]0g0F0P4P2P2F2P2F2P2Z1u1u2P2P2F1a1a1a1a1a1a1a1a4P2P2P2Z2P2F4L0V1g0q1g0q0F0P1g0q1g0q0P0Z2B0L0P0Z1k0u1V0k0u1V1V0F0P1V0a0k1V0a0k1V1V2B0F1a1L0a1a1B0a1a1L0a1L0a1L0a2L0P2B0Z2L0F2B0P2L0P2B0P2L0Z1L1P2L2B0F1a1L0a1L0a1B0a2L2B2L1L1L0F2L0P2B0Z2L0F2B2L0P2B0Z2L0P1L0k1L0k1L0k1L0k1L1V0F1V0F1V0P1V0F1B0Z1]0u1]1]0Z1]0u2L0P1g0k1g0k1g0k1g0k2B0F1F1P1F1L0P1g0k1g1g0P1g0k2V0F1q0a1q0a1q0a1q0a2V0F1V0F1L0P1B0F1]0P1]0k1]0k1]1]0Z2L0P1g0k1g0k1g0k1g0F0k2B1]1]0F1]1]0Z1]0u1]0u1]1]0P1]0k1]0k1]0k1]0k1k1k2V0F1V0F1L0P1B0F1]0Z1]0u1]1]0Z1]0u2L0P1g0k1g0k1g0k1g0k2B0F1F1P1F1L0P0Z1g0k0u1g0k0u1g1g0F2V0P1q0k1q0k1q0k1q0k2V0F1V0F1L0P1B0F1]0P1]0k1]0k1]1]0Z2L0P1g0k1g0k1g0k1g0k2B1]1]0F1]1]0Z1]0u1]0u1]1]0P1k1k1k1B0L0k1B0L3B0L0F1B0L0F1P1F1B0Z1]0u1]1]0Z1]0u2L0P1g0k1g0k1g0k1g0k2B0F1F1P1F1L0P1g0k1g1g0P1g0k2V0F1q0a1q0a1q0a1q0a2V0F1V0F1L0P1B0F1]0P1]0k1]0k1]1]0Z2L0P1g0k1g0k1g0k1g0F0k2B1]1]0F1]1]0Z1]0u1]0u1]1]0P1]0k1]0k1]0k1]0k1k1k2V0F1V0F1L0P1B0F1]0Z1]0u1]1]0Z1]0u2L0P1g0k1g0k1g0k1g0k2B0F1F1P1F1L0P0Z1g0k0u1g0k0u1g1g0F2V0P1q0k1q0k1q0k1q0k2V0F1V0F1L0P1B0F1]0P1]0k1]0k1]1]0Z2L0P1g0k1g0k1g0k1g0k4B0F2V0Z1q0u1q0u2L0P1g0k1g0k1g0k1g0k1g0k1g0k1g0k1g0k|7N1N2N1N1N1N1N1N1N1A0G1%0b1%0b1%0b1%0b2K0Q1f0l1f0l1f0l1f0l2A4K0Q1f0l1f0l1f0l1f0l2U0[1p0v1p0v1p0v1p0v2U0[1U0[1K0Q1A0G1%0b1%0b1%0b1%0b1%0b2K0Q1f0l1f0l1f0l1f0l2A1%1%1%1%1%1%1%1%1%1%1%1%2K1K1[1[1Q1A0G1%0b1%0b1%0b1%0b1%0b2K0Q1f0l1f0l1f0l1f0l2A4K0Q1f0l1f0l1f0l1f0l2U0[1p0v1p0v1p0v1p0v2U0[1U0[1K0Q1A0G1%0b1%0b1%0b1%0b1%0b2K0Q1f0l1f0l1f0l1f0l2A1%1%1%1%1%1%1%1%1%1%2K0U0D0X0G0Q1K0U0D0X0G0Q3K0U0D0X0G0Q1K0U0D0X0G0Q2K0U0D0X0G0Q1U1p1p1p1p0G1p1p0G1p1p0Q1p1p0Q1p1p0Q1p1p0G1b1K0b1f0X0b1f0X1f0s1f0s1f0s1f0s1f0s1f0s1f1f1f1f1f1f2U1p1p0G1p1p0G1p1p0Q1p1p0Q1p0l1p0G0l1p0b1p0b1p1p0X2U0[1p0v1p0v1p1p0[1v1K0Q0v1f0l0v1f0l0v1f0l0v1f0l0v1f0l0v1f0l0v1f0l0v1f0l0v2U1p1p0G1p1p0G1p1p0Q1p1p0Q1p1p0G1p1p0Q1p1p0[2K1f1f0Q1f1f0Q1f1f0Q1f0l1f0G0l1f0b1f0b1f0b1f0b1f0b1f0b2U0N1p0i1p0i0G1p0i1p0i0G1p0i1p0i0Q1p0i1p0i0Q1p0i1p0i0Q1p0i1p0i0G1p0i1p0i1p0i1p0i0Q2U0D0Q1p0_1p0_0Q2K0D0[1f0_1f0_0Q1l1K0U0l1f0p0l1f0p0l2A0U2A0G1b1K0b1b1A0b1b1K0b1K0b1K0b2K0Q2A0[2K0G2A0Q2K0Q2A0Q2K0[1K1Q2K0G2A0G1b1K0b1K0b1A0b2K2A2K1K1K0G2K0Q2A0[2K0G2A2K0Q2A0[2K0Q1K0l1K0l1K0l1K0l1K1U0G1U0G1U0Q1U0G1A0Q0[1%0l0v1%1%0Q0[1%0l0v2K0G0[1f0b0v1f0b0v1f0b0v1f0b0v2A0G1G1Q1G1K0G0[1f0b0v1f1f0G0[1f0b0v2U0G0Q1p0b0l1p0b0l1p0b0l1p0b0l2U0G1U0G1K0Q1A0G1%0Q1%0l1%0l1%1%0[2K0Q1f0l1f0l1f0l1f0G0l2A1%1%0G1%1%0[1%0v1%0v1%1%0Q1%0l1%0l1%0l1%0l1l1K0l1K1G1G1Q1A0G1%0Q0[1%0l0v1%1%0Q0[1%0l0v2K0G0[1f0b0v1f0b0v1f0b0v1f0b0v2A0G1G1Q1G1K0Q0[1f0l0v1f0l0v1f1f0G0Q2U0G0[1p0b0v1p0b0v1p0b0v1p0b0v2U0G1U0G1K0Q1A0G1%0Q1%0l1%0l1%1%0[2K0Q1f0l1f0l1f0l1f0G0l2A1%1%0G1%1%0[1%0v1%0v1%1%0Q1l1l2K0U0D0X0G0Q1K0U0D0X0G0Q3K0U0D0X0G0Q1K0U0D0X0G0Q3N1i1i1i1i1i1i1i1i1i1i1i1i1i1D1U1N0G0[1i0b0v2N0G0[1i0b0v2D0X0Q1_0s0l1_0s0l1_0s0l1_0s0l2K1f1f1f1N1i1i1i1i1i1i1i1i1i1i1i1i1i1D1U1N0G0[1i0b0v2N0G0[1i0b0v2D0X0Q1_0s0l1_0s0l1_0s0l1_0s0l6N1i1A0i1A0i1K0i1A0i1U0i1i1A0i1A0i1K0i1A0i1U0i1i1D1U1N0G0[1i0b0v2N0G0[1i0b0v2D0X0Q1_0s0l1_0s0l1_0s0l1_0s0l6N1i1A0i1A0i1K0i1A0i1U0i1i1A0i1A0i1K0i1A0i1U0i1i1D1U1N0G0[1i0b0v2N0G0[1i0b0v2D0X0Q1_0s0l1_0s0l1_0s0l1_0s0l4X1X1D2X2D2X1X1X2X2D2X2D2X2D2X1X3X2D2X1X1D2X2D2X1X1X2X2D2X2D0Q0[1l0v1X0l0v1l0v1D0l0v2X0G0Q1X0b0l1b0l1b0l1X0b0l1b0l1D0b0l1b0l1X0b0l1X1D2X2D2X1X1X2X2D2X2D2X2D2X1X3X2D2X1X1D2X2D2X1X1X2X2D2X2D0Q0[1l0v1X0l0v1l0v1D0l0v2X0G0Q1X0b0l1D0b0l1D0b0l1D0b0l1D0b0l1D0b0l1D0b0l1D0b0l2G1b1K0b1b1b1K0b1b1K0b1b2K0Q2[1K1G1K1Q2K0Q2Q1K1[1K1Q1l1K0G0l2G1K0b1b1K0b1b2K3K2K1G2K0Q2[1K1G1K3K0Q2[1K1Q1K0l1l1l1K0l2G1G1Q1G1A0Q0[1%0l0v1%1%0Q0[1%0l0v2K0G0[1f0b0v1f0b0v1f0b0v1f0b0v2A0G1G1Q1G1K0G0[1f0b0v1f1f0G0[1f0b0v2U0G0Q1p0b0l1p0b0l1p0b0l1p0b0l2U0G1U0G1K0Q1A0G1%0Q1%0l1%0l1%1%0[2K0Q1f0l1f0l1f0l1f0G0l2A1%1%0G1%1%0[1%0v1%0v1%1%0Q1%0l1%0l1%0l1%0l1l1K0l1K1G1G1Q1A0G1%0Q0[1%0l0v1%1%0Q0[1%0l0v2K0G0[1f0b0v1f0b0v1f0b0v1f0b0v2A0G1G1Q1G1K0Q0[1f0l0v1f0l0v1f1f0G0Q2U0G0[1p0b0v1p0b0v1p0b0v1p0b0v2U0G1U0G1K0Q1A0G1%0Q1%0l1%0l1%1%0[2K0Q1f0l1f0l1f0l1f0G0l2A1%1%0G1%1%0[1%0v1%0v1%1%0Q1l1l2G0Q1G0Q1K1K1G1G1Q1A0G1A0Q0[1%0l0v1%1%0Q0[1%0l0v2K0G0[1f0b0v1f0b0v1f0b0v1f0b0v2A0G1G1Q1G1K0G0[1f0b0v1f1f0G0[1f0b0v2U0G0Q1p0b0l1p0b0l1p0b0l1p0b0l2U0G1U0G1K0Q1A0G1%0Q1%0l1%0l1%1%0[2K0Q1f0l1f0l1f0l1f0G0l2A1%1%0G1%1%0[1%0v1%0v1%1%0Q1%0l1%0l1%0l1%0l1l1K0l1K1G1G1Q1A0G1%0Q0[1%0l0v1%1%0Q0[1%0l0v2K0G0[1f0b0v1f0b0v1f0b0v1f0b0v2A0G1G1Q1G1K0Q0[1f0l0v1f0l0v1f1f0G0Q2U0G0[1p0b0v1p0b0v1p0b0v1p0b0v2U0G1U0G1K0Q1A0G1%0Q1%0l1%0l1%1%0[2K0Q1f0l1f0l1f0l1f0G0l4A0G2U0[1p0v1p0v2K0Q1f0l1f0l1f0l1f0l1f0l1f0l1f0l1f0l|7N0X1D0N2D0N1D0N1D0N1N0X1N0X1N0X1N0X1A0G1%0b1%0b1%0b1%0b2K0Q1f0l1f0l1f0l1f0l2A4K0Q1f0l1f0l1f0l1f0l2U0[1p0v1p0v1p0v1p0v2U0[1U0[1K0Q1A0G1%0b1%0b1%0b1%0b1%0b2K0Q1f0l1f0l1f0l1f0l2A1%1%1%1%0G1%0b1%0b1%0b1%0b1%1%0Q1%0l1%0l2K1K1K0U0[1K0U0[1Q1A0K0G1%0b1%0b1%0b1%0b1%0b2K0Q1f0l1f0l1f0l1f0l2A4K0Q1f0l1f0l1f0l1f0l2U0[1p0v1p0v1p0v1p0v2U0[1U0[1K0Q1A0G1%0b1%0b1%0b1%0b1%0b2K0Q1f0l1f0l1f0l1f0l2A1%1%1%1%0G1%0b1%0b1%0b1%0b1%0b1%0b2K0U0D0X0G0Q1K0U0D0X0G0Q3K0U0D0X0G0Q1K0U0D0X0G0Q2K0U0D0X0G0Q1U1p1p1p1p0G1p1p0G1p1p0Q1p1p0Q1p1p0Q1p1p0G1b1K0b1f0X0b1f0X1f0s1f0s1f0s1f0s1f0s1f0s1f1f1f1f1f1f2U1p1p0G1p1p0G1p1p0Q1p1p0Q1p0l1p0G0l1p0b1p0b1p1p0X2U0[1p0v1p0v1p1p0[1v1Q0v1l0v1X0l0v1s0l0v1N0s0l0v1i0s0l0v1U0i0s0l0v1p0i0s0l0v1K0p0i0s0l0v2U1p1p0G1p1p0G1p1p0Q1p1p0Q1p1p0G1p1p0Q1p1p0[2K1f1f0Q1f1f0Q1f1f0Q1f0l1f0G0l1f0b1f0b1f0b1f0b1f0b1f0b2U0N1p0i1p0i0G1p0i1p0i0G1p0i1p0i0Q1p0i1p0i0Q1p0i1p0i0Q1p0i1p0i0G1p0i1p0i1p0i1p0i0Q2U0D0Q1p0_1p0_0Q2K0D0[1f0_1f0_0Q1l1K0U0l1f0p0l1f0p0l2A0U2A0G1b1K0b1b1A0b1b1K0b1K0b1K0b2K0Q2A0[2K0G2A0Q2K0Q2A0Q2K0[1K1Q1l1K0G0l1l1A0G0l1b1K0b1K0b1A0b2K2A2K1K1K0G2K0Q2A0[2K0G2A2K0Q2A0[2K0Q1K0l1K0l1K0l1K0l1K1U0G1U0G1U0Q1U0G1A0Q0[1%0l0v1%1%0Q0[1%0l0v2K0G0[1f0b0v1f0b0v1f0b0v1f0b0v2A0G1G1Q1G1K0G0[1f0b0v1f1f0G0[1f0b0v2U0G0Q1p0b0l1p0b0l1p0b0l1p0N0b0l2U0G1U0G1K0Q1A0G1%0Q1%0l1%0l1%1%0[2K0Q1f0l1f0l1f0l1f0G0l2A1%1%0G1%1%0[1%0v1%0v1%1%0Q1%0l1%0l1%0l1%0l1l1K0l1K1K0U0G1K0U0G1Q1A0K0G1%0Q0[1%0l0v1%1%0Q0[1%0l0v2K0G0[1f0b0v1f0b0v1f0b0v1f0b0v2A0G1G1Q1G1K0Q0[1f0l0v1f0l0v1f1f0G0Q2U0G0[1p0b0v1p0b0v1p0b0v1p0N0b0v2U0G1U0G1K0Q1A0G1%0Q1%0l1%0l1%1%0[2K0Q1f0l1f0l1f0l1f0G0l2A1%1%0G1%1%0[1%0v1%0v1%1%0Q1l1l2K0U0D0X0G0Q1K0U0D0X0G0Q3K0U0D0X0G0Q1K0U0D0X0G0Q3A0N1%0i1%0i1A0i1%0i1%0i1A0i1%0i1A0i1%0i1%0i1A0i1%0i1%0i1A0D1%0U1N0G0[1i0b0v2N0G0[1i0b0v2D0X0Q1_0s0l1_0s0l1_0s0l1_0s0l2K1f1f1f1A0N1%0i1%0i1A0i1%0i1%0i1A0i1%0i1A0i1%0i1%0i1A0i1%0i1%0i1A0D1%0U1N0G0[1i0b0v2N0G0[1i0b0v2D0X0Q1_0s0l1_0s0l1_0s0l1_0s0l6N1i1A0i1A0i1K0i1A0i1U0i1i1A0i1A0i1K0i1A0i1U0i1i1D1U1N0G0[1i0b0v2N0G0[1i0b0v2D0X0Q1_0s0l1_0s0l1_0s0l1_0s0l6N1i1A0i1A0i1K0i1A0i1U0i1i1A0i1A0i1K0i1A0i1U0i1i1D1U1N0G0[1i0b0v2N0G0[1i0b0v2D0X0Q1_0s0l1N1N1N1N1N2X1X1D2X2D2X1X1X2X2D2X2D2X2D2X1X3X2D2X1X1D2X2D2X1X1X2X2D2X2D0Q0[1l0v1X0l0v1l0v1D0l0v2X0G0Q1X0b0l1b0l1b0l1X0b0l1b0l1D0b0l1b0l1X0b0l1X1D2X2D2X1X1X2X2D2X2D2X2D2X1X3X2D2X1X1D2X2D2X1X1X2X2D2X2D0Q0[1l0v1X0l0v1l0v1D0l0v2X0G0Q1X0b0l1D0N0b0l1D0N0b0l1D0N0b0l1D0N0b0l1D0N0b0l1D0N0b0l1D0N0b0l2G1b1K0U0b1b1b1K0U0b1b1K0U0b1b2K0U0Q2[1K0U1G1K0U1Q2K0U0Q2Q1K0U1[1K0U1Q1l1K0U0G0l2G1K0U0b1b1K0U0b1b2K0U3K0U2K0U1G2K0U0Q2[1K0U1G1K0U3K0U0Q2[1K0U1Q1K0U0l1l1l1A0K0l2A0U0G1K0U0G1Q1K0U0G1A0Q0[1%0l0v1%1%0Q0[1%0l0v2K0G0[1f0b0v1f0b0v1f0b0v1f0b0v2A0G1G1Q1G1K0G0[1f0b0v1f1f0G0[1f0b0v2U0G0Q1p0b0l1p0b0l1p0b0l1p0N0b0l2U0G1U0G1K0Q1A0G1%0Q1%0l1%0l1%1%0[2K0Q1f0l1f0l1f0l1f0G0l2A1%1%0G1%1%0[1%0v1%0v1%1%0Q1%0l1%0l1%0l1%0l1l1K0l1K1K0U0G1K0U0G1Q1A0K0G1%0Q0[1%0l0v1%1%0Q0[1%0l0v2K0G0[1f0b0v1f0b0v1f0b0v1f0b0v2A0G1G1Q1G1K0Q0[1f0l0v1f0l0v1f1f0G0Q2U0G0[1p0b0v1p0b0v1p0b0v1p0N0b0v2U0G1U0G1K0Q1A0G1%0Q1%0l1%0l1%1%0[2K0Q1f0l1f0l1f0l1f0G0l2A1%1%0G1%1%0[1%0v1%0v1%1%0Q1l1l2X0G0Q1X0G0Q1K1K1K0U0G1K0U0G1Q1A0K0G1A0Q0[1%0l0v1%1%0Q0[1%0l0v2K0G0[1f0b0v1f0b0v1f0b0v1f0b0v2A0G1G1Q1G1K0G0[1f0b0v1f1f0G0[1f0b0v2U0G0Q1p0b0l1p0b0l1p0b0l1p0N0b0l2U0G1U0G1K0Q1A0G1%0Q1%0l1%0l1%1%0[2K0Q1f0l1f0l1f0l1f0G0l2A1%1%0G1%1%0[1%0v1%0v1%1%0Q1%0l1%0l1%0l1%0l1l1K0l1K1K0U0G1K0U0G1Q1A0K0G1%0Q0[1%0l0v1%1%0Q0[1%0l0v2K0G0[1f0b0v1f0b0v1f0b0v1f0b0v2A0G1G1Q1G1K0Q0[1f0l0v1f0l0v1f1f0G0Q2U0G0[1p0b0v1p0b0v1p0b0v1p0N0b0v2U0G1U0G1K0Q1A0G1%0Q1%0l1%0l1%1%0[2K0Q1f0l1f0l1f0l1f0G0l4A0G2U0[1p0v1p0v2K0Q1f0l1f0l1f0l1f0l1f0l1f0l1f0l1f0l|!";

    public bool dailyPending = false;
    public bool damageDisplay = true;
    public bool damageFullDisplay = true;
    public double dbBlueCoin = 100;
    public double dbCoin = 100;
    public double dbExp = 100;
    public double dbGreenCoin = 100;
    public string deadPetName = "";
    public FlashList<double> deadPetStat = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double deathMatchEntry = 1;
    public double demandMasterTime = 0;
    public bool disableDrawing = false;
    public bool disableManaEffect = false;
    public string displayName = "????";
    public double doingItWrong = 0;
    public double doubleCoinTime = 0;
    public double doubleExpTime = 0;
    public double doubleQuestTime = 0;
    public double dragonReward = 0;
    public FlashList<double> drawingBoardAlp = new();
    public FlashList<string> drawingBoardHex = new();
    public double dt = 0;
    public double eliteButtonTime = 0;
    public double eliteFisherTime = 0;
    public bool enableMilestone = true;
    public bool enableTip = true;
    public FlashList<double> epicSkill = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double escaped = 0;
    public double eventToken = 0;
    public double eventTokenToday = 0;
    public double experienced = 0;
    public double expFrame = 0;
    public FlashList<double> expGraph = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public FlashList<double> expGraph2 = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public double expLag = 0;
    public double explosionCrateOpened = 0;

    public FlashList<double> expSauce = new(
    [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ], new Dictionary<int, double>
    {
        [41] = 0
    });

    public FlashList<double> expSauceAsc = new(
    [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ], new Dictionary<int, double>
    {
        [41] = 0
    });

    public FlashList<double> expTotal = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ]);

    public double failproof = 0;
    public FlashList<double> fcgBuff = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double fcgCash = 1250;
    public FlashList<double> fcgChallenge5 = new([]);
    public double fcgCollection = 0;
    public double fcgCurDiff = 0;

    public FlashList<double> fcgDeck = new([
        0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 1, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 1, 0, 1,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double fcgExp = 0;
    public double fcgExpTotal = 0;
    public double fcgInitDeck = 0;
    public double fcgLastDiff = 0;
    public double fcgLegendCount = 0;
    public double fcgLegendDeck = 0;
    public double fcgLegendLife = 0;
    public double fcgLevel = 1;
    public double fcgLevel0 = 0;
    public double fcgLevel1 = 0;
    public double fcgLevel10 = 0;
    public double fcgLevel2 = 0;
    public double fcgLevel3 = 0;
    public double fcgLevel4 = 0;
    public double fcgLevel5 = 0;
    public double fcgLevel6 = 0;
    public double fcgLevel7 = 0;
    public double fcgLevel8 = 0;
    public double fcgLevel9 = 0;
    public double fcgLose = 0;
    public double fcgMaxCash = 1250;
    public double fcgMaxStreak = 0;
    public double fcgMaxStreak0 = 0;
    public double fcgMaxStreak1 = 0;
    public double fcgMaxStreak10 = 0;
    public double fcgMaxStreak2 = 0;
    public double fcgMaxStreak3 = 0;
    public double fcgMaxStreak4 = 0;
    public double fcgMaxStreak5 = 0;
    public double fcgMaxStreak6 = 0;
    public double fcgMaxStreak7 = 0;
    public double fcgMaxStreak8 = 0;
    public double fcgMaxStreak9 = 0;

    public FlashList<double> fcgMission = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double fcgMissionGold = 0;

    public FlashList<double> fcgMissionScore = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public FlashList<double> fcgOwned = new([
        0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 1, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 1, 0, 1,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double fcgPack1 = 1;
    public double fcgPack1Cost = 0;
    public double fcgPack2 = 1;
    public double fcgPack2Cost = 0;
    public double fcgPack3 = 1;
    public double fcgPack3Cost = 0;
    public double fcgPack4 = 1;
    public double fcgPack4Cost = 0;
    public double fcgPack5 = 1;
    public double fcgPack5Cost = 0;
    public double fcgPlay = 0;
    public FlashList<bool> fcgPower = new([false, false, false, false, false, false, false, false, false]);
    public bool fcgPowerActive = true;
    public bool fcgRandomDeck = false;
    public bool fcgReceiveChallenge = true;
    public double fcgRewardedLevel = 1;
    public double fcgSeriousDeck = 34 + random(35);
    public double fcgSpeed = 10;
    public double fcgStreak = 0;
    public double fcgStreak0 = 0;
    public double fcgStreak1 = 0;
    public double fcgStreak10 = 0;
    public double fcgStreak2 = 0;
    public double fcgStreak3 = 0;
    public double fcgStreak4 = 0;
    public double fcgStreak5 = 0;
    public double fcgStreak6 = 0;
    public double fcgStreak7 = 0;
    public double fcgStreak8 = 0;
    public double fcgStreak9 = 0;
    public double fcgTotalCards = 52;
    public double fcgWin = 0;
    public FlashList<double> fcMMRSpecial = new();
    public bool featureArcade = false;
    public bool featureArcadePack = false;
    public bool featureAutoSprayer = false;
    public bool featureAwesomeAdventures = false;
    public bool featureBattleArena = false;
    public bool featureBestiary = false;
    public bool featureBoostAuto = false;
    public bool featureBoostGen = false;
    public bool featureButtonMachine = false;
    public bool featureCardToolbar = false;
    public bool featureDoomSprayer = false;
    public bool featureEnergyToolbar = false;
    public bool featureEpicLicense = false;
    public bool featureFactory = false;
    public bool featureFishing = false;
    public bool featureGarden = false;
    public bool featureIdleMode = false;
    public bool featureInstantWin = false;
    public bool featureLolMarket = false;
    public bool featureManualSprayer = false;
    public bool featureMiniGarden = false;
    public bool featureMoneyPrinter = false;
    public bool featureMysteryShop = false;
    public bool featureNewHouse = false;
    public bool featurePetFeedBar = false;
    public bool featurePremiumSprayer = false;
    public bool featureSecretShop = false;
    public double featureSelected = 1;
    public bool featureSeppuku = false;
    public bool featureSpecialShop = false;
    public bool featureSpecialSprayer = false;
    public bool featureStadium = false;
    public bool featureSuperBattery = false;
    public bool featureTechnicalLight = false;
    public bool featureTitleEditor = false;
    public bool featureTravelingTicket = false;
    public bool featureTukkunFCG = false;
    public double feedMeter = 0;
    public double feedToday = 0;
    public double feedTotal = 0;
    public bool fighterMakerReward = false;
    public bool filterPref10c = false;
    public bool filterPref11c = false;
    public bool filterPref12c = false;
    public bool filterPref13c = false;
    public bool filterPref1c = false;
    public string filterPref1t = "1";
    public bool filterPref2c = false;
    public string filterPref2t = "9999";
    public bool filterPref3c = false;
    public string filterPref3t = "1";
    public bool filterPref4c = false;
    public string filterPref4t = "9001";
    public bool filterPref5c = false;
    public string filterPref5t = "Reward";
    public bool filterPref6c = false;
    public string filterPref6t = "Attack: Regular";
    public bool filterPref7c = false;
    public string filterPref7t = "Dummy";
    public bool filterPref8c = false;
    public string filterPref8t = "0";
    public bool filterPref9c = false;
    public double filterPref9t = 15;
    public double firstPlayed = 0;
    public double fishBestLevel = 1;
    public double fishBestStreak = 0;
    public double fishCapacity = 2500;
    public double fishDrinkCooldown = 3;
    public double fishExamLeft = -1;
    public double fishExamPerfect = 0;
    public double fishExamPerfectReq = 0;
    public double fishExamReduce = 0;
    public double fishExamRod = -1;
    public double fishExamStreak = 0;
    public double fishExamStreakReq = 0;
    public double fishExp = 0;
    public double fishFatigue = 0;
    public double fishFoodCooldown = 100;

    public FlashList<double> fishFound = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public FlashList<double> fishLeft = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double fishLevel = 1;
    public double fishMilestoneToday = 0;
    public double fishMilestoneTotal = 0;
    public double fishPerfect = 0;
    public double fishPetFishCooldown = 50;
    public double fishPetFoodCooldown = 3;
    public double fishRod = 1;
    public FlashList<double> fishRodUnlock = new([0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double fishScore = 0;
    public double fishScoreRecord = 0;
    public double fishScoreToday = 0;
    public double fishShield = 0;
    public double fishStreak = 0;
    public double fishTotal = 0;
    public double fishTotalExp = 0;
    public double forestDestroyer = 0;
    public double freeBacon1 = 25;
    public double freeBacon2 = 50;
    public double gardenAnotherHarvest = 0;
    public double gardenAnotherMastery = 0;
    public double gardenBreed0 = 0;
    public double gardenBreed1 = 0;
    public double gardenBreedReward = 0;
    public double gardenBreedRewardC = 0;
    public double gardenBreedTotal = 0;
    public double gardenCapacity = 1;
    public double gardenEXP = 0;
    public FlashList<double> gardenExpiryTime = new();
    public double gardenFertilizer = 5;
    public double gardenFertilizerAllow = 0;
    public double gardenFruit = 0;
    public double gardenFruitMax = 0;
    public double gardenFullness = 0;
    public double gardenGrade11 = 0;
    public double gardenGrade12 = 0;
    public FlashList<double> gardenHarvestTime = new();
    public FlashList<double> gardenHarvestValue = new();

    public FlashList<double> gardenMastery = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double gardenMegaFertilizer = 1;
    public double gardenPoint = 0;
    public double gardenPointMax = 0;
    public FlashList<double> gardenPurchaseTime = new();
    public FlashList<double> gardenRecentTime = new();
    public double gardenResearch = 0;

    public FlashList<double> gardenSeed = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public FlashList<double> gardenSlotEXP = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0
    ]);

    public FlashList<double> gardenSlotGrade = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0
    ]);

    public FlashList<double> gardenTreeExp = new();
    public FlashList<double> gardenTreeFertilize = new();
    public FlashList<double> gardenTreeModuleProc = new();

    public FlashList<double> gardenTrees = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0
    ]);

    public double gDifficulty = 1;
    public double ghostCount = 0;
    public bool gOldAscension = false;
    public double grammarPill = 0;
    public string graphDisplay = "exp";
    public string graphName = "EXP";
    public double graphType = 1;
    public double greed = 0;
    public double greenCoin = 0;
    public double greenCoinFrame = 0;
    public FlashList<double> greenCoinGraph = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public FlashList<double> greenCoinGraph2 = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public double greenCoinMax = 0;
    public double greenCoinOvercap = 0;

    public FlashList<double> greenCoinSauce = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ]);

    public FlashList<double> greenCoinTotal = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ]);

    public double harvestCoin = 0;
    public double harvestCount = 0;
    public double harvestMillion = 0;
    public double highAvoidance = 0;
    public double highBalance = 0;
    public double highCount = 0;
    public double highMath = 0;
    public double highMind = 0;
    public FlashList<double> highMMR = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public FlashList<double> highMMRSpecial = new();
    public double highMMRX = 0;
    public double highPong = 0;
    public FlashList<double> highRankedAvoidance = new([0, 0, 0]);
    public FlashList<double> highRankedAvoidanceDiff = new([0, 0, 0]);
    public FlashList<double> highRankedBalance = new([0, 0, 0]);
    public FlashList<double> highRankedBalanceDiff = new([0, 0, 0]);
    public FlashList<double> highRankedCount = new([0, 0, 0]);
    public FlashList<double> highRankedCountDiff = new([0, 0, 0]);
    public FlashList<double> highRankedMath = new([0, 0, 0]);
    public FlashList<double> highRankedMathDiff = new([0, 0, 0]);
    public FlashList<double> highRankedMind = new([0, 0, 0]);
    public FlashList<double> highRankedMindDiff = new([0, 0, 0]);
    public FlashList<double> highRankedMMRX = new([0, 0, 0]);
    public FlashList<double> highRankedMMRXDiff = new([0, 0, 0]);
    public FlashList<double> highRankedPong = new([0, 0, 0]);
    public FlashList<double> highRankedPongDiff = new([0, 0, 0]);
    public FlashList<double> highRankedWhack = new([0, 0, 0]);
    public FlashList<double> highRankedWhackDiff = new([0, 0, 0]);
    public double highWhack = 0;
    public double houseAchievementCrystal = 0;
    public double houseActivityCrystal = 0;
    public double houseActivityCrystalMax = 0;
    public double houseActivityCrystalToday = 0;
    public double houseAscensionCrystal = 0;
    public double houseBestThrow1 = 0;
    public double houseBestThrow2 = 0;
    public double houseBorder = 1;
    public FlashList<double> houseBorderUnlocked = new([0, 1]);
    public double houseBrick = 0;
    public double houseFloor = 1;
    public FlashList<double> houseFloorUnlocked = new([0, 1]);
    public bool houseFurniture1 = false;
    public bool houseFurniture10 = false;
    public bool houseFurniture11 = false;
    public bool houseFurniture2 = false;
    public bool houseFurniture3 = false;
    public bool houseFurniture4 = false;
    public bool houseFurniture5 = false;
    public bool houseFurniture6 = false;
    public bool houseFurniture7 = false;
    public bool houseFurniture8 = false;
    public bool houseFurniture9 = false;
    public double houseGlasses = 1;
    public FlashList<double> houseGlassesUnlocked = new([0, 1]);
    public double houseHat = 1;
    public FlashList<double> houseHatUnlocked = new([0, 1]);
    public double houseLeftEye = 1;
    public FlashList<double> houseLeftEyeUnlocked = new([0, 1]);
    public double houseLeftFoot = 1;
    public FlashList<double> houseLeftFootUnlocked = new([0, 1]);
    public double houseLeftHand = 1;
    public FlashList<double> houseLeftHandUnlocked = new([0, 1]);
    public double houseMagicRock = 0;
    public double houseMouth = 1;
    public FlashList<double> houseMouthUnlocked = new([0, 1]);
    public double houseNail = 0;
    public double houseObject = 1;
    public FlashList<double> houseObjectUnlocked = new([0, 1]);
    public double housePaint = 0;
    public double housePants = 1;
    public FlashList<double> housePantsUnlocked = new([0, 1]);
    public double houseQuestCrystal = 0;
    public double houseRightEye = 1;
    public FlashList<double> houseRightEyeUnlocked = new([0, 1]);
    public double houseRightFoot = 1;
    public FlashList<double> houseRightFootUnlocked = new([0, 1]);
    public double houseRightHand = 1;
    public FlashList<double> houseRightHandUnlocked = new([0, 1]);
    public bool houseRoom1 = false;
    public bool houseRoom2 = false;
    public bool houseRoom3 = false;
    public double houseShirt = 1;
    public FlashList<double> houseShirtUnlocked = new([0, 1]);
    public double houseSkin = 1;
    public FlashList<double> houseSkinUnlocked = new([0, 1]);
    public double houseVer = 0;
    public double houseWall = 1;
    public FlashList<double> houseWallUnlocked = new([0, 1]);
    public double houseWhiteCoin = 0;
    public double houseWhiteCoinMax = 0;
    public double houseWood = 0;
    public double houseX1 = 100;
    public double houseX2 = 180;
    public double houseX3 = 230;
    public double houseY1 = 60;
    public double houseY2 = 280;
    public double houseY3 = 250;
    public double hubertCount = 0;
    public FlashList<double> hyperDay = new([0, 0, 0]);
    public double hyperDayCount = 0;
    public double hyperDayDel = 2;
    public double hyperDayRem = 3;
    public bool idleMode = false;
    public double immortality = 0;
    public FlashList<string> inventoryAbility = new([""]);
    public FlashList<double> inventoryAttack = new([0]);
    public FlashList<string> inventoryBonus = new([""]);
    public FlashList<double> inventoryBonusPow = new([0]);
    public FlashList<double> inventoryCrit = new([0]);
    public FlashList<double> inventoryDefense = new([0]);
    public FlashList<string> inventoryDesc = new([""]);
    public FlashList<double> inventoryDexterity = new([0]);
    public FlashList<double> inventoryEnhance = new([0]);
    public FlashList<double> inventoryExist = new([0]);
    public FlashList<double> inventoryExp = new([0]);
    public FlashList<double> inventoryExpiry = new([double.PositiveInfinity]);
    public FlashList<double> inventoryExpTNL = new([0]);
    public FlashList<double> inventoryFrame = new([0]);
    public FlashList<bool> inventoryGuard = new([false]);
    public FlashList<double> inventoryHealth = new([0]);
    public FlashList<double> inventoryLevel = new([1]);
    public FlashList<double> inventoryMaxLevel = new([1]);
    public FlashList<string> inventoryMoreBonus = new([""]);
    public FlashList<string> inventoryName = new(["No Item"]);
    public FlashList<bool> inventoryNoBonus = new([false]);
    public FlashList<bool> inventoryNoFuse = new([false]);
    public FlashList<bool> inventoryNoRecycle = new([false]);
    public FlashList<bool> inventoryNoUnique = new([false]);
    public FlashList<double> inventoryObtainTime = new([0]);
    public FlashList<bool> inventoryRange = new([false]);
    public FlashList<double> inventoryReqRank = new([1]);
    public FlashList<double> inventorySell = new([0]);
    public FlashList<double> inventorySet = new([0]);
    public FlashList<double> inventorySpeed = new([0]);
    public FlashList<bool> inventorySpirit = new([false]);
    public FlashList<string> inventorySubtype = new(["Any"]);
    public FlashList<string> inventoryType = new(["Any"]);
    public FlashList<double> inventoryUnob = new([0]);
    public double knowledge = 0;
    public double lastPlayed = 0;
    public double legendaryBoxOpened = 0;

    /// <summary>
    ///     Current level.
    /// </summary>
    public double level = 1;

    public double lolBug = 0;
    public double lolCapacity = 50;
    public double lolConfig1 = 1;
    public double lolConfig2 = 3;
    public bool lolConfig3 = false;
    public double lolCooldown = 0;
    public FlashList<double> lolDemand = new([0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]);
    public FlashList<double> lolGems = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double lolMaxProfit = 0;
    public FlashList<double> lolPrice = new([0, 1500, 3000, 4500, 6000, 7500, 9000, 10500, 12000, 13500, 15000]);
    public double lolProfit = 0;
    public FlashList<double> lolSpent = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double longestQuit = 0;
    public double longestSession = 0;
    public double mada = 0;
    public double mainQuestA = 0;
    public double mainQuestB = 0;
    public double mainQuestC = 0;
    public double mainQuestCount = 0;
    public FlashList<double> mainQuestRank = new();
    public double mainQuestS = 0;
    public double mainStatPage = 1;
    public double manualSave = 0;
    public double maxAchievement = 0;
    public double maxConsecutiveDays = 1;
    public double mbma = 0;
    public double medalColor = 3;
    public double megaBoostPotion = 0;
    public double megaCareerPotion = 0;
    public double moneySprayer = 0;
    public FlashList<double> mysteryBox = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public FlashList<bool> mysteryBoxBan1 = new();
    public FlashList<bool> mysteryBoxBan10 = new();
    public FlashList<bool> mysteryBoxBan2 = new();
    public FlashList<bool> mysteryBoxBan3 = new();
    public FlashList<bool> mysteryBoxBan4 = new();
    public FlashList<bool> mysteryBoxBan5 = new();
    public FlashList<bool> mysteryBoxBan6 = new();
    public FlashList<bool> mysteryBoxBan7 = new();
    public FlashList<bool> mysteryBoxBan8 = new();
    public FlashList<bool> mysteryBoxBan9 = new();
    public FlashList<double> mysteryBoxCollect1 = new();
    public FlashList<double> mysteryBoxCollect10 = new();
    public FlashList<double> mysteryBoxCollect2 = new();
    public FlashList<double> mysteryBoxCollect3 = new();
    public FlashList<double> mysteryBoxCollect4 = new();
    public FlashList<double> mysteryBoxCollect5 = new();
    public FlashList<double> mysteryBoxCollect6 = new();
    public FlashList<double> mysteryBoxCollect7 = new();
    public FlashList<double> mysteryBoxCollect8 = new();
    public FlashList<double> mysteryBoxCollect9 = new();
    public FlashList<double> mysteryBoxCollect9001 = new();
    public double newbieProgress = 0;
    public double newbieSupport = 0;
    public double newHouseBackObject = 0;
    public double newHouseCover = 0;
    public double newHouseDesk = 0;
    public double newHouseDeskObject = 0;
    public double newHouseEyes = 0;
    public double newHouseFloor = 0;
    public double newHouseFrontObject = 0;
    public double newHouseGlasses = 0;
    public double newHouseHat = 0;
    public double newHouseHead = 0;
    public double newHouseLeftHand = 0;
    public double newHouseMouth = 0;
    public double newHousePants = 0;
    public double newHousePet = 0;
    public double newHouseRightHand = 0;
    public double newHouseShirt = 0;
    public double newHouseShoes = 0;
    public double newHouseStick = 0;
    public FlashList<double> newHouseUBackObject = new([1]);
    public FlashList<double> newHouseUCover = new([1]);
    public FlashList<double> newHouseUDesk = new([1]);
    public FlashList<double> newHouseUDeskObject = new([1]);
    public FlashList<double> newHouseUEyes = new([1]);
    public FlashList<double> newHouseUFloor = new([1]);
    public FlashList<double> newHouseUFrontObject = new([1]);
    public FlashList<double> newHouseUGlasses = new([1]);
    public FlashList<double> newHouseUHat = new([1]);
    public FlashList<double> newHouseUHead = new([1]);
    public FlashList<double> newHouseULeftHand = new([1]);
    public FlashList<double> newHouseUMouth = new([1]);
    public FlashList<double> newHouseUPants = new([1]);
    public FlashList<double> newHouseUPet = new([1]);
    public FlashList<double> newHouseURightHand = new([1]);
    public FlashList<double> newHouseUShirt = new([1]);
    public FlashList<double> newHouseUShoes = new([1]);
    public FlashList<double> newHouseUStick = new([1]);
    public FlashList<double> newHouseUWall = new([1]);
    public FlashList<double> newHouseUWallObject = new([1]);
    public FlashList<double> newHouseUWindow = new([1]);
    public double newHouseWall = 0;
    public double newHouseWallObject = 0;
    public double newHouseWindow = 0;
    public double newHouseXBackObject = 195;
    public double newHouseXDesk = 180;
    public double newHouseXFrontObject = 0;
    public double newHouseXPet = 350;
    public double newHouseXStickman = 80;
    public double newHouseXWallObject = 400;
    public double newHouseXWindow = 220;
    public double nextWizard = 0;
    public double nightmare = 0;
    public double noAntsTime = 0;
    public double noDeath = 0;
    public double noHelp = 0;
    public double noob = 0;
    public bool noobMode = false;
    public bool noobMode2 = false;
    public double nowUseless = 0;
    public bool offlineProgress = false;
    public bool offlineProgressFirst = false;
    public bool offlineProgressPromo = false;
    public double pacifist = 0;
    public double perfectionist = 0;
    public double permaBanMax = 0;

    public FlashList<double> permaBanPenalty = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double permaBanRes = 1;
    public double permaStupidity = 0;
    public double permaStupidityHard = 0;
    public double permaStupidityImpossible = 0;
    public double petBestLevel = 0;
    public double petExist = 0;
    public double petFeederBadge = 0;
    public double petFullness = 0;
    public double petFullnessRestore = 1;
    public double petHealth = 0;
    public double petHealthRestore = 1;
    public double petMana = 0;
    public string petName = "";
    public FlashList<double> petStat = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double pixelatedMysteryBoxOpened = 0;

    /// <summary>
    ///     Unused. Safe hacking disclaimer.
    /// </summary>
    public string pleaseRead =
        "If you wish to hack, please turn Safe Hacking Mode on by changing the safeHacking variable to true (ticking the box in .sol Editor).";

    public FlashList<double> pokayCD = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double pokaystopCount = 0;
    public double powerUserTime = 0;
    public double printerCharge = 80;
    public double printerLevel = 1;
    public double progBoxAsc = 0;
    public double progBoxCount = 0;
    public double progBoxNext = 0;
    public double progBoxToday = 0;
    public bool progFirstRestock = false;
    public double progFrag = 0;

    public FlashList<double> progModuleChance = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public FlashList<double> progModuleCost = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public FlashList<double> progModuleEffect = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public FlashList<string> progModuleName = new([
        "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
        "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
        "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
        "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
        "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
        "", "", ""
    ]);

    public double progModuleScroll = 0;

    public FlashList<double> progModuleShiny = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public FlashList<double> progModuleSize = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double progModuleSlot = 30;

    public FlashList<double> progModuleTier = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public FlashList<double> progModuleType = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double progSpeedAuto = 30;
    public double progSpeedManual = 100;
    public double progStore = 100;
    public bool progTutorial = false;
    public double pwned = 0;
    public double questBot = 0;
    public double questCount = 0;
    public double questCurrent = 1;
    public string questDescA = "Reach level";
    public string questDescB = "to unlock other quests. An alternative way is to forfeit this quest.";
    public double questDifficulty = 5;
    public string questFeature = "Main";
    public double questInstaToday = 0;
    public double questNeed = 100;
    public double questRecord = 0;
    public string questReward = "Legendary Box";
    public double questRewardBlueCoin = 1000;
    public double questRewardQuan = 1;
    public double questRewardToken = 1000;
    public double questSkipToday = 0;
    public double questStreak = 0;
    public string questSubtype = "Any";
    public double questTargetDiff = 15;
    public double questToday = 0;
    public double questToken = 0;
    public double questTotal = 0;
    public string questType = "Level Up";
    public double quickAdventuresTime = 0;
    public double raidDefend = 0;
    public double raidDungeon = 0;
    public double raidEndless = 0;
    public double raidEndlessSpeedrun = 2147483647;
    public double raidEndlessSpeedrunHC = 2147483647;
    public double raidEndlessWM = 0;
    public double raidMegaboss = 0;
    public double raidPrehistoric = 0;
    public double raidPyramid = 0;
    public double raidSpecial = 0;
    public double raidTower = 0;
    public double randomGhost = 0;
    public bool rangeAnimate = true;
    public double rankedAvoidance = 0;
    public double rankedBalance = 0;
    public double rankedCount = 0;
    public double rankedMath = 0;
    public double rankedMind = 0;
    public double rankedMMRX = 0;
    public bool rankedMode = true;
    public double rankedPong = 0;
    public double rankedWhack = 0;
    public double recipeLevel = 0;
    public double redCoinSpent = 0;
    public double refillAsc = 0;
    public double refillNext = 0;
    public double reforgeMode = 1;
    public double reforgingBlueCoin = 0;
    public double reforgingCoin = 0;
    public double reforgingGreenCoin = 0;
    public double reforgingOrb1 = 0;
    public double reforgingOrb2 = 0;
    public double reforgingOrb3 = 0;
    public double reforgingOrbTotal1 = 0;
    public double reforgingOrbTotal2 = 0;
    public double reforgingOrbTotal3 = 0;
    public double refundCode = 0;
    public double refundCooldown = 0;
    public bool refundReceived = false;
    public double regretRem = 1;
    public double remStupidity = 0;

    /// <summary>
    ///     Rest levels.
    /// </summary>
    public FlashList<double> restEfficiency = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);

    public double restTime = 0;
    public bool restTutorial = false;
    public double revenger = 0;
    public double rewardBotTime = 0;
    public double rewardClaim = 0;
    public double rewardClaimAuto = 0;
    public double rewardClaimManual = 0;
    public double rick = 0;

    public FlashList<double> ripoffCard =
        new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);

    public double ripoffCardUsed = 0;
    public double robaconBacon = 100;
    public double robaconExp = 0;
    public double robaconExpTotal = 0;
    public double robaconLevel = 1;
    public double robaconSP = 0;
    public double roflPendant = 0;
    public double roflRing = 0;
    public bool safeHacking = false;
    public double sauceType = 1;
    public bool screenSelect = false;
    public double secretRecipeLevel = 0;
    public double seppukuAscension = 0;
    public double seppukuEnd = 0;
    public double seppukuPenalty = 0;
    public double seppukuReward = 0;
    public double seppukuTime = 0;
    public double seppukuTotal = 0;
    public double seriousBusiness = 0;
    public bool serviceAutoHarvest = false;
    public bool serviceBatteryCharger = false;
    public bool serviceDemandMaster = false;
    public bool serviceDoubleQuest = false;
    public bool serviceEliteButton = false;
    public bool serviceFCGPowerUser = false;
    public bool serviceNoAnts = false;
    public bool serviceOfflineGrind = false;
    public bool serviceQuickAdventures = false;
    public bool serviceRewardBot = false;
    public bool serviceStadiumPro = false;
    public double shinyToken = 0;
    public double shinyWeek2Count = 0;
    public double shinyWeek2Last = 10;
    public double shinyWeekCount = 0;
    public double shinyWeekLast = 24;
    public bool showBanner = true;
    public bool showGain = true;
    public bool showProgBar = true;
    public bool showRobaconEXP = true;

    public FlashList<double> souvenir =
        new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);

    public double specialPetFood = 0;
    public double specialShopVisit = 0;

    public FlashList<double> specialStock = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double speedRun9001 = 2147483647;
    public double speedRun9002 = 2147483647;
    public double speedRunAscend = 2147483647;
    public double speedRunAscendHard = 2147483647;
    public double speedRunAscendImpossible = 2147483647;
    public double speedRunClear = 0;
    public double speedRunCoin = 0;
    public double speedRunMode1000 = 2147483647;
    public double speedRunMode2000 = 2147483647;
    public double speedRunMode3000 = 2147483647;
    public double speedRunMode4000 = 2147483647;
    public double speedRunMode5000 = 2147483647;
    public double speedRunMode6000 = 2147483647;
    public double speedRunMode7000 = 2147483647;
    public double speedRunMode8000 = 2147483647;
    public double speedRunMode9000 = 2147483647;
    public double speedRunMode9001 = 2147483647;
    public double speedRunNextDay = 1440;
    public double speedRunScore = 0;
    public double speedRunTotalCoin = 0;
    public double stadiumAbilityCost = 0;
    public double stadiumAccel = 0;
    public double stadiumBestDeathMatch = 0;
    public double stadiumBestTime = 999999;
    public double stadiumBetCorrect = 0;
    public double stadiumBetMaxStreak = 0;
    public double stadiumBetStreak = 0;
    public double stadiumBetWinningCoin = 0;
    public double stadiumBetWinningToken = 0;
    public double stadiumBless = 0;
    public double stadiumBlessMode = 1;
    public double stadiumBoost = 0;
    public bool stadiumBunnyHat = false;
    public double stadiumDash = 0;
    public double stadiumDeathMatch = 0;
    public double stadiumEnergy = 0;
    public double stadiumFace = 2;
    public bool stadiumH1 = false;
    public bool stadiumH2 = false;
    public bool stadiumH3 = false;
    public double stadiumHat = 1;
    public FlashList<double> stadiumHatOwned = new([0, 0, 0, 0, 0, 0]);
    public double stadiumImpossibleItem = 0;
    public double stadiumImpossibleRace = 0;
    public double stadiumItem = 0;
    public double stadiumJump = 0;
    public double stadiumMaxSpeed = 0;
    public double stadiumProTime = 0;
    public double stadiumRace = 0;
    public double stadiumReward = 0;
    public double stadiumRunescape = 0;
    public double stadiumStartSpeed = 0;
    public double stadiumTodayDeathMatch = 0;
    public double stadiumToken = 0;
    public double stadiumTokenMax = 0;
    public double strangeBoxKill = 0;
    public double stupidity = 0;
    public bool submitScore = false;
    public bool submitScoreConfirm = false;
    public double supplyCrateOpened = 0;
    public double support = 0;
    public double survivor = 0;
    public double syncChart = 1;

    public FlashList<bool> tech1Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech1NumberA = 0;
    public double tech1NumberB = 0;
    public double tech1NumberC = 0;
    public string tech1Program = "Disabled";
    public string tech1StringA = "";
    public string tech1StringB = "";

    public FlashList<bool> tech2Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech2NumberA = 0;
    public double tech2NumberB = 0;
    public double tech2NumberC = 0;
    public string tech2Program = "Disabled";
    public string tech2StringA = "";
    public string tech2StringB = "";

    public FlashList<bool> tech3Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech3NumberA = 0;
    public double tech3NumberB = 0;
    public double tech3NumberC = 0;
    public string tech3Program = "Disabled";
    public string tech3StringA = "";
    public string tech3StringB = "";

    public FlashList<bool> tech4Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech4NumberA = 0;
    public double tech4NumberB = 0;
    public double tech4NumberC = 0;
    public string tech4Program = "Disabled";
    public string tech4StringA = "";
    public string tech4StringB = "";

    public FlashList<bool> tech5Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech5NumberA = 0;
    public double tech5NumberB = 0;
    public double tech5NumberC = 0;
    public string tech5Program = "Disabled";
    public string tech5StringA = "";
    public string tech5StringB = "";

    public FlashList<bool> tech6Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech6NumberA = 0;
    public double tech6NumberB = 0;
    public double tech6NumberC = 0;
    public string tech6Program = "Disabled";
    public string tech6StringA = "";
    public string tech6StringB = "";

    public FlashList<bool> tech7Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech7NumberA = 0;
    public double tech7NumberB = 0;
    public double tech7NumberC = 0;
    public string tech7Program = "Disabled";
    public string tech7StringA = "";
    public string tech7StringB = "";

    public FlashList<bool> tech8Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech8NumberA = 0;
    public double tech8NumberB = 0;
    public double tech8NumberC = 0;
    public string tech8Program = "Disabled";
    public string tech8StringA = "";
    public string tech8StringB = "";

    public FlashList<bool> tech9Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech9NumberA = 0;
    public double tech9NumberB = 0;
    public double tech9NumberC = 0;
    public string tech9Program = "Disabled";
    public string tech9StringA = "";
    public string tech9StringB = "";
    public double theGame = 0;
    public double titleblue = 255;
    public double titlegreen = 255;
    public double titlered = 255;
    public double todayCode = 0;
    public double todayHighAvoidance = 0;
    public double todayHighBalance = 0;
    public double todayHighCount = 0;
    public double todayHighMath = 0;
    public double todayHighMind = 0;
    public double todayHighMMRX = 0;
    public double todayHighPong = 0;
    public double todayHighWhack = 0;
    public double todayParAvoidance = 500000;
    public double todayParBalance = 2800000;
    public double todayParCount = 6000000;
    public double todayParMath = 1000000;
    public double todayParMind = 2000000;
    public double todayParPong = 1400000;
    public double todayParWhack = 1500000;
    public double totalAvoidance = 0;
    public double totalBalance = 0;
    public double totalCount = 0;
    public double totalExp = 0;
    public double totalMath = 0;
    public double totalMind = 0;
    public double totalMMR = 0;
    public double totalMMRX = 0;
    public double totalMute = 0;

    /// <summary>
    ///     Total number of plays in the save.
    /// </summary>
    public double totalPlays = 0;

    public double totalPlayTime = 0;
    public double totalPong = 0;
    public double totalPrinterCharge = 0;
    public double totalPrinterMillion = 0;
    public double totalPrinterMoney = 0;
    public double totalStupidity = 0;
    public double totalType = 1;
    public double totalWhack = 0;
    public double trackachnum = 0;
    public double triangleLandKill = 0;
    public double triangleShoot = 0;

    public FlashList<double> unrankedPower = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0
    ]);

    /// <summary>
    ///     User title, displayed below the name in the main screen.
    /// </summary>
    public string userTitle = "Welcome to Anti-Idle!";

    public bool vegetarianMode = false;
    public double ver = 0;
    public double viewAchievement = 0;
    public double viewEvent = 0;
    public double viewOption = 0;
    public double viewQuest = 0;
    public double viewStat = 0;
    public double virtue = 0;
    public bool visibleRing = true;
    public double wakeUp = 0;
    public double walkthru = 0;
    public double wcDropToday = 0;
    public double whiteCoin = 0;

    public FlashList<double> whiteCoinGraph = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public FlashList<double> whiteCoinGraph2 = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public double whiteCoinMax = 0;
    public double whiteCoinRefund = 0;
    public double whiteCoinRefundTotal = 0;

    public FlashList<double> whiteCoinSauce = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0F
    ]);

    public FlashList<double> whiteCoinTotal = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ]);

    public FlashList<double> wisdomDiscovered = new();

    public double yoEpicFail = 0;

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

public class House
{
    public Arena arena = new();
}

public class Arena
{
    public double showDamage(string index, double x, double y, double z)
    {
        return 0;
    }
}
