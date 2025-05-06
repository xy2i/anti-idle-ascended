//! status=pending
on(release){
   _parent.gotoAndStop(5);
}


onClipEvent(enterFrame){
   if(_root.save.arcadeToken < 2 && _root.save.rankedMode == true)
   {
      _alpha = 30;
   }
   else
   {
      _alpha = 100;
   }
}


