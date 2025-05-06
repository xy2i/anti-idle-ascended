//! status=pending
on(release){
   _root.save.arenaHardcore = true;
}


onClipEvent(enterFrame){
   if(_root.save.arenaHardcore == true)
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


