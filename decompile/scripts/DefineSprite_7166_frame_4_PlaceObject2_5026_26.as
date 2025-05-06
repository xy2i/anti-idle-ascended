//! status=pending
on(release){
   _root.save.lolConfig1 = 2;
}


onClipEvent(enterFrame){
   if(_root.save.lolConfig1 == 2)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


