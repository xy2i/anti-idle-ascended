//! status=pending
onClipEvent(enterFrame){
   if(alp > 0)
   {
      alp = Math.floor(alp * 0.9 - 1);
      if(alp < 0)
      {
         alp = 0;
      }
   }
   _alpha = 50 + alp / 2;
   if(tmpValue != _currentframe)
   {
      tmpValue = _currentframe;
      alp = 100;
   }
}


onClipEvent(load){
   _alpha = 100;
   alp = 0;
   tmpValue = 0;
}


