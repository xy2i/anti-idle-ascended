//! status=pending
onClipEvent(enterFrame){
   fr = _root.dungeonRoomBack[_root.dungeonRoom];
   if(_root.endlessFloor % 5 != 0)
   {
      if(_root.dungeonRoom > 12 && _root.dungeonRoomClear[_root.dungeonRoom] == 1)
      {
         fr += 4;
      }
   }
   else if(_root.dungeonRoom > 6 && _root.dungeonRoomClear[_root.dungeonRoom] == 1)
   {
      fr += 4;
   }
   gotoAndStop(fr);
}


