using System;
using System.Collections.Generic;
using aitg.flash;
using aitg.lib;
using static aitg.flash.SaveReader;
using static aitg.Globals;

namespace aitg;

public static class Globals
{
    /// <summary>
    ///     A prefix that's appended in front of every save name.
    /// </summary>
    private const string SAVE_PREFIX = "antiIdle_file";

    public static Save save;

    public static SaveGlobal saveGlobal = ReadSave<SaveGlobal>("ATG_Global");

    // Order matters! Keep this after saveGlobal, because it depends
    // on values from saveGlobal
    public static Root _root = new();

    /// <summary>
    ///     Loads a save.
    /// </summary>
    /// <param name="saveid">The identifier of the save file to load.</param>
    public static void LoadGame(int saveid)
    {
        save = ReadSave<Save>(SAVE_PREFIX + saveid);
        saveid = saveid;
        _root.save = save;
    }
}

/// <summary>
///     Global, per user saved data. Saved on the filesystem,
///     see <see cref="SaveReader" />. Equivalent to save in AS2.
///     Do not remove properties from this class, even unused ones. This is
///     for compatibility with Flash vanilla save files. Every field here will be written into the save.
/// </summary>
public class Save
{
    public double aagStat1 = 50;
    public double aagStat2 = 50;
    public double aagStat3 = 50;
    public double aagStat4 = 50;
    public double aceFinish = 0;
    public SparseArray<double> achEarnTime = new();
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
    public SparseArray<double> arcadeDifficulty = new([2, 2, 2, 2, 2, 2, 2, 2, 2, 2]);
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
    public SparseArray<double> arenaAllyEXP = new();
    public SparseArray<bool> arenaAllyFavorite = new();
    public SparseArray<double> arenaAllyUpgrade = new();
    public double arenaAttack = 100;
    public double arenaAuto = 0;
    public double arenaAutoTime = 0;
    public double arenaBacon = 0;
    public SparseArray<double> arenaBestiary = new();
    public SparseArray<double> arenaBestiaryExtra = new();
    public SparseArray<double> arenaBestiaryUlt1 = new();
    public SparseArray<string> arenaBestiaryUlt1F = new();
    public SparseArray<double> arenaBestiaryUlt1V = new();
    public SparseArray<double> arenaBestiaryUlt2 = new();
    public SparseArray<string> arenaBestiaryUlt2F = new();
    public SparseArray<double> arenaBestiaryUlt2V = new();
    public SparseArray<double> arenaBestiaryUlt3 = new();
    public SparseArray<string> arenaBestiaryUlt3F = new();
    public SparseArray<double> arenaBestiaryUlt3V = new();
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
    public SparseArray<double> arenaEventKey = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<double> arenaEventPoint = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<bool> arenaEventReward = new();
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
    public SparseArray<double> arenaPotion = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
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

