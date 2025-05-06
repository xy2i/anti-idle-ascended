using static aitg.Globals;

namespace aitg.lib.feature.main;

public static class Career
{
    public static void gainCareerEXP(int career, double amount, bool unknown)
    {
        /// XXX: stub
    }
    public static void checkCareer()
    {
        _root.curCareerLevel = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        _root.totalCareerLevel = 0;
        _root.careerActivated = 0;
        var i = 1;
        while (i <= 16)
        {
            _root.totalCareerLevel += save.careerLevel[i];
            if (save.careerActive[i] > 0)
            {
                _root.careerActivated += 1;
                _root.curCareerLevel[i] = save.careerLevel[i];
            }

            if (save.careerBoost[i] > 0)
            {
                _root.curCareerLevel[i] = save.careerLevel[i];
            }

            _root["careerLevel" + i] = save.careerLevel[i];
            i += 1;
        }
    }
}