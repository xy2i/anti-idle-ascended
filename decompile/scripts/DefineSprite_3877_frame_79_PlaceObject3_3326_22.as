//! status=pending
on(keyPress "<Down>"){
   if(ok == 1 && _parent.diag >= 2 && _root.dungeonRoom != 36 && _root.house.arena.kommanderDialog._currentframe == 1)
   {
      _parent.diag = 0;
      _root.dungeonRoom += 6;
      _root.house.arena.enemy.approach = 4;
      ok = 0;
   }
}


on(release){
   if(_root.dungeonRoom == 36)
   {
      _root.save.arenaZone = 0;
      _root.arenaCombo = 0;
   }
   else if(ok == 1 && _parent.diag >= 2)
   {
      _parent.diag = 0;
      _root.dungeonRoom += 6;
      _root.house.arena.enemy.approach = 4;
      ok = 0;
   }
}


onClipEvent(enterFrame){
   ok = 0;
   if(_root.dungeonRoom < 31 && _root.dungeonRoomClear[_root.dungeonRoom] == 1 || _root.dungeonRoom == 36)
   {
      ok = 1;
   }
   if(ok == 0 && _alpha != 0)
   {
      _alpha = 0;
   }
   if(ok == 1 && _alpha != 100)
   {
      _alpha = 100;
   }
}


