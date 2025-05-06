//! status=pending
onClipEvent(enterFrame){
   if(_alpha > 0)
   {
      _alpha = _alpha - 0.5;
   }
}


onClipEvent(load){
   _alpha = 0;
}


