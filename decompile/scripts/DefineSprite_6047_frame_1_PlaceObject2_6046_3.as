//! status=pending
onClipEvent(enterFrame){
   if(_root.save.buttonBroken == true)
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


