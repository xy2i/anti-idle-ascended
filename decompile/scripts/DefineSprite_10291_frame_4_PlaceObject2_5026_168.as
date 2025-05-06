//! status=pending
on(release){
   _root.save.boostAuto = !_root.save.boostAuto;
}


onClipEvent(enterFrame){
   if(_root.save.boostAuto == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


