using System;
using aitg.flash;
using aitg.lib.feature.ba;
using aitg.lib.feature.main;
using Godot;
using static aitg.Globals;
using static aitg.flash.FlashRand;

namespace aitg.MainScreen;

/// <summary>
///     Contains frame13 initialization code and main game loop.
/// </summary>
public partial class MainScene : Node2D
{
    private double delay1sec;
    private double delay5min;
    private double recentReputation;
    private TopBar topBar;

    public static void clearChallenge()
    {
        if (_root.saveid >= 20)
        {
            _root.challengeToken = Math.Floor(_root.saveid * (_root.saveid + 1) * (_root.saveid - 7) * 156.4);
        }
    }

    private static void calcReqExp()
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

    private static void fixStuff()
    {
        if (double.IsNaN(save.currentExp) || double.IsNaN(save.totalExp))
        {
            save.currentExp = 0;
            save.totalExp = 0;
            save.level = 1;
        }

        if (double.IsNaN(save.arenaExp))
        {
            save.arenaExp = 0;
        }

        if (double.IsNaN(save.coin))
        {
            save.coin = 0;
        }

        if (double.IsNaN(save.greenCoin))
        {
            save.greenCoin = 0;
        }

        if (double.IsNaN(save.blueCoin))
        {
            save.blueCoin = 0;
        }
    }

    private static void dispStuff()
    {
        // TODO: tech lights display
        // if (save.featureTechnicalLight == true)
        // {
        //     if (_root.tLight._currentframe != 2)
        //     {
        //         _root.tLight.gotoAndStop(2);
        //     }
        //
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

        // TODO: top bar title display and color
        // TODO: (move this to title display component)
        // if (_root.topBar.titleDisp.titleText.text != save.userTitle)
        // {
        //     _root.topBar.titleDisp.titleText.text = save.userTitle;
        // }
        //
        // titleColor = save.titlered * 65536 + save.titlegreen * 256 + save.titleblue;
        // if (_root.topBar.titleDisp.titleText.textColor != titleColor)
        // {
        //     _root.topBar.titleDisp.nameText.textColor = titleColor;
        //     _root.topBar.titleDisp.titleText.textColor = titleColor;
        // }

        if (_root.saveid >= 10)
        {
            Ascension.dispAsc();
        }
    }

