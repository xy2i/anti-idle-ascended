//! status=pending
onClipEvent(enterFrame){
   if(_root.arcadeLife > 0)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}


