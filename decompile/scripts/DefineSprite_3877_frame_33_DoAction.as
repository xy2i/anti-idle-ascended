//! status=pending
roomCount += 1;
if(_root.raidDiff == 3)
{
   _root.save.arenaProofMission += 5;
   _root.dispNews(66,"You have gained 5 [Proof of Mission]!");
}
else
{
   _root.save.arenaProofMission += 1;
   _root.dispNews(66,"You have gained 1 [Proof of Mission]!");
}
_root.fightStat = "Warp Room";
_root.areaSafe = false;
_root.areaUnderwater = false;
_root.areaSpawn = 6;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 0;
_root.areaAllyChance = 0;
_root.areaDamagePct = 10;
_root.challengeCompatible = false;
proTip = random(8);
if(proTip == 0)
{
   _root.dispNews(66,"Protip: Monsters in the mission cannot be poisoned!");
}
if(proTip == 1)
{
   _root.dispNews(66,"Protip: You deal 90% less damage in this area.");
}
if(proTip == 2)
{
   _root.dispNews(66,"Protip: Defense is less effective in this area.");
}
if(proTip == 3)
{
   _root.dispNews(66,"Protip: You will be taken to the next room in 5 seconds.");
}
if(proTip == 4)
{
   _root.dispNews(66,"Protip: All rooms have \'tricks\' to pass.");
}
if(proTip == 5)
{
   _root.dispNews(66,"Protip: Turn Auto Fight off if you haven\'t already!");
}
if(proTip == 6)
{
   _root.dispNews(66,"Protip: Attack Green Bombs. Don\'t attack Red Bombs!");
}
if(proTip == 7)
{
   _root.dispNews(66,"Protip: This is a protip!");
}
_root.areaEpicChance = 0;
_root.areaEpicChance2 = 0;
