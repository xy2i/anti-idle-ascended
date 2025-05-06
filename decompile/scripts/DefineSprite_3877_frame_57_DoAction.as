//! status=pending
_root.fightStat = "THE MEGABOSS\'s Revenge";
_root.areaSafe = false;
_root.areaUnderwater = false;
_root.areaSpawn = 0.5;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 100;
_root.areaAllyChance = 0.1;
_root.areaRevengeKill = 0;
_root.areaRevengeRage = 0;
_root.areaRevengeCalm = 0;
_root.areaDamagePct = 10;
_root.toUpdateRound = 0;
if(_root.save.arenaRevengeEntry != 1)
{
   _root.dispNews(66,"You can enter " + _root.save.arenaRevengeEntry + " more times today.");
}
else
{
   _root.dispNews(66,"You can enter 1 more time today.");
}
_root.areaEpicChance = 5;
_root.areaEpicChance2 = 50;
_root.challengeCompatible = false;
