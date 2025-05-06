//! status=pending
on(press){
   if(_parent._parent.whackMonster != true)
   {
      if(frame == 1)
      {
         _root.whackMessage = "OOPS!\n-3% Life";
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
         _root.showWhack = true;
         _root.arcadeLife -= 3;
      }
      if(frame == 2)
      {
         _root.arcadeWhack += 1;
         oriScore = Math.floor(time * 50);
         if(_parent._parent.isTouchscreen != true)
         {
            oriScore += 6;
         }
         if(oriScore >= 232)
         {
            comment = "PERFECT!!";
            rank = 6;
         }
         else if(oriScore >= 225)
         {
            comment = "PERFECT!";
            rank = 4.5;
         }
         else if(oriScore >= 200)
         {
            comment = "GREAT!";
            rank = 3;
         }
         else if(oriScore >= 175)
         {
            comment = "GOOD!";
            rank = 2;
         }
         else
         {
            comment = "OK!";
            rank = 1;
         }
         if(comment == "GOOD!")
         {
            _root.arcadePerfectStreak = 0;
            progToEarn = 10 + _root.arcadeMultiplier * 2;
            _root.progPercent += progToEarn;
            _root.dispNews(84,"[Whack-a-greg] Good! (+" + progToEarn + "% Progress)");
         }
         else if(comment == "GREAT!")
         {
            _root.arcadePerfectStreak = 0;
            progToEarn = 25 + _root.arcadeMultiplier * 5;
            _root.progPercent += progToEarn;
            _root.dispNews(85,"[Whack-a-greg] Great! (+" + progToEarn + "% Progress)");
         }
         else if(comment == "PERFECT!")
         {
            _root.arcadePerfectStreak = 0;
            progToEarn = 50 + _root.arcadeMultiplier * 10;
            _root.progPercent += progToEarn;
            _root.dispNews(86,"[Whack-a-greg] Perfect! (+" + progToEarn + "% Progress)");
         }
         else if(comment == "PERFECT!!")
         {
            _root.arcadePerfectStreak += 1;
            progToEarn = 50 + _root.arcadeMultiplier * 10;
            _root.progPercent += progToEarn;
            _root.dispNews(86,"[Whack-a-greg] Perfect! (+" + progToEarn + "% Progress)");
         }
         actualScore = Math.floor(oriScore * _root.arcadeMultiplier * rank * 10);
         if(_root.save.arcadeDifficulty[4] == 1)
         {
            actualScore = Math.ceil(actualScore * 0.6);
         }
         else if(_root.save.arcadeDifficulty[4] == 3)
         {
            actualScore = Math.ceil(actualScore * 1.3);
         }
         else if(_root.save.arcadeDifficulty[4] == 4)
         {
            actualScore = Math.ceil(actualScore * 2);
         }
         _root.arcadeScore += actualScore;
         _root.whackMessage = comment + "\n+" + _root.withComma(actualScore);
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
         _root.showWhack = true;
         frame = 1;
      }
      if(frame == 3)
      {
         timeMul = 10;
         if(_root.save.arcadeDifficulty[4] == 1 && _root.arcadeWhack >= 30)
         {
            timeMul = 3;
         }
         if(_root.save.arcadeDifficulty[4] >= 2 && _root.arcadeWhack >= 120)
         {
            timeMul = 3;
         }
         lifeBonus = Math.ceil(time * timeMul) / 10;
         if(_root.save.rankedMode != true)
         {
            lifeBonus = Math.ceil(time * 10 + _root.save.unrankedPower[18] * 2) / 10;
         }
         if(_parent._parent.isTouchscreen != true)
         {
            lifeBonus += 0.2;
         }
         _root.arcadeLife += lifeBonus;
         _root.whackMessage = "AWESOME!\n+" + lifeBonus + "% Life";
         progToEarn = 100 + _root.arcadeMultiplier * 20;
         _root.progPercent += progToEarn;
         _root.dispNews(86,"[Whack-a-greg] Awesome! (+" + progToEarn + "% Progress)");
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
         _root.showWhack = true;
         frame = 1;
      }
      if(frame == 4)
      {
         _root.whackMessage = "OOPS!\n-5% Life";
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
         _root.showWhack = true;
         _root.arcadeLife -= 5;
         frame = 1;
      }
      if(frame == 5)
      {
         actualScore = Math.floor(50000 * _root.arcadeMultiplier);
         _root.arcadeScore += actualScore;
         _root.whackMessage = "MULTIPLIER: " + (_root.arcadeMultiplier + 1) + "x!\n+" + _root.withComma(actualScore);
         _root.showWhack = true;
         _root.arcadeMultiplier += 1;
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
         frame = 1;
      }
      if(frame == 6)
      {
         _root.gainWhiteCoin(1);
         _root.whackMessage = "\nWHITE COIN!";
         _root.showWhack = true;
         frame = 1;
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
      }
      if(frame == 7)
      {
         _root.whackMessage = "OOPS!\n-5% Life";
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
         _root.showWhack = true;
         _root.arcadeLife -= 5;
         frame = 1;
      }
   }
}


