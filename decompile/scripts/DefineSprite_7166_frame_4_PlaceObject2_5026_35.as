//! status=pending
on(release){
   _root.save.lolConfig2 = 1;
}


onClipEvent(enterFrame){
   if(_root.save.lolConfig2 == 1)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


