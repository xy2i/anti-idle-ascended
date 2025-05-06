//! status=pending
onClipEvent(enterFrame){
   onlineMult = 100;
   activityMult = _root.save.curBusinessActivity / (_root.save.curBusinessOnline * 2 + 1800) * 100;
   if(activityMult < 25)
   {
      activityMult = 25;
   }
   if(activityMult > 100)
   {
      activityMult = 100;
   }
   careerMult = _root.save.careerLevel[_root.save.curBusiness];
   if(careerMult < 25)
   {
      careerMult = 25;
   }
   if(careerMult > 100)
   {
      careerMult = 100;
   }
   finalScore = Math.floor((Math.pow(_root.save.curBusinessActivity,1.01) * 10 + Math.pow(_root.save.curBusinessOnline,1.01) * 5 + Math.pow(_root.save.curBusinessOffline,1.01)) * onlineMult * activityMult * careerMult / 40000000);
   if(finalScore > 100000000)
   {
      finalScore = 100000000;
   }
   if(finalScore < 1000)
   {
      pct = 25 * (finalScore / 1000);
      gotoAndStop(1);
   }
   else if(finalScore < 10000)
   {
      pct = 25 + 25 * ((finalScore - 1000) / 9000);
      gotoAndStop(2);
   }
   else if(finalScore < 100000)
   {
      pct = 50 + 25 * ((finalScore - 10000) / 90000);
      gotoAndStop(3);
   }
   else if(finalScore < 1000000)
   {
      pct = 75 + 25 * ((finalScore - 100000) / 900000);
      gotoAndStop(4);
   }
   else
   {
      pct = 100 + 100 * ((finalScore - 1000000) / 99000000);
      gotoAndStop(5);
   }
   pctDisp = Math.floor(pct * 10) / 10;
   if(Math.floor(pctDisp) == pctDisp)
   {
      pctDisp += ".0";
   }
   if(pct >= 200)
   {
      pctDisp = "MAX";
   }
   pctText.text = pctDisp;
   if(pct > 100)
   {
      pct = 100;
   }
   _X = 50 + pct * 4;
}