onClipEvent(enterFrame){
   if(frame == 1)
   {
      if(Math.random() < appearChance / _root.fps && _root.arcadeAppearDelay <= 0)
      {
         _root.arcadeAppearDelay = 0.7 - _root.save.arcadeDifficulty[4] * 0.1;
         _root.arcadeAppear += 1;
         if(Math.floor((_root.arcadeAppear + del) / 21) == (_root.arcadeAppear + del) / 21 && _root.arcadeMultiplier < 9)
         {
            frame = 5;
            time = 2;
         }
         else if(Math.floor(_root.arcadeAppear / 7) == _root.arcadeAppear / 7 && Math.floor(_root.arcadeAppear / 21) != _root.arcadeAppear / 21)
         {
            frame = 3;
            time = 3;
         }
         else if(Math.random() < gregChance)
         {
            frame = 2;
            time = 5;
         }
         else if(Math.random() < wcChance && _parent._parent.whackMonster != true)
         {
            frame = 6;
            time = 2;
         }
         else if(Math.random() < fakeAwesomeChance)
         {
            frame = 7;
            time = 4;
            _root.arcadeAppear -= 1;
         }
         else if(_root.save.rankedMode != true && Math.random() < 0.2 * _root.save.unrankedPower[19])
         {
            _root.arcadeAppear -= 1;
         }
         else
         {
            frame = 4;
            time = 4;
            _root.arcadeAppear -= 1;
         }
      }
   }
   if(frame != 1)
   {
      time -= 1 / _root.fps;
   }
   if(time < 0)
   {
      time = 0;
      if(frame == 2)
      {
         _root.whackMessage = "OOPS!\n-7% Life";
         _parent._parent.whackPop._x = _parent._x;
         _parent._parent.whackPop._y = _parent._y;
         _root.showWhack = true;
         _root.arcadeLife -= 7;
      }
      frame = 1;
   }
   if(frame == 2)
   {
      if(_root.save.rankedMode != true)
      {
         _root.arcadeLife -= (0.5 + Math.sqrt(_root.arcadeWhack / 10)) * (1 - _root.save.unrankedPower[17] * 0.03) / _root.fps;
      }
      else
      {
         _root.arcadeLife -= (0.5 + Math.sqrt(_root.arcadeWhack / 10)) / _root.fps;
      }
   }
   if(_parent._parent.whackMonster == true)
   {
      if(time < 4.75 && time < _root.monsterLeastTime && frame == 2 || frame == 3 || frame == 5)
      {
         _root.monsterTargetX = _parent._x - 10 + random(21);
         _root.monsterTargetY = _parent._y - 10 + random(21);
      }
      distX = Math.abs(_root.monsterActualX - _parent._x);
      distY = Math.abs(_root.monsterActualY - _parent._y);
      if(distX < 15 && distY < 15 && frame != 4 && frame != 1 && Math.random() < 0.35)
      {
         _root.monsterLeastTime = 999;
         if(frame == 2)
         {
            _root.arcadeWhack += 1;
            oriScore = Math.floor(time * 50) + 6;
            comment = "OK!";
            rank = 1;
            if(oriScore >= 175)
            {
               comment = "GOOD!";
               rank = 2;
            }
            if(oriScore >= 200)
            {
               comment = "GREAT!";
               rank = 3;
            }
            if(oriScore >= 225)
            {
               comment = "PERFECT!";
               rank = 4.5;
            }
            if(oriScore >= 232)
            {
               comment = "PERFECT!!";
               rank = 6;
            }
            actualScore = Math.floor(oriScore * _root.arcadeMultiplier * rank * 10);
            if(_root.save.arcadeDifficulty[4] == 1)
            {
               actualScore = Math.ceil(actualScore * 0.6);
            }
            else if(_root.save.arcadeDifficulty[4] == 3)
            {
               actualScore = Math.ceil(actualScore * 1.3);
            }
            else if(_root.save.arcadeDifficulty[4] == 4)
            {
               actualScore = Math.ceil(actualScore * 2);
            }
            _root.arcadeScore += actualScore;
            _root.whackMessage = comment + "\n+" + _root.withComma(actualScore);
            _parent._parent.whackPop._x = _parent._x;
            _parent._parent.whackPop._y = _parent._y;
            _root.showWhack = true;
            frame = 1;
         }
         if(frame == 3)
         {
            timeMul = 10;
            if(_root.save.arcadeDifficulty[4] == 1 && _root.arcadeWhack >= 30)
            {
               timeMul = 3;
            }
            if(_root.save.arcadeDifficulty[4] >= 2 && _root.arcadeWhack >= 120)
            {
               timeMul = 3;
            }
            lifeBonus = Math.ceil(time * timeMul) / 10;
            _root.arcadeLife += lifeBonus;
            _root.whackMessage = "AWESOME!\n+" + lifeBonus + "% Life";
            _parent._parent.whackPop._x = _parent._x;
            _parent._parent.whackPop._y = _parent._y;
            _root.showWhack = true;
            _root.showWhack = true;
            frame = 1;
         }
         if(frame == 5)
         {
            actualScore = Math.floor(50000 * _root.arcadeMultiplier);
            _root.arcadeScore += actualScore;
            _root.whackMessage = "MULTIPLIER: " + (_root.arcadeMultiplier + 1) + "x!\n+" + _root.withComma(actualScore);
            _root.showWhack = true;
            _root.arcadeMultiplier += 1;
            _parent._parent.whackPop._x = _parent._x;
            _parent._parent.whackPop._y = _parent._y;
            _root.showWhack = true;
            frame = 1;
         }
      }
   }
   gotoAndStop(frame);
}


onClipEvent(load){
   frame = 1;
   time = 0;
   del = 0;
   if(_root.save.rankedMode != true)
   {
      del = _root.save.unrankedPower[16] * 2;
   }
   if(_root.save.arcadeDifficulty[4] <= 1)
   {
      appearChance = 0.04;
      if(_parent._x < 160 || _parent._x > 320 || _parent._y < 40 || _parent._y > 200)
      {
         appearChance = 0.002;
      }
      wcChance = 0.02;
      gregChance = 0.9;
      fakeAwesomeChance = 0;
   }
   else if(_root.save.arcadeDifficulty[4] <= 2)
   {
      appearChance = 0.03;
      wcChance = 0.03;
      gregChance = 0.75;
      fakeAwesomeChance = 0;
   }
   else if(_root.save.arcadeDifficulty[4] <= 3)
   {
      appearChance = 0.05;
      wcChance = 0.02;
      gregChance = 0.6;
      fakeAwesomeChance = 0;
   }
   else
   {
      appearChance = 0.07;
      wcChance = 0.015;
      gregChance = 0.5;
      fakeAwesomeChance = 0.25;
   }
}


