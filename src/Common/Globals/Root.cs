using System.Collections.Generic;
using AntiIdle.Common.Flash;
using Godot;

namespace AntiIdle.Common.Globals;

/// <summary>
/// The _root variable.
/// In AS2, this stores the root MovieClip, and it also has functions
/// attached to it.
/// </summary>
public class Root
{
    public Save save = new();
    public House house = new();
    public double questCount;
    public int clock_year;
    public int clock_month;
    public int clock_date;
    public int fps = 40;
    public double todayEvent;
    public double cursoridle;
    public double arenaBot;
    public string _quality;
    public List<List<List<List<string>>>> eventList;
    public bool lootMagnet;
    public bool kpaChip;
    public bool autoStart;
    public double sessionTimeLeft;
    public double luckyNumber;
    public double upnumber;
    public double upnumberHidden;
    public string flashVer;
    public Kongregate kongregate;
    public bool offlineVersion;
    public string kongregate_username;
    public GlobalSettingWrapper globalSetting;
    public GlobalSetting saveGlobal;
    public bool preloadedFile0;
    public bool preloadedFile1;
    public bool preloadedFile2;
    public bool preloadedFile3;
    public double thisSession;
    public double refresh_year;
    public double refresh_month;
    public double refresh_date;
    
    public int getBytesLoaded()
    {
        return 0;
    }

    public int getBytesTotal()
    {
        return 0;
    }

    public void gotoAndPlay(int index)
    {
        GD.Print($"WARNING: unconverted gotoAndPlay({index})");
    }public string withComma(double index)
    {
        return "";
    }
    public double gainCoin(double index)
    {
        return 0;
    }
}
