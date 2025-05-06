//! status=pending
onClipEvent(enterFrame){
   if(_alpha > 50)
   {
      _alpha = _alpha - 1;
   }
}


onClipEvent(load){
   _alpha = 100;
}


