using System;
using aitg.flash;
using aitg.lib.feature.main;

namespace aitg;

using static Globals;
using static FlashRand;

public static class Printer
{
    private static void printMoney(double moneyToPrintX)
    {
        _root.printPercent = 0;
        if (save.printerCharge > 0)
        {
            if (save.questType == "Print")
            {
                if (save.questSubtype == "Any")
                {
                    save.questCount += 1;
                }
            }

            save.printerCharge -= 1;
            if (save.printerCharge > 160)
            {
                save.printerCharge -= 4;
            }

            if (save.printerCharge > 1000)
            {
                save.printerCharge = 1000;
            }

            if (random() < Math.Min(Math.Floor(save.totalStupidity / 20), 25) * 0.04)
            {
                ExpCoin.gainBlueCoin(1, 9);
            }

            _root.dispNews(75, "Money printed! (+" + Format.withComma(moneyToPrintX) + " Coins)");
            var critPrintChance = 0.01;
            if (save.permaBanPenalty[29] == 3)
            {
                critPrintChance *= 6;
            }
            else if (save.permaBanPenalty[29] == 2)
            {
                critPrintChance *= 4;
            }
            else if (save.permaBanPenalty[29] == 1)
            {
                critPrintChance *= 3;
            }

            if (random() < critPrintChance)
            {
                var greenCoinToGain =
                    Math.Floor(((save.printerLevel + 25) * Math.Pow(Math.Min(save.level, 9001), 0.65) *
                        0.63 * 10 + 4560) * (100 + save.printerLevel) / 100);
                greenCoinToGain = Math.Round(greenCoinToGain / 125) * 10;
                if (save.permaBanPenalty[4] == 3)
                {
                    greenCoinToGain = Math.Round(greenCoinToGain * 2.5);
                }
                else if (save.permaBanPenalty[4] == 2)
                {
                    greenCoinToGain = Math.Round(greenCoinToGain * 1.9);
                }
                else if (save.permaBanPenalty[4] == 1)
                {
                    greenCoinToGain = Math.Round(greenCoinToGain * 1.6);
                }

                ExpCoin.gainGreenCoin(greenCoinToGain, 9);
                _root.dispNews(76, "CRITICAL PRINT! (+" + Format.withComma(greenCoinToGain) + " Green Coins)");
                if (save.questType == "Print")
                {
                    if (save.questSubtype == "Critical")
                    {
                        save.questCount += 1;
                    }
                }
            }
        }

        if (save.printerCharge > 0 && save.printerCharge < 10)
        {
            _root.dispNews(156, "Your Printer Battery is low.");
        }

        if (save.printerCharge <= 0)
        {
            _root.dispNews(157, "Your Printer Battery has run out. Charge it now!");
        }

        ExpCoin.gainCoin(moneyToPrintX, 9);
        save.totalPrinterMoney += moneyToPrintX;
        if (save.totalPrinterMoney >= 1000000)
        {
            save.totalPrinterMillion += Math.Floor(save.totalPrinterMoney / 1000000);
            save.totalPrinterMoney %= 1000000;
        }
    }

    public static void checkPrinter()
    {
        var moneyToPrint =
            Math.Floor(((save.printerLevel + 25) * Math.Pow(Math.Min(save.level, 9001), 0.65) * 0.63 * 10 +
                        4560) * (100 + save.printerLevel) / 100);
        moneyToPrint = Math.Round(moneyToPrint / 125) * 500;
        var printSpeed = save.printerCharge * 0.04 / _root.fps;
        if (save.permaBanPenalty[4] == 3)
        {
            moneyToPrint = Math.Round(moneyToPrint * 5);
        }
        else if (save.permaBanPenalty[4] == 2)
        {
            moneyToPrint = Math.Round(moneyToPrint * 3.4);
        }
        else if (save.permaBanPenalty[4] == 1)
        {
            moneyToPrint = Math.Round(moneyToPrint * 2.6);
        }

        _root.printPercent += printSpeed;
        if (_root.printPercent >= 100)
        {
            printMoney(moneyToPrint);
        }
    }
}