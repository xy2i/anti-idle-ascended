//! status=pending
onClipEvent(load){
   if(_root.save.arenaHardcore == true)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}


