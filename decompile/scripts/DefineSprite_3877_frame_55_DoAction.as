//! status=pending
_root.fightStat = "Final Chamber";
_root.areaSafe = false;
_root.areaUnderwater = false;
_root.areaSpawn = 10;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 100;
_root.areaAllyChance = 0.5;
_root.areaDamagePct = 20;
_root.areaEpicChance = 100;
_root.areaEpicChance2 = 100;
if(_root.dungeonAntiCurse == true)
{
   _root.areaAllyChance = 0;
   _root.areaDamagePct = 100;
   _root.areaEpicChance = 0;
   _root.areaEpicChance2 = 20;
}
_root.arenaChaosPhase = 1;
_root.arenaChaosDuration = 0;
_root.challengeCompatible = false;
