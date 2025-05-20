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
    public bool activityLoot;
    public FlashList<double> arenaEventPoint;
    public double arenaExpExcess;
    public double arenaLoot;
    public double banned;
    public double bannedB;
    public double bannedHard;
    public double bannedImpossible;
    public double battlePoint;
    public double bestExp;
    public double bestLevel;
    public double blueCoinMax;
    public bool bouncyLoot;
    public bool cheatEnabled;
    public double coinMax;
    public double collectionPointMax;
    public FlashList<double> fcgDeck;
    public FlashList<double> fcgOwned;
    public double fcgTotalCards;
    public double greenCoinMax;
    public double houseVer;
    public double level;
    public double mainQuestA;
    public double mainQuestB;
    public double mainQuestC;
    public double mainQuestS;
    public bool noobMode;
    public FlashList<double> petStat;
    public double progModuleSlot;
    public double questCount;
    public double questRecord;
    public string questSubtype;
    public double questTotal;
    public string questType;
    public double rewardClaim;
    public double rewardClaimAuto;
    public double rewardClaimManual;
    public bool safeHacking;
    public double speedRun9001;
    public double speedRunAscend;
    public double speedRunAscendHard;
    public double speedRunAscendImpossible;
    public bool submitScore;
    public double totalPlayTime;
    public double totalStupidity;
    public double whiteCoinMax;
    public double yoEpicFail;
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