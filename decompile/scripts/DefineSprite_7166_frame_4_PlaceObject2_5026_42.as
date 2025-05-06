//! status=pending
on(release){
   _root.save.lolConfig2 = 3;
}


onClipEvent(enterFrame){
   if(_root.save.lolConfig2 == 3)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


