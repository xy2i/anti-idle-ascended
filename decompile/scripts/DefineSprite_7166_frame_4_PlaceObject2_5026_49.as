//! status=pending
on(release){
   _root.save.lolConfig3 = !_root.save.lolConfig3;
}


onClipEvent(enterFrame){
   if(_root.save.lolConfig3 == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


