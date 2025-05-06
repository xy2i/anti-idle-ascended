//! status=pending
if(isNaN(_root.raidDiff))
{
   _root.raidDiff = 2;
}
_root.fightStat = "9001: Defend Mission";
_root.areaSafe = false;
_root.areaUnderwater = false;
_root.areaSpawn = 2;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 50;
_root.areaAllyChance = 5;
_root.areaDamagePct = 0;
_root.areaEpicChance = 5;
_root.areaEpicChance2 = 25;
if(_root.raidDiff == 3)
{
   _root.areaSpawn = 1.5;
   _root.areaRareChance = 100;
   _root.areaAllyChance = 25;
   _root.areaDamagePct = 0;
   _root.areaEpicChance = 100;
   _root.areaEpicChance2 = 100;
}
_root.fightStat2 = "Hold SHIFT to switch to Defend Mode.";
_root.save.arenaHealth = 100;
_root.areaDefendStage = 1;
_root.areaDefendProgress = -1;
_root.specInfinity = 0;
_root.specPierce = 0;
_root.specPolearm = 0;
_root.specTrueshot = 0;
_root.specSphere = 0;
_root.specDispel = 0;
_root.specGlory = 0;
_root.dispNews(66,"Hold SHIFT to switch to Defend Mode.");
if(_root.save.arenaTurnBased == true)
{
   _root.dispNews(66,"Turn-based Mode is disabled in this mission.");
}
_root.challengeCompatible = false;
