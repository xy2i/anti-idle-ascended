//! status=pending
if(isNaN(_root.raidDiff))
{
   _root.raidDiff = 2;
}
roomCount = -1;
_root.fightStat = "Entry Room";
_root.areaSafe = false;
_root.areaUnderwater = false;
_root.areaSpawn = 3;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 5;
_root.areaAllyChance = 5;
_root.areaDamagePct = 10;
_root.areaEpicChance = 0.5;
_root.areaEpicChance2 = 2.5;
if(_root.raidDiff == 3)
{
   _root.areaSpawn = 2;
   _root.areaRareChance = 25;
   _root.areaAllyChance = 25;
   _root.areaDamagePct = 10;
   _root.areaEpicChance = 10;
   _root.areaEpicChance2 = 10;
}
_root.specInfinity = 0;
_root.specPierce = 0;
_root.specPolearm = 0;
_root.specTrueshot = 0;
_root.specSphere = 0;
_root.specDispel = 0;
_root.specGlory = 0;
_root.challengeCompatible = false;
_root.fightStat2 = "The Prehistoric Mission has started!";
