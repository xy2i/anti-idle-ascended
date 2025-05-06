//! status=pending
on(release){
   if(_root.arcadeTimeLeft > powerCost && powerType != 18 && _root.mindPowerCooldown <= 0)
   {
      _root.mindPowerCooldown = 1;
      _root.arcadeTimeLeft -= powerCost;
      tilex = _root.focusx;
      tiley = _root.focusy;
      i = tiley + 1;
      while(i < 10)
      {
         _root["tile" + tilex + "_" + i + "A"] = true;
         i++;
      }
   }
}


onClipEvent(enterFrame){
   loadPower();
   if(_root.arcadeTimeLeft > powerCost && _root.mindPowerCooldown <= 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   function loadPower()
   {
      powerType = 18;
      powerCost = 0;
      if(_root.focusTiletype != -1)
      {
         powerType = 4;
         powerCost = 25;
      }
      gotoAndStop(powerType);
   }
   loadPower();
}


