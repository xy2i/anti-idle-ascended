//! status=pending
on(release){
   _root.save.boostAuto2 = !_root.save.boostAuto2;
}


onClipEvent(enterFrame){
   if(_root.save.boostAuto2 == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


