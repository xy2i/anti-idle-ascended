//! status=pending
onClipEvent(enterFrame){
   if(Math.random() < 0.1 && _alpha <= 0 && _parent._currentframe < 420)
   {
      _alpha = 30;
      _X = random(100) * 5;
      _Y = random(40) * 5;
   }
   if(_alpha > 0)
   {
      _alpha = _alpha - 10;
   }
}


onClipEvent(load){
   _alpha = 0;
}


