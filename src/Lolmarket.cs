using System;
using aitg.flash;
using static aitg.Globals;

namespace aitg.lib.feature.main;

public static class Lolmarket
{
    public static void updateMarket()
    {
        if (save.featureLolMarket)
        {
            _root.dispNews(107, "LolMarket prices have changed.");
            var i = 1;
            while (i <= 10)
            {
                if (save.lolDemand[i] > 100)
                {
                    save.lolDemand[i] = 100;
                }
                else if (save.lolDemand[i] < -100)
                {
                    save.lolDemand[i] = -100;
                }

                save.lolPrice[i] += save.lolDemand[i];
                save.lolDemand[i] += Math.Round((FlashRand.random() - FlashRand.random()) * (2.5 + i / 4));
                if (save.lolPrice[i] < 1000 * i)
                {
                    save.lolDemand[i] += i;
                }
                else if (save.lolPrice[i] < 1250 * i)
                {
                    save.lolDemand[i] += 1;
                }
                else if (save.lolPrice[i] > 2000 * i)
                {
                    save.lolDemand[i] -= i;
                }
                else if (save.lolPrice[i] > 1750 * i)
                {
                    save.lolDemand[i] -= 1;
                }

                if (save.lolPrice[i] < 450 * i)
                {
                    save.lolPrice[i] = 450 * i;
                }
                else if (save.lolPrice[i] > 2550 * i)
                {
                    save.lolPrice[i] = 2550 * i;
                }

                if (save.demandMasterTime > 0 && FlashRand.random() < 0.35)
                {
                    if (save.lolGems[i] >= Math.Ceiling(save.lolCapacity / 2) && save.lolDemand[i] < 15)
                    {
                        save.lolDemand[i] += 1;
                    }
                    else if (save.lolGems[i] < Math.Ceiling(save.lolCapacity / 2) && save.lolDemand[i] > -15)
                    {
                        save.lolDemand[i] -= 1;
                    }
                }

                if (save.careerLevel[9] >= 100 && FlashRand.random() < 0.1)
                {
                    if (save.lolGems[i] >= Math.Ceiling(save.lolCapacity / 2) && save.lolDemand[i] < 20)
                    {
                        save.lolDemand[i] += 2;
                    }
                    else if (save.lolGems[i] < Math.Ceiling(save.lolCapacity / 2) && save.lolDemand[i] > -20)
                    {
                        save.lolDemand[i] -= 2;
                    }
                }

                if (FlashRand.random() < 0.15)
                {
                    if (save.lolGems[i] >= Math.Ceiling(save.lolCapacity / 2))
                    {
                        save.lolDemand[i] += 1;
                    }
                    else if (save.lolGems[i] < Math.Ceiling(save.lolCapacity / 2))
                    {
                        save.lolDemand[i] -= 1;
                    }
                }

                if (save.lolDemand[i] > 30)
                {
                    save.lolDemand[i] -= Math.Ceiling((double)(i / 2)) + 1;
                }
                else if (save.lolDemand[i] < -30)
                {
                    save.lolDemand[i] += Math.Ceiling((double)(i / 2)) + 1;
                }

                if (save.lolDemand[i] > 40)
                {
                    save.lolDemand[i] -= i;
                }
                else if (save.lolDemand[i] < -40)
                {
                    save.lolDemand[i] += i;
                }

                i += 1;
            }
        }
    }
}