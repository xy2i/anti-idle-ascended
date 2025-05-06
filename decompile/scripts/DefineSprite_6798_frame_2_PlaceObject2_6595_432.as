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
}


onClipEvent(load){
   function loadPower()
   {
      powerType = 18;
      powerCost = 0;
      if(_root.focusTiletype == 3)
      {
         powerType = 8;
         powerCost = 20;
      }
      else if(_root.focusTiletype == 4)
      {
         powerType = 10;
         powerCost = 30;
      }
      else if(_root.focusTiletype == 5)
      {
         powerType = 12;
         powerCost = 30;
      }
      else if(_root.focusTiletype == 6)
      {
         powerType = 14;
         powerCost = 60;
      }
      else if(_root.focusTiletype == 7)
      {
         powerType = 16;
         powerCost = 60;
      }
      gotoAndStop(powerType);
   }
   loadPower();
}


