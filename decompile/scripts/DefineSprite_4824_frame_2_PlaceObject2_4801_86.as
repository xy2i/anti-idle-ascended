//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Spirit Potion</font></b>\nPixel Cost: <font color=\'#FFFF00\'>" + _root.withComma(pixelCost) + "</font>\nCooldown: <font color=\'#FFFF00\'>60 seconds</font>\nSpirit: <b>+" + _root.withComma(maxRefill) + "</b>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(coolDown > 0)
   {
      if(_root.house.arena.enemy.enemyID != 0)
      {
         if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
         {
            coolDown -= 0.025;
         }
      }
      else
      {
         coolDown -= 1 / _root.fps;
      }
   }
   mpToRefill = _root.maxSpirit - _root.save.arenaSpirit;
   maxRefill = Math.floor((50 + _root.save.arenaSkill[24] * 1) * _root.potionEfficiency / 100);
   if(mpToRefill > maxRefill)
   {
      mpToRefill = maxRefill;
   }
   if(_root.save.arenaZone == 29 || _root.arenaPotionBlock > 0)
   {
      mpToRefill = 0;
   }
   pixelCost = Math.floor(mpToRefill * 1000 * 100 / _root.potionEfficiency);
   if(_root.save.arenaSkill[26] > 0)
   {
      pixelCost = Math.floor(pixelCost * 0.2);
   }
   if(coolDown > 0)
   {
      fr = 5;
   }
   else if(mpToRefill < 1)
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
      if(_root.arenaDelay <= 0 && _root.save.arenaPixel >= pixelCost && _root.save.arenaSpirit < _root.maxSpirit && mpToRefill > 0 && coolDown <= 0 && _root.arenaBot < 48000)
      {
         coolDown = 60;
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay;
         _root.save.arenaSpirit += mpToRefill;
         _root.save.arenaPixel -= pixelCost;
      }
   }
}


onClipEvent(load){
   skillDelay = 75;
   coolDown = 60;
}


