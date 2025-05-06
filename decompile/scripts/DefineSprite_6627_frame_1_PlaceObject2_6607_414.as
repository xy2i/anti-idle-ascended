//! status=pending
onClipEvent(enterFrame){
   if(_root.save.arcadeDifficulty[6] == 4)
   {
      targetY = 250 - Math.sqrt(_root.arcadeAwesome + _root.arcadeGood * 10 + _root.arcadeMiss * 100) - _root.arcadeCombo * 0.25;
      if(targetY < 100)
      {
         targetY = 100;
      }
      _Y = targetY;
   }
}


onClipEvent(load){
   if(_root.save.arcadeDifficulty[6] == 4)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(2);
   }
}


