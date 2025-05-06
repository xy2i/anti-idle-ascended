//! status=pending
on(release){
   if(_root.arcadeTimeLeft > powerCost && powerType != 18 && _root.mindPowerCooldown <= 0)
   {
      _root.mindPowerCooldown = 1;
      _root.arcadeTimeLeft -= powerCost;
      tilex = _root.focusx;
      tiley = _root.focusy;
      if(powerType == 7)
      {
         _root["tile" + (tilex - 1) + "_" + (tiley - 1) + "S"] = true;
         _root["tile" + (tilex - 1) + "_" + (tiley + 0) + "S"] = true;
         _root["tile" + (tilex - 1) + "_" + (tiley + 1) + "S"] = true;
         _root["tile" + (tilex + 0) + "_" + (tiley - 1) + "S"] = true;
         _root["tile" + (tilex + 0) + "_" + (tiley + 1) + "S"] = true;
         _root["tile" + (tilex + 1) + "_" + (tiley - 1) + "S"] = true;
         _root["tile" + (tilex + 1) + "_" + (tiley + 0) + "S"] = true;
         _root["tile" + (tilex + 1) + "_" + (tiley + 1) + "S"] = true;
      }
      else if(powerType == 8)
      {
         i = 1;
         while(i <= 25)
         {
            tilex = random(20);
            tiley = random(10);
            _root["tile" + tilex + "_" + tiley + "B"] = true;
            i++;
         }
      }
      else if(powerType == 9)
      {
         i = 0;
         while(i < 20)
         {
            _root["tile" + i + "_" + tiley + "A"] = true;
            i++;
         }
         i = 0;
         while(i < 10)
         {
            _root["tile" + tilex + "_" + i + "A"] = true;
            i++;
         }
      }
      else if(powerType == 10)
      {
         i = 0;
         while(i < 20)
         {
            _root["tile" + i + "_" + tiley + "A"] = true;
            i++;
         }
         i = 0;
         while(i < 10)
         {
            _root["tile" + tilex + "_" + i + "A"] = true;
            i++;
         }
         i = -9;
         while(i < 10)
         {
            if(tilex + i >= 0 && tilex + i <= 19 && tiley + i >= 0 && tiley + i <= 19)
            {
               _root["tile" + (tilex + i) + "_" + (tiley + i) + "A"] = true;
            }
            if(tilex - i >= 0 && tilex - i <= 19 && tiley + i >= 0 && tiley + i <= 19)
            {
               _root["tile" + (tilex - i) + "_" + (tiley + i) + "A"] = true;
            }
            i++;
         }
      }
      else if(powerType == 11)
      {
         i = 0;
         while(i < 20)
         {
            j = 0;
            while(j < 10)
            {
               if(Math.abs(tilex - i) + Math.abs(tiley - j) == _root.focusDist - 1)
               {
                  _root["tile" + i + "_" + j + "A"] = true;
               }
               j++;
            }
            i++;
         }
      }
      else if(powerType == 12)
      {
         i = 0;
         while(i < 20)
         {
            j = 0;
            while(j < 10)
            {
               if(Math.abs(tilex - i) + Math.abs(tiley - j) == _root.focusDist + 1)
               {
                  _root["tile" + i + "_" + j + "A"] = true;
               }
               j++;
            }
            i++;
         }
      }
      else if(powerType == 13)
      {
         _root["tile" + tilex + "_" + tiley + "ToArrow"] = true;
      }
      else if(powerType == 14)
      {
         _root["tile" + tilex + "_" + tiley + "ToNumber"] = true;
      }
      else if(powerType == 15)
      {
         _root.arcadeTurns += 3;
      }
      else if(powerType == 16)
      {
         _root.arcadeTurns += 9;
      }
   }
}


onClipEvent(enterFrame){
   loadPower();
   if(_root.arcadeTimeLeft > powerCost && _root.mindPowerCooldown <= 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   function loadPower()
   {
      powerType = 18;
      powerCost = 0;
      if(_root.focusTiletype == 3)
      {
         powerType = 8;
         powerCost = 15;
      }
      else if(_root.focusTiletype == 4)
      {
         powerType = 10;
         powerCost = 50;
      }
      else if(_root.focusTiletype == 5)
      {
         powerType = 12;
         powerCost = 25;
      }
      else if(_root.focusTiletype == 6)
      {
         powerType = 14;
         powerCost = 30;
      }
      else if(_root.focusTiletype == 7)
      {
         powerType = 16;
         powerCost = 50;
      }
      gotoAndStop(powerType);
   }
   loadPower();
}


