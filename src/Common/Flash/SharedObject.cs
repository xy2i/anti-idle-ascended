using AntiIdle.Common.Globals;

namespace AntiIdle.Common.Flash;

public static class SharedObject
{
    public static string getLocal(string name, string path)
    {
        switch (name)
        {
            case "ATG_Global":
            {
                _root.globalSetting = new GlobalSettingWrapper();
                break;
            }
        }
        return "dummy";
    }
}