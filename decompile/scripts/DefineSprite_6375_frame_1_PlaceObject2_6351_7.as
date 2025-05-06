//! status=pending
onClipEvent(enterFrame){
   count += 1;
   if(count > 40)
   {
      if(_root.arcadePongPowerType == "Gravity" && xspeed < 0)
      {
         if(_root.save.arcadeDifficulty[1] == 1)
         {
            yspeed += 0.105;
         }
         else
         {
            yspeed += 0.15;
         }
      }
      if(_root.arcadePongPowerType == "Invisiball" && xspeed < 0)
      {
         if(_root.save.arcadeDifficulty[1] == 1)
         {
            _alpha = _alpha - 2;
         }
         else if(_root.save.arcadeDifficulty[1] >= 3)
         {
            _alpha = _alpha - 5;
         }
         else
         {
            _alpha = _alpha - 3;
         }
      }
      else
      {
         _alpha = 100;
      }
      if(_root.arcadePongPowerType == "Flip" && flipped == false)
      {
         if(xspeed > 0 && _X >= _root.arcadeFlipX)
         {
            yspeed *= -1;
            flipped = true;
         }
         else if(xspeed < 0 && _X <= _root.arcadeFlipX)
         {
            yspeed *= -1;
            flipped = true;
         }
      }
      if(_Y < 20 + _height / 2)
      {
         _Y = 21 + _height / 2;
         yspeed *= -1;
         _root.arcadePongPower += 0.25;
         if(_root.save.rankedMode != true)
         {
            _root.arcadePongPower += 0.0125 * _root.save.unrankedPower[1];
         }
         _root.arcadeScore += Math.floor(50 * _root.arcadeMultiplier);
      }
      if(_Y > 230 - _height / 2)
      {
         _Y = 229 - _height / 2;
         yspeed *= -1;
         _root.arcadePongPower += 0.25;
         if(_root.save.rankedMode != true)
         {
            _root.arcadePongPower += 0.0125 * _root.save.unrankedPower[1];
         }
         _root.arcadeScore += Math.floor(50 * _root.arcadeMultiplier);
      }
      if(_X < 20)
      {
         if(_root.arcadeLife > 0)
         {
            _root.arcadeLife = 0;
            _parent.fail._alpha = 150;
            _parent.fail.gotoAndStop(2);
            _parent.fail.failBall._y = _Y;
            _parent.fail.failPaddle._y = _parent.paddle1._y;
            _parent.fail.failPaddle._yscale = _parent.paddle1._yscale;
            _X = 40;
            xspeed = 5;
         }
         else
         {
            _parent._parent.gotoAndStop(31);
         }
      }
      if(_X > 460)
      {
         progToEarn = Math.floor(500 + _root.arcadeMultiplier * 100);
         _root.progPercent += progToEarn;
         _root.dispNews(79,"[Pong] Goal! (+" + progToEarn + "% Progress)");
         _root.arcadeScore += Math.floor(5000 * _root.arcadeMultiplier);
         if(_root.save.arcadeDifficulty[1] == 3)
         {
            _root.arcadeScore += Math.floor(2500 * _root.arcadeMultiplier);
         }
         if(_root.save.arcadeDifficulty[1] == 4)
         {
            _root.arcadeScore += Math.floor(5000 * _root.arcadeMultiplier);
         }
         _root.arcadePongPower += 5 + _root.arcadeDifficulty * 0.5;
         if(_root.save.rankedMode != true)
         {
            _root.arcadePongPower += (0.25 + _root.arcadeDifficulty * 0.025) * _root.save.unrankedPower[1];
         }
         _root.arcadeDifficulty += 1;
         reset();
      }
      if(hitTest(_parent.paddle1))
      {
         progToEarn = Math.floor(25 + _root.arcadeMultiplier * 5);
         _root.progPercent += progToEarn;
         _root.dispNews(78,"[Pong] Hit! (+" + progToEarn + "% Progress)");
         _root.arcadeScore += Math.floor(200 * _root.arcadeMultiplier);
         _root.arcadePongPower += 0.75;
         if(_root.save.rankedMode != true)
         {
            _root.arcadePongPower += 0.0375 * _root.save.unrankedPower[1];
         }
         _X = 40;
         dfc = _Y - _parent.paddle1._y;
         yspeed += dfc / 15;
         xspeed *= -1.1;
         flipped = false;
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
         if(_X > 410)
         {
            if(xspeed < 0)
            {
               maxCue = 3;
               if(_root.arcadeTimeLeft < 380)
               {
                  maxCue = 2;
               }
               if(_root.arcadeTimeLeft < 340)
               {
                  maxCue = 1;
               }
               if(_root.arcadeTimeLeft < 300)
               {
                  maxCue = 0;
               }
               if(_root.save.rankedMode != true)
               {
                  if(_root.arcadeTimeLeft > 380 - 40 * _root.save.unrankedPower[5] && maxCue < 3)
                  {
                     maxCue = 3;
                  }
                  if(_root.arcadeTimeLeft > 340 - 50 * _root.save.unrankedPower[5] && maxCue < 2)
                  {
                     maxCue = 2;
                  }
                  if(_root.arcadeTimeLeft > 300 - 60 * _root.save.unrankedPower[5] && maxCue < 1)
                  {
                     maxCue = 1;
                  }
               }
               if(_root.arcadePongPowerType != "")
               {
                  maxCue = 0;
               }
               if(_root.arcadeLife == 0)
               {
                  maxCue = 0;
               }
               if(_root.save.arcadeConfig1 == false)
               {
                  maxCue = 0;
               }
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
                     if(cueCount < maxCue)
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
                     if(cueCount < maxCue)
                     {
                        cueCount += 1;
                        _parent["tempCue" + cueCount]._alpha = cueDur * 10;
                        _parent["tempCue" + cueCount]._x = tempX;
                        _parent["tempCue" + cueCount]._y = tempY;
                     }
                     tempYSpeed *= -1;
                  }
                  tempXSpeed *= 0.9997;
                  tempYSpeed *= 0.9986;
                  if(_root.save.arcadeDifficulty[1] == 1)
                  {
                     tempX += tempXSpeed * 0.7;
                     tempY += tempYSpeed * 0.7;
                  }
                  else
                  {
                     tempX += tempXSpeed;
                     tempY += tempYSpeed;
                  }
                  if(tempX <= 40)
                  {
                     if(cueCount < maxCue)
                     {
                        cueCount += 1;
                        _parent["tempCue" + cueCount]._alpha = cueDur * 10;
                        _parent["tempCue" + cueCount]._x = 40;
                        _parent["tempCue" + cueCount]._y = tempY;
                     }
                  }
               }
               _parent.pongMonster = tempY;
            }
         }
         _root.arcadeFlipX = 100 + random(150);
         flipped = false;
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
      if(_root.save.arcadeDifficulty[1] == 1)
      {
         _X = _X + xspeed * 0.7;
         _Y = _Y + yspeed * 0.7;
      }
      else
      {
         _X = _X + xspeed;
         _Y = _Y + yspeed;
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
      flipped = false;
   }
   reset();
}


