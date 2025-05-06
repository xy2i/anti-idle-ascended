//! status=pending
onClipEvent(enterFrame){
   _X = Math.round(_root.playerDist) + 20;
   if(_root.fishStatus == 3)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 0;
   }
}


