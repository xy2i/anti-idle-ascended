//! status=pending
if(isNaN(_root.dungeonDiff))
{
   _root.dungeonDiff = 1;
}
_root.dungeonClear = false;
_root.fightStat = "Secret Dungeon";
_root.areaSafe = false;
_root.areaUnderwater = false;
_root.areaSpawn = 1.2;
_root.areaSpawnReduce = 0;
_root.areaRareChance = 100;
_root.areaAllyChance = 1;
_root.areaDamagePct = 20;
_root.areaEpicChance = 2;
_root.areaEpicChance2 = 15;
_root.dungeonMovementCD = 0.1;
maxMob = 20;
maxBoss = 4;
maxChest = 10;
if(_root.dungeonDiff == 3)
{
   _root.areaSpawn = 0.9;
   _root.areaAllyChance = 5;
   _root.areaEpicChance = 100;
   _root.areaEpicChance2 = 100;
   maxMob = 18;
   maxBoss = 6;
   maxChest = 20;
}
_root.dungeonAntiCurse = false;
if(_root.save.arenaBuffType == 8 && _root.dungeonDiff != 3)
{
   _root.dungeonAntiCurse = true;
   _root.fightStat2 = "The curse of the dungeon has been removed.";
   _root.areaAllyChance = 0;
   _root.save.arenaHardcore = false;
   _root.areaDamagePct = 100;
   _root.areaRareChance = 0;
   _root.areaEpicChance = 0;
   _root.areaEpicChance2 = 2;
}
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
_root.dungeonFinalRoom = random(35) + 1;
_root.dungeonChestOpen = 0;
_root.dungeonMobDefeat = 0;
_root.dungeonBossDefeat = 0;
i = 1;
while(i <= 36)
{
   _root.dungeonRoomBack[i] = random(4) + 1;
   _root.dungeonRoomDecor[i] = random(4) + 1;
   i++;
}
_root.dungeonRoomDecor[_root.dungeonFinalRoom] = 5;
_root.dungeonRoomMob[_root.dungeonFinalRoom] = 21;
_root.dungeonRoomClear[_root.dungeonFinalRoom] = 0;
while(_root.dungeonCountMob < maxMob)
{
   i = random(35) + 1;
   if(_root.dungeonRoomMob[i] == 0)
   {
      _root.dungeonCountMob += 1;
      _root.dungeonRoomClear[i] = 0;
      _root.dungeonRoomMob[i] = random(15) + 1;
      if(_root.dungeonDiff == 3)
      {
         if(Math.random() < 0.3)
         {
            _root.dungeonRoomMob[i] = 16;
         }
      }
      else if(Math.random() < 0.015)
      {
         _root.dungeonRoomMob[i] = 16;
      }
   }
}
while(_root.dungeonCountBoss < maxBoss)
{
   i = random(35) + 1;
   if(_root.dungeonRoomMob[i] == 0)
   {
      _root.dungeonCountBoss += 1;
      _root.dungeonRoomClear[i] = 0;
      _root.dungeonRoomMob[i] = 16 + _root.dungeonCountBoss;
      if(_root.dungeonCountBoss >= 5)
      {
         _root.dungeonRoomMob[i] = 17 + random(4);
      }
   }
}
while(_root.dungeonCountChest < maxChest)
{
   i = random(35) + 1;
   if(_root.dungeonRoomChest[i] == 0 && i != _root.dungeonFinalRoom)
   {
      _root.dungeonCountChest += 1;
      _root.dungeonRoomChest[i] = 1;
   }
}
if(_root.dungeonDiff == 3)
{
   _root.dispNews(66,"You have 60 minutes to clear the Secret Dungeon!");
}
else
{
   _root.dispNews(66,"You have 30 minutes to clear the Secret Dungeon!");
}
_root.dispNews(66,"Press Shift to open treasure chests or enter the portal.");
_root.dispNews(66,"You can use arrow keys to navigate.");
_root.challengeCompatible = false;
