using System;
using aitg.flash;
using static aitg.Globals;

namespace aitg.lib.feature.main;

public static class ExpCoin
{
    public static void gainEXP(double amount, int sauce)
    {
        // XXX: stub
    }

    public static void gainGreenCoin(double amount, int sauce)
    {
        if (double.IsNaN(sauce))
        {
            // FIXME: currentframe
            // sauce = _root.house._currentframe;
        }

        if (!double.IsNaN(amount) && amount > 0 && !double.IsPositiveInfinity(amount) && save.greenCoinOvercap < 300)
        {
            var multiplier = 1.0;
            if (_root.saveid == 4)
            {
                multiplier = save.dbGreenCoin / 100;
            }

            multiplier += Math.Min(Math.Floor(save.totalStupidity / 5), 10) * 0.03;
            var finalAmnt = Math.Floor(amount * multiplier);
            if (sauce != 13)
            {
                save.greenCoinGraph[7] += Math.Floor(amount);
                save.greenCoinGraph2[7] += Math.Floor(amount * multiplier);
                if (sauce != 9999)
                {
                    save.greenCoinSauce[sauce] += finalAmnt;
                    save.greenCoinSauce[40] += finalAmnt;
                    save.greenCoinTotal[sauce] += finalAmnt;
                    save.greenCoinTotal[40] += finalAmnt;
                }
                else
                {
                    save.greenCoinSauce[41] += finalAmnt;
                    save.greenCoinSauce[40] += finalAmnt;
                    save.greenCoinTotal[41] += finalAmnt;
                    save.greenCoinTotal[40] += finalAmnt;
                }
            }

            save.greenCoin += Math.Floor(amount * multiplier);
            if (_root.cursoridle < 30 && save.showGain)
            {
                _root.mainSummonCount += 1;
                _root.mainAntiLag += 1;
                // TODO: popup
                // _root.popContain.attachMovie("scorePopMain", "scorePopMain" + _root.mainSummonCount, _root.mainAntiLag,
                // {
                //     10,
                //     60,
                //     "+" + _root.withComma(Math.Floor(amount * multiplier)),
                //     65280
                // });
            }
        }

        if (!double.IsNaN(amount) && amount > 0 && !double.IsPositiveInfinity(amount) && save.greenCoinOvercap >= 300 &&
            save.banned >= 5)
        {
            var multiplier = 1.0;
            if (_root.saveid == 4)
            {
                multiplier = save.dbGreenCoin / 100;
            }

            multiplier += Math.Min(Math.Floor(save.totalStupidity / 5), 10) * 0.03;
            save.reforgingGreenCoin += Math.Floor(amount * multiplier);
            save.greenCoinSauce[sauce] += Math.Floor(amount * multiplier);
            save.greenCoinSauce[40] += Math.Floor(amount * multiplier);
            save.greenCoinTotal[sauce] += Math.Floor(amount * multiplier);
            save.greenCoinTotal[40] += Math.Floor(amount * multiplier);
            save.greenCoinGraph[7] += Math.Floor(amount);
            save.greenCoinGraph2[7] += Math.Floor(amount * multiplier);
        }
    }

    public static void gainGreenCoinND(double amount, int sauce)
    {
        if (double.IsNaN(sauce))
        {
            // FIXME: currentframe
            // sauce = _root.house._currentframe;
        }

        if (!double.IsNaN(amount) && amount > 0 && !double.IsPositiveInfinity(amount) && save.greenCoinOvercap < 300)
        {
            var multiplier = 1.0;
            if (_root.saveid == 4)
            {
                multiplier = save.dbGreenCoin / 100;
            }

            multiplier += Math.Min(Math.Floor(save.totalStupidity / 5), 10) * 0.03;
            if (sauce == 13)
            {
                multiplier = 1;
            }

            var finalAmnt = Math.Floor(amount * multiplier);
            if (sauce != 13)
            {
                save.greenCoinGraph[7] += Math.Floor(amount);
                save.greenCoinGraph2[7] += Math.Floor(amount * multiplier);
                if (sauce != 9999)
                {
                    save.greenCoinSauce[sauce] += finalAmnt;
                    save.greenCoinSauce[40] += finalAmnt;
                    save.greenCoinTotal[sauce] += finalAmnt;
                    save.greenCoinTotal[40] += finalAmnt;
                }
                else
                {
                    save.greenCoinSauce[41] += finalAmnt;
                    save.greenCoinSauce[40] += finalAmnt;
                    save.greenCoinTotal[41] += finalAmnt;
                    save.greenCoinTotal[40] += finalAmnt;
                }
            }

            save.greenCoin += Math.Floor(amount * multiplier);
        }

        if (!double.IsNaN(amount) && amount > 0 && !double.IsPositiveInfinity(amount) && save.greenCoinOvercap >= 300 &&
            save.banned >= 5)
        {
            var multiplier = 1.0;
            if (_root.saveid == 4)
            {
                multiplier = save.dbGreenCoin / 100;
            }

            multiplier += Math.Min(Math.Floor(save.totalStupidity / 5), 10) * 0.03;
            save.reforgingGreenCoin += Math.Floor(amount * multiplier);
            save.greenCoinSauce[sauce] += Math.Floor(amount * multiplier);
            save.greenCoinSauce[40] += Math.Floor(amount * multiplier);
            save.greenCoinTotal[sauce] += Math.Floor(amount * multiplier);
            save.greenCoinTotal[40] += Math.Floor(amount * multiplier);
            save.greenCoinGraph[7] += Math.Floor(amount);
            save.greenCoinGraph2[7] += Math.Floor(amount * multiplier);
        }
    }

