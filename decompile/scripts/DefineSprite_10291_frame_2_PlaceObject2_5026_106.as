//! status=pending
on(release){
   if(_root.save.enableTip != true)
   {
      _root.save.enableTip = true;
   }
   else
   {
      _root.save.enableTip = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.enableTip == false)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


