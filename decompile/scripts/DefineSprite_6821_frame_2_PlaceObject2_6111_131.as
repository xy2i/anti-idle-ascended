//! status=pending
onClipEvent(enterFrame){
   if(_root.save.rankedMode == true)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}


onClipEvent(load){
   if(_root.save.rankedMode == true)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}


