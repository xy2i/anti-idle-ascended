using System.Collections.Generic;
using Godot;

// MATCH: frame_3/DoAction.as
public partial class Loading2OutOf8 : Control
{
    public override void _Ready()
    {
        List<string> bannedUsers =
        [
            "Guest", "Tukkun", "omfg13321", "milleraus10", "Valmont06", "DarkWazza", "idan2", "luungockhang",
            "danielm59", "Batux1995", "nc666", "hilariousguy878", "Dariush", "wazor", "Darnal", "Weredeer",
            "littleNekoDemon", "oblivion60", "Chendler", "tiopo", "supersonicguy", "blackwiz", "jamesty", "omonoiadam",
            "CECIII", "KidDeath", "Hedgehog101", "Eciplyse2", "Arutima", "Mnchngrnqs", "keith143", "kamitop", "p9a9u9l",
            "EsCaPeThEfAtE2", "MattiasM", "TecknozThaBezt", "thelolofdeath", "alsc", "Darvious", "AntonioS2740",
            "saltineface", "JaredOfSubway", "HARIB0L", "luka1795", "Vsegdaskray", "Mnchngrngs", "perez7631",
            "zeroskil1", "Salomanity", "Franklinperry2", "delshady", "Salomanity2", "Inhruby", "justfg", "Bunker",
            "vitinho90", "BNR32k", "fateofblade"
        ];
        var scoreBanned = false;
        var i = 0;
        while (i < bannedUsers.Count)
        {
            if (_root.kongregate_username == bannedUsers[i])
            {
                scoreBanned = true;
            }

            i++;
        }

        _root.careerName =
            new FlashList<string>([
                "", "Idler", "Gardener", "Fighter", "Item Maker", "Button Basher", "Arcade Player", "Racer",
                "Card Player",
                "Gem Trader", "Adventurer", "Pet Trainer", "Fisher"
            ]);
        _root.nameValue = 0;
        var str = _root.kongregate_username;
        if (str == undefined)
        {
            str = "Kongregate Username";
        }

        i = 1;
        var nD = 0;
        while (i <= str.Length)
        {
            var cDigit = str.Substr(i, 1);
            switch (cDigit)
            {
                case "A":
                    nD = 21;
                    break;
                case "B":
                    nD = 15;
                    break;
                case "C":
                    nD = 34;
                    break;
                case "D":
                    nD = 23;
                    break;
                case "E":
                    nD = 12;
                    break;
                case "F":
                    nD = 37;
                    break;
                case "G":
                    nD = 29;
                    break;
                case "H":
                    nD = 13;
                    break;
                case "I":
                    nD = 31;
                    break;
                case "J":
                    nD = 26;
                    break;
                case "K":
                    nD = 14;
                    break;
                case "L":
                    nD = 39;
                    break;
                case "M":
                    nD = 24;
                    break;
                case "N":
                    nD = 19;
                    break;
                case "O":
                    nD = 35;
                    break;
                case "P":
                    nD = 27;
                    break;
                case "Q":
                    nD = 14;
                    break;
                case "R":
                    nD = 36;
                    break;
                case "S":
                    nD = 23;
                    break;
                case "T":
                    nD = 18;
                    break;
                case "U":
                    nD = 37;
                    break;
                case "V":
                    nD = 27;
                    break;
                case "W":
                    nD = 18;
                    break;
                case "X":
                    nD = 36;
                    break;
                case "Y":
                    nD = 21;
                    break;
                case "Z":
                    nD = 14;
                    break;
                case "a":
                    nD = 43;
                    break;
                case "b":
                    nD = 33;
                    break;
                case "c":
                    nD = 22;
                    break;
                case "d":
                    nD = 45;
                    break;
                case "e":
                    nD = 34;
                    break;
                case "f":
                    nD = 27;
                    break;
                case "g":
                    nD = 43;
                    break;
                case "h":
                    nD = 39;
                    break;
                case "i":
                    nD = 25;
                    break;
                case "j":
                    nD = 48;
                    break;
                case "k":
                    nD = 37;
                    break;
                case "l":
                    nD = 25;
                    break;
                case "m":
                    nD = 46;
                    break;
                case "n":
                    nD = 35;
                    break;
                case "o":
                    nD = 25;
                    break;
                case "p":
                    nD = 49;
                    break;
                case "q":
                    nD = 37;
                    break;
                case "r":
                    nD = 27;
                    break;
                case "s":
                    nD = 46;
                    break;
                case "t":
                    nD = 32;
                    break;
                case "u":
                    nD = 28;
                    break;
                case "v":
                    nD = 45;
                    break;
                case "w":
                    nD = 31;
                    break;
                case "x":
                    nD = 24;
                    break;
                case "y":
                    nD = 43;
                    break;
                case "z":
                    nD = 33;
                    break;
                case "0":
                    nD = 22;
                    break;
                case "1":
                    nD = 52;
                    break;
                case "2":
                    nD = 44;
                    break;
                case "3":
                    nD = 34;
                    break;
                case "4":
                    nD = 43;
                    break;
                case "5":
                    nD = 36;
                    break;
                case "6":
                    nD = 55;
                    break;
                case "7":
                    nD = 45;
                    break;
                case "8":
                    nD = 54;
                    break;
                case "9":
                    nD = 37;
                    break;
                default:
                    nD = 1;
                    break;
            }

            if (i == 1)
            {
                _root.nameValue += 7 * nD + 133;
            }
            else
            {
                _root.nameValue += (i + 1) * nD + 2;
            }

            if (_root.nameValue > 10000)
            {
                _root.nameValue -= 337;
            }

            i++;
        }

        if (str == "Guest")
        {
            _root.nameValue = 0;
        }

        var b = 1;
        while (b <= 30)
        {
            _root.news["X0breakNews" + b] = "";
            _root.news["X0breakStamp" + b] = "";
            _root.news["X0breakColor" + b] = 0;
            _root.news["X1breakNews" + b] = "";
            _root.news["X1breakStamp" + b] = "";
            _root.news["X1breakColor" + b] = 0;
            _root.news["X2breakNews" + b] = "";
            _root.news["X2breakStamp" + b] = "";
            _root.news["X2breakColor" + b] = 0;
            _root.news["X3breakNews" + b] = "";
            _root.news["X3breakStamp" + b] = "";
            _root.news["X3breakColor" + b] = 0;
            _root.news["X4breakNews" + b] = "";
            _root.news["X4breakStamp" + b] = "";
            _root.news["X4breakColor" + b] = 0;
            var c = 1;
            while (c <= 30)
            {
                _root.news["F" + c + "breakNews" + b] = "";
                _root.news["F" + c + "breakStamp" + b] = "";
                _root.news["F" + c + "breakColor" + b] = 0;
                c++;
            }

            b++;
        }

        // TODO: mouse handler for scroll up/scroll down.
        // Seems we can't make this global. Add it to just the game scene?
        // var mouseListener = new Object();
        // mouseListener.onMouseWheel = function(wheelNum)
        // {
        //     if (wheelNum > 0)
        //     {
        //         _root.scrollUp();
        //     }
        //     else if (wheelNum < 0)
        //     {
        //         _root.scrollDown();
        //     }
        // };
        // Mouse.addListener(mouseListener);
        _root.cyborgActShortName =
            new FlashList<string>([
                "Recharge", "Pong", "Ult. Avoidance", "Math Master", "Whack-a-greg", "Triangle Count", "MindSweeper",
                "Balance 3", "Simple Race", "Item Fight", "Death Match", "MMR X", "FCG - Level 1", "FCG - Level 2",
                "FCG - Level 3", "FCG - Level 4", "FCG - Level 6", "FCG - Level 7", "FCG - Level 8", "FCG - Level 10",
                "Fishing"
            ]);
        _root.cyborgActLongName =
            new FlashList<string>([
                "Recharging...", "Arcade - Pong: Survival Battle", "Arcade - Ultimate Avoidance",
                "Arcade - Math Master",
                "Arcade - Whack-a-greg", "Arcade - Triangle Count", "Arcade - MindSweeper", "Arcade - Balance 3",
                "Stadium - Simple Race (Impossible)", "Stadium - Item Fight (Impossible)", "Stadium - Death Match",
                "Arcade - MMR X", "TukkunFCG - Level 1", "TukkunFCG - Level 2", "TukkunFCG - Level 3",
                "TukkunFCG - Level 4", "TukkunFCG - Level 6", "TukkunFCG - Level 7", "TukkunFCG - Level 8",
                "TukkunFCG - Level 10", "Fishing"
            ]);
        _root.cyborgActMinPerf =
            new FlashList<double>([
                40, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 5, 5, 50, 5, 4.5, 4, 3.5, 3, 2.5, 2, 1.5, 1, 1
            ]);
        _root.cyborgActMaxPerf =
            new FlashList<double>([
                240, 4200000, 1750000, 2400000, 3300000, 13500000, 10000000, 7200000, 90, 90, 1100, 7200000, 98, 97, 96,
                95,
                90, 85, 80, 70, 95
            ]);
        _root.cyborgActPerfText =
            new FlashList<string>([
                "Energy", "Maximum Score", "Maximum Score", "Maximum Score", "Maximum Score", "Maximum Score",
                "Maximum Score", "Maximum Score", "Win Rate", "Win Rate", "Maximum PWNts", "Maximum Score", "Win Rate",
                "Win Rate", "Win Rate", "Win Rate", "Win Rate", "Win Rate", "Win Rate", "Win Rate", "Perfect Rate"
            ]);
        _root.cyborgActPerfSign =
            new FlashList<string>([
                " sec", "", "", "", "", "", "", "", "%", "%", "", "", "%", "%", "%", "%", "%", "%", "%", "%", "%"
            ]);
        _root.cyborgActTime =
            new FlashList<double>([
                300, 420, 175, 80, 165, 675, 500, 360, 17, 19, 600, 360, 120, 150, 170, 190, 200, 300, 350, 450, 27
            ]);
        _root.cyborgActCost = new FlashList<double>([
            0, 84, 35, 16, 33, 135, 100, 72, 4, 5, 1000, 72, 30, 35, 40, 45, 60, 90, 120, 180, 11
        ]);
        _root.cyborgWorking = false;
    }

    public override void _Process(double delta)
    {
        GetTree().ChangeSceneToFile("src/Loader/Loading3OutOf8.tscn");
    }
}
