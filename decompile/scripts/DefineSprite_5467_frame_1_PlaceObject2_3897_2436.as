//! status=pending
onClipEvent(enterFrame){
   if(_root.arenaDelay > _root.arenaDelay2)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


