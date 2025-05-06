//! status=pending
_root.fightStat = "The Corruption?";
_root.areaSafe = false;
_root.areaUnderwater = true;
_root.areaSpawn = 99;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 100;
_root.areaAllyChance = 5 + _root.save.arenaCorruptWmDifficulty * 0.5;
_root.areaDamagePct = 2;
if(_root.save.arenaCorruptWmDifficulty > 20)
{
   _root.areaDamagePct = 4 - _root.save.arenaCorruptWmDifficulty * 0.1;
}
if(_root.save.arenaCorruptWmDifficulty > 39)
{
   _root.areaDamagePct = 0.1 / (_root.save.arenaCorruptWmDifficulty - 39);
}
if(_root.save.arenaCorruptWmDifficulty > 49)
{
   _root.areaDamagePct = 0.001;
}
_root.fightStat2 = "... wait, what?";
if(_root.save.arenaCorruptionEntry != 1)
{
   _root.dispNews(66,"You can enter " + _root.save.arenaCorruptionEntry + " more times today.");
}
else
{
   _root.dispNews(66,"You can enter 1 more time today.");
}
_root.areaEpicChance = 0;
_root.areaEpicChance2 = 100;
_root.challengeCompatible = false;
