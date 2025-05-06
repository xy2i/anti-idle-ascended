//! status=pending
_root.fightStat = "Spooky Crypt";
_root.areaSafe = false;
_root.areaUnderwater = false;
_root.areaSpawn = 10;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 5;
_root.areaAllyChance = 1;
if(_root.save.inventoryName[_root.save.arenaPendant] != "Anti-Checkpoint Pendant")
{
   _root.areaSpookyKill = Math.floor(_root.save.arenaSpookyToday / 200) * 200;
}
else
{
   _root.areaSpookyKill = 0;
}
_root.areaDamagePct = 5;
_root.areaEpicChance = 0.5;
_root.areaEpicChance2 = 5;
_root.challengeCompatible = false;
