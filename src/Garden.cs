using static aitg.Globals;

namespace aitg.lib.feature.main;

public static class Garden
{
    public static void checkExpiry()
    {
        var expireCount = 0;
        var firstExpire = 0;
        var i = 1;
        while (i <= save.gardenCapacity)
        {
            if (save.gardenTrees[i] > 0)
            {
                if (save.gardenPurchaseTime[i] + save.gardenExpiryTime[i] - _root.systemtimenow < 0)
                {
                    save.gardenTrees[i] = 0;
                    expireCount += 1;
                    if (expireCount == 1)
                    {
                        firstExpire = i;
                    }
                }
            }

            i += 1;
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
}