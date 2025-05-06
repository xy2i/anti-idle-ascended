//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Health Potion</font></b>\nPixel Cost: <font color=\'#FFFF00\'>" + _root.withComma(pixelCost) + "</font>\nHP: <b>+" + _root.withComma(maxRefill) + "</b>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   hpToRefill = _root.maxHealth - _root.save.arenaHealth;
   maxRefill = Math.floor((100000 + _root.save.arenaSkill[21] * 20000) * _root.potionEfficiency / 100);
   if(hpToRefill > maxRefill)
   {
      hpToRefill = maxRefill;
   }
   if(_root.save.arenaZone == 24 || _root.save.arenaZone == 29 || _root.save.arenaZone == 52 || _root.save.arenaZone >= 30 && _root.save.arenaZone <= 43 || _root.arenaPotionBlock > 0)
   {
      hpToRefill = 0;
   }
   pixelCost = Math.floor(hpToRefill * 0.05 * 100 / _root.potionEfficiency);
   if(_root.save.arenaSkill[26] > 0)
   {
      pixelCost = Math.floor(pixelCost * 0.2);
   }
   if(hpToRefill < 1)
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
   if(Key.isDown(_root.saveGlobal.keyArenaQ) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.arenaDelay <= 0 && _root.save.arenaPixel >= pixelCost && _root.save.arenaHealth < _root.maxHealth && _root.save.arenaHealth > 0 && hpToRefill > 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay;
         _root.save.arenaHealth += hpToRefill;
         _root.save.arenaPixel -= pixelCost;
         _root.house.arena.showDamage(hpToRefill,39423,62.5,70);
      }
   }
}


onClipEvent(load){
   skillDelay = 75;
}


