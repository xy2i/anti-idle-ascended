using System;

namespace aitg;

using static Globals;

public static class Ascension
{
    public static void dispAsc()
    {
        var elapsed_days = Math.Floor(save.ascendPlayTime / 86400);
        var remaining = save.ascendPlayTime - elapsed_days * 86400;
        if (_root.saveid >= 20 && !double.IsNaN(save.challengeTime))
        {
            elapsed_days = Math.Floor(save.challengeTime / 86400);
            remaining = save.challengeTime - elapsed_days * 86400;
        }

        var elapsed_hours = Math.Floor(remaining / 3600);
        remaining -= elapsed_hours * 3600;
        var elapsed_minutes = Math.Floor(remaining / 60);
        remaining -= elapsed_minutes * 60;
        var elapsed_seconds = Math.Floor(remaining / 1);
        remaining -= elapsed_seconds * 1;

        var elapsed_hours_string = elapsed_hours.ToString();
        var elapsed_minutes_string = elapsed_minutes.ToString();
        var elapsed_seconds_string = elapsed_seconds.ToString();
        if (elapsed_hours < 10)
        {
            elapsed_hours_string = "0" + elapsed_hours;
        }

        if (elapsed_minutes < 10)
        {
            elapsed_minutes_string = "0" + elapsed_minutes;
        }

        if (elapsed_seconds < 10)
        {
            elapsed_seconds_string = "0" + elapsed_seconds;
        }

        // TODO: display in topbar
        // _root.topBar.ascentDisp.ascentText.text =
        //     elapsed_days + "d + " + elapsed_hours + ":" + elapsed_minutes + ":" + elapsed_seconds;
    }
}