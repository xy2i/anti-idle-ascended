//! status=pending
on(release){
   if(_root.save.arenaPixel >= 1000000000)
   {
      _root.save.arenaPixel -= 1000000000;
      _root.endlessFloor += 5;
      if(Math.random() < 0.25 && _root.endlessFloor < 180)
      {
         _root.endlessFloor += 5;
      }
      if(_root.save.raidEndless < _root.endlessFloor)
      {
         _root.save.raidEndless = _root.endlessFloor;
      }
      _root.fightStat = "Endless Dungeon - " + _root.endlessFloor + "Fl.";
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
      mfl = 210;
      if(_root.worstMoon == true)
      {
         mfl = 170;
      }
      if((_root.save.raidEndless >= (_root.endlessFloor - 1) * 2 + 11 && _root.endlessFloor < mfl || _root.save.raidEndless >= _root.endlessFloor + 40) && _root.endlessFloor % 5 == 1 && _root.endlessFloor < mfl)
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
      _parent.gotoAndStop(1);
   }
}


