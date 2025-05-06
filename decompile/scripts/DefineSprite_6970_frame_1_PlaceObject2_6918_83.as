//! status=pending
onClipEvent(enterFrame){
   slowDur -= 0.025;
   stunDur -= 0.025;
   darkDur -= 0.025;
   fastDur -= 0.025;
   if(_root.stadiumTimer >= 0)
   {
      if(Math.random() < 0.4)
      {
         toMove = true;
      }
      else if(Math.random() < 0.1)
      {
         toMove = false;
      }
      if(energy < maxEnergy)
      {
         energy += 0.2;
      }
      if(stunDur <= 0)
      {
         if(toMove == true)
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
         if(toJump == true)
         {
            if(jumpDel >= 2)
            {
               yspeed -= jump;
            }
            toJump = false;
         }
      }
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
      if(Math.random() < 0.05)
      {
         _parent.useItem(curItem,1);
      }
   }
}


onClipEvent(load){
   mehName = "Red";
   nameText.text = "Red";
   curItem = "";
   slowDur = 0;
   stunDur = 0;
   darkDur = 0;
   fastDur = 0;
   jumpDel = 0;
   dashDelL = 0;
   dashDelR = 0;
   difficulty = 0;
   if(_root.stadiumDifficulty == 0)
   {
      difficulty = 0;
   }
   else if(_root.stadiumDifficulty == 1)
   {
      difficulty = 10;
   }
   else if(_root.stadiumDifficulty == 2)
   {
      difficulty = 30;
   }
   else if(_root.stadiumDifficulty == 3)
   {
      difficulty = 50;
   }
   difficulty -= random(3);
   energy = 90 + difficulty;
   maxEnergy = 90 + difficulty;
   power = 0.5 + difficulty * 0.005;
   maxspeed = 10 + difficulty * 0.1;
   jump = 8 + difficulty * 0.04;
   dash = 5 + difficulty * 0.15;
   boost = 5 + difficulty * 0.15;
   xspeed = 0 + difficulty * 0.5;
   yspeed = 0;
   holdL = false;
   holdR = false;
}


