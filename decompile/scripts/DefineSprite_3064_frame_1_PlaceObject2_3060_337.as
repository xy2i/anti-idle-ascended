//! status=pending
on(release){
   if(_alpha > 0)
   {
      _root.save.randomGhost = 1337;
      unloadMovie(this);
   }
}


onClipEvent(enterFrame){
   delay += 1;
   if(_root.clock_hour >= 20 || _root.clock_hour < 4)
   {
      if(delay > 700 && delay <= 750)
      {
         _alpha = delay - 700;
      }
      if(delay > 750 && delay <= 800)
      {
         _alpha = 800 - delay;
      }
   }
   else
   {
      _alpha = 0;
   }
   if(delay > 2000)
   {
      delay = 0;
   }
}


onClipEvent(load){
   _alpha = 0;
   delay = 0;
}


