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
    public FlashList<double> challengeTime;

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