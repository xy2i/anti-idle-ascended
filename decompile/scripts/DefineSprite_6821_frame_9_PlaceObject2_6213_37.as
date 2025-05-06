//! status=pending
onClipEvent(load){
   if(_root.save.rankedMode == true)
   {
      tokenCost = 3;
   }
   else
   {
      tokenCost = 0;
   }
   gotoAndStop(tokenCost + 1);
}


