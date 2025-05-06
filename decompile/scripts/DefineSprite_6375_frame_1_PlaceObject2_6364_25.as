//! status=pending
onClipEvent(enterFrame){
   if(_root.arcadePongPowerType != "")
   {
      targetAlpha = 100;
   }
   else
   {
      targetAlpha = 0;
   }
   _alpha = _alpha + (targetAlpha - _alpha) / 5;
}


onClipEvent(load){
   _alpha = 0;
}


