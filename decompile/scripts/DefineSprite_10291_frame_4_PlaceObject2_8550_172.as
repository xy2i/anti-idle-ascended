//! status=pending
onClipEvent(load){
   if(_root.save.boostPurchased >= 10)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


