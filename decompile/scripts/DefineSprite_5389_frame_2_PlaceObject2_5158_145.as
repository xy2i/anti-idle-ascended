//! status=pending
onClipEvent(enterFrame){
   if(_root.invTab == 8)
   {
      fr = 2;
   }
   else
   {
      fr = 1;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


