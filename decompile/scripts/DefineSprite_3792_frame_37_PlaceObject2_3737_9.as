//! status=pending
onClipEvent(enterFrame){
   if(Math.random() < 0.1 && _alpha <= 0 && _parent._currentframe < 200)
   {
      _alpha = 100;
      _X = random(100) * 5 - 143;
      _Y = random(40) * 5 - 43;
   }
   if(_alpha > 0)
   {
      _alpha = _alpha - 10;
   }
}


onClipEvent(load){
   _alpha = 0;
}


