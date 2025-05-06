//! status=pending
_root.fightStat = "Luck Room";
_root.areaSafe = false;
_root.areaUnderwater = false;
_root.areaSpawn = 100;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 25;
_root.areaAllyChance = 5;
_root.areaDamagePct = 10;
_root.areaEpicChance = 1;
_root.areaEpicChance2 = 5;
_root.challengeCompatible = false;
if(_root.raidDiff == 3)
{
   _root.areaSpawn = 100;
   _root.areaRareChance = 100;
   _root.areaAllyChance = 25;
   _root.areaDamagePct = 10;
   _root.areaEpicChance = 25;
   _root.areaEpicChance2 = 25;
}
