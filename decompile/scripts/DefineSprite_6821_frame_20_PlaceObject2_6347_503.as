//! status=pending
onClipEvent(load){
   if(_root.save.rankedMode != true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


