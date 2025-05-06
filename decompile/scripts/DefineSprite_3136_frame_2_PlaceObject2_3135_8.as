//! status=pending
onClipEvent(enterFrame){
   fr = 1;
   if(_parent.ready == 1)
   {
      fr = 2;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