    public SparseArray<double> arenaRingOwned =
        new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);

    public SparseArray<bool> arenaRuneAuto = new([false, false, false, false, false, false, false]);
    public SparseArray<double> arenaRuneDuration = new([0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<double> arenaRuneLevel = new([0, 1, 1, 1, 1, 1, 1]);
    public double arenaSampleCraft = 3;
    public double arenaShirt = 102;
    public double arenaShoes = 105;

    public SparseArray<double> arenaSkill = new(
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

    public SparseArray<double> arenaSkillMax = new([
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

    public SparseArray<double> arenaZoneChallenge = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public SparseArray<double> arenaZoneFound = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public SparseArray<double> arenaZoneKill = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double arenaZoneOrig = 0;

    public SparseArray<double> artifact =
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

    public SparseArray<double> awesomeAuto = new([
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
    public SparseArray<double> banPenalty = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
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
    public SparseArray<double> blueCoinGraph = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<double> blueCoinGraph2 = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public double blueCoinMax = 0;
    public double blueCoinOvercap = 0;

    public SparseArray<double> blueCoinSauce = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ]);

    public SparseArray<double> blueCoinTotal = new([
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
    public SparseArray<double> botOp = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double botPill = 0;
    public double botPillCrafted = 0;
    public double botPillUsed = 0;
    public double botPoint = 1000;
    public SparseArray<double> botTrain = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public bool bouncyLoot = true;
    public double breakNewsMode = 1;
    public bool businessDisplay = false;
    public SparseArray<double> businessEXP = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
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
    public SparseArray<double> careerActive = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<double> careerBoost = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<double> careerEXP = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<double> careerLevel = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double careerPotion = 0;
    public SparseArray<bool> challengeAttempted = new([false]);
    public SparseArray<bool> challengeClear = new([false]);
    public bool challengeInit = false;
    public SparseArray<bool> challengePerfect = new([false]);
    public double challengeTime = 0;
    public double challengeToken = 0;
    public double chaosCrateOpened = 0;
    public double cheat = 0;
    public bool cheatEnabled = false;
    public double chuckNorris = 0;
    public double coin = 10000;
    public double coinFrame = 0;

    public SparseArray<double> coinGraph = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<double> coinGraph2 = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public double coinLag = 0;
    public double coinMax = 10000;
    public double coinOvercap = 0;

    public SparseArray<double> coinSauce = new(
    [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ], new Dictionary<int, double>
    {
        [41] = 0
    });

    public SparseArray<double> coinTotal = new([
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
    public SparseArray<double> deadPetStat = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
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
    public SparseArray<double> drawingBoardAlp = new();
    public SparseArray<string> drawingBoardHex = new();
    public double dt = 0;
    public double eliteButtonTime = 0;
    public double eliteFisherTime = 0;
    public bool enableMilestone = true;
    public bool enableTip = true;
    public SparseArray<double> epicSkill = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double escaped = 0;
    public double eventToken = 0;
    public double eventTokenToday = 0;
    public double experienced = 0;
    public double expFrame = 0;
    public SparseArray<double> expGraph = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<double> expGraph2 = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public double expLag = 0;
    public double explosionCrateOpened = 0;

    public SparseArray<double> expSauce = new(
    [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ], new Dictionary<int, double>
    {
        [41] = 0
    });

    public SparseArray<double> expSauceAsc = new(
    [
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ], new Dictionary<int, double>
    {
        [41] = 0
    });

    public SparseArray<double> expTotal = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ]);

    public double failproof = 0;
    public SparseArray<double> fcgBuff = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double fcgCash = 1250;
    public SparseArray<double> fcgChallenge5 = new([]);
    public double fcgCollection = 0;
    public double fcgCurDiff = 0;

    public SparseArray<double> fcgDeck = new([
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

    public SparseArray<double> fcgMission = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double fcgMissionGold = 0;

    public SparseArray<double> fcgMissionScore = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public SparseArray<double> fcgOwned = new([
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
    public SparseArray<bool> fcgPower = new([false, false, false, false, false, false, false, false, false]);
    public bool fcgPowerActive = true;
    public bool fcgRandomDeck = false;
    public bool fcgReceiveChallenge = true;
    public double fcgRewardedLevel = 1;
    public double fcgSeriousDeck = 34 + FlashRand.random(35);
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
    public SparseArray<double> fcMMRSpecial = new();
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
    public double firstPlayed = _root.systemtimenow;
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

    public SparseArray<double> fishFound = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public SparseArray<double> fishLeft = new([
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
    public SparseArray<double> fishRodUnlock = new([0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
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
    public SparseArray<double> gardenExpiryTime = new();
    public double gardenFertilizer = 5;
    public double gardenFertilizerAllow = 0;
    public double gardenFruit = 0;
    public double gardenFruitMax = 0;
    public double gardenFullness = 0;
    public double gardenGrade11 = 0;
    public double gardenGrade12 = 0;
    public SparseArray<double> gardenHarvestTime = new();
    public SparseArray<double> gardenHarvestValue = new();

    public SparseArray<double> gardenMastery = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double gardenMegaFertilizer = 1;
    public double gardenPoint = 0;
    public double gardenPointMax = 0;
    public SparseArray<double> gardenPurchaseTime = new();
    public SparseArray<double> gardenRecentTime = new();
    public double gardenResearch = 0;

    public SparseArray<double> gardenSeed = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public SparseArray<double> gardenSlotEXP = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0
    ]);

    public SparseArray<double> gardenSlotGrade = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0
    ]);

    public SparseArray<double> gardenTreeExp = new();
    public SparseArray<double> gardenTreeFertilize = new();
    public SparseArray<double> gardenTreeModuleProc = new();

    public SparseArray<double> gardenTrees = new([
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
    public SparseArray<double> greenCoinGraph = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<double> greenCoinGraph2 = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public double greenCoinMax = 0;
    public double greenCoinOvercap = 0;

    public SparseArray<double> greenCoinSauce = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ]);

    public SparseArray<double> greenCoinTotal = new([
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
    public SparseArray<double> highMMR = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<double> highMMRSpecial = new();
    public double highMMRX = 0;
    public double highPong = 0;
    public SparseArray<double> highRankedAvoidance = new([0, 0, 0]);
    public SparseArray<double> highRankedAvoidanceDiff = new([0, 0, 0]);
    public SparseArray<double> highRankedBalance = new([0, 0, 0]);
    public SparseArray<double> highRankedBalanceDiff = new([0, 0, 0]);
    public SparseArray<double> highRankedCount = new([0, 0, 0]);
    public SparseArray<double> highRankedCountDiff = new([0, 0, 0]);
    public SparseArray<double> highRankedMath = new([0, 0, 0]);
    public SparseArray<double> highRankedMathDiff = new([0, 0, 0]);
    public SparseArray<double> highRankedMind = new([0, 0, 0]);
    public SparseArray<double> highRankedMindDiff = new([0, 0, 0]);
    public SparseArray<double> highRankedMMRX = new([0, 0, 0]);
    public SparseArray<double> highRankedMMRXDiff = new([0, 0, 0]);
    public SparseArray<double> highRankedPong = new([0, 0, 0]);
    public SparseArray<double> highRankedPongDiff = new([0, 0, 0]);
    public SparseArray<double> highRankedWhack = new([0, 0, 0]);
    public SparseArray<double> highRankedWhackDiff = new([0, 0, 0]);
    public double highWhack = 0;
    public double houseAchievementCrystal = 0;
    public double houseActivityCrystal = 0;
    public double houseActivityCrystalMax = 0;
    public double houseActivityCrystalToday = 0;
    public double houseAscensionCrystal = 0;
    public double houseBestThrow1 = 0;
    public double houseBestThrow2 = 0;
    public double houseBorder = 1;
    public SparseArray<double> houseBorderUnlocked = new([0, 1]);
    public double houseBrick = 0;
    public double houseFloor = 1;
    public SparseArray<double> houseFloorUnlocked = new([0, 1]);
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
    public SparseArray<double> houseGlassesUnlocked = new([0, 1]);
    public double houseHat = 1;
    public SparseArray<double> houseHatUnlocked = new([0, 1]);
    public double houseLeftEye = 1;
    public SparseArray<double> houseLeftEyeUnlocked = new([0, 1]);
    public double houseLeftFoot = 1;
    public SparseArray<double> houseLeftFootUnlocked = new([0, 1]);
    public double houseLeftHand = 1;
    public SparseArray<double> houseLeftHandUnlocked = new([0, 1]);
    public double houseMagicRock = 0;
    public double houseMouth = 1;
    public SparseArray<double> houseMouthUnlocked = new([0, 1]);
    public double houseNail = 0;
    public double houseObject = 1;
    public SparseArray<double> houseObjectUnlocked = new([0, 1]);
    public double housePaint = 0;
    public double housePants = 1;
    public SparseArray<double> housePantsUnlocked = new([0, 1]);
    public double houseQuestCrystal = 0;
    public double houseRightEye = 1;
    public SparseArray<double> houseRightEyeUnlocked = new([0, 1]);
    public double houseRightFoot = 1;
    public SparseArray<double> houseRightFootUnlocked = new([0, 1]);
    public double houseRightHand = 1;
    public SparseArray<double> houseRightHandUnlocked = new([0, 1]);
    public bool houseRoom1 = false;
    public bool houseRoom2 = false;
    public bool houseRoom3 = false;
    public double houseShirt = 1;
    public SparseArray<double> houseShirtUnlocked = new([0, 1]);
    public double houseSkin = 1;
    public SparseArray<double> houseSkinUnlocked = new([0, 1]);
    public double houseVer = 0;
    public double houseWall = 1;
    public SparseArray<double> houseWallUnlocked = new([0, 1]);
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
    public SparseArray<double> hyperDay = new([0, 0, 0]);
    public double hyperDayCount = 0;
    public double hyperDayDel = 2;
    public double hyperDayRem = 3;
    public bool idleMode = false;
    public double immortality = 0;
    public SparseArray<string> inventoryAbility = new([""]);
    public SparseArray<double> inventoryAttack = new([0]);
    public SparseArray<string> inventoryBonus = new([""]);
    public SparseArray<double> inventoryBonusPow = new([0]);
    public SparseArray<double> inventoryCrit = new([0]);
    public SparseArray<double> inventoryDefense = new([0]);
    public SparseArray<string> inventoryDesc = new([""]);
    public SparseArray<double> inventoryDexterity = new([0]);
    public SparseArray<double> inventoryEnhance = new([0]);
    public SparseArray<double> inventoryExist = new([0]);
    public SparseArray<double> inventoryExp = new([0]);
    public SparseArray<double> inventoryExpiry = new([double.PositiveInfinity]);
    public SparseArray<double> inventoryExpTNL = new([0]);
    public SparseArray<double> inventoryFrame = new([0]);
    public SparseArray<bool> inventoryGuard = new([false]);
    public SparseArray<double> inventoryHealth = new([0]);
    public SparseArray<double> inventoryLevel = new([1]);
    public SparseArray<double> inventoryMaxLevel = new([1]);
    public SparseArray<string> inventoryMoreBonus = new([""]);
    public SparseArray<string> inventoryName = new(["No Item"]);
    public SparseArray<bool> inventoryNoBonus = new([false]);
    public SparseArray<bool> inventoryNoFuse = new([false]);
    public SparseArray<bool> inventoryNoRecycle = new([false]);
    public SparseArray<bool> inventoryNoUnique = new([false]);
    public SparseArray<double> inventoryObtainTime = new([0]);
    public SparseArray<bool> inventoryRange = new([false]);
    public SparseArray<double> inventoryReqRank = new([1]);
    public SparseArray<double> inventorySell = new([0]);
    public SparseArray<double> inventorySet = new([0]);
    public SparseArray<double> inventorySpeed = new([0]);
    public SparseArray<bool> inventorySpirit = new([false]);
    public SparseArray<string> inventorySubtype = new(["Any"]);
    public SparseArray<string> inventoryType = new(["Any"]);
    public SparseArray<double> inventoryUnob = new([0]);
    public double knowledge = 0;
    public double lastPlayed = _root.systemtimenow;
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
    public SparseArray<double> lolDemand = new([0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]);
    public SparseArray<double> lolGems = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double lolMaxProfit = 0;
    public SparseArray<double> lolPrice = new([0, 1500, 3000, 4500, 6000, 7500, 9000, 10500, 12000, 13500, 15000]);
    public double lolProfit = 0;
    public SparseArray<double> lolSpent = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double longestQuit = 0;
    public double longestSession = 0;
    public double mada = 0;
    public double mainQuestA = 0;
    public double mainQuestB = 0;
    public double mainQuestC = 0;
    public double mainQuestCount = 0;
    public SparseArray<double> mainQuestRank = new();
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
    public SparseArray<double> mysteryBox = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<bool> mysteryBoxBan1 = new();
    public SparseArray<bool> mysteryBoxBan10 = new();
    public SparseArray<bool> mysteryBoxBan2 = new();
    public SparseArray<bool> mysteryBoxBan3 = new();
    public SparseArray<bool> mysteryBoxBan4 = new();
    public SparseArray<bool> mysteryBoxBan5 = new();
    public SparseArray<bool> mysteryBoxBan6 = new();
    public SparseArray<bool> mysteryBoxBan7 = new();
    public SparseArray<bool> mysteryBoxBan8 = new();
    public SparseArray<bool> mysteryBoxBan9 = new();
    public SparseArray<double> mysteryBoxCollect1 = new();
    public SparseArray<double> mysteryBoxCollect10 = new();
    public SparseArray<double> mysteryBoxCollect2 = new();
    public SparseArray<double> mysteryBoxCollect3 = new();
    public SparseArray<double> mysteryBoxCollect4 = new();
    public SparseArray<double> mysteryBoxCollect5 = new();
    public SparseArray<double> mysteryBoxCollect6 = new();
    public SparseArray<double> mysteryBoxCollect7 = new();
    public SparseArray<double> mysteryBoxCollect8 = new();
    public SparseArray<double> mysteryBoxCollect9 = new();
    public SparseArray<double> mysteryBoxCollect9001 = new();
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
    public SparseArray<double> newHouseUBackObject = new([1]);
    public SparseArray<double> newHouseUCover = new([1]);
    public SparseArray<double> newHouseUDesk = new([1]);
    public SparseArray<double> newHouseUDeskObject = new([1]);
    public SparseArray<double> newHouseUEyes = new([1]);
    public SparseArray<double> newHouseUFloor = new([1]);
    public SparseArray<double> newHouseUFrontObject = new([1]);
    public SparseArray<double> newHouseUGlasses = new([1]);
    public SparseArray<double> newHouseUHat = new([1]);
    public SparseArray<double> newHouseUHead = new([1]);
    public SparseArray<double> newHouseULeftHand = new([1]);
    public SparseArray<double> newHouseUMouth = new([1]);
    public SparseArray<double> newHouseUPants = new([1]);
    public SparseArray<double> newHouseUPet = new([1]);
    public SparseArray<double> newHouseURightHand = new([1]);
    public SparseArray<double> newHouseUShirt = new([1]);
    public SparseArray<double> newHouseUShoes = new([1]);
    public SparseArray<double> newHouseUStick = new([1]);
    public SparseArray<double> newHouseUWall = new([1]);
    public SparseArray<double> newHouseUWallObject = new([1]);
    public SparseArray<double> newHouseUWindow = new([1]);
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

    public SparseArray<double> permaBanPenalty = new([
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
    public SparseArray<double> petStat = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
    public double pixelatedMysteryBoxOpened = 0;

    /// <summary>
    ///     Unused. Safe hacking disclaimer.
    /// </summary>
    public string pleaseRead =
        "If you wish to hack, please turn Safe Hacking Mode on by changing the safeHacking variable to true (ticking the box in .sol Editor).";

    public SparseArray<double> pokayCD = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);
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

    public SparseArray<double> progModuleChance = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public SparseArray<double> progModuleCost = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public SparseArray<double> progModuleEffect = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public SparseArray<string> progModuleName = new([
        "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
        "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
        "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
        "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
        "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "",
        "", "", ""
    ]);

    public double progModuleScroll = 0;

    public SparseArray<double> progModuleShiny = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public SparseArray<double> progModuleSize = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public double progModuleSlot = 30;

    public SparseArray<double> progModuleTier = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ]);

    public SparseArray<double> progModuleType = new([
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
    public SparseArray<double> restEfficiency = new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);

    public double restTime = 0;
    public bool restTutorial = false;
    public double revenger = 0;
    public double rewardBotTime = 0;
    public double rewardClaim = 0;
    public double rewardClaimAuto = 0;
    public double rewardClaimManual = 0;
    public double rick = 0;

    public SparseArray<double> ripoffCard =
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

    public SparseArray<double> souvenir =
        new([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]);

    public double specialPetFood = 0;
    public double specialShopVisit = 0;

    public SparseArray<double> specialStock = new([
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
    public SparseArray<double> stadiumHatOwned = new([0, 0, 0, 0, 0, 0]);
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

    public SparseArray<bool> tech1Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech1NumberA = 0;
    public double tech1NumberB = 0;
    public double tech1NumberC = 0;
    public string tech1Program = "Disabled";
    public string tech1StringA = "";
    public string tech1StringB = "";

    public SparseArray<bool> tech2Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech2NumberA = 0;
    public double tech2NumberB = 0;
    public double tech2NumberC = 0;
    public string tech2Program = "Disabled";
    public string tech2StringA = "";
    public string tech2StringB = "";

    public SparseArray<bool> tech3Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech3NumberA = 0;
    public double tech3NumberB = 0;
    public double tech3NumberC = 0;
    public string tech3Program = "Disabled";
    public string tech3StringA = "";
    public string tech3StringB = "";

    public SparseArray<bool> tech4Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech4NumberA = 0;
    public double tech4NumberB = 0;
    public double tech4NumberC = 0;
    public string tech4Program = "Disabled";
    public string tech4StringA = "";
    public string tech4StringB = "";

    public SparseArray<bool> tech5Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech5NumberA = 0;
    public double tech5NumberB = 0;
    public double tech5NumberC = 0;
    public string tech5Program = "Disabled";
    public string tech5StringA = "";
    public string tech5StringB = "";

    public SparseArray<bool> tech6Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech6NumberA = 0;
    public double tech6NumberB = 0;
    public double tech6NumberC = 0;
    public string tech6Program = "Disabled";
    public string tech6StringA = "";
    public string tech6StringB = "";

    public SparseArray<bool> tech7Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech7NumberA = 0;
    public double tech7NumberB = 0;
    public double tech7NumberC = 0;
    public string tech7Program = "Disabled";
    public string tech7StringA = "";
    public string tech7StringB = "";

    public SparseArray<bool> tech8Array =
        new([false, false, false, false, false, false, false, false, false, false, false]);

    public double tech8NumberA = 0;
    public double tech8NumberB = 0;
    public double tech8NumberC = 0;
    public string tech8Program = "Disabled";
    public string tech8StringA = "";
    public string tech8StringB = "";

    public SparseArray<bool> tech9Array =
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

    public SparseArray<double> unrankedPower = new([
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

    public SparseArray<double> whiteCoinGraph = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public SparseArray<double> whiteCoinGraph2 = new([0, 0, 0, 0, 0, 0, 0, 0]);
    public double whiteCoinMax = 0;
    public double whiteCoinRefund = 0;
    public double whiteCoinRefundTotal = 0;

    public SparseArray<double> whiteCoinSauce = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ]);

    public SparseArray<double> whiteCoinTotal = new([
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0
    ]);

    public SparseArray<double> wisdomDiscovered = new();

    public double yoEpicFail = 0;

    public Save()
    {
        // News initialization
        addNewsType(0, 0, 0, 0, "GENERAL");
        addNewsType(1, 0, 4, 16711680, "System messages (recommended)");
        addNewsType(167, 0, 4, 10092441, "EXP bar information");
        addNewsType(163, 0, 3, 16777215, "When I gain White Coins");
        addNewsType(159, 0, 3, 13434624, "Speedrun / Challenge Mode information");
        addNewsType(2, 0, 3, 16776960, "When I level up");
        addNewsType(3, 0, 3, 16776960, "When I earn an achievement");
        addNewsType(155, 0, 3, 13434879, "When I gain Event Tokens");
        addNewsType(0, 0, 0, 0, "PROGRESS BAR");
        addNewsType(4, 0, 1, 16768460, "When I claim a reward");
        addNewsType(5, 0, 1, 16768460, "When I claim multiple rewards");
        addNewsType(6, 0, 1, 16768460, "When I gain free Boost");
        addNewsType(7, 0, 1, 16768460, "When I gain additional login rewards");
        addNewsType(8, 0, 1, 16768460, "When Epic Skill \'Double Progress\' activates");
        addNewsType(9, 0, 1, 16768460, "When Epic Skill \'Boost Charger\' activates");
        addNewsType(10, 0, 1, 16768460, "When Epic Skill \'Coin Collector\' activates");
        addNewsType(11, 0, 1, 16768460, "When Epic Skill \'Battery Booster\' activates");
        addNewsType(12, 0, 1, 16768460, "When Epic Skill \'Fanatical Fisher\' activates");
        addNewsType(13, 0, 1, 16768460, "When Epic Skill \'Module Master\' activates");
        addNewsType(184, 0, 1, 16768460, "When Epic Skill \'Cyborg Charger\' activates");
        addNewsType(15, 0, 2, 16776960, "When I upgrade my Progress Bar Speed");
        addNewsType(0, 0, 0, 0, "FEATURE SHOP");
        addNewsType(14, 0, 2, 16776960, "When I buy a new feature");
        addNewsType(0, 0, 0, 0, "GARDEN");
        addNewsType(18, 6, 2, 10092441, "When I plant new trees");
        addNewsType(19, 6, 3, 10092441, "When I harvest my trees");
        addNewsType(20, 6, 4, 16711680, "When my trees expire");
        addNewsType(21, 6, 2, 10092441, "When I find Randomfruit");
        addNewsType(22, 6, 2, 10092441, "When I find seeds for Another Garden");
        addNewsType(23, 6, 2, 10092441, "When I use (Mega) Fertilizers");
        addNewsType(172, 6, 2, 10092441, "When I eat or sell Randomfruit");
        addNewsType(24, 6, 2, 16711680, "When I expand my Garden");
        addNewsType(0, 0, 0, 0, "BATTLE ARENA");
        addNewsType(25, 7, 3, 16776960, "When my Rank increases");
        addNewsType(26, 7, 3, 16776960, "When Robacon / Robroccoli\'s Rank increases");
        addNewsType(27, 7, 1, 16751001, "When a non-boss monster appears");
        addNewsType(28, 7, 2, 16751103, "When a boss monster appears");
        addNewsType(29, 7, 2, 16751001, "When a monster is defeated");
        addNewsType(30, 7, 2, 16751001, "When I receive Bestiary bonus");
        addNewsType(31, 7, 2, 16751001, "When I receive Invisible Ally bonus");
        addNewsType(32, 7, 3, 16776960, "When a Bestiary entry levels up");
        addNewsType(33, 7, 2, 13421772, "When my Invisible Ally gains EXP");
        addNewsType(34, 7, 3, 16776960, "When my Invisible Ally is mastered");
        addNewsType(35, 7, 3, 16776960, "When I tame an Invisible Ally");
        addNewsType(36, 7, 2, 16764057, "When I loot Superior Crafting Material");
        addNewsType(37, 7, 2, 16764057, "When I loot Unobtainium");
        addNewsType(185, 7, 2, 16777215, "When I loot Tukkonium");
        addNewsType(38, 7, 2, 16764057, "When I loot Enhancer Fragments");
        addNewsType(39, 7, 2, 16764057, "When I loot Chaotic Fragments of Chaos");
        addNewsType(40, 7, 2, 16764057, "When I loot To-be-Nerfed Gems");
        addNewsType(41, 7, 2, 16764057, "When I loot Bacon / Broccoli");
        addNewsType(42, 7, 2, 16764057, "When I loot Crystals of Rarity");
        addNewsType(43, 7, 2, 16764057, "When I loot Crystals of Ultimate Rarity");
        addNewsType(181, 7, 2, 16764057, "When I loot Regular Boost Potions");
        addNewsType(182, 7, 2, 16764057, "When I loot Mega Boost Potions");
        addNewsType(44, 7, 3, 16776960, "When I loot a new Ring");
        addNewsType(45, 7, 2, 16764057, "When I loot a Ring (replaced with Pixels)");
        addNewsType(46, 7, 3, 16776960, "When I loot a Recipe");
        addNewsType(47, 7, 3, 16776960, "When I loot a Skill Scroll or extra SP");
        addNewsType(48, 7, 3, 16776960, "When I loot a Skill Book");
        addNewsType(49, 7, 3, 14535680, "When I get a Weapon");
        addNewsType(50, 7, 3, 14535680, "When I get an Armor");
        addNewsType(51, 7, 3, 14535680, "When I get an Accessory");
        addNewsType(52, 7, 3, 14535680, "When I get an Enhancer");
        addNewsType(53, 7, 3, 14535680, "When I get a Potion");
        addNewsType(54, 7, 3, 14535680, "When I get an Outfit");
        addNewsType(170, 7, 3, 14535680, "When I get a Chip");
        addNewsType(55, 7, 3, 16711680, "When a Weapon is deleted due to full inventory");
        addNewsType(56, 7, 3, 16711680, "When an Armor is deleted due to full inventory");
        addNewsType(57, 7, 3, 16711680, "When an Accessory is deleted due to full inventory");
        addNewsType(58, 7, 3, 16711680, "When an Enhancer is deleted due to full inventory");
        addNewsType(59, 7, 3, 16711680, "When a Potion is deleted due to full inventory");
        addNewsType(60, 7, 3, 16711680, "When an Outfit is deleted due to full inventory");
        addNewsType(171, 7, 3, 16711680, "When a Chip is deleted due to full inventory");
        addNewsType(61, 7, 2, 13434624, "When I enhance an item");
        addNewsType(62, 7, 2, 13434624, "When my equipment levels up");
        addNewsType(63, 7, 3, 16711680, "When my equipment expires");
        addNewsType(64, 7, 2, 16776960, "When I purchase additional raid entries");
        addNewsType(65, 7, 3, 16711680, "When I get killed");
        addNewsType(168, 7, 3, 65535, "When I throw To-be-Nerfed Gems");
        addNewsType(66, 7, 3, 65535, "Other Battle Arena messages (recommended)");
        addNewsType(0, 0, 0, 0, "BUTTON MACHINE");
        addNewsType(67, 8, 2, 13421721, "When I get a Perfect click");
        addNewsType(68, 8, 2, 13421721, "When the button breaks");
        addNewsType(69, 8, 3, 16776960, "When I get an Explosion Crate from the Button");
        addNewsType(70, 8, 3, 16776960, "When I get an Awesome Crate from the Button");
        addNewsType(71, 8, 3, 16776960, "When I get a Chaos Crate from the Button");
        addNewsType(72, 8, 3, 16776960, "When I get a Legendary Box from the Button");
        addNewsType(73, 8, 2, 13421721, "When I repair the button");
        addNewsType(74, 8, 2, 16776960, "When I buy items from the Button Machine Shop");
        addNewsType(0, 0, 0, 0, "MONEY PRINTER");
        addNewsType(75, 9, 2, 16777164, "When some Coins are printed");
        addNewsType(76, 9, 2, 65280, "When some Green Coins are printed");
        addNewsType(77, 9, 2, 16776960, "When I upgrade the Money Printer");
        addNewsType(156, 9, 3, 16711680, "When Battery is low");
        addNewsType(157, 9, 4, 16711680, "When Battery runs out");
        addNewsType(0, 0, 0, 0, "ARCADE");
        addNewsType(78, 10, 2, 13421772, "[Pong] Hit");
        addNewsType(79, 10, 2, 15658734, "[Pong] Goal");
        addNewsType(80, 10, 2, 13421772, "[Avoidance] Avoided");
        addNewsType(81, 10, 2, 13421772, "[Math] Correct");
        addNewsType(82, 10, 2, 14540253, "[Math] Nice");
        addNewsType(83, 10, 2, 15658734, "[Math] Excellent");
        addNewsType(84, 10, 2, 13421772, "[Whack] Good");
        addNewsType(85, 10, 2, 14540253, "[Whack] Great");
        addNewsType(86, 10, 2, 15658734, "[Whack] Perfect");
        addNewsType(87, 10, 2, 15658734, "[Whack] Awesome");
        addNewsType(89, 10, 2, 15658734, "[Mind] Goal found");
        addNewsType(90, 10, 2, 13421772, "[Balance] Blocks destroyed");
        addNewsType(91, 10, 2, 14540253, "[Count] Stage cleared");
        addNewsType(92, 10, 2, 15658734, "[Count] Confidence bonus");
        addNewsType(97, 10, 3, 16777215, "Final result");
        addNewsType(161, 10, 3, 13382400, "When I gain Arcade 100k Medals");
        addNewsType(98, 10, 2, 16776960, "When I buy items from the Arcade shop");
        addNewsType(0, 0, 0, 0, "STADIUM");
        addNewsType(99, 11, 2, 10079487, "When I use items");
        addNewsType(100, 11, 2, 8961006, "When opponents use items");
        addNewsType(101, 11, 3, 13434879, "When I KO opponent in Death Match");
        addNewsType(102, 11, 3, 12316398, "When opponent KOs me in Death Match");
        addNewsType(103, 11, 3, 13434879, "Final result");
        addNewsType(104, 11, 2, 16776960, "When I buy items from the Stadium shop");
        addNewsType(0, 0, 0, 0, "TUKKUNFCG");
        addNewsType(105, 12, 3, 65535, "Final result");
        addNewsType(106, 12, 3, 16776960, "When my FCG Level increases");
        addNewsType(0, 0, 0, 0, "LOLMARKET");
        addNewsType(107, 13, 1, 16777113, "When prices change");
        addNewsType(108, 13, 2, 16777113, "When I purchase gems");
        addNewsType(109, 13, 2, 16777113, "When I sell gems");
        addNewsType(110, 13, 3, 16776960, "When LolMarket capacity increases");
        addNewsType(0, 0, 0, 0, "AWESOME ADVENTURES");
        addNewsType(111, 14, 2, 65535, "When I adventure");
        addNewsType(112, 14, 3, 65535, "When I gain Energy");
        addNewsType(113, 14, 2, 65535, "When my Reputation changes");
        addNewsType(114, 14, 2, 16776960, "When I buy items from the Awesome Shop");
        addNewsType(0, 0, 0, 0, "FISHING");
        addNewsType(115, 22, 2, 153, "When I fail to catch something");
        addNewsType(116, 22, 2, 3355596, "When I get a non-perfect catch");
        addNewsType(117, 22, 2, 6711039, "When I get a perfect catch");
        addNewsType(162, 22, 3, 13369599, "When I gain bonus LEGEND EXP");
        addNewsType(118, 22, 2, 10066431, "When I gain Mastery");
        addNewsType(119, 22, 3, 16776960, "When I open Treasure Boxes");
        addNewsType(120, 22, 2, 16776960, "When I raise Skill or Bucket Capacity");
        addNewsType(0, 0, 0, 0, "DRAGON OF WISDOM");
        addNewsType(121, 19, 1, 11184810, "When I feed the Dragon of Wisdom");
        addNewsType(122, 19, 3, 16776960, "When I receive Dragon Feeding Reward");
        addNewsType(123, 19, 3, 16776960, "When I claim Level Up Reward");
        addNewsType(0, 0, 0, 0, "MYSTERY BOXES");
        addNewsType(124, 17, 1, 10066329, "When I open empty Gambler\'s Boxes or get a refund");
        addNewsType(164, 17, 3, 13421568, "When I open Legendary Boxes");
        addNewsType(165, 17, 3, 13421568, "When I open Attendance Boxes");
        addNewsType(166, 17, 3, 13421568, "When I open Supply Crates");
        addNewsType(125, 17, 2, 16776960, "When I receive a Common prize");
        addNewsType(126, 17, 3, 15658496, "When I receive an Uncommon prize");
        addNewsType(127, 17, 3, 13421568, "When I receive a Rare prize");
        addNewsType(183, 17, 3, 13369599, "When I receive a Mega Boost Potion from Progress Boxes");
        addNewsType(0, 0, 0, 0, "CARDS");
        addNewsType(128, 18, 2, 14548736, "When I activate a Card");
        addNewsType(129, 18, 4, 16711680, "When a Card is deactivated");
        addNewsType(130, 18, 2, 14548736, "When I trade a Card for Supply Crates");
        addNewsType(0, 0, 0, 0, "CAREER");
        addNewsType(131, 0, 2, 39423, "When I gain \'Idler\' Career EXP");
        addNewsType(132, 6, 2, 39423, "When I gain \'Gardener\' Career EXP");
        addNewsType(133, 7, 2, 39423, "When I gain \'Fighter\' Career EXP");
        addNewsType(134, 7, 2, 39423, "When I gain \'Item Maker\' Career EXP");
        addNewsType(135, 8, 2, 39423, "When I gain \'Button Basher\' Career EXP");
        addNewsType(136, 10, 2, 39423, "When I gain \'Arcade Player\' Career EXP");
        addNewsType(137, 11, 2, 39423, "When I gain \'Racer\' Career EXP");
        addNewsType(138, 12, 2, 39423, "When I gain \'Card Player\' Career EXP");
        addNewsType(139, 13, 2, 39423, "When I gain \'Gem Trader\' Career EXP");
        addNewsType(140, 14, 2, 39423, "When I gain \'Adventurer\' Career EXP");
        addNewsType(141, 0, 2, 39423, "When I gain \'Pet Trainer\' Career EXP");
        addNewsType(142, 22, 2, 39423, "When I gain \'Fisher\' Career EXP");
        addNewsType(143, 0, 1, 39423, "When I receive Blessing Bonus");
        addNewsType(144, 0, 3, 16776960, "When a Career levels up");
        addNewsType(145, 0, 4, 16711680, "When a Career is deactivated");
        addNewsType(158, 0, 4, 16711680, "When a Career runs out of blessing time");
        addNewsType(0, 0, 0, 0, "PET");
        addNewsType(146, 0, 2, 16737792, "When my Pet gains Fullness");
        addNewsType(147, 0, 2, 16737792, "When my Pet gains Health");
        addNewsType(148, 0, 2, 16737792, "When my Pet gains Mana");
        addNewsType(149, 0, 3, 13382400, "When my Pet loses Fullness");
        addNewsType(150, 0, 3, 13382400, "When my Pet loses Health");
        addNewsType(151, 0, 3, 16711680, "When my Pet\'s Fullness is low");
        addNewsType(152, 0, 4, 16711680, "When my Pet\'s Health is low");
        addNewsType(153, 0, 4, 16711680, "When my Pet dies");
        addNewsType(154, 0, 3, 16776960, "When I use my Pet\'s Mad Skillz");
        addNewsType(173, 0, 2, 16711680, "Overfeeding warning");
        addNewsType(0, 0, 0, 0, "SIMULATION CYBORG");
        addNewsType(174, 0, 3, 12303359, "When you gain Cyborg Points");
        addNewsType(175, 0, 3, 12303359, "When Cyborg finishes an action");
        addNewsType(176, 0, 4, 16711680, "When Simulation Cyborg is paused");
        addNewsType(177, 0, 4, 16776960, "When Simulation Cyborg continues working");
        addNewsType(178, 0, 4, 16711680, "When Simulation Cyborg finishes working");
        addNewsType(179, 0, 2, 12303359, "When Simulation Cyborg gains EXP");
        addNewsType(180, 0, 3, 16776960, "When Simulation Cyborg levels up");
        addNewsType(0, 0, 0, 0, "TECHNICAL LIGHTS");
        addNewsType(160, 0, 4, 13421823, "Variable Tracking");
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

    private static void addNewsType(int typeID, double feature, double defaultImportance, double defaultColor,
        string sauceName)
    {
        _root.newsCount += 1;
        _root.newsID[_root.newsCount] = typeID;
        _root.newsFeature[typeID] = feature;
        _root.newsSauceName[_root.newsCount] = sauceName;

        if (typeID != 0 && double.IsNaN(saveGlobal.breakR[typeID]))
        {
            if (defaultImportance == 4)
            {
                saveGlobal.breakTab1[typeID] = true;
                saveGlobal.breakTab2[typeID] = true;
                saveGlobal.breakTab3[typeID] = true;
                saveGlobal.breakTab4[typeID] = true;
                saveGlobal.breakAll[typeID] = true;
                saveGlobal.breakFeature[typeID] = true;
            }
            else if (defaultImportance == 3)
            {
                saveGlobal.breakTab1[typeID] = true;
                saveGlobal.breakTab2[typeID] = true;
                saveGlobal.breakTab3[typeID] = true;
                saveGlobal.breakTab4[typeID] = false;
                saveGlobal.breakAll[typeID] = false;
                saveGlobal.breakFeature[typeID] = true;
            }
            else if (defaultImportance == 2)
            {
                saveGlobal.breakTab1[typeID] = true;
                saveGlobal.breakTab2[typeID] = true;
                saveGlobal.breakTab3[typeID] = false;
                saveGlobal.breakTab4[typeID] = false;
                saveGlobal.breakAll[typeID] = false;
                saveGlobal.breakFeature[typeID] = true;
            }
            else if (defaultImportance == 1)
            {
                saveGlobal.breakTab1[typeID] = true;
                saveGlobal.breakTab2[typeID] = false;
                saveGlobal.breakTab3[typeID] = false;
                saveGlobal.breakTab4[typeID] = false;
                saveGlobal.breakAll[typeID] = false;
                saveGlobal.breakFeature[typeID] = false;
            }
            else
            {
                saveGlobal.breakTab1[typeID] = false;
                saveGlobal.breakTab2[typeID] = false;
                saveGlobal.breakTab3[typeID] = false;
                saveGlobal.breakTab4[typeID] = false;
                saveGlobal.breakAll[typeID] = false;
                saveGlobal.breakFeature[typeID] = false;
            }

            if (feature == 0)
            {
                saveGlobal.breakFeature[typeID] = false;
            }

            saveGlobal.breakR[typeID] = Math.Floor(defaultColor / 65536);
            saveGlobal.breakG[typeID] = Math.Floor((defaultColor - saveGlobal.breakR[typeID] * 65536) / 256);
            saveGlobal.breakB[typeID] =
                Math.Floor(defaultColor - saveGlobal.breakR[typeID] * 65536 - saveGlobal.breakG[typeID] * 256);
        }
    }
}

/// <summary>
///     Global variables. Equivalent to _root in AS2.
///     Also stores global functions.
/// </summary>
public class Root
{
    public Save save = Globals.save;
    public SaveGlobal saveGlobal = Globals.saveGlobal;
    
    public double achRedCoin;
    public double actualKpaCount;

    public double actualShinyKpaCount;

    /// <summary>
    ///     Already opened FCG.
    /// </summary>
    public double alreadyopened = 0;

    public int annUpdate = 0;
    public bool anotherDay = false;
    public List<double> autoUpdateTime;

    /// <summary>
    ///     Number of gotten awards
    /// </summary>
    public double awards;

    public double bestiaryLevel = 0;
    public double boostMax;
    public double boostMin = 0;
    public double careerActivated;

    public double careerLevel1 = 0;
    public double careerLevel10 = 0;
    public double careerLevel11 = 0;
    public double careerLevel12 = 0;
    public double careerLevel13 = 0;
    public double careerLevel14 = 0;
    public double careerLevel15 = 0;
    public double careerLevel16 = 0;
    public double careerLevel2 = 0;
    public double careerLevel3 = 0;
    public double careerLevel4 = 0;
    public double careerLevel5 = 0;
    public double careerLevel6 = 0;
    public double careerLevel7 = 0;
    public double careerLevel8 = 0;
    public double careerLevel9 = 0;
    public List<string> careerName = [];
    public double challengeDeadline = 0;
    public double challengeToken = 0;
    public int clock_date;
    public string clock_display = "";
    public int clock_month;
    public int clock_year;

    public double correctTier;

    public double crystalKill = 0;
    public List<double> curCareerLevel;

    public double cursoridle = 0;
    public double detectedX = 0;
    public double emptyAccessorySlot = 0;
    public double emptyArmorSlot = 0;
    public double emptyChipSlot = 0;
    public double emptyEnhancerSlot = 0;
    public double emptyOutfitSlot = 0;
    public double emptyPotionSlot = 0;

    public double emptyWeaponSlot = 0;
    public List<List<List<List<string>>>> eventList;
    public double failGrammar = 0;
    public double fcgCooldown = 0;
    public double finalExp;

    /// <summary>
    ///     Amount of fishing rods obtained.
    /// </summary>
    public double fishRodCount = 0;

    public double fishStatus;

    /// <summary>
    ///     Flash version, displayed in the bottom bar.
    /// </summary>
    public string flashVer = "AITG";

    public double fps = 40;
    public bool idlerAppreciate = false;

    /// Username from Kongregate. Since Kong isn't active anymore, this
    /// is always "Guest".
    /// </summary>
    public string kongregate_username = "Guest";

    public double mainAntiLag = 0;
    public double mainSummonCount = 0;
    public double maxredcoin;

    /// <summary>
    ///     Amount of module slots left in inventory.
    /// </summary>
    public double moduleInvSlotLeft = 0;

    /// <summary>
    ///     Right-most occupied module slot in inventory.
    /// </summary>
    public double moduleInvSlotOccupied = 0;

    /// <summary>
    ///     Amount of module slots left.
    /// </summary>
    public double moduleSlotLeft = 0;

    /// <summary>
    ///     Right-most occupied module slot.
    /// </summary>
    public double moduleSlotOccupied = 0;

    public double nameValue = 0;
    public NewsData news = new();
    public int newsCount;
    public SparseArray<double> newsFeature = [];
    public SparseArray<double> newsID = [];
    public SparseArray<string> newsSauceName = [];
    public double printPercent = 0;
    public double progPercent = 0;

    public double quitDuration = 0;
    public double recMys;

    public double refresh_date = 0;
    public double refresh_max_date = 0;
    public double refresh_month = 0;
    public double refresh_year = 0;

    public double requiredExp;

    /// <summary>
    ///     Selected save id.
    /// </summary>
    public double saveid;

    /// <summary>
    ///     Number of secret awards
    /// </summary>
    public double sawards;

    public int scrollingDir = 0;
    public double sessionTimeLeft;

    public double sprayCooldown1 = 165;
    public double sprayCooldown2 = 540;

    /// <summary>
    ///     Amount of stadium hats unlocked.
    /// </summary>
    public double stadiumHatUnlocked = 0;

    public double systemtimenow = 0;

    /// <summary>
    ///     Time spent since starting the game, in seconds.
    /// </summary>
    public double thisSession = 0;

    public double todayCode;

    public double todayEvent;
    public double totalachievements;
    public double totalAllyMastered = 0;
    public double totalAllyMaxed = 0;
    public double totalAllyTamed = 0;
    public double totalCareerLevel;

    /// <summary>
    ///     Total number of epic skills.
    /// </summary>
    public double totalEpicSkill = 0;

    /// <summary>
    ///     Total amount of REST upgrades.
    /// </summary>
    public double totalRestEfficiency = 0;

    public double totalRing = 0;
    public double totalsachievements;
    public double totalUltra = 0;

    /// <summary>
    ///     Total level of Arcade unranked upgrades.
    /// </summary>
    public double totalUnrankedPower = 0;

    /// <summary>
    ///     Tower of Doom cooldown.
    /// </summary>
    public double towerCooldown = 30;

    public double treasureHunterKill = 0;

    public double treeToPlant = -1;
    public double uniqueKill = 0;
    public double uniqueUlt1 = 0;
    public double uniqueUlt2 = 0;
    public double uniqueUlt3 = 0;
    public double updateBreakNews = 0;

    /// <summary>
    ///     Version number.
    /// </summary>
    public double upNumber = 1861.1;

    public ZoneKillData zonekill = new();

    public object this[string key]
    {
        get => GetType().GetField(key)?.GetValue(this) ?? throw new ArgumentException($"Property `{key}` not found");
        set
        {
            var prop = GetType().GetField(key) ?? throw new ArgumentException($"Property `{key}` not found");
            prop.SetValue(this, value);
        }
    }

    public string getFullMonthName(double monthCount)
    {
        List<string> monthArr =
        [
            "", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October",
            "November", "December"
        ];
        return monthArr[(int)monthCount];
    }

    public string getShortMonthName(double monthCount)
    {
        List<string> monthArr =
            ["", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
        return monthArr[(int)monthCount];
    }

    public void setInitDeck(string deckCode)
    {
        var tempDeckArray = deckCode.Split(".");
        List<string> myDeckArray = [];
        var i = 0;
        while (i <= tempDeckArray.Length - 1)
        {
            if (int.Parse(tempDeckArray[i]) > 100)
            {
                tempDeckArray[i] = "100";
            }

            var j = 1;
            while (j <= int.Parse(tempDeckArray[i]))
            {
                myDeckArray.Add(tempDeckArray[i + 1]);
                j += 1;
            }

            i += 2;
        }

        List<int> planDeck = [];
        i = 1;
        while (i <= 400)
        {
            planDeck[i] = 0;
            i += 1;
        }

        if (myDeckArray.Count > 10 && myDeckArray.Count <= 100)
        {
            i = 0;
            while (i <= myDeckArray.Count - 1)
            {
                planDeck[int.Parse(myDeckArray[i])] += 1;
                i += 1;
            }
        }

        i = 1;
        while (i <= 400)
        {
            save.fcgOwned[i] += planDeck[i];
            save.fcgDeck[i] = planDeck[i];
            i += 1;
        }

        save.fcgTotalCards = myDeckArray.Count;
    }

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

    public double getKpaValue(string kpaName)
    {
        if (kpaName == null || kpaName == "" || kpaName.Length < 1)
        {
            return 0;
        }

        var kpaValue = 0;
        var i = 1;
        var nD = 0;
        while (i <= kpaName.Length)
        {
            var cDigit = kpaName.Substring(i, 1);
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

            if (i == 1)
            {
                kpaValue += 3 * nD + 17;
            }
            else
            {
                kpaValue += (i + 1) * nD + 9;
            }

            kpaValue %= 10000;
            i += 1;
        }

        return kpaValue;
    }

    public void getRefundCode()
    {
        var refundTier = 0;
        if (_root.kongregate_username != null && _root.kongregate_username != "Guest")
        {
            if (save.bestLevel >= 200 && save.totalPlayTime >= 2700)
            {
                refundTier = 1;
            }

            if (save.bestLevel >= 400 && save.totalPlayTime >= 5400)
            {
                refundTier = 2;
            }

            if (save.bestLevel >= 700 && save.totalPlayTime >= 10800)
            {
                refundTier = 3;
            }

            if (save.bestLevel >= 1000 && save.totalPlayTime >= 21600)
            {
                refundTier = 4;
            }

            if (save.bestLevel >= 1500 && save.totalPlayTime >= 43200)
            {
                refundTier = 5;
            }

            if (save.bestLevel >= 2000 && save.totalPlayTime >= 86400)
            {
                refundTier = 6;
            }

            if (save.bestLevel >= 3000 && save.totalPlayTime >= 172800)
            {
                refundTier = 7;
            }

            if (save.bestLevel >= 4000 && save.totalPlayTime >= 345600)
            {
                refundTier = 8;
            }

            if (save.bestLevel >= 5500 && save.totalPlayTime >= 604800)
            {
                refundTier = 9;
            }

            if (save.bestLevel >= 7000 && save.totalPlayTime >= 864000)
            {
                refundTier = 10;
            }

            if (save.bestLevel >= 9000 && save.totalPlayTime >= 1296000)
            {
                refundTier = 11;
            }

            if (save.bestLevel >= 9000 && save.banned >= 2 && save.totalPlayTime >= 1728000)
            {
                refundTier = 12;
            }

            if (save.bestLevel >= 9000 && save.banned >= 5 && save.totalPlayTime >= 2160000)
            {
                refundTier = 13;
            }

            if (save.bestLevel >= 9000 && save.banned >= 10 && save.totalPlayTime >= 2592000)
            {
                refundTier = 14;
            }

            if (save.bestLevel >= 9000 && save.banned >= 20 && save.totalPlayTime >= 3024000)
            {
                refundTier = 15;
            }

            if (save.bestLevel >= 9000 && save.banned >= 30 && save.totalPlayTime >= 3456000)
            {
                refundTier = 16;
            }

            if (save.bestLevel >= 9000 && save.banned >= 50 && save.totalPlayTime >= 3888000)
            {
                refundTier = 17;
            }
        }

        var refundCode = refundTier * (1013174 + refundTier * refundTier + Math.Ceiling(_root.nameValue / 7)) +
                         refundTier * (refundTier + 4) * Math.Ceiling(_root.nameValue * refundTier / 1.7);
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

    public void checkRefundCode(string code)
    {
        _root.correctTier = 0;
        if (_root.kongregate_username != null && _root.kongregate_username != "Guest")
        {
            var i = 1;
            while (i <= 30)
            {
                var correctCode = i * (1013174 + i * i + Math.Ceiling(nameValue / 7)) +
                                  i * (i + 4) * Math.Ceiling(nameValue * i / 1.7);
                if (correctCode % 10 == 7)
                {
                    correctCode += 1;
                }

                correctCode = correctCode * 10 + 7;
                if (int.Parse(code) == correctCode)
                {
                    _root.correctTier = i;
                }

                i += 1;
            }
        }
    }

    public string ddec(string donCode)
    {
        // NOTE: Stubbed out because donations don't work anymore.
        return "";
    }

    public void submitScore(string scoreName, double amount, double hardCap = 0, bool submitZero = false)
    {
        // NOTE: Stubbed out because Kongregate functionality is no longer alive.
    }

    public void submitKong(string scoreName, double amount, double hardCap = 0, bool submitZero = false)
    {
        // NOTE: Stubbed out because Kongregate functionality is no longer alive.
    }

    public void submitGeneral()
    {
        _root.getRefundCode();
        _root.submitScore("Total Days Played", Math.Floor(save.totalPlayTime / 86400), 99999);
        _root.submitScore("Level", save.level + save.banned * 10000);
        _root.submitScore("Max Level", save.bestLevel, 9002);
        _root.submitScore("EXP", save.bestExp);
        _root.submitScore("Speedrun: Lv. 9001 [Minutes]", save.speedRun9001, 99999999, true);
        _root.submitScore("Speedrun: Ascend [Minutes]", save.speedRunAscend, 99999999, true);
        _root.submitScore("Speedrun: Ascend (Hard) [Minutes]", save.speedRunAscendHard, 99999999, true);
        _root.submitScore("Speedrun: Ascend (Impossible) [Minutes]", save.speedRunAscendImpossible, 99999999, true);
        _root.submitScore("Unspent Coins", save.coinMax, 999999999999999);
        _root.submitScore("Unspent Green Coins", save.greenCoinMax, 999999999999);
        _root.submitScore("Unspent Blue Coins", save.blueCoinMax, 999999999);
        _root.submitScore("Unspent White Coins", save.whiteCoinMax, 999999);
        _root.submitScore("REST Upgrades", _root.totalRestEfficiency, 100);
        _root.submitScore("Inventory Module Slots", save.progModuleSlot, 100);
        _root.submitScore("Main Quests C-Rank", save.mainQuestC);
        _root.submitScore("Main Quests B-Rank", save.mainQuestB);
        _root.submitScore("Main Quests A-Rank", save.mainQuestA);
        _root.submitScore("Main Quests S-Rank", save.mainQuestS);
        _root.submitScore("Quests", save.questTotal);
        _root.submitScore("Quests (1 day)", save.questRecord);
        _root.submitScore("Achievements", _root.awards, _root.totalachievements);
        _root.submitScore("Secret Achievements", _root.sawards, _root.totalsachievements);
        _root.submitScore("Achievement Score", _root.achRedCoin, _root.maxredcoin);
        if (save.level >= 1000 || save.banned > 0)
        {
            _root.submitScore("% Anti-Idle Rewards", Math.Floor(save.rewardClaimManual / save.rewardClaim * 100),
                _root.maxredcoin);
        }

        _root.submitScore("Rewards Claimed", save.rewardClaim);
        _root.submitScore("Rewards Claimed (Anti-Idle)", save.rewardClaimManual);
        _root.submitScore("Rewards Claimed (Idle)", save.rewardClaimAuto);
        _root.submitScore("Times Ascended", save.banned);
        _root.submitScore("Times Ascended (Hard)", save.bannedHard);
        _root.submitScore("Times Ascended (Impossible)", save.bannedImpossible);
        _root.submitScore("[Battle Arena] Rebirth", save.bannedB);
        _root.submitScore("[Battle Arena] Battle Points", save.battlePoint);
        _root.submitScore("[Battle Arena] Excessive EXP (x100M)", save.arenaExpExcess);
        _root.submitScore("Pet EXP",
            save.petStat[1] + save.petStat[2] + save.petStat[3] + save.petStat[4] + save.petStat[5] + save.petStat[6] +
            save.petStat[7] + save.petStat[8], 1600);
        _root.submitScore("[Kong] Kongpanions", _root.actualKpaCount);
        _root.submitScore("[Kong] Shiny Kongpanions", _root.actualShinyKpaCount);
        _root.submitScore("Ascension Points", save.totalStupidity);
        _root.submitScore("[Battle Arena] Collection Points", save.collectionPointMax);
        var _loc2_ = 1;
        while (_loc2_ <= 20)
        {
            _root.submitScore("[Event] Technical Battleground #" + _loc2_, save.arenaEventPoint[_loc2_]);
            _loc2_ += 1;
        }
    }

    public void submitAll()
    {
        _root.submitGeneral();
        _root.submitScore("[Speedrun] Speedrun Time", _root.saveGlobal.challengeTime[0], 999999999);
        var _loc2_ = 1;
        while (_loc2_ <= 20)
        {
            _root.submitScore("[Challenge] Challenge #" + _loc2_ + " Time", _root.saveGlobal.challengeTime[_loc2_],
                999999999);
            _loc2_ += 1;
        }

        _root.submitScore("Ants Sprayed", save.antsSprayed);
        _root.submitScore("[Garden] Tree Harvests", save.harvestCount);
        _root.submitScore("[Garden] Tree Income", save.harvestCoin);
        _root.submitScore("[Garden] Garden EXP", save.gardenEXP);
        _root.submitScore("[Battle Arena] Bestiary Level", _root.bestiaryLevel);
        _root.submitScore("[Battle Arena] Arena Rank", save.arenaLevel);
        _root.submitScore("[Battle Arena] Robacon Rank", save.robaconLevel);
        _root.submitScore("[Battle Arena] Missions", save.arenaMission);
        _root.submitScore("[Battle Arena] Mission Kommander", save.arenaKommanderComplete);
        _root.submitScore("[Battle Arena] Defend Mission", save.arenaDefendComplete);
        _root.submitScore("[Battle Arena] Prehistoric Mission", save.arenaPrehistoricComplete);
        _root.submitScore("[Battle Arena] Kills", save.arenaKill);
        _root.submitScore("[Battle Arena] Kills (Non-Weak)", save.arenaKillWhite);
        _root.submitScore("[Battle Arena] Kills (Strong)", save.arenaKillRed);
        _root.submitScore("[Battle Arena] Kills (Boss)", save.arenaKillPurple);
        _root.submitScore("[Battle Arena] Combo", save.arenaMaxCombo);
        _root.submitScore("[Battle Arena] Loot Drops", save.arenaLoot);
        _root.submitScore("[Battle Arena] Unspent Pixels", save.arenaPixelMax);
        _root.submitScore("[Battle Arena] Crafting Material Used", save.arenaCraftUsed);
        _root.submitScore("[Battle Arena] Max Damage Dealt", save.arenaMaxDamage);
        _root.submitScore("[Battle Arena] Invisible Allies Tamed", _root.totalAllyTamed);
        _root.submitScore("[Battle Arena] Invisible Allies Mastered", _root.totalAllyMastered);
        _root.submitScore("[Battle Arena] Skill Books", save.arenaSkillBook);
        _root.submitScore("[Battle Arena] Rune of Health", save.arenaRuneLevel[1], 100);
        _root.submitScore("[Battle Arena] Rune of Mana", save.arenaRuneLevel[2], 100);
        _root.submitScore("[Battle Arena] Rune of Rage", save.arenaRuneLevel[3], 100);
        _root.submitScore("[Battle Arena] Rune of Encounter", save.arenaRuneLevel[4], 100);
        _root.submitScore("[Battle Arena] Rune of Experience", save.arenaRuneLevel[5], 100);
        _root.submitScore("[Battle Arena] Rune of Greed", save.arenaRuneLevel[6], 100);
        _root.submitScore("[Battle Arena] Total Rune Level",
            save.arenaRuneLevel[1] + save.arenaRuneLevel[2] + save.arenaRuneLevel[3] + save.arenaRuneLevel[4] +
            save.arenaRuneLevel[5] + save.arenaRuneLevel[6], 600);
        _root.submitScore("[Button Machine] Button Presses", save.buttonPress);
        _root.submitScore("[Button Machine] Perfect Clicks", save.buttonPerfect);
        _root.submitScore("[Button Machine] Max Hit Combo", save.buttonMaxCombo);
        _root.submitScore("[Money Printer] Illegal Coins", save.totalPrinterMoney);
        _root.submitScore("[Money Printer] Battery Charges", save.totalPrinterCharge);
        _root.submitScore("[Arcade] Pong", save.rankedPong);
        _root.submitScore("[Arcade] Ultimate Avoidance", save.rankedAvoidance);
        _root.submitScore("[Arcade] Math Master", save.rankedMath);
        _root.submitScore("[Arcade] Whack-a-greg", save.rankedWhack);
        _root.submitScore("[Arcade] MindSweeper", save.rankedMind);
        _root.submitScore("[Arcade] Balance 3", save.rankedBalance);
        _root.submitScore("[Arcade] Triangle Count", save.rankedCount);
        _root.submitScore("[Stadium] Simple Race (Impossible)", save.stadiumImpossibleRace);
        _root.submitScore("[Stadium] Item Fight (Impossible)", save.stadiumImpossibleItem);
        _root.submitScore("[Stadium] Death Match Wins", save.stadiumDeathMatch);
        _root.submitScore("[Stadium] Death Match PWNts", save.stadiumBestDeathMatch);
        _root.submitScore("[Stadium] Fastest Race", save.stadiumBestTime, 99999);
        _root.submitScore("[Stadium] Unspent Stadium Tokens", save.stadiumTokenMax);
        _root.submitScore("[TukkunFCG] FCG Level", save.fcgLevel);
        _root.submitScore("[TukkunFCG] FCG EXP", save.fcgExp + save.fcgExpTotal);
        _root.submitScore("[TukkunFCG] FCG Cash", save.fcgMaxCash);
        _root.submitScore("[TukkunFCG] FCG Wins", save.fcgWin);
        _root.submitScore("[TukkunFCG] FCG Win Streak (Lv6)", save.fcgMaxStreak6);
        _root.submitScore("[TukkunFCG] FCG Win Streak (Lv7)", save.fcgMaxStreak7);
        _root.submitScore("[TukkunFCG] FCG Win Streak (Lv8 New)", save.fcgMaxStreak8);
        _root.submitScore("[TukkunFCG] FCG Win Streak (Lv10)", save.fcgMaxStreak10);
        _root.submitScore("[TukkunFCG] FCG Wins (Lv8)", save.fcgLevel8);
        _root.submitScore("[TukkunFCG] FCG Wins (Lv10)", save.fcgLevel10);
        _root.submitScore("[TukkunFCG] Legendary Monsters Killed", save.fcgLegendCount);
        _root.submitScore("[LolMarket] LolMarket Profit", save.lolMaxProfit);
        _root.submitScore("[Awesome Adventures] Reputation", save.awesomeMaxReputation);
        _root.submitScore("[Awesome Adventures] Town", save.awesomeTotalAdv1);
        _root.submitScore("[Awesome Adventures] Untitled Zone", save.awesomeTotalAdv2);
        _root.submitScore("[Awesome Adventures] Titled Zone", save.awesomeTotalAdv3);
        _root.submitScore("[Fishing] Skill", save.fishBestLevel, 60);
        _root.submitScore("[Fishing] Mastery", save.fishExp + save.fishTotalExp);
        _root.submitScore("[Fishing] Score", save.fishScore);
        _root.submitScore("[Fishing] Score (1 day)", save.fishScoreRecord);
        _root.submitScore("[Fishing] Catches", save.fishTotal);
        _root.submitScore("[Fishing] Perfect Catches", save.fishPerfect);
        _root.submitScore("[Fishing] Perfect Streak", save.fishBestStreak);
        _root.submitScore("[Career] Career: Idler", save.careerLevel[1], 200);
        _root.submitScore("[Career] Career: Gardener", save.careerLevel[2], 200);
        _root.submitScore("[Career] Career: Fighter", save.careerLevel[3], 200);
        _root.submitScore("[Career] Career: Item Maker", save.careerLevel[4], 200);
        _root.submitScore("[Career] Career: Button Basher", save.careerLevel[5], 200);
        _root.submitScore("[Career] Career: Arcade Player", save.careerLevel[6], 200);
        _root.submitScore("[Career] Career: Racer", save.careerLevel[7], 200);
        _root.submitScore("[Career] Career: Card Player", save.careerLevel[8], 200);
        _root.submitScore("[Career] Career: Gem Trader", save.careerLevel[9], 200);
        _root.submitScore("[Career] Career: Adventurer", save.careerLevel[10], 200);
        _root.submitScore("[Career] Career: Pet Trainer", save.careerLevel[11], 200);
        _root.submitScore("[Career] Career: Fisherman", save.careerLevel[12], 200);
        _root.submitScore("[Career] Total Career Level", _root.totalCareerLevel, 2400);
        _root.submitScore("[Cyborg] Cyborg Level", save.botLevel, 200);
        _root.submitScore("[Battle Arena] +10 Upgraded Allies", _root.totalAllyMaxed);
        _root.submitScore("[Battle Arena] ULTRA ALLIES", _root.totalUltra);
        _root.submitScore("[Battle Arena] Unique ULTRA-1 Kills [New]", _root.uniqueUlt1);
        _root.submitScore("[Battle Arena] Unique ULTRA-2 Kills [New]", _root.uniqueUlt2);
        _root.submitScore("[Battle Arena] Unique ULTRA-3 Kills [New]", _root.uniqueUlt3);
        _root.submitScore("[Button Machine] Additional Multiplier", save.buttonMultiplier, 1200);
        _root.submitScore("[Button Machine] Grandpas", save.buttonGrandpa, 20);
        _root.submitScore("[Arcade] Unranked Upgrades", _root.totalUnrankedPower);
        _root.submitScore("[Stadium] Hats Unlocked", _root.stadiumHatUnlocked);
        _root.submitScore("[Awesome Adventures] Reputation (-)", -1 * save.awesomeReputation);
        _root.submitScore("[Fishing] Rods Unlocked", _root.fishRodCount, 10);
        _root.submitScore("[BA Raid] Dark Pyramid", save.raidPyramid);
        _root.submitScore("[BA Raid] Defend Mission", save.raidDefend);
        _root.submitScore("[BA Raid] Prehistoric Mission", save.raidPrehistoric);
        _root.submitScore("[BA Raid] The Special Arena", save.raidMegaboss);
        _root.submitScore("[BA Raid] Tower of DOOOOOOM", save.raidTower);
        _root.submitScore("[BA Raid] Secret Dungeon", save.raidDungeon);
        _root.submitScore("[BA Raid] Endless Dungeon", save.raidEndless);
        _root.submitScore("[BA Raid] THE MEGABOSS\'s Revenge", save.arenaRevengeScore);
        _root.submitScore("[BA Raid] Spooky Crypt", save.arenaSpookyScore);
        _root.submitScore("[BA Raid] Triangle Hideout", save.arenaTriangleScore);
        _root.submitScore("[BA Raid] Special Training Zone (new)", save.raidSpecial);
        _root.submitScore("[BA Raid] The Corruption", save.arenaCorruptBestDifficulty);
        _root.submitScore("[Typing] WPM", save.bestWpm);
    }
    
    public void dispNews(int type, string news)
    {
        if (Globals.save.breakNewsMode == 1)
        {
            var ignoreNews = true;
            if (Globals.saveGlobal.breakAll[type] || Globals.saveGlobal.breakFeature[type] || Globals.saveGlobal.breakTab1[type] ||
                Globals.saveGlobal.breakTab2[type] || Globals.saveGlobal.breakTab3[type] || Globals.saveGlobal.breakTab4[type])
            {
                ignoreNews = false;
            }

            if (ignoreNews == false)
            {
                var i = 30;
                while (i >= 2)
                {
                    var j = 1;
                    while (j <= 4)
                    {
                        if (((SparseArray<bool>)Globals.saveGlobal["breakTab" + j])[type])
                        {
                            _root.news["X" + j + "breakNews" + i] = _root.news["X" + j + "breakNews" + (i - 1)];
                            _root.news["X" + j + "breakStamp" + i] = _root.news["X" + j + "breakStamp" + (i - 1)];
                            _root.news["X" + j + "breakColor" + i] = _root.news["X" + j + "breakColor" + (i - 1)];
                        }

                        j += 1;
                    }

                    if (Globals.saveGlobal.breakAll[type])
                    {
                        var ft = 1;
                        while (ft <= 30)
                        {
                            _root.news["F" + ft + "breakNews" + i] = _root.news["F" + ft + "breakNews" + (i - 1)];
                            _root.news["F" + ft + "breakStamp" + i] = _root.news["F" + ft + "breakStamp" + (i - 1)];
                            _root.news["F" + ft + "breakColor" + i] = _root.news["F" + ft + "breakColor" + (i - 1)];
                            ft += 1;
                        }
                    }
                    else if (Globals.saveGlobal.breakFeature[type])
                    {
                        var ft = _root.newsFeature[type];
                        _root.news["F" + ft + "breakNews" + i] = _root.news["F" + ft + "breakNews" + (i - 1)];
                        _root.news["F" + ft + "breakStamp" + i] = _root.news["F" + ft + "breakStamp" + (i - 1)];
                        _root.news["F" + ft + "breakColor" + i] = _root.news["F" + ft + "breakColor" + (i - 1)];
                    }

                    i -= 1;
                }

                i = 1;
                while (i <= 4)
                {
                    if (((SparseArray<bool>)Globals.saveGlobal["breakTab" + i])[type])
                    {
                        _root.news["X" + i + "breakNews1"] = news;
                        _root.news["X" + i + "breakStamp1"] = "[" + _root.clock_display + "]";
                        _root.news["X" + i + "breakColor1"] = Globals.saveGlobal.breakR[type] * 65536 +
                                                              Globals.saveGlobal.breakG[type] * 256 + Globals.saveGlobal.breakB[type];
                    }

                    i += 1;
                }

                if (Globals.saveGlobal.breakAll[type])
                {
                    i = 1;
                    while (i <= 30)
                    {
                        _root.news["F" + i + "breakNews1"] = news;
                        _root.news["F" + i + "breakStamp1"] = "[" + _root.clock_display + "]";
                        _root.news["F" + i + "breakColor1"] = Globals.saveGlobal.breakR[type] * 65536 +
                                                              Globals.saveGlobal.breakG[type] * 256 + Globals.saveGlobal.breakB[type];
                        i += 1;
                    }
                }
                else if (Globals.saveGlobal.breakFeature[type])
                {
                    var ft = _root.newsFeature[type];
                    _root.news["F" + ft + "breakNews1"] = news;
                    _root.news["F" + ft + "breakStamp1"] = "[" + _root.clock_display + "]";
                    _root.news["F" + ft + "breakColor1"] = Globals.saveGlobal.breakR[type] * 65536 +
                                                           Globals.saveGlobal.breakG[type] * 256 + Globals.saveGlobal.breakB[type];
                }

                _root.updateBreakNews = 1;
            }
        }
        else if (Globals.save.breakNewsMode == 2)
        {
            if (Globals.saveGlobal.defTab == 5)
            {
                /// FIXME: add current feature check: _root.house._currentframe == _root.newsFeature[type]
                if (Globals.saveGlobal.breakAll[type] ||
                    Globals.saveGlobal.breakFeature[type] /*&& _root.house._currentframe == _root.newsFeature[type]*/)
                {
                    var i = 30;
                    while (i >= 2)
                    {
                        if (Globals.saveGlobal.breakAll[type])
                        {
                            var j = 1;
                            while (j <= 30)
                            {
                                _root.news["F" + j + "breakNews" + i] = _root.news["F" + j + "breakNews" + (i - 1)];
                                _root.news["F" + j + "breakStamp" + i] = _root.news["F" + j + "breakStamp" + (i - 1)];
                                _root.news["F" + j + "breakColor" + i] = _root.news["F" + j + "breakColor" + (i - 1)];
                                j += 1;
                            }
                        }
                        else if (Globals.saveGlobal.breakFeature[type])
                        {
                            var ft = _root.newsFeature[type];
                            _root.news["F" + ft + "breakNews" + i] = _root.news["F" + ft + "breakNews" + (i - 1)];
                            _root.news["F" + ft + "breakStamp" + i] = _root.news["F" + ft + "breakStamp" + (i - 1)];
                            _root.news["F" + ft + "breakColor" + i] = _root.news["F" + ft + "breakColor" + (i - 1)];
                        }

                        i -= 1;
                    }

                    if (Globals.saveGlobal.breakAll[type])
                    {
                        var j = 1;
                        while (j <= 30)
                        {
                            _root.news["F" + j + "breakNews1"] = news;
                            _root.news["F" + j + "breakStamp1"] = "[" + _root.clock_display + "]";
                            _root.news["F" + j + "breakColor1"] = Globals.saveGlobal.breakR[type] * 65536 +
                                                                  Globals.saveGlobal.breakG[type] * 256 +
                                                                  Globals.saveGlobal.breakB[type];
                            j += 1;
                        }
                    }
                    else if (Globals.saveGlobal.breakFeature[type])
                    {
                        var ft = _root.newsFeature[type];
                        _root.news["F" + ft + "breakNews1"] = news;
                        _root.news["F" + ft + "breakStamp1"] = "[" + _root.clock_display + "]";
                        _root.news["F" + ft + "breakColor1"] = Globals.saveGlobal.breakR[type] * 65536 +
                                                               Globals.saveGlobal.breakG[type] * 256 + Globals.saveGlobal.breakB[type];
                    }

                    _root.updateBreakNews = 1;
                }
            }
            else if (Globals.saveGlobal.defTab == 0 || ((SparseArray<bool>)Globals.saveGlobal["breakTab" + Globals.saveGlobal.defTab])[type])
            {
                var tab = Globals.saveGlobal.defTab;
                var i = 30;
                while (i >= 2)
                {
                    _root.news["X" + tab + "breakNews" + i] = _root.news["X" + tab + "breakNews" + (i - 1)];
                    _root.news["X" + tab + "breakStamp" + i] = _root.news["X" + tab + "breakStamp" + (i - 1)];
                    _root.news["X" + tab + "breakColor" + i] = _root.news["X" + tab + "breakColor" + (i - 1)];
                    i -= 1;
                }

                _root.news["X" + tab + "breakNews1"] = news;
                _root.news["X" + tab + "breakStamp1"] = "[" + _root.clock_display + "]";
                _root.news["X" + tab + "breakColor1"] = Globals.saveGlobal.breakR[type] * 65536 +
                                                        Globals.saveGlobal.breakG[type] * 256 + Globals.saveGlobal.breakB[type];
                _root.updateBreakNews = 1;
            }
        }
    }
    
    public void showPopup(string popT, string popD)
    {
        // TODO: popup code
        /*_root.popUp.gotoAndStop(2);
        _root.popUp.popTitle.text = popT;
        _root.popUp.popDesc.text = popD;*/
    }
}

/// <summary>
///     Shared save data. Usually for title screen saved data.
///     Saved on the filesystem,
///     see <see cref="SaveReader" />. Equivalent to saveGlobal in AS2.
/// </summary>
public class SaveGlobal
{
    public SparseArray<double> ascCount;
    public SparseArray<bool> breakAll = new();
    public SparseArray<double> breakB = new();
    public SparseArray<bool> breakFeature = new();
    public SparseArray<double> breakG = new();
    public SparseArray<double> breakR = new();

    public SparseArray<bool> breakTab1 = new();
    public SparseArray<bool> breakTab2 = new();
    public SparseArray<bool> breakTab3 = new();
    public SparseArray<bool> breakTab4 = new();
    public SparseArray<bool> challengeAttempted = new();
    public SparseArray<bool> challengePerfect = new();

    public SparseArray<double> challengeTime = new();
    public SparseArray<string> curLevel;

    /// <summary>
    ///     Current breaking news tab
    /// </summary>
    public double defTab;

    public SparseArray<string> playTime;

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