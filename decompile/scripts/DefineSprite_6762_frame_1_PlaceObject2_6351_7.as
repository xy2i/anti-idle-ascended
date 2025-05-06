//! status=pending
onClipEvent(enterFrame){
   count += 1;
   if(count > 40)
   {
      if(_root.arcadePongPowerType == "Gravity" && xspeed < 0)
      {
         yspeed += 0.15;
      }
      if(_root.arcadePongPowerType == "Invisiball" && xspeed < 0)
      {
         _alpha = _alpha - 3;
      }
      else
      {
         _alpha = 100;
      }
      if(_Y < 20 + _height / 2)
      {
         _Y = 21 + _height / 2;
         yspeed *= -1;
         _root.arcadePongPower += 0.25;
         _root.arcadeScore += Math.floor(50 * _root.arcadeMultiplier);
      }
      if(_Y > 230 - _height / 2)
      {
         _Y = 229 - _height / 2;
         yspeed *= -1;
         _root.arcadePongPower += 0.25;
         _root.arcadeScore += Math.floor(50 * _root.arcadeMultiplier);
      }
      if(_X < 20)
      {
         _root.showPopup("Spectate Mode","The Dragon of Wisdom scored " + _root.withComma(_root.arcadeScore) + " in Pong.");
         _parent._parent.gotoAndStop(2);
         reset();
      }
      if(_X > 460)
      {
         _parent.pongATW = 0;
         _root.arcadeScore += Math.floor(5000 * _root.arcadeMultiplier);
         _root.arcadePongPower += 5 + _root.arcadeDifficulty * 0.5;
         _root.arcadeDifficulty += 1;
         reset();
      }
      if(hitTest(_parent.paddle1))
      {
         _root.arcadeScore += Math.floor(200 * _root.arcadeMultiplier);
         _root.arcadePongPower += 0.75;
         _X = 40;
         dfc = _Y - _parent.paddle1._y;
         yspeed += dfc / 15;
         xspeed *= -1.1;
      }
      if(hitTest(_parent.paddle2))
      {
         _X = 440;
         dfc = _Y - _parent.paddle2._y;
         yspeed += dfc / 15;
         xspeed *= -1.1;
         if(_root.arcadePongPowerType == "Antiphysics" && xspeed < 0)
         {
            yspeed *= -1;
         }
      }
      if(xspeed > 14)
      {
         xspeed = 14;
      }
      if(xspeed < -14)
      {
         xspeed = -14;
      }
      if(yspeed > 14)
      {
         yspeed = 14;
      }
      if(yspeed < -14)
      {
         yspeed = -14;
      }
      xspeed *= 0.9997;
      yspeed *= 0.9986;
      _X = _X + xspeed;
      _Y = _Y + yspeed;
      if(_X > 410 && _X < 430)
      {
         if(xspeed < 0)
         {
            cueCount = 0;
            cueDur = 0;
            tempX = _X;
            tempY = _Y;
            tempXSpeed = xspeed;
            tempYSpeed = yspeed;
            while(tempX > 40)
            {
               cueDur += 1;
               if(_root.arcadePongPowerType == "Gravity" && xspeed < 0)
               {
                  tempYSpeed += 0.15;
               }
               if(tempY < 20 + _height / 2)
               {
                  tempY = 21 + _height / 2;
                  if(cueCount < 7)
                  {
                     cueCount += 1;
                     _parent["tempCue" + cueCount]._alpha = cueDur * 10;
                     _parent["tempCue" + cueCount]._x = tempX;
                     _parent["tempCue" + cueCount]._y = tempY;
                  }
                  tempYSpeed *= -1;
               }
               if(tempY > 230 - _height / 2)
               {
                  tempY = 229 - _height / 2;
                  if(cueCount < 7)
                  {
                     cueCount += 1;
                     if(_root.arcadePongPowerType != "")
                     {
                        _parent["tempCue" + cueCount]._alpha = cueDur * 10;
                        _parent["tempCue" + cueCount]._x = tempX;
                        _parent["tempCue" + cueCount]._y = tempY;
                     }
                  }
                  tempYSpeed *= -1;
               }
               tempXSpeed *= 0.9997;
               tempYSpeed *= 0.9986;
               tempX += tempXSpeed;
               tempY += tempYSpeed;
               if(tempX < 40)
               {
                  if(cueCount < 7)
                  {
                     cueCount += 1;
                     _parent["tempCue" + cueCount]._alpha = cueDur * 10;
                     _parent["tempCue" + cueCount]._x = 40;
                     _parent["tempCue" + cueCount]._y = tempY;
                     cueCount = 9;
                  }
               }
            }
            _parent.pongMonster = tempY;
            risk = 35;
            if(_root.arcadePongPowerType == "Gravity")
            {
               risk = 30;
            }
            if(_root.arcadePongPowerType == "Smaller Paddle")
            {
               risk = 25;
            }
            if(_root.arcadePongPowerType == "Slower Paddle")
            {
               risk = 20;
            }
            if(tempYSpeed < 0)
            {
               _parent.pongMonster += risk;
            }
            if(tempYSpeed > 0)
            {
               _parent.pongMonster -= risk;
            }
         }
         else if(Math.abs(_Y - _parent.paddle2._y) > 40)
         {
            _parent.pongATW = 1;
         }
         else
         {
            _parent.pongATW = 0;
         }
      }
      else if(xspeed > 0)
      {
         _parent.pongMonster = 125;
      }
   }
}


onClipEvent(load){
   function reset()
   {
      count = 0;
      _X = 240;
      _Y = 125;
      xspeed = 5;
      yspeed = 1.2 + Math.random() - Math.random();
      if(Math.random() < 0.5)
      {
         yspeed *= -1;
      }
   }
   reset();
}


