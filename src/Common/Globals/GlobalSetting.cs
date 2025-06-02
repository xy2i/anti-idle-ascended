using System;

namespace AntiIdle.Common.Globals;

public class GlobalSettingWrapper
{
    public GlobalSetting data;
}

public class GlobalSetting
{
    public bool aurianMode = false;
    public FlashList<bool> breakAll;
    public FlashList<double> breakB;
    public FlashList<bool> breakFeature;
    public FlashList<double> breakG;
    public FlashList<double> breakR;
    public FlashList<bool> breakTab1;
    public FlashList<bool> breakTab2;
    public FlashList<bool> breakTab3;
    public FlashList<bool> breakTab4;
    public FlashList<double> challengeTime = new();
    public bool challengeUnlocked;
    public double defTab = 2;

    public string graphicQuality;
    public string keyboardLayout;
    public bool showTitle = true;
    public double latestVersion = 1380;

    public bool speedrunUnlock0 = false;
    public bool speedrunUnlock1 = false;
    public bool speedrunUnlock2 = false;
    public bool speedrunUnlock3 = false;
    public string adminMode = "";
    public double selectedSave = 0;

    public FlashList<string> playTime = new(["?", "?", "?", "?"]);
    public FlashList<string> curLevel = new(["", "", "", ""]);
    public FlashList<string> ascCount = new(["", "", "", ""]);

    public FlashList<bool> challengeAttempted = new();
    public FlashList<bool> challengePerfect = new();
    public bool skipMenu = false;
    public double keyArenaZ = 90;
    public double keyArenaX = 88;
    public double keyArenaC = 67;
    public double keyArenaV = 86;
    public double keyArenaB = 66;
    public double keyArenaA = 65;
    public double keyArenaS = 83;
    public double keyArenaD = 68;
    public double keyArenaF = 70;
    public double keyArenaQ = 81;
    public double keyArenaW = 87;
    public double keyPongUp1 = 38;
    public double keyPongUp2 = 87;
    public double keyPongDown1 = 40;
    public double keyPongDown2 = 83;
    public double keyMmrLeft1 = 37;
    public double keyMmrLeft2 = 65;
    public double keyMmrDown1 = 40;
    public double keyMmrDown2 = 83;
    public double keyMmrRight1 = 39;
    public double keyMmrRight2 = 68;
    public double keyBalLeft1 = 37;
    public double keyBalLeft2 = 65;
    public double keyBalDown1 = 40;
    public double keyBalDown2 = 83;
    public double keyBalRight1 = 39;
    public double keyBalRight2 = 68;
    public bool pl7 = true;
    public bool pl8 = true;

    public bool flush(int amount)
    {
        return true;
    }

    public object this[string key]
    {
        get => GetType().GetField(key)?.GetValue(this) ?? throw new ArgumentException($"Property `{key}` not found");
        set
        {
            var prop = GetType().GetField(key) ?? throw new ArgumentException($"Property `{key}` not found");
            prop.SetValue(this, value);
        }
    }
}
