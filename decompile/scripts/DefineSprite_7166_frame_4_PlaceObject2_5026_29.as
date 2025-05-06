//! status=pending
on(release){
   _root.save.lolConfig1 = 3;
}


onClipEvent(enterFrame){
   if(_root.save.lolConfig1 == 3)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


