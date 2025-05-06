//! status=pending
onClipEvent(enterFrame){
   if(_alpha > 0)
   {
      _alpha = _alpha - 10;
   }
}


onClipEvent(load){
   _alpha = 0;
}


