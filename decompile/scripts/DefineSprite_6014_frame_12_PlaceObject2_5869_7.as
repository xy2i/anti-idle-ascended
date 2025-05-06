//! status=pending
on(release){
   _root.save.arenaHardcore = false;
}


onClipEvent(enterFrame){
   if(_root.save.arenaHardcore == false)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   _alpha = 0;
}


