//! status=pending
_root.fightStat = "Speed Room";
_root.areaSafe = false;
_root.areaUnderwater = false;
_root.areaSpawn = 1.5;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 50;
_root.areaAllyChance = 5;
_root.areaDamagePct = 10;
_root.areaEpicChance = 2;
_root.areaEpicChance2 = 10;
_root.challengeCompatible = false;
if(_root.raidDiff == 3)
{
   _root.areaSpawn = 1;
   _root.areaRareChance = 100;
   _root.areaAllyChance = 25;
   _root.areaDamagePct = 10;
   _root.areaEpicChance = 50;
   _root.areaEpicChance2 = 50;
}
