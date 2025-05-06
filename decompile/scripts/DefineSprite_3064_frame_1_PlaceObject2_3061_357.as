//! status=pending
onClipEvent(enterFrame){
   if(_root.clock_hour >= 5 && _root.clock_hour < 11)
   {
      _alpha = 100;
   }
   else if(_root.clock_hour >= 11 && _root.clock_hour < 16)
   {
      _alpha = 75;
   }
   else if(_root.clock_hour >= 16 && _root.clock_hour < 19)
   {
      _alpha = 50;
   }
   else
   {
      _alpha = 0;
   }
}


onClipEvent(load){
   _alpha = 100;
   gotoAndStop(1);
}


