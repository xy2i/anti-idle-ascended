//! status=pending
_root.fightStat = "The Corruption?";
_root.areaSafe = true;
_root.areaUnderwater = false;
_root.areaSpawn = 10;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 0;
_root.areaAllyChance = 0;
_root.areaDamagePct = 10;
_root.areaEpicChance = 0;
_root.areaEpicChance2 = 0;
diffText.text = "RGlmZmljdWx0eQ: " + _root.save.arenaCorruptWmDifficulty;
timeText.text = "VGltZSByZW1haW5pbmc: " + _root.convertSec(_root.raidTimeLeft);
unlockText.text = "";
if(_root.save.arenaCorruptWmBestDifficulty < _root.save.arenaCorruptWmDifficulty)
{
   _root.save.arenaCorruptWmBestDifficulty = _root.save.arenaCorruptWmDifficulty;
}
if(_root.save.arenaCorruptWmMaxDifficulty < _root.save.arenaCorruptWmDifficulty + 1)
{
   _root.save.arenaCorruptWmMaxDifficulty = _root.save.arenaCorruptWmDifficulty + 1;
   unlockText.text = "RGlmZmljdWx0eQ [" + _root.save.arenaCorruptWmMaxDifficulty + "] dW5sb2NrZWQh";
}
_root.arenaSoap = 0;
_root.challengeCompatible = false;
