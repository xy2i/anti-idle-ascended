//! status=pending
on(release){
   _root.save.lolConfig2 = 4;
}


onClipEvent(enterFrame){
   if(_root.save.lolConfig2 == 4)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


