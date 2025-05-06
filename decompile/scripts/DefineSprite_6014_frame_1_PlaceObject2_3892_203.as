//! status=pending
onClipEvent(enterFrame){
   target = _root.arenaCombo;
   if(target > disp)
   {
      disp += Math.ceil((target - disp) / 5);
   }
   else if(target < disp)
   {
      disp += Math.floor((target - disp) / 5);
   }
   if(disp >= 99999)
   {
      fr = 8;
   }
   else if(disp >= 10000)
   {
      fr = 7;
   }
   else if(disp >= 1000)
   {
      fr = 6;
   }
   else if(disp >= 500)
   {
      fr = 5;
   }
   else if(disp >= 200)
   {
      fr = 4;
   }
   else if(disp >= 100)
   {
      fr = 3;
   }
   else if(disp >= 1)
   {
      fr = 2;
   }
   else
   {
      fr = 1;
   }
   if(_root.save.arenaZone == 47)
   {
      _root.arenaCombo = 0;
      fr = 1;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
   if(comboText.text != _root.withComma(disp))
   {
      comboText.text = _root.withComma(disp);
      scale = 110;
   }
   if(scale > 100)
   {
      scale -= 2;
   }
   _xscale = scale;
   _yscale = scale;
}


onClipEvent(load){
   scale = 100;
   disp = _root.arenaCombo;
}


