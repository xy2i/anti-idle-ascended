//! status=pending
onClipEvent(enterFrame){
   targetScale = _root.arcadePongPower;
   insideBar._xscale += (targetScale - insideBar._xscale) / 5;
   if(_root.arcadePongPowerType != "")
   {
      fr = 3;
      if(_root.arcadePongPower > 100)
      {
         _root.arcadePongPower = 100;
      }
      _root.arcadePongPower -= 0.05;
      if(_root.save.arcadeDifficulty[1] >= 3)
      {
         _parent.powerText.text = "3x Score - " + _root.arcadePongPowerType;
      }
      else
      {
         _parent.powerText.text = "2x Score - " + _root.arcadePongPowerType;
      }
      if(_root.arcadePongPower <= 0)
      {
         _root.arcadePongPower = 0;
         _root.arcadePongPowerType = "";
      }
   }
   else if(_root.arcadePongPower >= 50)
   {
      fr = 2;
      if(_root.arcadePongPower > 100)
      {
         _root.arcadePongPower = 100;
      }
      _parent.powerText.text = "Press SPACE to activate Pong Power!";
      if(Key.isDown(32))
      {
         powToGet = random(3) + 3;
         if(_root.save.arcadeDifficulty[1] >= 3)
         {
            powToGet = random(5) + 3;
         }
         if(powToGet == 1)
         {
            _root.arcadePongPowerType = "Gravity";
         }
         if(powToGet == 2)
         {
            _root.arcadePongPowerType = "Antiphysics";
         }
         if(powToGet == 3)
         {
            _root.arcadePongPowerType = "Smaller Paddle";
         }
         if(powToGet == 4)
         {
            _root.arcadePongPowerType = "Slower Paddle";
         }
         if(powToGet == 5)
         {
            _root.arcadePongPowerType = "Invisiball";
         }
         if(powToGet == 6)
         {
            _root.arcadePongPowerType = "Frozen Paddle";
         }
         if(powToGet == 7)
         {
            _root.arcadePongPowerType = "Invisible Paddle";
         }
      }
   }
   else
   {
      fr = 1;
      _parent.powerText.text = "";
      if(_root.save.arcadeDifficulty[1] == 3)
      {
         _root.arcadePongPower += 0.05;
         if(_root.save.rankedMode != true)
         {
            _root.arcadePongPower += 0.0025 * _root.save.unrankedPower[1];
         }
      }
      if(_root.save.arcadeDifficulty[1] == 4)
      {
         _root.arcadePongPower += 0.1;
         if(_root.save.rankedMode != true)
         {
            _root.arcadePongPower += 0.005 * _root.save.unrankedPower[1];
         }
      }
   }
   if(_root.arcadeLife == 0)
   {
      _root.arcadePongPower = 0;
      _root.arcadePongPowerType = "";
      _parent.powerText.text = "FINAL CHANCE!";
   }
   if(insideBar._currentframe != fr)
   {
      insideBar.gotoAndStop(fr);
   }
}


onClipEvent(load){
   insideBar._xscale = 0;
}


