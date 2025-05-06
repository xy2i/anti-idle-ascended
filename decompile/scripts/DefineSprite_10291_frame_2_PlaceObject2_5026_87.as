//! status=pending
on(release){
   if(_root.save.rangeAnimate != true)
   {
      _root.save.rangeAnimate = true;
   }
   else
   {
      _root.save.rangeAnimate = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.rangeAnimate == false)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


