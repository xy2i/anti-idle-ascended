//! status=pending
onClipEvent(enterFrame){
   chargePct = (_root.arcadeShieldCharge - 1) * 100;
   if(chargePct < 0)
   {
      chargePct = 0;
   }
   if(chargePct >= 100)
   {
      chargeBar.gotoAndStop(2);
      chargeBar._xscale = 100;
   }
   else
   {
      chargeBar.gotoAndStop(1);
      chargeBar._xscale = chargePct;
   }
}


