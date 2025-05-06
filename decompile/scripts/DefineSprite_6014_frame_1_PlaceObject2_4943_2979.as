//! status=pending
onClipEvent(enterFrame){
   if(fightTextX != _root.fightStat || _root.updateFightStatA == 1)
   {
      _root.updateFightStatA = 0;
      fightTextX = _root.fightStat;
      gotoAndStop(1);
      fightText.text = _root.fightStat;
      targetAlpha = 150;
      _root.updateFightStat = 0;
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
      gotoAndStop(2);
   }
}


onClipEvent(load){
   _alpha = 0;
   targetAlpha = 0;
   fightTextX = "";
   _root.updateFightStatA = 0;
}


