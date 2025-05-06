using static aitg.Globals;

namespace aitg.lib.feature.main;

public static class Pet
{
    public static void killPet()
    {
        if (save.petExist != 0)
        {
            save.deadPetName = save.petName;
            save.deadPetStat[1] = save.petStat[1];
            save.deadPetStat[2] = save.petStat[2];
            save.deadPetStat[3] = save.petStat[3];
            save.deadPetStat[4] = save.petStat[4];
            save.deadPetStat[5] = save.petStat[5];
            save.deadPetStat[6] = save.petStat[6];
            save.deadPetStat[7] = save.petStat[7];
            save.deadPetStat[8] = save.petStat[8];
            save.petExist = 0;
            save.petHealth = 0;
            save.petMana = 0;
            save.petStat[1] = 0;
            save.petStat[2] = 0;
            save.petStat[3] = 0;
            save.petStat[4] = 0;
            save.petStat[5] = 0;
            save.petStat[6] = 0;
            save.petStat[7] = 0;
            save.petStat[8] = 0;
            _root.dispNews(153, "Your pet has died.");
        }
    }
}