    private static void checkLevel()
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
                        if (save.reforgingOrb1 >= 4 && save.reforgingOrb2 >= 2 &&
                            save.reforgingOrb3 >= 1)
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
                            ExpCoin.gainWhiteCoinB(2250, 39);
                            save.stupidity += 9;
                            save.remStupidity += 9;
                            save.totalStupidity += 9;
                        }
                        else if (save.gDifficulty == 2)
                        {
                            save.currentExp = 4859190209980;
                            ExpCoin.gainWhiteCoinB(750, 39);
                            save.stupidity += 3;
                            save.remStupidity += 3;
                            save.totalStupidity += 3;
                        }
                        else
                        {
                            save.currentExp = 2429595104990;
                            ExpCoin.gainWhiteCoinB(250, 39);
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
                        var i = 1;
                        while (i <= save.autoAp)
                        {
                            var tmpCost = i * (i + 1) / 2;
                            if (i >= 10)
                            {
                                tmpCost *= i - 9;
                            }

                            if (save.remStupidity >= tmpCost)
                            {
                                save.remStupidity -= tmpCost;
                                save.ascStupidity += 1;
                            }

                            i += 1;
                        }
                        // TODO: topbar stuff
                        // _root.topBar.ascentDisp.ascentText.text = "+" + save.banned;
                    }
                }
            }
        }

        calcReqExp();
        var lfrt = 0.0;
        var lfrYC = 0.0;
        var lfrGC = 0.0;
        var lfrBC = 0.0;
        var lfr = 1;
        while (lfr <= 1)
        {
            if (save.currentExp >= _root.requiredExp && !double.IsNaN(save.currentExp) &&
                !double.IsPositiveInfinity(save.currentExp) && save.level < 9002)
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
                        // TODO: accomplishment pop
                        //     _root.accomplishPop.targetX = 10;
                        //     _root.accomplishPop.count = 0;
                        //     _root.accomplishPop.gotoAndStop(3);
                        //     _root.accomplishPop.lolMessage.text = "You are now Lv. " + _root.withComma(save.level) +
                        //                                           "! Congratulations!";
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
                    ExpCoin.gainWhiteCoinB(1000, 39);
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

                ExpCoin.gainBlueCoin(Math.Min(Math.Floor(_root.finalExp / 200000000), 100000), 39);
                if (save.gOldAscension)
                {
                    if (save.gDifficulty == 3)
                    {
                        ExpCoin.gainWhiteCoinB(500, 39);
                    }
                    else if (save.gDifficulty == 2)
                    {
                        ExpCoin.gainWhiteCoinB(250, 39);
                    }
                    else if (save.gDifficulty == 1)
                    {
                        ExpCoin.gainWhiteCoinB(125, 39);
                    }
                }
                else if (save.gDifficulty == 3)
                {
                    ExpCoin.gainWhiteCoinB(1000, 39);
                }
                else if (save.gDifficulty == 2)
                {
                    ExpCoin.gainWhiteCoinB(500, 39);
                }
                else if (save.gDifficulty == 1)
                {
                    ExpCoin.gainWhiteCoinB(250, 39);
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

            ExpCoin.gainCoin(lfrYC, 39);
            if (lfrGC > 0)
            {
                ExpCoin.gainGreenCoinND(lfrGC, 39);
            }

            if (lfrBC > 0)
            {
                ExpCoin.gainBlueCoin(lfrBC, 39);
            }

            ExpCoin.gainBoost(100 * lfrt, 1);
            _root.dispNews(2, "LEVEL UP! You are now Lv. " + Format.withComma(save.level) + ".");
            // TODO: topbar stuff
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

    private static void progressUp()
    {
        double progSpeed = 0;
        if (_root.progPercent < save.progStore)
        {
            if (save.idleMode == false || _root.idlerAppreciate ||
                (_root.saveid >= 10 && _root.saveid < 20))
            {
                if (save.progSpeedManual > save.progSpeedAuto)
                {
                    progSpeed = save.progSpeedManual;
                }
                else
                {
                    progSpeed = save.progSpeedAuto;
                }
            }
            else
            {
                progSpeed = save.progSpeedAuto;
                if (save.careerLevel[1] >= 100)
                {
                    progSpeed += 30;
                }

                progSpeed += _root.curCareerLevel[1] * 0.6;
            }

            progSpeed *= 1 + Math.Min(Math.Floor(save.totalStupidity / 50), 20) * 0.01;
            if (save.permaBanPenalty[31] == 3)
            {
                progSpeed *= 1.25;
            }
            else if (save.permaBanPenalty[31] == 2)
            {
                progSpeed *= 1.15;
            }
            else if (save.permaBanPenalty[31] == 1)
            {
                progSpeed *= 1.1;
            }

            if (save.rewardClaim < 5)
            {
                progSpeed *= 2.5;
            }

            if (save.gDifficulty >= 3 && save.level < 8999)
            {
                progSpeed *= 0.8;
            }
            else if (save.gDifficulty >= 2 && save.level < 8999)
            {
                progSpeed *= 0.9;
            }

            _root.progPercent += 0.02 * (save.boost / 100) * (40 / _root.fps) * (progSpeed / 100);
            if (save.rewardClaim < 5)
            {
                _root.progPercent += 20 / _root.fps;
            }
            else if (save.bestLevel < 35)
            {
                _root.progPercent += 0.125 * (save.boost / 100) * (40 / _root.fps) * (progSpeed / 100);
            }
        }
    }

    private static void lagExp()
    {
        if (save.expLag > 0)
        {
            save.currentExp += Math.Ceiling(save.expLag / 1.1);
            save.expLag -= Math.Ceiling(save.expLag / 1.1);
        }

        if (save.coinLag > 0)
        {
            save.coin += Math.Ceiling(save.coinLag / 1.1);
            save.coinLag -= Math.Ceiling(save.coinLag / 1.1);
        }
    }

    private static void checkMini()
    {
        // TODO: move this code to mini nodes
        // if(save.featureMiniGarden == true || save.autoHarvestTime > 0)
        // {
        //    _root.mini1.gotoAndStop(1);
        //    plantedTrees = 0;
        //    readyTrees = 0;
        //    var _loc2_ = 1;
        //    while(_loc2_ <= save.gardenCapacity)
        //    {
        //       if(save.gardenTrees[_loc2_] > 0 && save.gardenPurchaseTime[_loc2_] + save.gardenExpiryTime[_loc2_] - _root.systemtimenow > 0)
        //       {
        //          plantedTrees += 1;
        //          if(save.gardenRecentTime[_loc2_] + save.gardenHarvestTime[_loc2_] - _root.systemtimenow <= 0)
        //          {
        //             readyTrees += 1;
        //          }
        //       }
        //       _loc2_ += 1;
        //    }
        //    mini1.miniGardenText.text = readyTrees + " / " + plantedTrees;
        //    if(readyTrees > 0)
        //    {
        //       mini1.miniGardenText.textColor = 16776960;
        //       if(save.autoHarvestTime > 0)
        //       {
        //          _root.harvestAllTree();
        //       }
        //    }
        //    else if(plantedTrees == 0)
        //    {
        //       mini1.miniGardenText.textColor = 16711680;
        //    }
        //    else
        //    {
        //       mini1.miniGardenText.textColor = 10066329;
        //    }
        //    if(readyTrees > 0)
        //    {
        //       if(mini1._alpha != 100)
        //       {
        //          mini1._alpha = 100;
        //       }
        //       else
        //       {
        //          mini1._alpha = 50;
        //       }
        //    }
        //    else
        //    {
        //       mini1._alpha = 30;
        //    }
        // }
        // else
        // {
        //    mini1.gotoAndStop(2);
        // }
        // if(save.featureSuperBattery == true)
        // {
        //    mini2.gotoAndStop(1);
        // }
        // else
        // {
        //    mini2.gotoAndStop(2);
        // }
        // if(save.featureEnergyToolbar == true)
        // {
        //    mini3.gotoAndStop(1);
        //    if(save.awesomeEnergy > 0)
        //    {
        //       mini3._alpha = 100;
        //    }
        //    else
        //    {
        //       mini3._alpha = 30;
        //    }
        //    mini3.adventureText.text = save.awesomeEnergy;
        // }
        // else
        // {
        //    mini3.gotoAndStop(2);
        // }
        // if(save.doubleExpTime > 0)
        // {
        //    mini4.gotoAndStop(2);
        //    mini4.timeText.text = _root.convertMin(save.doubleExpTime);
        // }
        // else
        // {
        //    mini4.gotoAndStop(1);
        // }
        // if(save.doubleCoinTime > 0)
        // {
        //    mini5.gotoAndStop(2);
        //    mini5.timeText.text = _root.convertMin(save.doubleCoinTime);
        // }
        // else
        // {
        //    mini5.gotoAndStop(1);
        // }
    }

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        topBar = GetNode<TopBar>("TopBar");

        // Fishing rod unlocks
        _root.fishRodCount = 0;
        var i = 1;
        while (i <= 10)
        {
            if (save.fishRodUnlock[i] == 1)
            {
                _root.fishRodCount += 1;
            }

            if (_root.fishRodCount >= 7)
            {
                save.fishRodUnlock[10] = 1;
            }

            i++;
        }

        // Stadium unlocks
        _root.stadiumHatUnlocked = 0;
        if (save.stadiumRace >= 500 || save.stadiumImpossibleRace >= 25)
        {
            _root.stadiumHatUnlocked += 1;
        }

        if (save.stadiumItem >= 500 || save.stadiumImpossibleItem >= 25)
        {
            _root.stadiumHatUnlocked += 1;
        }

        if (save.stadiumDeathMatch >= 50 || save.stadiumBestDeathMatch >= 1000)
        {
            _root.stadiumHatUnlocked += 1;
        }

        if (save.aceFinish > 0)
        {
            _root.stadiumHatUnlocked += 1;
        }

        if (save.stadiumBetCorrect >= 50)
        {
            _root.stadiumHatUnlocked += 1;
        }

        if (save.stadiumTokenMax >= 1000000)
        {
            _root.stadiumHatUnlocked += 1;
        }

        if (save.stadiumBunnyHat)
        {
            _root.stadiumHatUnlocked += 1;
        }

        if (save.stadiumH1)
        {
            _root.stadiumHatUnlocked += 1;
        }

        if (save.stadiumH2)
        {
            _root.stadiumHatUnlocked += 1;
        }

        if (save.stadiumH3)
        {
            _root.stadiumHatUnlocked += 1;
        }

        // Arcade unranked
        _root.totalUnrankedPower = 0;
        i = 1;
        while (i <= 40)
        {
            _root.totalUnrankedPower += save.unrankedPower[i];
            i++;
        }

        // REST
        _root.totalRestEfficiency = 0;
        i = 1;
        while (i <= 10)
        {
            _root.totalRestEfficiency += save.restEfficiency[i];
            i++;
        }

        Modules.organizeModule();

        // Challenge save specific setup code
        if (save.challengeInit != true)
        {
            save.challengeInit = true;
            if (_root.saveid == 21)
            {
                // Challenge 1
                Ba.getArenaWeapon(100, "Gun", 149, true, 280, 13, 0, 18, 8, 0, 1, 0, 1, 0, 0, 0, "Coin",
                    "Critical Damage", "", 0, float.PositiveInfinity, false, false, false, false, false, 0,
                    "Golden Gun", "", true);
                Ba.getArenaWeapon(125, "Sword", 133, false, 585, 6, 30, 20, 0, 0, 1, 0, 1, 0, 1, 0, "", "", "", 0,
                    float.PositiveInfinity, false, false, false, false, false, 0, "Hero Sword", "", true);
                Ba.getArenaArmor(80, "Hat", 109, 8, 0, 63, 14, 0, 0, 1, 0, 1, 0, 0, 0, "", "", "", 0,
                    float.PositiveInfinity, false, false, false, false, false, 0, "Dragonewyn Hat", "", true);
                Ba.getArenaArmor(80, "Shirt", 109, 8, 0, 82, 10, 0, 0, 1, 0, 1, 0, 0, 0, "", "", "", 0,
                    float.PositiveInfinity, false, false, false, false, false, 0, "Dragonewyn Shirt", "", true);
                Ba.getArenaArmor(80, "Gloves", 109, 16, 0, 50, 14, 0, 0, 1, 0, 1, 0, 0, 0, "", "", "", 0,
                    float.PositiveInfinity, false, false, false, false, false, 0, "Dragonewyn Gloves", "", true);
                Ba.getArenaArmor(80, "Pants", 109, 8, 0, 82, 10, 0, 0, 1, 0, 1, 0, 0, 0, "", "", "", 0,
                    float.PositiveInfinity, false, false, false, false, false, 0, "Dragonewyn Pants", "", true);
                Ba.getArenaArmor(80, "Shoes", 109, 8, 2, 50, 10, 4, 0, 1, 0, 1, 0, 0, 0, "", "", "", 0,
                    float.PositiveInfinity, false, false, false, false, false, 0, "Dragonewyn Shoes", "", true);
                Ba.getArenaAccessory(30, "Pendant", 20, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 10, 756, "", "", "", 0,
                    float.PositiveInfinity, true, false, false, false, 0, "Collector\'s Pendant",
                    "This special item is awarded to help you during Challenge #1. Use it well, and don\'t accidentally sell it! Oh wait, you can\'t even sell it...",
                    true);
            }

            if (_root.saveid == 25)
            {
                // Challenge 5 (fcg)
                save.featureTukkunFCG = true;
                save.fcgLevel = 60;
                save.fcgRewardedLevel = 60;
                save.fcgCash = 60000;
                i = 1;
                while (i <= 248)
                {
                    save.fcgOwned[i] += 6;
                    i++;
                }

                save.fcgChallenge5 = new SparseArray<double>([
                    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0
                ]);
                save.fcgSeriousDeck = 13 + random(53);
            }
        }

        // Epic skills
        _root.totalEpicSkill = 0;
        i = 1;
        while (i <= 7)
        {
            _root.totalEpicSkill += save.epicSkill[i];
            i++;
        }

        // Tracking for total amount of plays
        save.totalPlays += 1;
        if (save.bestLevel < save.level)
        {
            save.bestLevel = save.level;
        }

        if (save.boostPremium > 0)
        {
            save.boostPremium -= 2;
        }

        // Offline progress
        _root.quitDuration = Math.Ceiling((_root.systemtimenow - save.lastPlayed) / 3600000);
        if (_root.quitDuration > 72)
        {
            _root.quitDuration = 72;
        }

        if (_root.saveid >= 10 || save.offlineProgress != true)
        {
            i = 1;
            while (i <= save.gardenCapacity)
            {
                save.gardenRecentTime[i] += _root.systemtimenow - save.lastPlayed;
                save.gardenPurchaseTime[i] += _root.systemtimenow - save.lastPlayed;
                i++;
            }

            save.gardenFertilizerAllow += _root.systemtimenow - save.lastPlayed;
            save.nextWizard += _root.systemtimenow - save.lastPlayed;
            i = 1;
            while (i <= 3000)
            {
                if (save.inventoryExist[i] == 1 && save.inventoryExpiry[i] != float.PositiveInfinity)
                {
                    save.inventoryExpiry[i] += _root.systemtimenow - save.lastPlayed;
                }

                i++;
            }
        }

        if (_root.quitDuration > 0 && _root.saveid < 10 && save.offlineProgress)
        {
            if (save.curBusiness != 0)
            {
                var businessOff = Math.Floor((_root.systemtimenow - save.lastPlayed) / 1000);
                if (businessOff < 0)
                {
                    businessOff = 0;
                }

                if (businessOff > 86400)
                {
                    businessOff = 86400;
                }

                save.curBusinessOffline += businessOff;
            }

            if (_root.quitDuration > 1 && save.bestLevel >= 25)
            {
                // FIXME: offlineProgress display
                //_root.offlineProg.gotoAndStop(2);
                if (save.awesomeEnergy < save.awesomeMaxEnergy * 5)
                {
                    save.awesomeEnergy = save.awesomeMaxEnergy * 5;
                }

                save.fishFatigue -= 1200 * (_root.quitDuration - 1);
                if (save.permaBanPenalty[22] == 3)
                {
                    save.fishFatigue -= 1200 * (_root.quitDuration - 1);
                }
                else if (save.permaBanPenalty[22] == 2)
                {
                    save.fishFatigue -= 720 * (_root.quitDuration - 1);
                }
                else if (save.permaBanPenalty[22] == 1)
                {
                    save.fishFatigue -= 480 * (_root.quitDuration - 1);
                }
            }

            if (save.petExist == 1)
            {
                var petFullnessDrop = _root.quitDuration * 2;
                if (petFullnessDrop > 72)
                {
                    petFullnessDrop = 72;
                }

                if (save.careerLevel[11] >= 100)
                {
                    petFullnessDrop = Math.Floor(petFullnessDrop / 2);
                }

                if (save.petFullness >= petFullnessDrop)
                {
                    save.petFullness -= petFullnessDrop;
                    _root.dispNews(149,
                        "Pet Fullness decreased! (-" + petFullnessDrop + ") / Remaining: " + save.petFullness);
                }
                else
                {
                    save.petHealth -= petFullnessDrop - save.petFullness;
                    _root.dispNews(149, "Pet Fullness decreased! (-" + save.petFullness + ") / Remaining: 0");
                    _root.dispNews(150,
                        "Pet Health decreased! (-" + (petFullnessDrop - save.petFullness) + ") / Remaining: " +
                        save.petHealth);
                    save.petFullness = 0;
                    if (save.petHealth > 0)
                    {
                        _root.dispNews(152, "Your pet is VERY hungry. Feed it before it dies.");
                    }
                    else
                    {
                        Pet.killPet();
                    }
                }
            }
        }

        if (save.longestQuit < _root.quitDuration)
        {
            save.longestQuit = _root.quitDuration;
        }

        save.lastPlayed = _root.systemtimenow;

        // Progress bar
        _root.progPercent = 0;
        _root.printPercent = 0;
        // Entity global counter, lag count
        _root.mainSummonCount = 0;
        _root.mainAntiLag = 0;

        recentReputation = save.awesomeReputation;

        // Game loop timers
        delay1sec = 0;
        delay5min = 0;

        if (save.bestLevel < save.level)
        {
            save.bestLevel = save.level;
        }

        if (save.boostPremium > 0)
        {
            save.boostPremium -= 2;
        }

        Career.checkCareer();
        ExpCoin.checkLevel();
        ExpCoin.depleteBoost();
        Garden.checkExpiry();
        Lolmarket.updateMarket();
        Ba.trackZoneKill();
        Ba.checkBestiary();
        Achievements.checkAchievements();
        Ba.checkFullInventory();
        dispStuff();
        checkMini();
    }

    // Called every frame. 'delta' is the elapsed time since the previous frame.
    public override void _Process(double delta)
    {
        // TODO: topbar display
        // if (_root.topBar.levelStar.levelAnim._alpha > 0)
        // {
        //     _root.topBar.levelStar.levelAnim._alpha -= 2;
        // }

        // TODO: instaprogress shortcuts
        // if (Key.isDown(73) && Key.isDown(80))
        // {
        //     _root.toBuyInsta += 1;
        //     if (_root.toBuyInsta >= 40 && _root.toBuyInsta <= 600)
        //     {
        //         instaToBuy = _root.toBuyInsta * 2 - 80;
        //         instaMax = Math.Floor(save.coin / 75000000);
        //         if (instaToBuy > instaMax)
        //         {
        //             instaToBuy = instaMax;
        //         }
        //
        //         save.coin -= instaToBuy * 75000000;
        //         _root.progPercent += instaToBuy * 100;
        //     }
        // }
        // else
        // {
        //     _root.toBuyInsta = 0;
        // }

        _root.scrollingDir = 0;
        _root.annUpdate -= 1;
        if (_root.saveid >= 20)
        {
            if (save.totalPlayTime >= 1800)
            {
                saveGlobal.challengeAttempted[_root.saveid - 20] = true;
            }

            if (save.challengeToken == Math.Floor(_root.saveid * (_root.saveid + 1) * (_root.saveid - 7) * 156.4))
            {
                if (double.IsNaN(save.challengeTime))
                {
                    save.challengeTime = save.totalPlayTime;
                }

                if (double.IsNaN(saveGlobal.challengeTime[_root.saveid - 20]) ||
                    saveGlobal.challengeTime[_root.saveid - 20] > save.challengeTime)
                {
                    saveGlobal.challengeTime[_root.saveid - 20] = save.challengeTime;
                }

                if (_root.systemtimenow < _root.challengeDeadline)
                {
                    saveGlobal.challengePerfect[_root.saveid - 20] = true;
                }
            }
        }

        if (save.rewardBotTime > 0)
        {
            if (_root.cursoridle > 10 + save.progStore * 0.01)
            {
                if (_root.progPercent < 50 && save.rewardBotTime > 10)
                {
                    save.idleMode = false;
                }
                else
                {
                    save.idleMode = true;
                }
            }
            else
            {
                save.idleMode = false;
            }
        }

        // TODO: key handlers
        // if (Key.isDown(112))
        // {
        //     save.noHelp = 1337;
        // }

        // TODO: key handlers
        // if (Key.isDown(17) && Key.isDown(83) && tempStatHold != true)
        // {
        //     tempStatHold = true;
        //     if (_root.optionsScreen._currentframe != 5)
        //     {
        //         _root.optionsScreen.gotoAndStop(5);
        //     }
        //     else
        //     {
        //         _root.optionsScreen.gotoAndStop(1);
        //     }
        //
        //     _root.actiondescription = "";
        //     _root.actiondescription = "";
        // }
        // else if (!Key.isDown(83))
        // {
        //     tempStatHold = false;
        // }

        save.boostExp = save.boost;
        save.boostCoin = save.boost;
        if (_root.fcgCooldown > 0 && !double.IsNaN(_root.fcgCooldown))
        {
            _root.fcgCooldown -= 1 / _root.fps;
        }

        save.progBoxNext -= 1 / _root.fps;
        if (save.progBoxNext < 0)
        {
            save.progBoxNext = 0;
        }

        save.refillNext -= 1 / _root.fps;
        if (save.refillNext < 0)
        {
            save.refillNext = 0;
        }

        delay1sec += 1 / _root.fps;
        delay5min += 1 / _root.fps;
        fixStuff();
        checkLevel();
        progressUp();
        lagExp();
        if (save.featureMoneyPrinter)
        {
            Printer.checkPrinter();
        }

        if (save.coin > 999999999999999)
        {
            save.coin = 999999999999999;
        }

        if (save.greenCoin > 999999999999)
        {
            save.greenCoin = 999999999999;
        }

        if (save.blueCoin > 999999999)
        {
            save.blueCoin = 999999999;
        }

        if (save.whiteCoin > 999999)
        {
            save.whiteCoin = 999999;
        }

        // TODO: topbar stuff (move to topbar node)
        topBar.coinText.Text = Format.withComma(save.coin);
        if (save.coin >= 1000000000000)
        {
            topBar.coinText.Text = "    " + Format.withComma(save.coin);
        }
        //
        // _root.topBar.greenCoinText.text = _root.withComma(save.greenCoin);
        // if (save.greenCoin >= 1000000000)
        // {
        //     _root.topBar.greenCoinText.text = "    " + _root.dispOverGC();
        // }
        //
        // _root.topBar.blueCoinText.text = _root.withComma(save.blueCoin);
        // if (save.blueCoin >= 1000000)
        // {
        //     _root.topBar.blueCoinText.text = "    " + _root.dispOverBC();
        // }

        if (save.noob > 4000)
        {
            save.noob = 0;
        }

        if (save.noob > 3000)
        {
            save.noob = 3000;
        }

        if (save.progSpeedAuto > 200)
        {
            save.progSpeedAuto = 1;
        }

        if (save.progSpeedManual > 500)
        {
            save.progSpeedManual = 1;
        }

        if (save.gardenPoint > 9999999)
        {
            save.gardenPoint = 9999999;
            save.gardenPointMax = 9999999;
        }

        var bonusStatPct = save.bannedB;
        if (bonusStatPct > 100)
        {
            bonusStatPct = 100;
        }

        if (double.IsNaN(bonusStatPct))
        {
            bonusStatPct = 0;
        }

        if (save.arenaAttack > 90000 + bonusStatPct * 900)
        {
            save.arenaAttack = 90000 + bonusStatPct * 900;
        }

        if (save.arenaDefense > 90000 + bonusStatPct * 900)
        {
            save.arenaDefense = 90000 + bonusStatPct * 900;
        }

        if (save.arenaAccuracy > 18000 + bonusStatPct * 180)
        {
            save.arenaAccuracy = 18000 + bonusStatPct * 180;
        }

        if (save.arenaEvasion > 18000 + bonusStatPct * 180)
        {
            save.arenaEvasion = 18000 + bonusStatPct * 180;
        }

        if (save.arenaMaxHealth > 900000 + bonusStatPct * 9000)
        {
            save.arenaMaxHealth = 900000 + bonusStatPct * 9000;
        }

        if (save.arenaMaxMana > 360000 + bonusStatPct * 3600)
        {
            save.arenaMaxMana = 360000 + bonusStatPct * 3600;
        }

        if (save.arenaCrystal1 > 9999)
        {
            save.arenaCrystal1 = 9999;
        }

        if (save.arenaCrystal2 > 9999)
        {
            save.arenaCrystal2 = 9999;
        }

        if (save.arenaPixel > 999999999999)
        {
            save.arenaPixel = 999999999999;
        }

        if (save.arenaCraft > 999999999999)
        {
            save.arenaCraft = 999999999999;
        }

        if (double.IsNaN(save.arenaPixel))
        {
            save.arenaPixel = 0;
        }

        if (double.IsNaN(save.arenaCraft))
        {
            save.arenaCraft = 0;
        }

        if (save.arenaSuperiorCraft > 9999999)
        {
            save.arenaSuperiorCraft = 9999999;
        }

        if (save.arenaUnobtainium > 9999999)
        {
            save.arenaUnobtainium = 9999999;
        }

        if (save.arenaTukkonium > 9999999)
        {
            save.arenaTukkonium = 9999999;
        }

        if (save.arenaEnhancerFragment > 9999999)
        {
            save.arenaEnhancerFragment = 9999999;
        }

        if (save.arenaChaoticFragment > 9999999)
        {
            save.arenaChaoticFragment = 9999999;
        }

        if (save.arenaProofTraining > 9999999)
        {
            save.arenaProofTraining = 9999999;
        }

        if (save.arenaProofMission > 9999999)
        {
            save.arenaProofMission = 9999999;
        }

        if (save.arenaNerfGem > 9999999)
        {
            save.arenaNerfGem = 9999999;
        }

        if (save.arenaBacon > 9999999)
        {
            save.arenaBacon = 9999999;
        }

        if (save.robaconBacon > 9999999)
        {
            save.robaconBacon = 9999999;
        }

        if (save.restTime > 360000)
        {
            save.restTime = 360000;
        }

        if (save.doubleExpTime > 360000)
        {
            save.doubleExpTime = 360000;
        }

        if (save.doubleCoinTime > 360000)
        {
            save.doubleCoinTime = 360000;
        }

        if (save.rewardBotTime > 360000)
        {
            save.rewardBotTime = 360000;
        }

        if (save.autoHarvestTime > 360000)
        {
            save.autoHarvestTime = 360000;
        }

        if (save.eliteButtonTime > 360000)
        {
            save.eliteButtonTime = 360000;
        }

        if (save.batteryChargerTime > 360000)
        {
            save.batteryChargerTime = 360000;
        }

        if (save.stadiumProTime > 360000)
        {
            save.stadiumProTime = 360000;
        }

        if (save.powerUserTime > 360000)
        {
            save.powerUserTime = 360000;
        }

        if (save.demandMasterTime > 360000)
        {
            save.demandMasterTime = 360000;
        }

        if (save.quickAdventuresTime > 360000)
        {
            save.quickAdventuresTime = 360000;
        }

        if (save.eliteFisherTime > 360000)
        {
            save.eliteFisherTime = 360000;
        }

        if (save.awesomeReputation > 999999)
        {
            save.awesomeReputation = 999999;
        }

        if (save.awesomeReputation < -999999)
        {
            save.awesomeReputation = -999999;
        }

        if (save.awesomeMaxReputation > 999999)
        {
            save.awesomeMaxReputation = 999999;
        }

        if (save.gardenFertilizer > 9999)
        {
            save.gardenFertilizer = 9999;
        }

        if (save.gardenMegaFertilizer > 9999)
        {
            save.gardenMegaFertilizer = 9999;
        }

        if (save.awesomeRefill > 9999)
        {
            save.awesomeRefill = 9999;
        }

        if (save.boostPotion > 9999)
        {
            save.boostPotion = 9999;
        }

        if (save.megaBoostPotion > 9999)
        {
            save.megaBoostPotion = 9999;
        }

        if (delay1sec >= 1)
        {
            dispStuff();
            checkMini();
            if (save.reforgeMode == 2)
            {
                var coinToReforge = Math.Floor(save.coin * 0.001);
                save.reforgingCoin += coinToReforge;
                save.coin -= coinToReforge;
                coinToReforge = Math.Floor(save.greenCoin * 0.001);
                save.reforgingGreenCoin += coinToReforge;
                save.greenCoin -= coinToReforge;
                coinToReforge = Math.Floor(save.blueCoin * 0.001);
                save.reforgingBlueCoin += coinToReforge;
                save.blueCoin -= coinToReforge;
            }

            if (save.coin > 999999999999)
            {
                save.coinOvercap += 1;
            }
            else
            {
                save.coinOvercap = 0;
            }

            if (save.greenCoin > 999999999)
            {
                save.greenCoinOvercap += 1;
            }
            else
            {
                save.greenCoinOvercap = 0;
            }

            if (save.blueCoin > 999999)
            {
                save.blueCoinOvercap += 1;
            }
            else
            {
                save.blueCoinOvercap = 0;
            }

            save.pokayCD[1] -= 1;
            save.pokayCD[2] -= 1;
            save.pokayCD[3] -= 1;
            save.pokayCD[4] -= 1;
            save.pokayCD[5] -= 1;
            save.pokayCD[6] -= 1;
            save.pokayCD[7] -= 1;
            if (_root.saveid <= 3)
            {
                var ptd = Math.Floor(save.totalPlayTime / 86400) + " days";
                if (save.totalPlayTime < 3600)
                {
                    ptd = Math.Floor(save.totalPlayTime / 60) + " min.";
                }
                else if (save.totalPlayTime < 176800)
                {
                    ptd = Math.Floor(save.totalPlayTime / 3600) + " hr.";
                }

                saveGlobal.playTime[_root.saveid] = ptd;
                saveGlobal.curLevel[_root.saveid] = Format.withComma(save.level);
                saveGlobal.ascCount[_root.saveid] = save.banned;
            }

            // TODO: cyborg
            // checkCyborg();
            if (save.whiteCoinRefund > 0)
            {
                var tempWcEarn = Math.Min(save.whiteCoinRefund, 999999 - save.whiteCoin);
                save.whiteCoin += tempWcEarn;
                save.whiteCoinRefund -= tempWcEarn;
            }

            if (_root.towerCooldown > 0)
            {
                _root.towerCooldown -= 1;
            }

            _root.sprayCooldown1 -= 1;
            _root.sprayCooldown2 -= 1;
            _root.cursoridle += 1;
            if (save.maxAchievement < _root.awards)
            {
                save.maxAchievement = _root.awards;
            }

            if (save.curBusiness != 0)
            {
                save.curBusinessOnline += 1;
            }

            _root.sessionTimeLeft -= 1;
            _root.thisSession += 1;
            if (save.longestSession < _root.thisSession)
            {
                save.longestSession = _root.thisSession;
            }

            if (_root.sessionTimeLeft < 0)
            {
                // TODO: you lost the game frame (or delete this)
                // _root.gotoAndStop(16);
            }

            save.totalPlayTime += 1;
            save.ascendPlayTime += 1;
            save.houseVer -= 1;
            _root.failGrammar -= 1;
            if (save.noAntsTime > 0)
            {
                if (_root.sprayCooldown1 <= 0 && save.ants > 0)
                {
                    _root.sprayCooldown1 = 180;
                    save.antsSprayed += Math.Ceiling(save.ants * 0.9);
                    save.ants = Math.Floor(save.ants * 0.1);
                }

                if (save.featureDoomSprayer)
                {
                    if (_root.sprayCooldown2 <= 0 && save.ants > 0)
                    {
                        _root.sprayCooldown2 = 600;
                        save.antsSprayed += save.ants + 99;
                        save.ants = -99;
                    }
                }
            }

            Career.checkCareer();
            Achievements.checkAchievements();
            ExpCoin.depleteBoost();
            if (save.featureGarden)
            {
                Garden.checkExpiry();
            }

            if (save.featureButtonMachine)
            {
                var grandpaClickRate = save.buttonGrandpaSpeed * 0.01;
                var grandpaExcellentRate = save.buttonGrandpaAccuracy * 0.04;
                var grandpaExp = 0.0;
                var grandpaCoin = 0.0;
                var grandpaGreenCoin = 0;
                var grandpaBlueCoin = 0;
                var grandpaCareer = 0;
                var tmashbonusb = Math.Floor(Math.Sqrt(save.buttonPress * 0.5));
                var tmashbonusd = save.buttonMultiplier;
                if (tmashbonusb > 2500)
                {
                    tmashbonusb = 2500;
                }

                var tmul = Math.Floor(100 + (tmashbonusb + tmashbonusd));
                if (save.eliteButtonTime > 0)
                {
                    tmul += 200;
                }

                // TODO: current feature check
                if ( /*_root.house._currentframe != 8*/ true)
                {
                    grandpaClickRate = grandpaClickRate * save.buttonGrandpaDiscipline * 0.02;
                    grandpaExcellentRate = grandpaExcellentRate * save.buttonGrandpaDiscipline * 0.02;
                }

                var i = 1;
                while (i <= save.buttonGrandpa)
                {
                    if (random() < grandpaClickRate)
                    {
                        var grandpaPerf = 89;
                        var grandpaRating = 4;
                        if (save.questType == "Press")
                        {
                            if (save.questSubtype == "Any")
                            {
                                save.questCount += 1;
                            }
                        }

                        if (random() < grandpaExcellentRate)
                        {
                            grandpaPerf = 97;
                            grandpaRating = 6;
                            if (save.questType == "Press")
                            {
                                if (save.questSubtype == "Great")
                                {
                                    save.questCount += 1;
                                }

                                if (save.questSubtype == "Excellent")
                                {
                                    save.questCount += 1;
                                }
                            }

                            if (random() < 0.25)
                            {
                                grandpaPerf = 99;
                                grandpaRating = 7;
                                if (save.questType == "Press")
                                {
                                    if (save.questSubtype == "Perfect")
                                    {
                                        save.questCount += 1;
                                    }
                                }
                            }
                        }
                        else if (random() < 0.5)
                        {
                            grandpaPerf = 94;
                            grandpaRating = 5;
                            if (save.questType == "Press")
                            {
                                if (save.questSubtype == "Great")
                                {
                                    save.questCount += 1;
                                }
                            }
                        }

                        save.buttonPress += 1;
                        save.buttonGrandpaPress += 1;
                        var grandpaReward = Math.Floor(Math.Pow(save.level * grandpaPerf * grandpaRating, 0.6) *
                            tmul / 100);
                        grandpaExp += Math.Floor(grandpaReward * save.boost / 100 * 0.175 *
                                                 (1 + _root.curCareerLevel[5] * 0.005) *
                                                 (1 + save.petStat[3] * 0.002));
                        grandpaCoin += Math.Floor(grandpaReward * save.boost / 100 * 0.05 *
                                                  (1 + _root.curCareerLevel[5] * 0.005));
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
                            if (save.permaBanPenalty[18] == 3)
                            {
                                save.buttonPurple += 1;
                            }
                            else if (save.permaBanPenalty[18] == 2 && random() < 0.75)
                            {
                                save.buttonPurple += 1;
                            }
                            else if (save.permaBanPenalty[18] == 1 && random() < 0.5)
                            {
                                save.buttonPurple += 1;
                            }

                            if (save.careerLevel[5] >= 200)
                            {
                                _root.progPercent += 30;
                            }
                        }

                        if (grandpaRating == 7)
                        {
                            save.buttonPerfect += 1;
                            save.buttonPurple += 1;
                            if (save.permaBanPenalty[18] == 3)
                            {
                                save.buttonPurple += 1;
                            }
                            else if (save.permaBanPenalty[18] == 2 && random() < 0.25)
                            {
                                save.buttonPurple += 1;
                            }

                            grandpaGreenCoin += 1000;
                            grandpaBlueCoin += 2;
                            grandpaCareer += 50;
                            if (save.careerLevel[5] >= 100)
                            {
                                _root.progPercent += 100;
                            }
                        }
                    }

                    i++;
                }

                if (save.permaBanPenalty[24] == 3)
                {
                    grandpaExp = Math.Floor(grandpaExp * 3);
                }
                else if (save.permaBanPenalty[24] == 2)
                {
                    grandpaExp = Math.Floor(grandpaExp * 2.2);
                }
                else if (save.permaBanPenalty[24] == 1)
                {
                    grandpaExp = Math.Floor(grandpaExp * 1.8);
                }

                ExpCoin.gainEXP(grandpaExp, 8);
                ExpCoin.gainCoin(grandpaCoin, 8);
                ExpCoin.gainGreenCoin(grandpaGreenCoin, 9);
                ExpCoin.gainBlueCoin(grandpaBlueCoin, 9);
                Career.gainCareerEXP(5, Math.Ceiling(grandpaCareer * tmul / 1000), true);
            }

            if (save.featureAwesomeAdventures)
            {
                if (save.awesomeEnergyNext < -1800)
                {
                    save.awesomeEnergyNext = -1800;
                }

                if (save.awesomeEnergy < save.awesomeMaxEnergy * 5)
                {
                    save.awesomeEnergyNext -= 1;
                }

                var rgn = 0;
                while (save.awesomeEnergyNext <= 0 &&
                       save.awesomeEnergy < save.awesomeMaxEnergy * 5 + 15)
                {
                    var rdx = save.awesomeEnergyNext;
                    save.awesomeEnergyNext = 300 - _root.curCareerLevel[10];
                    if (save.quickAdventuresTime > 0)
                    {
                        save.awesomeEnergyNext = Math.Floor(save.awesomeEnergyNext / 2);
                    }

                    var index = 1;
                    while (index <= _root.todayEvent)
                    {
                        var yy = _root.clock_year % 10;
                        var mm = _root.clock_month;
                        var dd = _root.clock_date;
                        if (_root.eventList[yy][mm][dd][index] == "Wait time for Adventure Energy is reduced by 25%")
                        {
                            save.awesomeEnergyNext = Math.Floor(save.awesomeEnergyNext * 0.75);
                        }

                        index++;
                    }

                    if (save.restTime > 0)
                    {
                        save.awesomeEnergyNext = Math.Floor(save.awesomeEnergyNext *
                                                            (0.9 - save.restEfficiency[9] * 0.01));
                    }

                    save.awesomeEnergyNext += rdx;
                    rgn += 1;
                    save.awesomeEnergy += 1;
                }

                if (rgn > 0)
                {
                    _root.dispNews(112,
                        "Adventure Energy gained! (" + (save.awesomeEnergy - rgn) + " --> " +
                        save.awesomeEnergy + ")");
                }

                if (save.awesomeEnergy >= save.awesomeMaxEnergy * 5 + 15)
                {
                    save.awesomeEnergy -= 15;
                    save.awesomeRefill += 1;
                    _root.dispNews(112, "15 Adventure Energy has been converted to 1 Energy Refill!");
                }
            }

            if (_root.mainAntiLag > 160)
            {
                _root.mainAntiLag = 0;
            }

            if (random() < 0.05)
            {
                Lolmarket.updateMarket();
            }

            save.lolCooldown -= 1;
            if (save.coinMax > 999999999999999)
            {
                save.coinMax = 999999999999999;
            }

            if (save.greenCoinMax > 999999999999)
            {
                save.greenCoinMax = 999999999999;
            }

            if (save.blueCoinMax > 999999999)
            {
                save.blueCoinMax = 999999999;
            }

            if (save.whiteCoinMax > 999999)
            {
                save.whiteCoinMax = 999999;
            }

            if (save.coinMax < save.coin)
            {
                save.coinMax = save.coin;
            }

            if (save.greenCoinMax < save.greenCoin)
            {
                save.greenCoinMax = save.greenCoin;
            }

            if (save.blueCoinMax < save.blueCoin)
            {
                save.blueCoinMax = save.blueCoin;
            }

            if (save.whiteCoinMax < save.whiteCoin)
            {
                save.whiteCoinMax = save.whiteCoin;
            }

            if (save.gardenPointMax < save.gardenPoint)
            {
                save.gardenPointMax = save.gardenPoint;
            }

            if (save.gardenFruitMax < save.gardenFruit)
            {
                save.gardenFruitMax = save.gardenFruit;
            }

            if (save.arenaPixelMax < save.arenaPixel)
            {
                save.arenaPixelMax = save.arenaPixel;
            }

            if (save.arenaCraftMax < save.arenaCraft)
            {
                save.arenaCraftMax = save.arenaCraft;
            }

            if (save.stadiumTokenMax < save.stadiumToken)
            {
                save.stadiumTokenMax = save.stadiumToken;
            }

            if (save.lolMaxProfit < save.lolProfit)
            {
                save.lolMaxProfit = save.lolProfit;
            }

            if (save.awesomeMaxReputation < Math.Abs(save.awesomeReputation))
            {
                save.awesomeMaxReputation = Math.Abs(save.awesomeReputation);
            }

            if (save.awesomeReputation != recentReputation)
            {
                _root.dispNews(113,
                    "Adventure Reputation: " + Format.withComma(recentReputation) + " --> " +
                    Format.withComma(save.awesomeReputation));
                var repChange = Math.Abs(save.awesomeReputation - recentReputation);
                if (repChange > 100)
                {
                    repChange = 100;
                }

                Career.gainCareerEXP(10, 10 * repChange, true);
                recentReputation = save.awesomeReputation;
            }

            if (save.batteryChargerTime > 0 && save.printerCharge < 400)
            {
                save.totalPrinterCharge += Math.Ceiling((400 - save.printerCharge) / 10);
                save.printerCharge += Math.Ceiling((400 - save.printerCharge) / 10);
            }

            if (_root.thisSession / 6 == Math.Floor(_root.thisSession / 6))
            {
                if (_root.cursoridle >= 600)
                {
                    Career.gainCareerEXP(1, 250, true);
                }
                else if (_root.cursoridle >= 300)
                {
                    Career.gainCareerEXP(1, 100, true);
                }
                else if (_root.cursoridle >= 60)
                {
                    Career.gainCareerEXP(1, 50, true);
                }
                else if (_root.cursoridle >= 30)
                {
                    Career.gainCareerEXP(1, 25, true);
                }
                else if (_root.cursoridle >= 6)
                {
                    Career.gainCareerEXP(1, 10, true);
                }
                else if (_root.thisSession / 30 == Math.Floor(_root.thisSession / 30))
                {
                    Career.gainCareerEXP(1, 10, true);
                }
            }

            if (save.idleMode == false && save.doingItWrong < _root.cursoridle)
            {
                save.doingItWrong = _root.cursoridle;
            }

            var j = 1;
            while (j <= 16)
            {
                if (save.careerBoost[j] > 0)
                {
                    save.careerBoost[j] -= 1;
                    if (save.careerBoost[j] <= 0)
                    {
                        save.careerBoost[j] = 0;
                        _root.dispNews(158, "[" + _root.careerName[j] + "] Career is no longer blessed!");
                    }
                }
                else if (save.careerActive[j] > 0)
                {
                    save.careerActive[j] -= 1;
                    if (save.careerActive[j] <= 0)
                    {
                        save.careerActive[j] = 0;
                        _root.dispNews(145, "[" + _root.careerName[j] + "] Career is deactivated!");
                    }
                }

                j++;
            }

            save.lastPlayed = _root.systemtimenow;
            delay1sec -= 1;
        }

        if (delay5min >= 300)
        {
            if (save.boost < _root.boostMax * 1.5 - 1 && save.boostPotion >= 1 &&
                save.boostAuto)
            {
                save.boostPotion -= 1;
                ExpCoin.gainBoost(9999, 3);
                if (save.boostFreeze < 45 + Math.Min(Math.Floor(save.totalStupidity / 500), 250))
                {
                    save.boostFreeze = 45 + Math.Min(Math.Floor(save.totalStupidity / 500), 250);
                }
            }

            if (save.gDifficulty == 1 || save.level >= 8999)
            {
                save.gardenFullness -= 50;
            }
            else if (save.gDifficulty == 2)
            {
                save.gardenFullness -= 20;
            }
            else if (save.gDifficulty == 3)
            {
                save.gardenFullness -= 5;
            }

            if (save.gardenFullness < 0)
            {
                save.gardenFullness = 0;
            }

            if (_root.saveid >= 10)
            {
                save.speedRunCoin += 1;
                save.speedRunNextDay -= 5;
                if (save.speedRunNextDay <= 0)
                {
                    _root.anotherDay = true;
                    save.speedRunNextDay = 1440;
                }
                else if (_root.saveid >= 20)
                {
                    _root.dispNews(159,
                        "[CHALLENGE] Next day will begin in " + Format.withComma(save.speedRunNextDay) +
                        " minutes.");
                }
                else
                {
                    _root.dispNews(159,
                        "[SPEEDRUN] Next day will begin in " + Format.withComma(save.speedRunNextDay) +
                        " minutes.");
                }
            }

            if (save.hyperDay[1] != _root.todayCode && save.hyperDay[2] != _root.todayCode)
            {
                // TODO: gain event token
                // _root.gainEventToken(10);
            }

            if (save.boostPremium > 0)
            {
                save.boostPremium -= 2;
            }

            var fatigueRestore = 100.0;
            if (save.permaBanPenalty[22] == 3)
            {
                fatigueRestore += 100;
            }
            else if (save.permaBanPenalty[22] == 2)
            {
                fatigueRestore += 60;
            }
            else if (save.permaBanPenalty[22] == 1)
            {
                fatigueRestore += 40;
            }

            if (save.restTime > 0)
            {
                if (random() < 0.2)
                {
                    fatigueRestore = Math.Floor(fatigueRestore * (1.5 + save.restEfficiency[10] * 0.05));
                }
            }

            save.fishFatigue -= fatigueRestore;
            if (_root.cursoridle < 300 || (_root.cursoridle < 129600 && random() < 0.3))
            {
                // TODO: pet
                // checkPet();
            }

            var autoSaveX = true;
            // TODO: feature check
            if ( /*_root.house._currentframe == 10*/ false)
            {
                autoSaveX = false;
            }

            // TODO: feature check
            if ( /*_root.house._currentframe == 22*/true && _root.fishStatus == 2)
            {
                autoSaveX = false;
            }

            if (autoSaveX)
            {
                // TODO save saves
                // _root.my_so.flush();
            }

            _root.recMys = _root.systemtimenow;
            var i = 1;
            while (i <= _root.autoUpdateTime.Count - 1)
            {
                if (_root.systemtimenow > _root.autoUpdateTime[i] && save.au < i)
                {
                    save.au = i;
                }

                i++;
            }

            delay5min = 0;
        }
    }
}