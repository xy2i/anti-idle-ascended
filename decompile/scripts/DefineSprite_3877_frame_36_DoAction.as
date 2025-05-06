//! status=pending
_root.fightStat = "Chain Reaction Room";
_root.areaSafe = false;
_root.areaUnderwater = false;
_root.areaSpawn = 5;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 25;
_root.areaAllyChance = 5;
_root.areaDamagePct = 10;
_root.areaEpicChance = 1;
_root.areaEpicChance2 = 5;
_root.challengeCompatible = false;
if(_root.raidDiff == 3)
{
   _root.areaSpawn = 3;
   _root.areaRareChance = 100;
   _root.areaAllyChance = 25;
   _root.areaDamagePct = 10;
   _root.areaEpicChance = 25;
   _root.areaEpicChance2 = 25;
}
if(_root.save.arenaTurnBased == true)
{
   _root.dispNews(66,"Turn-based Mode is disabled in this room.");
}
