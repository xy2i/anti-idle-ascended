//! status=pending
onClipEvent(enterFrame){
   if(_root.arcadePongPowerType == "Frozen Paddle")
   {
      gotoAndStop(1);
      if(_parent.ball._x < 115)
      {
         gotoAndStop(2);
      }
   }
   else
   {
      gotoAndStop(4);
   }
}


onClipEvent(load){
   gotoAndStop(4);
}


