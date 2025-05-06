//! status=pending
onClipEvent(enterFrame){
   slowDur -= 0.025;
   stunDur -= 0.025;
   darkDur -= 0.025;
   fastDur -= 0.025;
   if(_root.stadiumTimer >= 0)
   {
      if(energy < maxEnergy)
      {
         energy += 0.2;
         if(_root.save.restTime > 0)
         {
            energy += 0.2 * (0.1 + _root.save.restEfficiency[8] * 0.01);
         }
         if(_root.save.careerLevel[7] >= 200)
         {
            energy += 0.06;
         }
         if(energy > maxEnergy)
         {
            energy = maxEnergy;
         }
      }
      if(stunDur <= 0)
      {
         if(Key.isDown(37) || Key.isDown(65))
         {
            if(xspeed > maxspeed * -1)
            {
               dashDelL += 1;
               pti = power;
               if(pti > maxspeed + xspeed)
               {
                  pti = maxspeed + xspeed;
               }
               if(pti < 0)
               {
                  pti = 0;
               }
               xspeed -= pti;
               if(holdL != true && energy >= 10 && dashDelL >= 1)
               {
                  energy -= 10;
                  xspeed -= dash;
               }
               holdL = true;
            }
         }
         else
         {
            holdL = false;
         }
         if(Key.isDown(39) || Key.isDown(68))
         {
            if(xspeed < maxspeed)
            {
               dashDelR += 1;
               pti = power;
               if(pti > maxspeed - xspeed)
               {
                  pti = maxspeed - xspeed;
               }
               if(pti < 0)
               {
                  pti = 0;
               }
               xspeed += pti;
               if(holdR != true && energy >= 10 && dashDelR >= 1)
               {
                  xspeed += dash;
                  energy -= 10;
               }
               holdR = true;
            }
         }
         else
         {
            holdR = false;
         }
         if(Key.isDown(38) || Key.isDown(87))
         {
            if(jumpDel >= 2)
            {
               yspeed -= jump;
            }
         }
      }
      _root.stadiumSpeedDisp = Math.abs(Math.round(xspeed * 10));
      _root.stadiumEnergyDisp = Math.round(energy);
      _X = _X + xspeed;
      _Y = _Y + yspeed;
      friction = 0.96;
      if(slowDur > 0)
      {
         friction = 0.92;
      }
      if(fastDur > 0)
      {
         friction = 0.97;
      }
      if(Key.isDown(16))
      {
         friction = 0.9;
      }
      if(yspeed == 0)
      {
         jumpDel += 1;
      }
      else
      {
         jumpDel = 0;
      }
      if(xspeed >= -1)
      {
         dashDelL = 0;
      }
      if(xspeed <= 1)
      {
         dashDelR = 0;
      }
      xspeed *= friction;
      if(xspeed > 50)
      {
         xspeed = 50;
      }
      if(xspeed < -50)
      {
         xspeed = -50;
      }
      if(xspeed < 0.05 && xspeed > -0.05)
      {
         xspeed = 0;
      }
      if(_Y < -50)
      {
         yspeed += 0.5;
      }
      if(_Y > -50)
      {
         _Y = -50;
         yspeed = 0;
      }
      if(Key.isDown(32))
      {
         _parent.useItem(curItem,0);
      }
   }
}


onClipEvent(load){
   kongName = _root.kongregate_username;
   if(kongName == undefined || kongName == "Guest")
   {
      kongName = _root.save.displayName;
   }
   nameText.text = kongName;
   mehName = kongName;
   curItem = "";
   slowDur = 0;
   stunDur = 0;
   darkDur = 0;
   fastDur = 0;
   jumpDel = 0;
   dashDelL = 0;
   dashDelR = 0;
   energy = 100 + _root.save.stadiumEnergy;
   maxEnergy = 100 + _root.save.stadiumEnergy;
   power = 0.5 + _root.save.stadiumAccel * 0.005;
   maxspeed = 10 + _root.save.stadiumMaxSpeed * 0.1;
   jump = 8.5 + _root.save.stadiumJump * 0.04;
   dash = 3 + _root.save.stadiumDash * 0.1;
   boost = 5 + _root.save.stadiumBoost * 0.15;
   xspeed = 0 + _root.save.stadiumStartSpeed * 0.5;
   if(_root.save.stadiumHat == 2)
   {
      power += 0.025;
      maxspeed += 0.5;
   }
   if(_root.save.stadiumHat == 3)
   {
      xspeed += 2.5;
      dash += 0.5;
      boost += 0.025;
   }
   if(_root.save.stadiumHat == 4)
   {
      energy += 15;
      maxEnergy += 15;
   }
   if(_root.save.stadiumHat == 5)
   {
      jump += 0.4;
   }
   if(_root.save.stadiumHat == 6)
   {
      power += 0.075;
      maxspeed += 0.5;
      dash += 0.5;
   }
   if(_root.save.stadiumHat == 8)
   {
      maxspeed += 0.5;
      jump += 0.4;
   }
   if(_root.save.stadiumHat == 9)
   {
      energy += 2;
      maxEnergy += 2;
      power += 0.01;
      maxspeed += 0.2;
      jump += 0.08;
      dash += 0.2;
      boost += 0.01;
      xspeed += 1;
   }
   if(_root.save.stadiumHat == 10)
   {
      energy += 5;
      maxEnergy += 5;
      power += 0.025;
      maxspeed += 0.5;
      jump += 0.2;
      dash += 0.5;
      boost += 0.025;
      xspeed += 2.5;
   }
   if(_root.save.stadiumHat == 11)
   {
      energy += 10;
      maxEnergy += 10;
      power += 0.05;
      maxspeed += 1;
      jump += 0.4;
      dash += 1;
      boost += 0.05;
      xspeed += 5;
   }
   yspeed = 0;
   holdL = false;
   holdR = false;
}