    public static void gainBoost(double amount, double limit)
    {
        var realLimit = 0.0;
        if (!double.IsNaN(amount))
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

            if (save.bestLevel <= 5 && save.featureBoostGen != true)
            {
                realLimit = 100;
            }

            var actualGain = amount;
            if (actualGain > realLimit - save.boost)
            {
                actualGain = realLimit - save.boost;
            }

            if (actualGain < 0)
            {
                actualGain = 0;
            }

            save.boost += actualGain;
            save.boostPurchased += actualGain;
        }
    }

    public static void gainCoin(double amount, int sauce)
    {
        if (double.IsNaN(sauce))
        {
            // FIXME: currentframe
            // sauce = _root.house._currentframe;
        }

        if (!double.IsNaN(amount) && amount > 0 && !double.IsPositiveInfinity(amount) && save.coinOvercap < 300)
        {
            if (save.level < 9001 && save.featureBoostAuto)
            {
                var boostToGain = 0.01 + amount / Math.Min(_root.requiredExp, 810000000) / Math.Pow(save.boost, 1.11) *
                    7000;
                if (save.level < 125)
                {
                    boostToGain = boostToGain * save.level / 125;
                }

                if (save.boost < _root.boostMax)
                {
                    boostToGain *= 5;
                }

                if (boostToGain > 2)
                {
                    boostToGain = 2;
                }

                if (save.restTime > 0)
                {
                    boostToGain *= 1.1 + save.restEfficiency[3] * 0.01;
                }

                if (save.permaBanPenalty[28] == 3)
                {
                    boostToGain *= 1.1;
                }
                else if (save.permaBanPenalty[28] == 2)
                {
                    boostToGain *= 1.06;
                }
                else if (save.permaBanPenalty[28] == 1)
                {
                    boostToGain *= 1.04;
                }

                gainBoost(boostToGain, 3);
            }

            var multiplier = 1.0;
            if (_root.saveid == 24)
            {
                multiplier = 0.35;
            }

            if (_root.saveid == 4)
            {
                multiplier = save.dbCoin / 100;
            }

            if (sauce != 0)
            {
                if (sauce == 6 || sauce == 13)
                {
                    multiplier += Math.Min(Math.Floor(save.totalStupidity / 250), 100) * 0.01;
                }
                else if (save.totalStupidity >= 25000)
                {
                    multiplier += Math.Min(Math.Floor((save.totalStupidity - 25000) / 250), 150) * 0.02 + 1;
                }
                else
                {
                    multiplier += Math.Min(Math.Floor(save.totalStupidity / 250), 100) * 0.01;
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

                i += 1;
            }

            if (save.restTime > 0)
            {
                multiplier *= 1.1 + save.restEfficiency[2] * 0.01;
            }

            if (save.careerLevel[1] >= 200 && _root.cursoridle >= 30)
            {
                multiplier *= 1.03;
            }

            if (save.banPenalty[2] == 1)
            {
                multiplier *= 1.1;
            }

            if (save.doubleCoinTime > 0)
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

            var finalAmnt = Math.Floor(amount * multiplier);
            save.coinLag += finalAmnt;
            save.coinGraph[7] += Math.Floor(amount);
            save.coinGraph2[7] += Math.Floor(amount * multiplier);
            if (sauce != 9999)
            {
                save.coinSauce[sauce] += finalAmnt;
                save.coinSauce[40] += finalAmnt;
                save.coinTotal[sauce] += finalAmnt;
                save.coinTotal[40] += finalAmnt;
            }
            else
            {
                save.coinSauce[41] += finalAmnt;
                save.coinSauce[40] += finalAmnt;
                save.coinTotal[41] += finalAmnt;
                save.coinTotal[40] += finalAmnt;
            }

            if (save.level < 9000)
            {
                if (save.permaBanPenalty[8] == 3)
                {
                    save.expLag += Math.Floor(finalAmnt * 0.1);
                    save.expGraph[7] += Math.Floor(amount * 0.1);
                    save.expGraph2[7] += Math.Floor(finalAmnt * 0.1);
                    save.expSauce[sauce] += Math.Floor(finalAmnt * 0.1);
                    save.expSauce[40] += Math.Floor(finalAmnt * 0.1);
                    save.expSauceAsc[sauce] += Math.Floor(finalAmnt * 0.1);
                    save.expSauceAsc[40] += Math.Floor(finalAmnt * 0.1);
                    save.expTotal[sauce] += Math.Floor(finalAmnt * 0.1);
                    save.expTotal[40] += Math.Floor(finalAmnt * 0.1);
                }
                else if (save.permaBanPenalty[8] == 2)
                {
                    save.expLag += Math.Floor(finalAmnt * 0.06);
                    save.expGraph[7] += Math.Floor(amount * 0.06);
                    save.expGraph2[7] += Math.Floor(finalAmnt * 0.06);
                    save.expSauce[sauce] += Math.Floor(finalAmnt * 0.06);
                    save.expSauce[40] += Math.Floor(finalAmnt * 0.06);
                    save.expSauceAsc[sauce] += Math.Floor(finalAmnt * 0.06);
                    save.expSauceAsc[40] += Math.Floor(finalAmnt * 0.06);
                    save.expTotal[sauce] += Math.Floor(finalAmnt * 0.06);
                    save.expTotal[40] += Math.Floor(finalAmnt * 0.06);
                }
                else if (save.permaBanPenalty[8] == 1)
                {
                    save.expLag += Math.Floor(finalAmnt * 0.04);
                    save.expGraph[7] += Math.Floor(amount * 0.04);
                    save.expGraph2[7] += Math.Floor(finalAmnt * 0.04);
                    save.expSauce[sauce] += Math.Floor(finalAmnt * 0.04);
                    save.expSauce[40] += Math.Floor(finalAmnt * 0.04);
                    save.expSauceAsc[sauce] += Math.Floor(finalAmnt * 0.04);
                    save.expSauceAsc[40] += Math.Floor(finalAmnt * 0.04);
                    save.expTotal[sauce] += Math.Floor(finalAmnt * 0.04);
                    save.expTotal[40] += Math.Floor(finalAmnt * 0.04);
                }
            }

            if (_root.cursoridle < 30 && save.showGain && sauce != 22 && sauce != 0 && sauce != 39)
            {
                _root.mainSummonCount += 1;
                _root.mainAntiLag += 1;
                // FIXME: pop display gaincoin
                // _root.popContain.attachMovie("scorePopMain", "scorePopMain" + _root.mainSummonCount, _root.mainAntiLag,{ _x: 80,_y: 20,what: "+" + _root.withComma(Math.Floor(amount * multiplier)),whatColor: 16776960});
            }
        }

        if (!double.IsNaN(amount) && amount > 0 && !double.IsPositiveInfinity(amount) && save.coinOvercap >= 300 &&
            save.banned >= 5)
        {
            var multiplier = 1.0;
            if (_root.saveid == 24)
            {
                multiplier = 0.35;
            }

            if (_root.saveid == 4)
            {
                multiplier = save.dbCoin / 100;
            }

            if (sauce != 0)
            {
                if (sauce == 6 || sauce == 13)
                {
                    multiplier += Math.Min(Math.Floor(save.totalStupidity / 250), 100) * 0.01;
                }
                else if (save.totalStupidity >= 25000)
                {
                    multiplier += Math.Min(Math.Floor((save.totalStupidity - 25000) / 250), 150) * 0.02 + 1;
                }
                else
                {
                    multiplier += Math.Min(Math.Floor(save.totalStupidity / 250), 100) * 0.01;
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

                i += 1;
            }

            if (save.restTime > 0)
            {
                multiplier *= 1.1 + save.restEfficiency[2] * 0.01;
            }

            if (save.careerLevel[1] >= 200 && _root.cursoridle >= 30)
            {
                multiplier *= 1.03;
            }

            if (save.banPenalty[2] == 1)
            {
                multiplier *= 1.1;
            }

            if (save.doubleCoinTime > 0)
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

            var finalAmnt = Math.Floor(amount * multiplier);
            save.reforgingCoin += finalAmnt;
            save.coinSauce[sauce] += finalAmnt;
            save.coinSauce[40] += finalAmnt;
            save.coinTotal[sauce] += finalAmnt;
            save.coinTotal[40] += finalAmnt;
            save.coinGraph[7] += Math.Floor(amount);
            save.coinGraph2[7] += Math.Floor(amount * multiplier);
        }
    }

    public static void gainBlueCoin(double amount, int sauce)
    {
        if (double.IsNaN(sauce))
        {
            // FIXME: currentframe
            //sauce = _root.house._currentframe;
        }

        if (!double.IsNaN(amount) && amount > 0 && !double.IsPositiveInfinity(amount) && save.blueCoinOvercap < 300)
        {
            var multiplier = 1.0;
            if (_root.saveid == 4)
            {
                multiplier *= save.dbBlueCoin / 100;
            }

            var finalAmnt = Math.Floor(amount * multiplier);
            save.blueCoinGraph[7] += Math.Floor(amount);
            save.blueCoinGraph2[7] += Math.Floor(amount * multiplier);
            if (sauce != 9999)
            {
                save.blueCoinSauce[sauce] += finalAmnt;
                save.blueCoinSauce[40] += finalAmnt;
                save.blueCoinTotal[sauce] += finalAmnt;
                save.blueCoinTotal[40] += finalAmnt;
            }
            else
            {
                save.blueCoinSauce[41] += finalAmnt;
                save.blueCoinSauce[40] += finalAmnt;
                save.blueCoinTotal[41] += finalAmnt;
                save.blueCoinTotal[40] += finalAmnt;
            }

            save.blueCoin += Math.Floor(amount * multiplier);
            if (_root.cursoridle < 30 && save.showGain)
            {
                _root.mainSummonCount += 1;
                _root.mainAntiLag += 1;
                // FIXME: blue coin gain popup
                // _root.popContain.attachMovie("scorePopMain", "scorePopMain" + _root.mainSummonCount, _root.mainAntiLag,{ _x: 100,_y: 60,what: "+" + _root.withComma(Math.Floor(amount * multiplier)),whatColor: 39423});
            }
        }

        if (!double.IsNaN(amount) && amount > 0 && amount != double.PositiveInfinity && save.blueCoinOvercap >= 300 &&
            save.banned >= 5)
        {
            var multiplier = 1.0;
            if (_root.saveid == 4)
            {
                multiplier = save.dbBlueCoin / 100;
            }

            save.reforgingBlueCoin += Math.Floor(amount * multiplier);
            save.blueCoinSauce[sauce] += Math.Floor(amount * multiplier);
            save.blueCoinSauce[40] += Math.Floor(amount * multiplier);
            save.blueCoinTotal[sauce] += Math.Floor(amount * multiplier);
            save.blueCoinTotal[40] += Math.Floor(amount * multiplier);
            save.blueCoinGraph[7] += Math.Floor(amount);
            save.blueCoinGraph2[7] += Math.Floor(amount * multiplier);
        }
    }

    public static void calcReqExp()
    {
        _root.requiredExp = save.level * save.level * 10 + 10;
        if (save.gDifficulty == 3)
        {
            _root.requiredExp = Math.Floor(_root.requiredExp * 4);
            if (save.level == 8999)
            {
                _root.requiredExp = 10000000000000 - save.totalExp;
                if (save.gOldAscension == false)
                {
                    if (save.banned >= 1000)
                    {
                        _root.requiredExp += 25000000000000;
                    }
                    else if (save.banned >= 800)
                    {
                        _root.requiredExp += 10000000000 * (save.banned - 800) + 23000000000000;
                    }
                    else if (save.banned >= 600)
                    {
                        _root.requiredExp += 20000000000 * (save.banned - 600) + 19000000000000;
                    }
                    else if (save.banned >= 400)
                    {
                        _root.requiredExp += 30000000000 * (save.banned - 400) + 13000000000000;
                    }
                    else if (save.banned >= 200)
                    {
                        _root.requiredExp += 40000000000 * (save.banned - 200) + 5000000000000;
                    }
                    else if (save.banned >= 100)
                    {
                        _root.requiredExp += 50000000000 * (save.banned - 100);
                    }
                }
            }

            if (save.level == 9000)
            {
                _root.requiredExp = 12000000000000 - save.totalExp;
                if (save.gOldAscension == false)
                {
                    if (save.banned >= 1000)
                    {
                        _root.requiredExp += 25000000000000;
                    }
                    else if (save.banned >= 800)
                    {
                        _root.requiredExp += 10000000000 * (save.banned - 800) + 23000000000000;
                    }
                    else if (save.banned >= 600)
                    {
                        _root.requiredExp += 20000000000 * (save.banned - 600) + 19000000000000;
                    }
                    else if (save.banned >= 400)
                    {
                        _root.requiredExp += 30000000000 * (save.banned - 400) + 13000000000000;
                    }
                    else if (save.banned >= 200)
                    {
                        _root.requiredExp += 40000000000 * (save.banned - 200) + 5000000000000;
                    }
                    else if (save.banned >= 100)
                    {
                        _root.requiredExp += 50000000000 * (save.banned - 100);
                    }
                }
            }
        }
        else if (save.gDifficulty == 2)
        {
            _root.requiredExp = Math.Floor(_root.requiredExp * 2);
            if (save.level == 8999)
            {
                _root.requiredExp = 5000000000000 - save.totalExp;
                if (save.gOldAscension == false)
                {
                    if (save.banned >= 1000)
                    {
                        _root.requiredExp += 25000000000000;
                    }
                    else if (save.banned >= 800)
                    {
                        _root.requiredExp += 10000000000 * (save.banned - 800) + 23000000000000;
                    }
                    else if (save.banned >= 600)
                    {
                        _root.requiredExp += 20000000000 * (save.banned - 600) + 19000000000000;
                    }
                    else if (save.banned >= 400)
                    {
                        _root.requiredExp += 30000000000 * (save.banned - 400) + 13000000000000;
                    }
                    else if (save.banned >= 200)
                    {
                        _root.requiredExp += 40000000000 * (save.banned - 200) + 5000000000000;
                    }
                    else if (save.banned >= 100)
                    {
                        _root.requiredExp += 50000000000 * (save.banned - 100);
                    }
                }
            }

            if (save.level == 9000)
            {
                _root.requiredExp = 6000000000000 - save.totalExp;
                if (save.gOldAscension == false)
                {
                    if (save.banned >= 1000)
                    {
                        _root.requiredExp += 25000000000000;
                    }
                    else if (save.banned >= 800)
                    {
                        _root.requiredExp += 10000000000 * (save.banned - 800) + 23000000000000;
                    }
                    else if (save.banned >= 600)
                    {
                        _root.requiredExp += 20000000000 * (save.banned - 600) + 19000000000000;
                    }
                    else if (save.banned >= 400)
                    {
                        _root.requiredExp += 30000000000 * (save.banned - 400) + 13000000000000;
                    }
                    else if (save.banned >= 200)
                    {
                        _root.requiredExp += 40000000000 * (save.banned - 200) + 5000000000000;
                    }
                    else if (save.banned >= 100)
                    {
                        _root.requiredExp += 50000000000 * (save.banned - 100);
                    }
                }
            }
        }
        else if (save.level == 8999)
        {
            _root.requiredExp = 2500000000000 - save.totalExp;
            if (save.gOldAscension == false)
            {
                if (save.banned >= 1000)
                {
                    _root.requiredExp += 25000000000000;
                }
                else if (save.banned >= 800)
                {
                    _root.requiredExp += 10000000000 * (save.banned - 800) + 23000000000000;
                }
                else if (save.banned >= 600)
                {
                    _root.requiredExp += 20000000000 * (save.banned - 600) + 19000000000000;
                }
                else if (save.banned >= 400)
                {
                    _root.requiredExp += 30000000000 * (save.banned - 400) + 13000000000000;
                }
                else if (save.banned >= 200)
                {
                    _root.requiredExp += 40000000000 * (save.banned - 200) + 5000000000000;
                }
                else if (save.banned >= 100)
                {
                    _root.requiredExp += 50000000000 * (save.banned - 100);
                }
            }
        }
        else if (save.level == 9000)
        {
            _root.requiredExp = 3000000000000 - save.totalExp;
            if (save.gOldAscension == false)
            {
                if (save.banned >= 1000)
                {
                    _root.requiredExp += 25000000000000;
                }
                else if (save.banned >= 800)
                {
                    _root.requiredExp += 10000000000 * (save.banned - 800) + 23000000000000;
                }
                else if (save.banned >= 600)
                {
                    _root.requiredExp += 20000000000 * (save.banned - 600) + 19000000000000;
                }
                else if (save.banned >= 400)
                {
                    _root.requiredExp += 30000000000 * (save.banned - 400) + 13000000000000;
                }
                else if (save.banned >= 200)
                {
                    _root.requiredExp += 40000000000 * (save.banned - 200) + 5000000000000;
                }
                else if (save.banned >= 100)
                {
                    _root.requiredExp += 50000000000 * (save.banned - 100);
                }
            }
        }

        if (save.level > 9002 || (save.level == 9002 && save.totalExp < 999000000000000))
        {
            save.level = 1;
            save.currentExp = 0;
            save.totalExp = 0;
            save.bestLevel = 1;
        }

        if (save.level == 9002)
        {
            save.currentExp = 0;
            save.totalExp = 999999999999999;
            _root.requiredExp = 1;
        }
        else if (save.level == 9001)
        {
            _root.requiredExp = 999999999999999 - save.totalExp;
        }
    }

    public static void gainWhiteCoinB(double amount, int sauce = 0)
    {
        if (sauce == 0)
        {
            // FIXME: sauce = _root.house._currentframe
            sauce = 0;
        }

        if (amount > 0 && amount != double.PositiveInfinity)
        {
            var multiplier = 1;
            var i = 1;
            while (i <= _root.todayEvent)
            {
                var yy = _root.clock_year % 10;
                var mm = _root.clock_month;
                var dd = _root.clock_date;
                if (_root.eventList[yy][mm][dd][i] ==
                    "Gain 100% more White Coins from all sources except level 9001 reward" && (int)amount < 1000)
                {
                    multiplier += 1;
                }

                i += 1;
            }

            var finalAmnt = Math.Floor(amount * multiplier);
            save.whiteCoinGraph[7] += Math.Floor(amount);
            save.whiteCoinGraph2[7] += Math.Floor(amount * multiplier);
            if (sauce != 9999)
            {
                save.whiteCoinSauce[sauce] += finalAmnt;
                save.whiteCoinSauce[40] += finalAmnt;
                save.whiteCoinTotal[sauce] += finalAmnt;
                save.whiteCoinTotal[40] += finalAmnt;
            }
            else
            {
                save.whiteCoinSauce[41] += finalAmnt;
                save.whiteCoinSauce[40] += finalAmnt;
                save.whiteCoinTotal[41] += finalAmnt;
                save.whiteCoinTotal[40] += finalAmnt;
            }

            var whiteCoinGain = Math.Floor(amount * multiplier);
            save.whiteCoin += whiteCoinGain;
            if (Math.Floor(amount * multiplier) >= 2)
            {
                _root.dispNews(163,
                    "Gained " + Format.withComma(amount * multiplier) + " White Coins! You now have " +
                    Format.withComma(save.whiteCoin) + ".");
            }
            else
            {
                _root.dispNews(163, "Gained 1 White Coin! You now have " + Format.withComma(save.whiteCoin) + ".");
            }
        }
    }

    public static void checkLevel()
    {
        if (save.banned >= 5)
        {
            if (save.reforgingCoin >= 10000000000000)
            {
                save.reforgingOrb1 += Math.Floor(save.reforgingCoin / 10000000000000);
                save.reforgingOrbTotal1 += Math.Floor(save.reforgingCoin / 10000000000000);
                save.reforgingCoin %= 10000000000000;
            }

            if (save.reforgingGreenCoin >= 10000000000)
            {
                save.reforgingOrb2 += Math.Floor(save.reforgingGreenCoin / 10000000000);
                save.reforgingOrbTotal2 += Math.Floor(save.reforgingGreenCoin / 10000000000);
                save.reforgingGreenCoin %= 10000000000;
            }

            if (save.reforgingBlueCoin >= 10000000)
            {
                save.reforgingOrb3 += Math.Floor(save.reforgingBlueCoin / 10000000);
                save.reforgingOrbTotal3 += Math.Floor(save.reforgingBlueCoin / 10000000);
                save.reforgingBlueCoin %= 10000000;
            }

            if ((bool)save["autoAscendEnabled" + save.gDifficulty] && save.gOldAscension != true)
            {
                if (save.level >= 9001)
                {
                    var toAutoAscend = false;
                    if (save.gDifficulty == 1)
                    {
                        if (save.reforgingOrb1 >= 1)
                        {
                            save.reforgingOrb1 -= 1;
                            toAutoAscend = true;
                        }
                    }
                    else if (save.gDifficulty == 2)
                    {
                        if (save.reforgingOrb1 >= 2 && save.reforgingOrb2 >= 1)
                        {
                            save.reforgingOrb1 -= 2;
                            save.reforgingOrb2 -= 1;
                            toAutoAscend = true;
                        }
                    }
                    else if (save.gDifficulty == 3)
                    {
                        if (save.reforgingOrb1 >= 4 && save.reforgingOrb2 >= 2 && save.reforgingOrb3 >= 1)
                        {
                            save.reforgingOrb1 -= 4;
                            save.reforgingOrb2 -= 2;
                            save.reforgingOrb3 -= 1;
                            toAutoAscend = true;
                        }
                    }

                    if (toAutoAscend)
                    {
                        save.ascStupidity = 0;
                        save.progBoxAsc = 0;
                        save.refillAsc = 0;
                        var _loc2_ = 0;
                        while (_loc2_ <= 40)
                        {
                            save.expSauceAsc[_loc2_] = 0;
                            _loc2_ += 1;
                        }

                        if (save.gDifficulty >= 2)
                        {
                            save.bannedHard += 1;
                            save.permaStupidityHard += 1;
                            save.autoAscendCount2 += 1;
                            if (save.speedRunAscendHard > Math.Floor(save.ascendPlayTime / 60))
                            {
                                save.speedRunAscendHard = Math.Floor(save.ascendPlayTime / 60);
                            }
                        }

                        if (save.gDifficulty >= 3)
                        {
                            save.bannedImpossible += 1;
                            save.permaStupidityImpossible += 1;
                            save.autoAscendCount3 += 1;
                            if (save.speedRunAscendImpossible > Math.Floor(save.ascendPlayTime / 60))
                            {
                                save.speedRunAscendImpossible = Math.Floor(save.ascendPlayTime / 60);
                            }
                        }

                        save.level = 8999;
                        if (save.gDifficulty == 3)
                        {
                            save.currentExp = 9718380419960;
                            gainWhiteCoinB(2250, 39);
                            save.stupidity += 9;
                            save.remStupidity += 9;
                            save.totalStupidity += 9;
                        }
                        else if (save.gDifficulty == 2)
                        {
                            save.currentExp = 4859190209980;
                            gainWhiteCoinB(750, 39);
                            save.stupidity += 3;
                            save.remStupidity += 3;
                            save.totalStupidity += 3;
                        }
                        else
                        {
                            save.currentExp = 2429595104990;
                            gainWhiteCoinB(250, 39);
                            save.stupidity += 1;
                            save.remStupidity += 1;
                            save.totalStupidity += 1;
                        }

                        save.totalExp = save.currentExp;
                        save.expLag = 0;
                        if (save.speedRunAscend > Math.Floor(save.ascendPlayTime / 60))
                        {
                            save.speedRunAscend = Math.Floor(save.ascendPlayTime / 60);
                        }

                        save.autoAscendCount1 += 1;
                        save.banned += 1;
                        save.permaStupidity += 1;
                        save.ascendPlayTime = 0;
                        save.seppukuAscension = 0;
                        var _loc3_ = 1;
                        while (_loc3_ <= save.autoAp)
                        {
                            var tmpCost = _loc3_ * (_loc3_ + 1) / 2;
                            if (_loc3_ >= 10)
                            {
                                tmpCost *= _loc3_ - 9;
                            }

                            if (save.remStupidity >= tmpCost)
                            {
                                save.remStupidity -= tmpCost;
                                save.ascStupidity += 1;
                            }

                            _loc3_ += 1;
                        }
                        // FIXME: topbar ascent count
                        // _root.topBar.ascentDisp.ascentText.text = "+" + save.banned;
                    }
                }
            }
        }

        calcReqExp();
        var lfrt = 0;
        double lfrYC = 0;
        double lfrGC = 0;
        double lfrBC = 0;
        var lfr = 1;
        while (lfr <= 1)
        {
            if (save.currentExp >= _root.requiredExp && !double.IsNaN(save.currentExp) &&
                save.currentExp != double.PositiveInfinity && save.level < 9002)
            {
                save.level += 1;
                lfrt += 1;
                if (lfrt < 50 && save.level < 8998)
                {
                    lfr -= 1;
                }

                save.totalExp += _root.requiredExp;
                save.currentExp -= _root.requiredExp;
                if (save.level == 9000)
                {
                    save.currentExp = Math.Floor(save.currentExp / 2);
                }

                if (save.level == 9001)
                {
                    save.currentExp = Math.Floor(save.currentExp / 10);
                }

                lfrYC += 200 * save.level;
                if (save.level % 1000 == 0)
                {
                    lfrBC += save.level;
                }
                else if (save.level % 100 == 0)
                {
                    lfrGC += 10 * save.level;
                }
                else
                {
                    lfrGC += 1 * save.level;
                }

                if (save.showBanner)
                {
                    if (save.level % 1000 == 0 || save.level == 9001 || save.level == 9002)
                    {
                        // FIXME: You are now Lv. ! Popup
                        // _root.accomplishPop.targetX = 10;
                        // _root.accomplishPop.count = 0;
                        // _root.accomplishPop.gotoAndStop(3);
                        // _root.accomplishPop.lolMessage.text = "You are now Lv. " + _root.withComma(save.level) + "! Congratulations!";
                    }
                }

                if (save.questType == "Level Up")
                {
                    save.questCount += 1;
                }

                calcReqExp();
            }

            lfr++;
        }

        if (lfrt > 0)
        {
            if (save.bestLevel < save.level)
            {
                save.bestLevel = save.level;
            }

            if (save.level == 8999)
            {
                save.yoEpicFail = 25465;
                if (save.gDifficulty >= 2)
                {
                    save.coin += save.bankCoin;
                    save.greenCoin += save.bankGreenCoin;
                    save.blueCoin += save.bankBlueCoin;
                    save.bankCoin = 0;
                    save.bankGreenCoin = 0;
                    save.bankBlueCoin = 0;
                    save.featureBoostGen = true;
                    save.featureBoostAuto = true;
                    save.featureGarden = true;
                    save.featureBattleArena = true;
                    save.featureButtonMachine = true;
                    save.featureMoneyPrinter = true;
                    save.featureMysteryShop = true;
                    save.featureArcade = true;
                    save.featureStadium = true;
                    save.featureTukkunFCG = true;
                    save.featureLolMarket = true;
                    save.featureAwesomeAdventures = true;
                    save.featureFishing = true;
                    save.featureEpicLicense = true;
                    save.featureMiniGarden = true;
                    save.featureTravelingTicket = true;
                    save.featureSuperBattery = true;
                    save.featureArcadePack = true;
                    save.featureManualSprayer = true;
                    save.featureSpecialSprayer = true;
                    save.featureDoomSprayer = true;
                    save.featureEnergyToolbar = true;
                    save.featurePremiumSprayer = true;
                    save.boostMax = 1600;
                }
            }
            else if (save.level == 9000)
            {
                if (save.banned < 100)
                {
                    gainWhiteCoinB(1000, 39);
                }
            }
            else if (save.level == 9001)
            {
                if (_root.saveid >= 10 && _root.saveid <= 13)
                {
                    if (double.IsNaN(saveGlobal.challengeTime[0]) ||
                        saveGlobal.challengeTime[0] > Math.Floor(save.ascendPlayTime))
                    {
                        saveGlobal.challengeTime[0] = Math.Floor(save.ascendPlayTime);
                        saveGlobal.challengeAttempted[0] = true;
                        saveGlobal.challengePerfect[0] = true;
                    }
                }

                if (save.speedRun9001 > Math.Floor(save.ascendPlayTime / 60))
                {
                    save.speedRun9001 = Math.Floor(save.ascendPlayTime / 60);
                }

                gainBlueCoin(Math.Min(Math.Floor(_root.finalExp / 200000000), 100000), 39);
                if (save.gOldAscension)
                {
                    if (save.gDifficulty == 3)
                    {
                        gainWhiteCoinB(500, 39);
                    }
                    else if (save.gDifficulty == 2)
                    {
                        gainWhiteCoinB(250, 39);
                    }
                    else if (save.gDifficulty == 1)
                    {
                        gainWhiteCoinB(125, 39);
                    }
                }
                else if (save.gDifficulty == 3)
                {
                    gainWhiteCoinB(1000, 39);
                }
                else if (save.gDifficulty == 2)
                {
                    gainWhiteCoinB(500, 39);
                }
                else if (save.gDifficulty == 1)
                {
                    gainWhiteCoinB(250, 39);
                }
            }
            else if (save.level == 9002)
            {
                if (save.speedRun9002 > Math.Floor(save.ascendPlayTime / 60))
                {
                    save.speedRun9002 = Math.Floor(save.ascendPlayTime / 60);
                }

                save.count9002 += 1;
            }

            gainCoin(lfrYC, 39);
            if (lfrGC > 0)
            {
                gainGreenCoinND(lfrGC, 39);
            }

            if (lfrBC > 0)
            {
                gainBlueCoin(lfrBC, 39);
            }

            gainBoost(100 * lfrt, 1);
            _root.dispNews(2, "LEVEL UP! You are now Lv. " + Format.withComma(save.level) + ".");
            // FIXME: star anim
            // if (_root._quality != "LOW")
            // {
            //     _root.topBar.levelStar.levelAnim._alpha = 100;
            // }
        }

        _root.finalExp = save.currentExp + save.totalExp;
        if (double.IsNaN(_root.finalExp))
        {
            _root.finalExp = 0;
        }

        if (_root.finalExp > 999999999999999)
        {
            _root.finalExp = 999999999999999;
        }

        if (save.bestExp < _root.finalExp)
        {
            save.bestExp = _root.finalExp;
        }

        if (_root.saveid == 23 && save.level >= 3000)
        {
            clearChallenge();
        }
        else if (_root.saveid == 24 && save.level >= 1337)
        {
            clearChallenge();
        }
    }

    public static void clearChallenge()
    {
        if (_root.saveid >= 20)
        {
            save.challengeToken = Math.Floor(_root.saveid * (_root.saveid + 1) * (_root.saveid - 7) * 156.4);
        }
    }

    public static void depleteBoost()
    {
        var ascendBonus = 100 * save.banned;
        if (ascendBonus > 500)
        {
            ascendBonus = 500;
        }

        _root.boostMax = save.boostMax + save.boostZebra + ascendBonus;
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
        var maxAnts = 50.0;
        if (save.boost > _root.boostMax * 2.5)
        {
            save.boost = _root.boostMax * 2.5;
        }

        if (save.boost > _root.boostMax * 1.5)
        {
            antFreq *= 2 + (save.boost - _root.boostMax) / 20 + (save.boost - _root.boostMax * 1.5) / 5;
            maxAnts = Math.Floor(maxAnts *
                                 (2 + (save.boost - _root.boostMax) / 20 + (save.boost - _root.boostMax * 1.5) / 5));
        }
        else if (save.boost > _root.boostMax)
        {
            antFreq *= 2 + (save.boost - _root.boostMax) / 20;
            maxAnts = Math.Floor(maxAnts * (2 + (save.boost - _root.boostMax) / 20));
        }
        else
        {
            antFreq *= 1 + (save.boost - _root.boostMin) / (_root.boostMax - _root.boostMin) * 0.5;
            maxAnts = Math.Floor(
                maxAnts * (1 + (save.boost - _root.boostMin) / (_root.boostMax - _root.boostMin) * 0.5));
        }

        if (save.featureSpecialSprayer)
        {
            maxAnts = Math.Floor(maxAnts * 0.95);
        }

        if (save.permaBanPenalty[9] == 3)
        {
            maxAnts = Math.Floor(maxAnts * 0.8);
        }
        else if (save.permaBanPenalty[9] == 2)
        {
            maxAnts = Math.Floor(maxAnts * 0.88);
        }
        else if (save.permaBanPenalty[9] == 1)
        {
            maxAnts = Math.Floor(maxAnts * 0.92);
        }

        if (save.permaBanPenalty[34] == 3)
        {
            antFreq *= 0.5;
        }
        else if (save.permaBanPenalty[34] == 2)
        {
            antFreq *= 0.7;
        }
        else if (save.permaBanPenalty[34] == 1)
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

        if (save.boost <= _root.boostMin)
        {
            antFreq = 0;
            maxAnts = 0;
            save.boost = _root.boostMin;
        }

        if (save.ants < maxAnts && _root.sprayCooldown1 < 165 && _root.sprayCooldown2 < 540)
        {
            save.ants += Math.Ceiling(FlashRand.random() * maxAnts * antFreq / 100);
        }
        else if (save.ants > maxAnts)
        {
            save.ants -= Math.Ceiling((save.ants - maxAnts) / 2);
        }

        if (save.boostFreeze > 3600)
        {
            save.boostFreeze = 3600;
        }

        if (save.boostFreeze > 0 && save.ants > 0)
        {
            save.boostFreeze -= 1;
        }
        else
        {
            if (save.boost < _root.boostMax * 1.5 || save.ants > 0)
            {
                save.boost -= save.ants / 600;
            }

            save.boostProg = save.boost;
            save.boostExp = save.boost;
            save.boostCoin = save.boost;
        }

        if (save.boost > 500 && _root.saveid == 24)
        {
            save.boost = 500;
        }

        if (save.boostZebra > 300)
        {
            save.boostZebra = 300;
        }

        if (save.refundCooldown > 0)
        {
            save.refundCooldown -= 1;
        }

        if (save.restTime > 0)
        {
            save.restTime -= 1;
        }

        if (save.doubleExpTime > 0)
        {
            save.doubleExpTime -= 1;
            if (save.doubleExpTime <= 0)
            {
                _root.dispNews(129, "1.5x EXP is deactivated.");
            }
        }

        if (save.doubleCoinTime > 0)
        {
            save.doubleCoinTime -= 1;
            if (save.doubleCoinTime <= 0)
            {
                _root.dispNews(129, "1.5x Coin is deactivated.");
            }
        }

        if (save.rewardBotTime > 0)
        {
            save.rewardBotTime -= 1;
            if (save.rewardBotTime >= 3 && save.rewardBotTime < 4)
            {
                _root.dispNews(129, "Idlebot is deactivated.");
            }
        }

        if (save.autoHarvestTime > 0)
        {
            save.autoHarvestTime -= 1;
            if (save.autoHarvestTime >= 3 && save.autoHarvestTime < 4)
            {
                _root.dispNews(129, "Autoharvest is deactivated.");
            }
        }

        if (save.eliteButtonTime > 0)
        {
            save.eliteButtonTime -= 1;
            if (save.eliteButtonTime <= 0)
            {
                _root.dispNews(129, "Invincibility Stars is deactivated.");
            }
        }

        if (save.batteryChargerTime > 0)
        {
            save.batteryChargerTime -= 1;
            if (save.batteryChargerTime >= 3 && save.batteryChargerTime < 4)
            {
                _root.dispNews(129, "Battery Charger is deactivated.");
            }
        }

        if (save.stadiumProTime > 0)
        {
            save.stadiumProTime -= 1;
            if (save.stadiumProTime <= 0)
            {
                _root.dispNews(129, "Stadium Pro is deactivated.");
            }
        }

        if (save.powerUserTime > 0)
        {
            save.powerUserTime -= 1;
            if (save.powerUserTime <= 0)
            {
                _root.dispNews(129, "FCG Power User is deactivated.");
            }
        }

        if (save.demandMasterTime > 0)
        {
            save.demandMasterTime -= 1;
            if (save.demandMasterTime <= 0)
            {
                _root.dispNews(129, "Demand Master is deactivated.");
            }
        }

        if (save.quickAdventuresTime > 0)
        {
            save.quickAdventuresTime -= 1;
            if (save.quickAdventuresTime <= 0)
            {
                _root.dispNews(129, "Quick Adventures is deactivated.");
            }
        }

        if (save.eliteFisherTime > 0)
        {
            save.eliteFisherTime -= 1;
            if (save.eliteFisherTime <= 0)
            {
                _root.dispNews(129, "Elite Fisher is deactivated.");
            }
        }

        if (save.noAntsTime > 0)
        {
            save.noAntsTime -= 1;
            if (save.noAntsTime >= 3 && save.noAntsTime < 4)
            {
                _root.dispNews(129, "Automatic Ant Spray is deactivated.");
            }
        }

        if (save.doubleQuestTime > 0)
        {
            save.doubleQuestTime -= 1;
            if (save.doubleQuestTime <= 0)
            {
                _root.dispNews(129, "2x Random Quest Reward is deactivated.");
            }
        }
    }
}