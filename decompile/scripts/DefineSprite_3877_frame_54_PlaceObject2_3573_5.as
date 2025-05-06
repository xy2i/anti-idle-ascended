//! status=pending
on(release){
   if(_root.dungeonRoom == _root.dungeonFinalRoom && _root.dungeonRoomClear[_root.dungeonRoom] == 1)
   {
      _root.save.arenaZone = 54;
   }
}


onClipEvent(enterFrame){
   if(_parent.diag < 2)
   {
      _parent.diag += 1;
   }
   fr = _root.dungeonRoomDecor[_root.dungeonRoom];
   gotoAndStop(fr);
   if(Key.isDown(16) && _root.house.arena.popScreen._currentframe == 1)
   {
      if(_root.dungeonRoom == _root.dungeonFinalRoom && _root.dungeonRoomClear[_root.dungeonRoom] == 1)
      {
         _root.save.arenaZone = 54;
      }
   }
}


onClipEvent(load){
   _parent.diag = 0;
}


