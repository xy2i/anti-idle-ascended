//! status=pending
onClipEvent(enterFrame){
   if(_root.manaPower != true)
   {
      gotoAndStop(1);
   }
   else if(_currentframe == 1)
   {
      gotoAndPlay(2);
   }
}


