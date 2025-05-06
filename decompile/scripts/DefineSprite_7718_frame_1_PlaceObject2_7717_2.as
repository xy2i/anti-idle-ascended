//! status=pending
onClipEvent(enterFrame){
   easyStreak = 3 + Math.floor(_root.save.fishLevel / 3);
   if(_root.save.fishRod == 4)
   {
      easyStreak = 0;
   }
   if(easyStreak > 20)
   {
      easyStreak = 20;
   }
   if(_root.save.fishStreak <= easyStreak || _root.fishStatus == 3)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 0;
   }
}


