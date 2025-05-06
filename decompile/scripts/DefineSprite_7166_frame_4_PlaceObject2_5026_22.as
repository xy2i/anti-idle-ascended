//! status=pending
on(release){
   _root.save.lolConfig1 = 1;
}


onClipEvent(enterFrame){
   if(_root.save.lolConfig1 == 1)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


