//! status=pending
onClipEvent(enterFrame){
   if(Math.random() < 0.01)
   {
      _alpha = 100;
   }
   if(_alpha > 0)
   {
      _alpha = _alpha - 50;
   }
}


