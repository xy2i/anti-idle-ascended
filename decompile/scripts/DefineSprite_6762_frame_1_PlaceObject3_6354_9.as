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
      _parent.powerText.text = "2x Score - " + _root.arcadePongPowerType;
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
      if(_root.arcadePongPower >= 70 && _parent.pongATW == 1 || _root.arcadeTimeLeft < 60)
      {
         powToGet = random(5) + 1;
         if(powToGet == 1)
         {
            _root.arcadePongPowerType = "Gravity";
         }
         if(powToGet == 2)
         {
            _root.arcadePongPowerType = "Invisiball";
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
            _root.arcadePongPowerType = "Antiphysics";
         }
      }
   }
   else
   {
      fr = 1;
      _parent.powerText.text = "";
   }
   if(insideBar._currentframe != fr)
   {
      insideBar.gotoAndStop(fr);
   }
}


onClipEvent(load){
   insideBar._xscale = 0;
}


