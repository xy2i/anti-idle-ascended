//! status=pending
_root.fightStat = "The Corruption";
_root.areaSafe = true;
_root.areaUnderwater = false;
_root.areaSpawn = 10;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 0;
_root.areaAllyChance = 0;
_root.areaDamagePct = 10;
_root.areaEpicChance = 0;
_root.areaEpicChance2 = 0;
diffText.text = "Difficulty: " + _root.save.arenaCorruptDifficulty;
timeText.text = "Time remaining: " + _root.convertSec(_root.raidTimeLeft);
unlockText.text = "";
if(_root.save.arenaCorruptBestDifficulty < _root.save.arenaCorruptDifficulty)
{
   _root.save.arenaCorruptBestDifficulty = _root.save.arenaCorruptDifficulty;
}
if(_root.save.arenaCorruptMaxDifficulty < _root.save.arenaCorruptDifficulty + 1)
{
   _root.save.arenaCorruptMaxDifficulty = _root.save.arenaCorruptDifficulty + 1;
   unlockText.text = "Difficulty " + _root.save.arenaCorruptMaxDifficulty + " unlocked!";
}
_root.arenaSoap = 0;
_root.challengeCompatible = false;
