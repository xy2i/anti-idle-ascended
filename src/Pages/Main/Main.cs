using Godot;
using System;
using Math = AntiIdle.Common.Flash.Math;

// MATCH: frame_13/DoAction.as
// MATCH: frame_13/DoAction_2.as
// MATCH: frame_13/DoAction_3.as
public partial class Main : Control
{
    [Export]
    private TopBar _topBar;

    string elapsed_days;
    string elapsed_hours;
    string elapsed_minutes;
    string elapsed_seconds;

    // MATCH: frame_13/DoAction_2.as:dispAsc()
    void dispAsc()
    {
        var elapsed_days_int = Math.floor(_root.save.ascendPlayTime / 86400); ;
        elapsed_days = "" + elapsed_days_int;
        var remaining = _root.save.ascendPlayTime - elapsed_days_int * 86400;
        if (_root.saveid >= 20 && !isNaN(_root.save.challengeTime))
        {
            elapsed_days = "" + Math.floor(_root.save.challengeTime / 86400);
            remaining = _root.save.challengeTime - elapsed_days_int * 86400;
        }
        var elapsed_hours_int = Math.floor(remaining / 3600);
        elapsed_hours = "" + elapsed_hours_int;
        remaining -= elapsed_hours_int * 3600;
        var elapsed_minutes_int = Math.floor(remaining / 60);
        elapsed_minutes = "" + elapsed_minutes_int;
        remaining -= elapsed_minutes_int * 60;
        var elapsed_seconds_int = Math.floor(remaining / 1);
        elapsed_seconds = "" + elapsed_seconds_int;
        remaining -= elapsed_seconds_int * 1;
        if (elapsed_hours_int < 10)
        {
            elapsed_hours = "0" + elapsed_hours;
        }
        if (elapsed_minutes_int < 10)
        {
            elapsed_minutes = "0" + elapsed_minutes;
        }
        if (elapsed_seconds_int < 10)
        {
            elapsed_seconds = "0" + elapsed_seconds;
        }
        _root.topBar.ascentText.Text = elapsed_days + "d + " + elapsed_hours + ":" + elapsed_minutes + ":" + elapsed_seconds;
    }
    public override void _EnterTree()
    {
        _root.topBar = _topBar;
        dispAsc();
    }

    public override void _Process(double delta)
    {
    }

}
