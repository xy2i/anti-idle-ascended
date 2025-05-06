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
         powerType = 7;
         powerCost = 15;
      }
      else if(_root.focusTiletype == 4)
      {
         powerType = 9;
         powerCost = 30;
      }
      else if(_root.focusTiletype == 5)
      {
         powerType = 11;
         powerCost = 30;
      }
      else if(_root.focusTiletype == 6)
      {
         powerType = 13;
         powerCost = 20;
      }
      else if(_root.focusTiletype == 7)
      {
         powerType = 15;
         powerCost = 15;
      }
      gotoAndStop(powerType);
   }
   loadPower();
}


