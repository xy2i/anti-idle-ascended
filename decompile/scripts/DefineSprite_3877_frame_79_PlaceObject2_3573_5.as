//! status=pending
on(release){
   if(_root.dungeonRoom == 36 && _root.dungeonRoomDecor[36] == 6)
   {
      _root.house.arena.kommanderDialog.gotoAndStop(8);
   }
   if(_root.dungeonRoom == _root.dungeonFinalRoom && _root.dungeonRoomClear[_root.dungeonRoom] == 1 && _root.endlessFloor < floorCap)
   {
      _root.endlessFloor += 1;
      if(_root.save.raidEndless < _root.endlessFloor)
      {
         _root.save.raidEndless = _root.endlessFloor;
      }
      _root.fightStat = "Endless Dungeon - " + _root.endlessFloor + "Fl.";
      _parent.floorText.text = _root.endlessFloor;
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
      if(_root.endlessFloor % 5 != 0)
      {
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
      }
      else
      {
         _root.dungeonFinalRoom = random(35) + 1;
         _root.dungeonRoomMob[_root.dungeonFinalRoom] = 21;
         _root.dungeonRoomClear[_root.dungeonFinalRoom] = 0;
         if(_root.endlessFloor == floorCap)
         {
            _root.dungeonFinalRoom = 9001;
         }
         _root.dungeonRoomDecor[_root.dungeonFinalRoom] = 5;
         while(_root.dungeonCountMob < 20)
         {
            i = random(35) + 1;
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
            i = random(35) + 1;
            if(_root.dungeonRoomMob[i] == 0)
            {
               _root.dungeonCountBoss += 1;
               _root.dungeonRoomClear[i] = 0;
               _root.dungeonRoomMob[i] = 16 + _root.dungeonCountBoss;
            }
         }
         while(_root.dungeonCountChest < 10)
         {
            i = random(35) + 1;
            if(_root.dungeonRoomChest[i] == 0 && i != _root.dungeonFinalRoom)
            {
               _root.dungeonCountChest += 1;
               _root.dungeonRoomChest[i] = 1;
            }
         }
      }
   }
}


onClipEvent(enterFrame){
   if(_parent.diag < 2)
   {
      _parent.diag += 1;
   }
   fr = _root.dungeonRoomDecor[_root.dungeonRoom];
   gotoAndStop(fr);
   if(_root.dungeonRoom == 36)
   {
      _parent.floorText.text = _root.endlessFloor;
   }
   if(Key.isDown(16) && _root.house.arena.popScreen._currentframe == 1)
   {
      if(_root.dungeonRoom == 36 && _root.dungeonRoomDecor[36] == 6)
      {
         _root.house.arena.kommanderDialog.gotoAndStop(8);
      }
      if(_root.dungeonRoom == _root.dungeonFinalRoom && _root.dungeonRoomClear[_root.dungeonRoom] == 1 && _root.endlessFloor < floorCap)
      {
         _root.endlessFloor += 1;
         if(_root.save.raidEndless < _root.endlessFloor)
         {
            _root.save.raidEndless = _root.endlessFloor;
         }
         _root.fightStat = "Endless Dungeon - " + _root.endlessFloor + "Fl.";
         _parent.floorText.text = _root.endlessFloor;
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
         if(_root.endlessFloor % 5 != 0)
         {
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
         }
         else
         {
            _root.dungeonFinalRoom = random(35) + 1;
            _root.dungeonRoomMob[_root.dungeonFinalRoom] = 21;
            _root.dungeonRoomClear[_root.dungeonFinalRoom] = 0;
            if(_root.endlessFloor == floorCap)
            {
               _root.dungeonFinalRoom = 9001;
            }
            _root.dungeonRoomDecor[_root.dungeonFinalRoom] = 5;
            while(_root.dungeonCountMob < 20)
            {
               i = random(35) + 1;
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
               i = random(35) + 1;
               if(_root.dungeonRoomMob[i] == 0)
               {
                  _root.dungeonCountBoss += 1;
                  _root.dungeonRoomClear[i] = 0;
                  _root.dungeonRoomMob[i] = 16 + _root.dungeonCountBoss;
               }
            }
            while(_root.dungeonCountChest < 10)
            {
               i = random(35) + 1;
               if(_root.dungeonRoomChest[i] == 0 && i != _root.dungeonFinalRoom)
               {
                  _root.dungeonCountChest += 1;
                  _root.dungeonRoomChest[i] = 1;
               }
            }
         }
      }
   }
}


onClipEvent(load){
   floorCap = 250;
   _parent.diag = 0;
}


