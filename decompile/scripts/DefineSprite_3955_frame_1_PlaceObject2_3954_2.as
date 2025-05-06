//! status=pending
onClipEvent(enterFrame){
   if(Math.random() < 0.1 && alp == 0)
   {
      alp = 50 + random(6) * 10;
      _X = 0 + random(9) * 5;
      _Y = 50 - random(12) * 5;
   }
   if(alp > 0)
   {
      alp -= 10;
      _Y = _Y - 5;
   }
   _alpha = alp;
}


onClipEvent(load){
   alp = 0;
   _alpha = 0;
}


