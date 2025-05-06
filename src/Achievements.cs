using System.Collections.Generic;
using Godot;
using static aitg.Globals;

namespace aitg;

internal class Achievement
{
    /// <summary>
    ///     Value needed for the tracked variable.
    /// </summary>
    public double amnt;

    public string desc;
    public int ID;
    public string name;

    /// <summary>
    ///     The variable tracked by the achivement.
    /// </summary>
    public string need;

    /// <summary>
    ///     Progresss multiplier given by this achivement. Has nothing to do
    ///     with red coins.
    /// </summary>
    public double redCoin;

    /// <summary>
    ///     Is the achievement a secret achievement?
    /// </summary>
    public bool secret;

    /// <summary>
    ///     Type of achievement ("Min"/"Max").
    /// </summary>
    public string type;

    /// <summary>
    ///     Which global to read the tracked variable from.
    /// </summary>
    public string where;
}

public class Achievements
{
    private static readonly List<Achievement> achList =
    [
        new()
        {
            ID = 1000,
            name = "Graduated",
            desc = "Newbie Tasks",
            need = "newbieProgress",
            amnt = 15,
            type = "Max",
            where = "save",
            secret = false,
            redCoin = 2000
        }
        // TODO: port the rest of the achivements later,
        // script go brr
    ];

    private double achRedCoin;
    private double awards;
    private double sawards;

    public static void checkAchievements()
    {
        // Challenge mode
        if (_root.saveid >= 10)
        {
            save.achEarnTime[1150] = 99999999999;
            save.achEarnTime[1151] = 99999999999;
            save.achEarnTime[1152] = 99999999999;
            save.achEarnTime[1153] = 99999999999;
            save.achEarnTime[1154] = 99999999999;
            save.achEarnTime[1155] = 99999999999;
            save.achEarnTime[1156] = 99999999999;
            save.achEarnTime[1157] = 99999999999;
            save.achEarnTime[1158] = 99999999999;
            save.achEarnTime[1159] = 99999999999;
            save.achEarnTime[1160] = 99999999999;
            save.achEarnTime[1161] = 99999999999;
            save.achEarnTime[1162] = 99999999999;
            save.achEarnTime[1163] = 99999999999;
            save.achEarnTime[1164] = 99999999999;
            save.achEarnTime[1165] = 99999999999;
            save.achEarnTime[9035] = 99999999999;
        }

        for (var i = 0; i < achList.Count; i++)
        {
            var achCurrent = achList[i].where switch
            {
                "save" => (double)save.GetType().GetField(achList[i].need).GetValue(save),
                "root" => (double)_root.GetType().GetField(achList[i].need).GetValue(_root),
                _ => 0
            };

            var achRequired = achList[i].amnt;
            if ((achCurrent >= achRequired && achList[i].type == "Max") ||
                (achCurrent <= achRequired && achList[i].type == "Min"))
            {
                if (save.achEarnTime.GetValueOrDefault(achList[i].ID) == 0)
                {
                    GD.Print("achivement was not earned before, earning it now");
                    save.achEarnTime[achList[i].ID] = _root.systemtimenow;
                    if (save.showBanner)
                    {
                        // FIXME: achievement bar popup
                        // _root.accomplishPop.targetX = 10;
                        // _root.accomplishPop.count = 0;
                        // _root.accomplishPop.gotoAndStop(2);
                        // _root.accomplishPop.lolMessage.text = achList[i].name;
                        // _root.accomplishPop.rcText.text = "Progress Bar Reward: +" + achList[i].redCoin / 100 + "%";
                        // _root.accomplishPop.countText.text = save.maxAchievement + 1 + " / " + _root.totalachievements;
                    }
                    // FIXME: port news
                    // _root.dispNews(3, "Achievement earned! [" + achList[i].name + "] (" + (save.maxAchievement + 1) + " / " + _root.totalachievements + ")");
                }

                GD.Print($"added award for achivement {achList[i].name}");
                _root.awards += 1;
                if (achList[i].secret)
                {
                    _root.sawards += 1;
                }

                _root.achRedCoin += achList[i].redCoin;
            }
        }

        if (save.maxAchievement < _root.awards)
        {
            save.maxAchievement = _root.awards;
        }
    }
}