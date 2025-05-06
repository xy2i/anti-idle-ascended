//! status=pending
onClipEvent(enterFrame){
   if(_alpha > 0)
   {
      _alpha = _alpha - 2;
   }
}


onClipEvent(load){
   gotoAndStop(1);
   _alpha = 0;
}


