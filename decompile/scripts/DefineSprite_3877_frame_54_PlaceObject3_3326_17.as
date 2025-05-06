//! status=pending
on(release,keyPress "<Left>"){
   if(ok == 1 && _parent.diag >= 2)
   {
      _parent.diag = 0;
      _root.dungeonRoom -= 1;
      _root.house.arena.enemy.approach = 4;
      ok = 0;
   }
}


onClipEvent(enterFrame){
   ok = 0;
   if(_root.dungeonRoom % 6 != 1 && _root.dungeonRoomClear[_root.dungeonRoom] == 1)
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


