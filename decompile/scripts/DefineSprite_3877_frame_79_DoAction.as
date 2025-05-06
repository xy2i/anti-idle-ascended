//! status=pending
floorText.text = 1;
if(_root.save.raidEndless == 0)
{
   _root.save.raidEndless = 1;
}
_root.fightStat = "Endless Dungeon - 1Fl.";
_root.areaSafe = false;
_root.areaUnderwater = true;
_root.areaSpawn = 0.9;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 10;
_root.areaAllyChance = 1;
_root.areaDamagePct = 0.02;
_root.areaEpicChance = 1;
_root.areaEpicChance2 = 5;
_root.endlessFloor = 1;
_root.dungeonTimeLeft = 305;
_root.dungeonRoom = 36;
_root.dungeonRoomBack = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
_root.dungeonRoomProgress = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
_root.dungeonRoomClear = [0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
_root.dungeonRoomMob = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
_root.dungeonCountMob = 0;
_root.dungeonCountBoss = 0;
_root.dungeonRoomChest = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
_root.dungeonCountChest = 0;
_root.dungeonRoomDecor = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
_root.dungeonChestOpen = 0;
_root.dungeonMobDefeat = 0;
_root.dungeonBossDefeat = 0;
_root.edClear = false;
i = 1;
while(i <= 36)
{
   _root.dungeonRoomBack[i] = random(4) + 1;
   _root.dungeonRoomDecor[i] = random(4) + 1;
   i++;
}
_root.dungeonFinalRoom = random(29) + 7;
_root.dungeonRoomMob[_root.dungeonFinalRoom] = 21;
_root.dungeonRoomClear[_root.dungeonFinalRoom] = 0;
if(_root.endlessFloor == floorCap)
{
   _root.dungeonFinalRoom = 9001;
}
_root.dungeonRoomDecor[_root.dungeonFinalRoom] = 5;
if((_root.save.raidEndless >= (_root.endlessFloor - 1) * 2 + 11 || _root.save.raidEndless >= _root.endlessFloor + 40) && _root.endlessFloor % 5 == 1)
{
   _root.dungeonRoomDecor[36] = 6;
}
skipBoss = random(4) + 1;
while(_root.dungeonCountMob < 15)
{
   i = random(29) + 7;
   if(_root.dungeonRoomMob[i] == 0)
   {
      _root.dungeonCountMob += 1;
      _root.dungeonRoomClear[i] = 0;
      _root.dungeonRoomMob[i] = random(15) + 1;
      if(Math.random() < 0.015)
      {
         _root.dungeonRoomMob[i] = 16;
      }
   }
}
while(_root.dungeonCountBoss < 4)
{
   i = random(29) + 7;
   if(_root.dungeonRoomMob[i] == 0)
   {
      _root.dungeonCountBoss += 1;
      if(skipBoss != _root.dungeonCountBoss)
      {
         _root.dungeonRoomClear[i] = 0;
         _root.dungeonRoomMob[i] = 16 + _root.dungeonCountBoss;
      }
   }
}
_root.dungeonCountBoss = 3;
while(_root.dungeonCountChest < 10)
{
   i = random(29) + 7;
   if(_root.dungeonRoomChest[i] == 0 && i != _root.dungeonFinalRoom)
   {
      _root.dungeonCountChest += 1;
      _root.dungeonRoomChest[i] = 1;
   }
}
_root.dispNews(66,"You can use arrow keys to navigate.");
_root.dispNews(66,"There\'s no air. You will take damage over time.");
_root.challengeCompatible = false;
