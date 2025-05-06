//! status=pending
onClipEvent(enterFrame){
   if(fightTextX != _root.fightStat2 || _root.updateFightStatB == 1)
   {
      _root.updateFightStatB = 0;
      fightTextX = _root.fightStat2;
      if(fightTextX != "")
      {
         gotoAndStop(1);
         fightText.text = _root.fightStat2;
         targetAlpha = 150;
      }
   }
   targetAlpha -= 1;
   _alpha = targetAlpha;
   if(_alpha > 100)
   {
      _alpha = 100;
   }
   if(_alpha < 0)
   {
      _alpha = 0;
      _root.fightStat2 = "";
      gotoAndStop(2);
   }
}


onClipEvent(load){
   _alpha = 0;
   targetAlpha = 0;
   fightTextX = "";
   _root.updateFightStatB = 0;
}


