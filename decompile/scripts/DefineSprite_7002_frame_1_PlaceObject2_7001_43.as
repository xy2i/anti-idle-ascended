//! status=pending
onClipEvent(enterFrame){
   duration += 1;
   if(duration <= 50)
   {
      _alpha = _alpha + 2;
   }
   if(duration >= 250)
   {
      _alpha = _alpha - 2;
   }
   if(duration == 300)
   {
      reset();
   }
}


onClipEvent(load){
   function reset()
   {
      _alpha = 0;
      _X = 500 + Math.random() * 4500;
      duration = 0;
   }
   reset();
}


