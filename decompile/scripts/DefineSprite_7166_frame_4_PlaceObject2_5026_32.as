//! status=pending
on(release){
   _root.save.lolConfig1 = 4;
}


onClipEvent(enterFrame){
   if(_root.save.lolConfig1 == 4)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


