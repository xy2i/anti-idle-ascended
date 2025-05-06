//! status=pending
onClipEvent(enterFrame){
   fr = _root.dungeonRoomBack[_root.dungeonRoom];
   if(_root.dungeonRoom > 6 && _root.dungeonRoomClear[_root.dungeonRoom] == 1)
   {
      fr += 4;
   }
   if(_root.dungeonDiff == 3)
   {
      fr += 8;
   }
   gotoAndStop(fr);
}


