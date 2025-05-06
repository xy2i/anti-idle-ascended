//! status=pending
onClipEvent(enterFrame){
   if(_alpha > 0)
   {
      _alpha = _alpha - 1;
   }
   else
   {
      _alpha = 0;
      gotoAndStop(1);
   }
}


