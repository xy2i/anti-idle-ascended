//! status=pending
onClipEvent(enterFrame){
   slowDur -= 0.025;
   fastDur -= 0.025;
   stunDur -= 0.025;
   if(darkDur > 0)
   {
      darkDur -= 0.025;
   }
   if(_root.stadiumTimer >= 0 && health > 0)
   {
      if(energy < maxEnergy)
      {
         energy += 0.2;
      }
      if(Math.random() < 0.4)
      {
         toMove = true;
      }
      else if(Math.random() < 0.1)
      {
         toMove = false;
      }
      if(Math.random() < 0.02 && _X > 4500)
      {
         dir = -1;
      }
      else if(Math.random() < 0.02 && _X < 1500)
      {
         dir = 1;
      }
      if(_root.lowPlayer != -1 && _root.lowPlayer != playerID)
      {
         if(_root.lowPlayer == 0)
         {
            if(_X > _parent.stadiumHero._x)
            {
               dir = -1;
            }
            else
            {
               dir = 1;
            }
         }
         else if(_X > _parent["stadiumEnemy" + _root.lowPlayer]._x)
         {
            dir = -1;
         }
         else
         {
            dir = 1;
         }
      }
      if(toMove == true && stunDur <= 0)
      {
         if(dir == 1)
         {
            if(xspeed < maxspeed)
            {
               dashDelR += 1;
               xspeed += power;
               if(holdR != true && energy >= 2 && dashDelR >= 1)
               {
                  xspeed += dash * dir;
                  energy -= 2;
               }
               holdR = true;
            }
         }
         else if(dir == -1)
         {
            if(xspeed > maxspeed * -1)
            {
               dashDelL += 1;
               xspeed -= power;
               if(holdR != true && energy >= 2 && dashDelL >= 1)
               {
                  xspeed += dash * dir;
                  energy -= 2;
               }
               holdR = true;
            }
         }
      }
      else
      {
         holdR = false;
      }
      if(toJump == true && stunDur <= 0)
      {
         if(jumpDel >= 2)
         {
            yspeed -= jump;
         }
         toJump = false;
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
         _parent.useItem(curItem,playerID);
      }
      if(Math.random() < 8 / _root.fps && stunDur <= 0 && energy >= 5 && _root.stadiumTimer <= 420)
      {
         tempCount = 0;
         k = 1;
         while(k <= 4)
         {
            if(k != playerID)
            {
               dist = Math.abs(_parent["stadiumEnemy" + k]._x - _X);
               if(dist <= 250 - darkDur * 30 && _parent["stadiumEnemy" + k].health > 0)
               {
                  tempCount += 1;
                  score += 1;
                  _parent["stadiumEnemy" + k].health -= 1;
                  if(_parent["stadiumEnemy" + k].health <= 0)
                  {
                     score += Math.floor(_parent["stadiumEnemy" + k].score / 10) + 30;
                     _parent["stadiumEnemy" + k].score -= Math.floor(_parent["stadiumEnemy" + k].score / 10);
                  }
                  _root.incDt();
                  _parent.attachMovie("stadiumPop","stadiumPop" + _root.summonCount,_root.antiLag,{_x:_parent["stadiumEnemy" + k]._x + 25,_y:_parent["stadiumEnemy" + k]._y - 25,damager:1});
               }
            }
            k++;
         }
         dist = Math.abs(_parent.stadiumHero._x - _X);
         if(dist <= 250 - darkDur * 30 && _parent.stadiumHero.health > 0)
         {
            tempCount += 1;
            score += 1;
            _parent.stadiumHero.health -= 1;
            if(_parent.stadiumHero.health <= 0)
            {
               score += Math.floor(_parent.stadiumHero.score / 10) + 30;
               _parent.stadiumHero.score -= Math.floor(_parent.stadiumHero.score / 10);
               _root.dispNews(102,mehName + " defeated " + _root.kongregate_username + "!");
            }
            _root.incDt();
            _parent.attachMovie("stadiumPop","stadiumPop" + _root.summonCount,_root.antiLag,{_x:_parent.stadiumHero._x + 25,_y:_parent.stadiumHero._y - 25,damager:1});
         }
         if(tempCount > 0)
         {
            energy -= 5;
         }
      }
   }
   if(revive > 400)
   {
      revive = 0;
      health = 100;
      _alpha = 100;
   }
   else if(health <= 0)
   {
      if(revive == 0)
      {
         messID = random(5) + 1;
         if(messID == 1)
         {
            _parent._parent.breakStadium(mehName + " has been destroyed, LOL!");
         }
         if(messID == 2)
         {
            _parent._parent.breakStadium(mehName + " has run out of health!");
         }
         if(messID == 3)
         {
            _parent._parent.breakStadium(mehName + " suddenly disappeared!");
         }
         if(messID == 4)
         {
            _parent._parent.breakStadium(mehName + " has been PWNed!");
         }
         if(messID == 5)
         {
            _parent._parent.breakStadium("All ur " + mehName + " r belong to us!");
         }
      }
      revive += 0.5;
      health = 0;
      _alpha = 0;
   }
   else
   {
      revive = 0;
   }
}


onClipEvent(load){
   playerID = 4;
   score = 0;
   health = 100;
   _X = 4000;
   dir = 1;
   mehName = "Blue";
   nameText.text = mehName;
   curItem = "";
   slowDur = 0;
   stunDur = 0;
   darkDur = 0;
   fastDur = 0;
   jumpDel = 0;
   dashDelL = 0;
   dashDelR = 0;
   difficulty = 60;
   energy = 90 + difficulty;
   maxEnergy = 90 + difficulty;
   power = 0.5 + difficulty * 0.005;
   maxspeed = 10 + difficulty * 0.1;
   jump = 8 + difficulty * 0.04;
   dash = 5 + difficulty * 0.15;
   boost = 5 + difficulty * 0.15;
   xspeed = 0;
   yspeed = 0;
   holdL = false;
   holdR = false;
}


