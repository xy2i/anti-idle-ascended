//! status=pending
on(release){
   _parent.gotoAndStop(4);
}


onClipEvent(enterFrame){
   if(_root.save.arcadeToken < 3 && _root.save.rankedMode == true)
   {
      _alpha = 30;
   }
   else
   {
      _alpha = 100;
   }
}


