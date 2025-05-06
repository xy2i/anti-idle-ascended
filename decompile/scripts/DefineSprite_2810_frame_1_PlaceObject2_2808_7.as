//! status=pending
onClipEvent(enterFrame){
   fr = Math.ceil(_root.save.printerCharge / 40 - 0.75) + 1;
   if(fr > 6)
   {
      fr = 6;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


