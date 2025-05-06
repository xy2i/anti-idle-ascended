//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Mana Potion</font></b>\nPixel Cost: <font color=\'#FFFF00\'>" + _root.withComma(pixelCost) + "</font>\nMP: <b>+" + _root.withComma(maxRefill) + "</b>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   mpToRefill = _root.maxMana - _root.save.arenaMana;
   maxRefill = Math.floor((100000 + _root.save.arenaSkill[24] * 20000) * _root.potionEfficiency / 100);
   if(mpToRefill > maxRefill)
   {
      mpToRefill = maxRefill;
   }
   if(_root.save.arenaZone == 29 || _root.arenaPotionBlock > 0)
   {
      mpToRefill = 0;
   }
   pixelCost = Math.floor(mpToRefill * 0.25 * 100 / _root.potionEfficiency);
   if(_root.save.arenaSkill[26] > 0)
   {
      pixelCost = Math.floor(pixelCost * 0.2);
   }
   if(mpToRefill < 1)
   {
      fr = 1;
   }
   else if(_root.arenaDelay > 0)
   {
      fr = 2;
   }
   else if(_root.save.arenaPixel < pixelCost)
   {
      fr = 3;
   }
   else
   {
      fr = 4;
   }
   if(Key.isDown(_root.saveGlobal.keyArenaW) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.arenaDelay <= 0 && _root.save.arenaPixel >= pixelCost && _root.save.arenaMana < _root.maxMana && mpToRefill > 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay;
         _root.save.arenaMana += mpToRefill;
         _root.save.arenaPixel -= pixelCost;
      }
   }
}


onClipEvent(load){
   skillDelay = 75;
}


