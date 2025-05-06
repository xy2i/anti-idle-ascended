using static aitg.Globals;

namespace aitg.lib.feature.main;

public class ProgressBar
{
    /// <summary>
    ///     Time since the cursor was last moved.
    /// </summary>
    public double cursoridle = 0;

    /// <summary>
    ///     Ant spray cooldown.
    /// </summary>
    public double sprayCooldown1 = 165;

    /// <summary>
    ///     Doom ant spray cooldown.
    /// </summary>
    public double sprayCooldown2 = 540;

    /// <summary>
    ///     Total number of epic skills.
    /// </summary>
    public double totalEpicSkill;

    public ProgressBar()
    {
        var i = 1;
        while (i <= 7)
        {
            totalEpicSkill += save.epicSkill[i];
            i++;
        }
    }
}