//! status=pending
onClipEvent(enterFrame){
   del += 1;
   if(del >= 10)
   {
      del = 0;
      if(_root.arenaWeaken > 0)
      {
         fr = 1;
      }
      else
      {
         fr = 2;
      }
      if(_currentframe != fr)
      {
         gotoAndStop(fr);
      }
   }
}


onClipEvent(load){
   gotoAndStop(2);
   del = 0;
}


