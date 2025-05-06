//! status=pending
_root.fightStat = "The Corruption";
_root.areaSafe = false;
_root.areaUnderwater = false;
_root.areaSpawn = 3;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 10 + _root.save.arenaCorruptDifficulty * 1;
_root.areaAllyChance = 0.5 + _root.save.arenaCorruptDifficulty * 0.05;
if(_root.save.arenaCorruptDifficulty < 20)
{
   _root.areaAllyChance *= 0.05 * _root.save.arenaCorruptDifficulty;
}
_root.areaDamagePct = 100;
if(_root.save.arenaCorruptDifficulty > 100)
{
   _root.areaDamagePct = 200 - _root.save.arenaCorruptDifficulty;
}
if(_root.save.arenaCorruptDifficulty > 199)
{
   _root.areaDamagePct = 0.1;
}
_root.fightStat2 = "Defeat enough monsters within the time limit!";
if(_root.save.arenaCorruptionEntry != 1)
{
   _root.dispNews(66,"You can enter " + _root.save.arenaCorruptionEntry + " more times today.");
}
else
{
   _root.dispNews(66,"You can enter 1 more time today.");
}
_root.areaEpicChance = 1 + _root.save.arenaCorruptDifficulty * 0.1;
_root.areaEpicChance2 = -1337;
_root.areaCorruptKill = 0;
if(_root.save.arenaCorruptDifficulty > 20)
{
   _root.areaCorruptReq = 200 + _root.save.arenaCorruptDifficulty * 5;
}
else
{
   _root.areaCorruptReq = 100 + _root.save.arenaCorruptDifficulty * 10;
}
if(_root.areaCorruptReq > 999)
{
   _root.areaCorruptReq = 999;
}
_root.challengeCompatible = false;
