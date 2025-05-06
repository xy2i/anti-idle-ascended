//! status=pending
onClipEvent(enterFrame){
   if(_root.toUpdateRound == 1)
   {
      gotoAndStop(1);
      _root.arenaSoap = 0;
      _root.areaRevengeRage = 0;
      _root.areaRevengeCalm = 0;
      _root.toUpdateRound = 0;
      roundText2._x = -130;
      roundText._x = -70;
      if(_root.areaRevengeKill >= 9)
      {
         roundText2._x = -140;
         roundText._x = -60;
      }
      if(_root.areaRevengeKill >= 99)
      {
         roundText2._x = -150;
         roundText._x = -50;
      }
      if(_root.areaRevengeKill >= 999)
      {
         roundText2._x = -160;
         roundText._x = -40;
      }
      roundText.text = _root.areaRevengeKill + 1;
      if(_root.house.arena.enemy.hp < 0)
      {
         roundText.text = _root.areaRevengeKill;
      }
      redness = Math.floor(_root.areaRevengeKill) * 5;
      greenness = Math.floor(100 - _root.areaRevengeKill) * 5;
      if(redness > 250)
      {
         redness = 250;
      }
      if(greenness > 250)
      {
         greenness = 250;
      }
      if(redness < 0)
      {
         redness = 0;
      }
      if(greenness < 0)
      {
         greenness = 0;
      }
      colorCode = redness * 65536 + greenness * 256;
      roundText.textColor = colorCode;
      roundText2.textColor = colorCode;
      _xscale = 200;
      _yscale = 200;
   }
   if(_currentframe == 1)
   {
      if(_xscale > 100)
      {
         _xscale = _xscale - 20;
         _yscale = _yscale - 20;
         _alpha = 100;
      }
      else
      {
         _alpha = _alpha - 4;
         if(_alpha < 10)
         {
            gotoAndStop(2);
         }
      }
   }
   if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
   {
      _root.areaRevengeCalm += 1;
      if(_root.areaRevengeCalm > 30 && _root.areaRevengeRage > 0)
      {
         _root.areaRevengeRage = Math.floor(_root.areaRevengeRage * 0.9);
      }
   }
}


onClipEvent(load){
   roundText2.text = "ROUND";
   roundText.text = 1;
   roundText2._x = -140;
   roundText._x = -60;
   gotoAndStop(2);
}


