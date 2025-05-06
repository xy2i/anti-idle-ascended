//! status=pending
function resetTriangle()
{
   teleportDur = 0;
   ySpd = 0;
   curY = oriY;
   if(Math.random() < 0.5 && _root.arcadeDifficulty >= 6)
   {
      jump = "Jump";
   }
   else
   {
      jump = "";
   }
   changeDirection = 0;
   changeColor = 0;
   changeDirectionMax = 0;
   changeColorMax = 0;
   changeColorDelay = 0;
   if(_root.arcadeCondition3 != "Left" && _root.arcadeCondition3 != "Right" && Math.random() < 0.25 && _root.arcadeTimeLeft < _root.arcadeQuestionAppear + 9 && _root.save.arcadeDifficulty[8] >= 3)
   {
      changeDirectionMax = 1;
      if(_root.arcadeDifficulty >= 7)
      {
         changeDirectionMax = 1 + random(2);
      }
   }
   if(_root.arcadeCondition2 != "White" && _root.arcadeCondition2 != "Black" && Math.random() < 0.35 && _root.arcadeTimeLeft < _root.arcadeQuestionAppear + 9 && _root.save.arcadeDifficulty[8] >= 3)
   {
      changeColorMax = 1;
      if(_root.arcadeDifficulty >= 4)
      {
         changeColorMax = 1 + random(2);
      }
   }
   if(Math.random() < 0.1 && _root.arcadeDifficulty >= 2)
   {
      col = "Circle";
      gotoAndStop(4 + random(2));
   }
   else if(Math.random() < 0.5)
   {
      col = "White";
      gotoAndStop(2);
   }
   else
   {
      col = "Black";
      gotoAndStop(3);
   }
   if(Math.random() < 0.5 || _root.arcadeDifficulty < 4)
   {
      curX = 550 + Math.random() * 600;
      xSpd = -3 - Math.random() * 4;
      dir = "Left";
   }
   else
   {
      curX = -50 - Math.random() * 600;
      xSpd = 3 + Math.random() * 4;
      dir = "Right";
   }
   if(Math.random() < 0.03 * _root.arcadeDifficulty && _root.arcadeDifficulty >= 5 && changeColorMax < 1 && _root.save.arcadeDifficulty[8] >= 2)
   {
      fade = "In";
      Xalpha = 0;
   }
   else if(Math.random() < 0.03 * _root.arcadeDifficulty && _root.arcadeDifficulty >= 3 && changeColorMax < 1 && changeDirectionMax < 1 && _root.save.arcadeDifficulty[8] >= 2)
   {
      fade = "Out";
      Xalpha = 100;
   }
   else
   {
      fade = "";
      Xalpha = 100;
   }
   if(Math.random() < 0.03 * _root.arcadeDifficulty && _root.arcadeDifficulty >= 8 && changeColorMax < 1 && changeDirectionMax < 1 && _root.save.arcadeDifficulty[8] >= 2)
   {
      teleport = "Teleport";
   }
   else
   {
      teleport = "";
   }
   valid = true;
   if(col == "Circle")
   {
      valid = false;
   }
   if(_root.arcadeCondition1 == "Jump" && jump == "")
   {
      valid = false;
   }
   if(_root.arcadeCondition2 == "White" && col != "White")
   {
      valid = false;
   }
   if(_root.arcadeCondition2 == "Black" && col != "Black")
   {
      valid = false;
   }
   if(_root.arcadeCondition2 == "Color-Changing" && changeColorMax < 1)
   {
      valid = false;
   }
   if(_root.arcadeCondition3 == "Left" && dir != "Left")
   {
      valid = false;
   }
   if(_root.arcadeCondition3 == "Right" && dir != "Right")
   {
      valid = false;
   }
   if(_root.arcadeCondition3 == "Direction-Changing" && changeDirectionMax < 1)
   {
      valid = false;
   }
   if(_root.save.rankedMode != true)
   {
      if(col == "Circle" && Math.random() < _root.save.unrankedPower[24] * 0.2)
      {
         gotoAndStop(6);
      }
      if(col != "Circle")
      {
         xSpd *= 1 - _root.save.unrankedPower[22] * 0.04;
      }
   }
   if(_root.save.arcadeDifficulty[8] == 1)
   {
      xSpd *= 0.9;
   }
   if(_root.save.arcadeDifficulty[8] == 4 && Math.random() < 0.5)
   {
      xSpd *= 1.3 + Math.random() * 0.4;
   }
   if(_root.save.arcadeDifficulty[8] == 4 && Math.random() < 0.15)
   {
      xSpd *= 0.5;
   }
   targetSpd = xSpd;
}
curY = _Y;
oriY = curY;
jump = "";
col = "";
dir = "";
fade = "";
teleport = "";
changeDirection = 0;
changeColor = 0;
changeDirectionMax = 0;
changeColorMax = 0;
changeColorDelay = 0;
onEnterFrame = function()
{
   if(_root.arcadeTimeLeft > 5)
   {
      if(targetSpd != xSpd)
      {
         xSpd += (targetSpd - xSpd) / 25;
      }
      if(colorChangeAnim._alpha < 10 || _currentframe == 6)
      {
         curX += xSpd * 40 / _root.fps;
         if(teleportDur > 0)
         {
            curX += xSpd * 160 / _root.fps;
         }
      }
      teleportDur -= 1 / _root.fps;
      if(teleport == "Teleport" && Math.random() < 0.01 && teleportDur <= 0 && fade != "In")
      {
         teleport = "";
         teleportDur = 0.2;
      }
      if(jump == "Jump")
      {
         if(curY >= oriY)
         {
            ySpd = -10;
         }
         else
         {
            ySpd += 1;
         }
         curY += ySpd * 40 / _root.fps;
      }
      if(fade == "In" && curX > 25 && curX < 475)
      {
         Xalpha += 100 / _root.fps;
      }
      if(fade == "Out" && curX > 25 && curX < 475)
      {
         Xalpha -= 35 / _root.fps;
      }
   }
   if(_root.arcadeTimeLeft > 25 && _root.arcadeCorrectCount < 85)
   {
      if(xSpd > 0 && curX > 550 || xSpd < 0 && curX < -50)
      {
         resetTriangle();
      }
   }
   if(curX > 25 && curX < 475 && valid == true)
   {
      valid = false;
      _root.arcadeCorrectCount += 1;
      if(fade != "In" || Math.random() < Math.pow(0.96,_root.arcadeDifficulty))
      {
         _root.arcadeDragonCount += 1;
      }
   }
   if(curX > 200 && curX < 300)
   {
      if(_root.arcadeDifficulty >= 5 && Math.random() < 0.008 * _root.arcadeDifficulty / _root.fps)
      {
         _root.arcadeDragonCount += 1;
      }
   }
   _X = curX;
   _Y = curY;
   _alpha = Xalpha;
   changeColorDelay -= 1 / _root.fps;
   if(changeDirection < changeDirectionMax)
   {
      if((curX < 200 || curX < 225 && Math.random() < 0.2) && targetSpd < 0)
      {
         targetSpd *= -1;
         changeDirection += 1;
      }
      if((curX > 300 || curX > 275 && Math.random() < 0.2) && targetSpd > 0)
      {
         targetSpd *= -1;
         changeDirection += 1;
      }
   }
   if(changeColor < changeColorMax && changeColorDelay <= 0)
   {
      if((curX < 200 || curX < 250 && Math.random() < 0.1) && xSpd < 0)
      {
         if(_currentframe == 2)
         {
            gotoAndStop(3);
         }
         else if(_currentframe == 3)
         {
            gotoAndStop(2);
         }
         else if(_currentframe == 4)
         {
            gotoAndStop(5);
         }
         else if(_currentframe == 5)
         {
            gotoAndStop(4);
         }
         changeColor += 1;
         changeColorDelay = 1 + Math.random() * 0.5;
         colorChangeAnim._alpha = 100;
      }
      if((curX > 300 || curX > 250 && Math.random() < 0.1) && xSpd > 0)
      {
         if(_currentframe == 2)
         {
            gotoAndStop(3);
         }
         else if(_currentframe == 3)
         {
            gotoAndStop(2);
         }
         else if(_currentframe == 4)
         {
            gotoAndStop(5);
         }
         else if(_currentframe == 5)
         {
            gotoAndStop(4);
         }
         changeColor += 1;
         changeColorDelay = 0.5 + Math.random() * 0.5;
         colorChangeAnim._alpha = 100;
      }
   }
};
resetTriangle();
