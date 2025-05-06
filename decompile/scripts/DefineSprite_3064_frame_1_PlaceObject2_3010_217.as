//! status=pending
onClipEvent(enterFrame){
   if(_root.clock_hour >= 6 && _root.clock_hour < 12)
   {
      gotoAndStop(1);
   }
   else if(_root.clock_hour >= 12 && _root.clock_hour < 16)
   {
      gotoAndStop(2);
   }
   else if(_root.clock_hour >= 16 && _root.clock_hour < 19)
   {
      gotoAndStop(3);
   }
   else
   {
      gotoAndStop(4);
   }
}


onClipEvent(load){
   _alpha = 100;
}


