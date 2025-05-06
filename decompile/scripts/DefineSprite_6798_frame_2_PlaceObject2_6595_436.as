//! status=pending
onClipEvent(enterFrame){
   loadPower();
   if(_root.arcadeTimeLeft > powerCost)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
   if(_root.arcadeTurns <= 4 && Math.random() < 0.1 * _root.fps / 40)
   {
      if(_root.arcadeTimeLeft > powerCost && powerType != 18)
      {
         _root.arcadeTimeLeft -= powerCost;
         tilex = _root.focusx;
         tiley = _root.focusy;
         _root.mindMonsterFound = true;
         _root["tile" + _root.keyx + "_" + _root.keyy + "A"] = true;
      }
   }
}


onClipEvent(load){
   function loadPower()
   {
      powerType = 18;
      powerCost = 0;
      if(_root.keyrevealed == false)
      {
         powerType = 17;
         powerCost = 120;
      }
      gotoAndStop(powerType);
   }
   loadPower();
}


