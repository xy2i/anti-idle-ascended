//! status=pending
on(release){
   clickButton();
}


onClipEvent(enterFrame){
   if(_root.save.buttonBless > 0)
   {
      gotoAndStop(2);
   }
   else if(_root.save.buttonBless <= 0)
   {
      gotoAndStop(1);
   }
   clickDelay -= 40 / _root.fps;
   xloc += xspd * dir;
   xspd *= 0.7;
   if(Math.abs(xspd) < 0.5)
   {
      xspd = 0;
   }
   if(xloc > 190)
   {
      xloc = 190;
      dir = -1;
   }
   if(xloc < -190)
   {
      xloc = -190;
      dir = 1;
   }
   _X = xloc;
   if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true))
   {
      clickButton();
   }
}


onClipEvent(load){
   function clickButton()
   {
      if(clickDelay <= 0)
      {
         clickDelay = 3;
         if(Key.isDown(16))
         {
            if(_root.save.buttonPressToday > 500)
            {
               clickDelay = 4;
            }
            if(_root.save.buttonPressToday > 2500)
            {
               clickDelay = 5;
            }
            if(_root.save.buttonPressToday > 10000)
            {
               clickDelay = 6;
            }
            if(_root.save.buttonPressToday > 50000)
            {
               clickDelay = 7;
            }
         }
         distance = Math.sqrt(Math.abs(xloc - _parent._xmouse) * Math.abs(xloc - _parent._xmouse) + Math.abs(_parent._ymouse) * Math.abs(_parent._ymouse));
         perfection = Math.ceil(100 - distance * 2);
         if(_root.save.restTime > 0)
         {
            if(Math.random() < 0.1 + _root.save.restEfficiency[6] * 0.01)
            {
               if(perfection >= 99)
               {
                  perfection = 100;
               }
               else if(perfection >= 97)
               {
                  perfection = 99;
               }
               else if(perfection >= 94)
               {
                  perfection = 97;
               }
               else if(perfection >= 89)
               {
                  perfection = 94;
               }
               else if(perfection >= 79)
               {
                  perfection = 89;
               }
               else if(perfection >= 59)
               {
                  perfection = 79;
               }
            }
         }
         if(perfection < 10)
         {
            perfection = 10;
         }
         rank = 2;
         if(_root.save.questType == "Press")
         {
            if(_root.save.questSubtype == "Any")
            {
               _root.save.questCount += 1;
            }
         }
         if(perfection >= 79)
         {
            rank = 3;
         }
         if(perfection >= 89)
         {
            rank = 4;
         }
         if(perfection >= 94)
         {
            rank = 5;
            if(_root.save.questType == "Press")
            {
               if(_root.save.questSubtype == "Great")
               {
                  _root.save.questCount += 1;
               }
            }
         }
         if(perfection >= 97)
         {
            rank = 6;
            if(_root.save.questType == "Press")
            {
               if(_root.save.questSubtype == "Excellent")
               {
                  _root.save.questCount += 1;
               }
            }
         }
         if(perfection >= 99)
         {
            rank = 7;
            if(_root.save.questType == "Press")
            {
               if(_root.save.questSubtype == "Perfect")
               {
                  _root.save.questCount += 1;
               }
            }
         }
         if(_root.saveid == 24)
         {
            rank = 2;
         }
         if(_root.save.eliteButtonTime <= 0)
         {
            _root.buttonLife -= 100 - perfection;
         }
         else
         {
            _root.buttonLife -= (100 - perfection) / 3;
         }
         _root.summonCount += 1;
         _root.antiLag += 1;
         _parent.attachMovie("buttonDamagePop","buttonDamagePop" + _root.summonCount,_root.antiLag,{_x:_parent._xmouse,_y:_parent._ymouse,rank:rank});
         _root.save.buttonPress += 1;
         _root.save.buttonPressToday += 1;
         _root.buttonHitCombo += rank - 1;
         _root.buttonScore += rank - 1;
         xspd = 2.3 + Math.random() * 0.7;
         reward = Math.floor(Math.pow(_root.save.level * perfection * rank,0.6) * _root.buttonMultiplier / 100);
         expToGain = Math.floor(reward * _root.save.boost / 100 * 0.18 * (1 + _root.curCareerLevel[5] * 0.005) * (1 + _root.save.petStat[3] * 0.002));
         coinToGain = Math.floor(reward * _root.save.boost / 100 * 0.05 * (1 + _root.curCareerLevel[5] * 0.005));
         if(_root.save.buttonBless > 0)
         {
            _root.save.buttonBless -= 1;
         }
         if(_root.save.buttonPressToday >= 250000)
         {
            expToGain = Math.floor(expToGain * 0.1);
            coinToGain = Math.floor(coinToGain * 0.1);
         }
         if(_root.save.permaBanPenalty[24] == 3)
         {
            expToGain = Math.floor(expToGain * 3);
         }
         else if(_root.save.permaBanPenalty[24] == 2)
         {
            expToGain = Math.floor(expToGain * 2.2);
         }
         else if(_root.save.permaBanPenalty[24] == 1)
         {
            expToGain = Math.floor(expToGain * 1.8);
         }
         storeExp += expToGain;
         storeCoin += coinToGain;
         if(rank == 7)
         {
            perfectChain += 1;
            if(_root.save.perfectionist < perfectChain)
            {
               _root.save.perfectionist = perfectChain;
            }
            _root.save.buttonPerfect += 1;
            if(perfectChain > 15)
            {
               expToGain = 1;
               coinToGain = 1;
               _root.buttonHitCombo = 0;
            }
            else
            {
               _root.gainBoost(1,3);
               _root.dispNews(67,"Perfect click! (+1% Boost)");
            }
         }
         else
         {
            perfectChain = 0;
         }
         _root.gainEXP(expToGain);
         _root.gainCoin(coinToGain);
         if(_root.save.buttonMaxCombo < _root.buttonHitCombo)
         {
            _root.save.buttonMaxCombo = _root.buttonHitCombo;
         }
         if(rank == 3)
         {
            _root.gainCareerEXP(5,Math.ceil(1 * _root.buttonMultiplier / 1000),true);
         }
         if(rank == 4)
         {
            _root.gainGreenCoin(10);
            _root.gainCareerEXP(5,Math.ceil(2 * _root.buttonMultiplier / 1000),true);
         }
         if(rank == 5)
         {
            var _loc3_ = 1;
            while(_loc3_ <= _root.todayEvent)
            {
               yy = _root.clock_year % 10;
               mm = _root.clock_month;
               dd = _root.clock_date;
               if(_root.eventList[yy][mm][dd][_loc3_] == "Receive Event Tokens by pressing the Button Machine")
               {
                  _root.gainEventToken(1);
               }
               _loc3_ = _loc3_ + 1;
            }
            _root.gainGreenCoin(50);
            _root.gainCareerEXP(5,Math.ceil(5 * _root.buttonMultiplier / 1000),true);
         }
         if(rank == 6)
         {
            _loc3_ = 1;
            while(_loc3_ <= _root.todayEvent)
            {
               yy = _root.clock_year % 10;
               mm = _root.clock_month;
               dd = _root.clock_date;
               if(_root.eventList[yy][mm][dd][_loc3_] == "Receive Event Tokens by pressing the Button Machine")
               {
                  _root.gainEventToken(2);
               }
               _loc3_ = _loc3_ + 1;
            }
            _root.gainGreenCoin(250);
            if(_root.save.buttonPressToday < 250000 && Math.random() < 0.5)
            {
               _root.gainBlueCoin(1);
            }
            _root.gainCareerEXP(5,Math.ceil(10 * _root.buttonMultiplier / 1000),true);
            if(_root.save.permaBanPenalty[18] == 3)
            {
               _root.save.buttonPurple += 1;
            }
            else if(_root.save.permaBanPenalty[18] == 2 && Math.random() < 0.75)
            {
               _root.save.buttonPurple += 1;
            }
            else if(_root.save.permaBanPenalty[18] == 1 && Math.random() < 0.5)
            {
               _root.save.buttonPurple += 1;
            }
            if(_root.save.careerLevel[5] >= 200)
            {
               _root.progPercent += 30;
            }
         }
         if(rank == 7)
         {
            _loc3_ = 1;
            while(_loc3_ <= _root.todayEvent)
            {
               yy = _root.clock_year % 10;
               mm = _root.clock_month;
               dd = _root.clock_date;
               if(_root.eventList[yy][mm][dd][_loc3_] == "Receive Event Tokens by pressing the Button Machine")
               {
                  _root.gainEventToken(4);
               }
               _loc3_ = _loc3_ + 1;
            }
            if(perfectChain <= 15)
            {
               _root.save.buttonPurple += 1;
               if(_root.save.permaBanPenalty[18] == 3)
               {
                  _root.save.buttonPurple += 1;
               }
               else if(_root.save.permaBanPenalty[18] == 2 && Math.random() < 0.25)
               {
                  _root.save.buttonPurple += 1;
               }
               _root.gainGreenCoin(1000);
               if(_root.save.buttonPressToday < 250000)
               {
                  _root.gainBlueCoin(2);
               }
               _root.gainCareerEXP(5,Math.ceil(50 * _root.buttonMultiplier / 1000),true);
               if(_root.save.careerLevel[5] >= 100)
               {
                  _root.progPercent += 100;
               }
            }
         }
         if(_root.buttonLife <= 0)
         {
            _root.dispNews(68,"Button broke! You gained a total of " + _root.withComma(storeExp) + " EXP.");
            storeExp = 0;
            storeCoin = 0;
            _root.save.buttonBreak += 1;
            _root.save.buttonBroken = true;
            _root.gainCareerEXP(5,Math.ceil(100 * _root.buttonMultiplier / 1000),true);
            if(_root.save.buttonPressToday < 250000 && _root.buttonScore < 20000)
            {
               boxChance1 = _root.buttonScore / 750 - 1;
               boxChance2 = _root.buttonScore / 1500 - 1;
               boxChance3 = _root.buttonScore / 3000 - 1;
               boxChance4 = _root.buttonScore / 6000 - 1;
               _root.gainWhiteCoin(Math.ceil(_root.buttonScore / 500));
               if(Math.random() < boxChance1)
               {
                  _root.save.mysteryBox[1] += 1;
                  _root.dispNews(69,"Found 1 Explosion Crate inside the Button Machine!");
               }
               if(Math.random() < boxChance2)
               {
                  _root.save.mysteryBox[7] += 1;
                  _root.dispNews(70,"Found 1 Awesome Crate inside the Button Machine!");
               }
               if(Math.random() < boxChance3)
               {
                  _root.save.mysteryBox[8] += 1;
                  _root.dispNews(71,"Found 1 Chaos Crate inside the Button Machine!");
               }
               if(Math.random() < boxChance4)
               {
                  _root.save.mysteryBox[4] += 1;
                  _root.dispNews(72,"Found 1 Legendary Box inside the Button Machine!");
               }
            }
         }
      }
   }
   xloc = random(50) - random(50);
   if(_root.save.buttonPress == 0)
   {
      xloc = 0;
   }
   xspd = 0;
   dir = 1;
   perfectChain = 0;
   clickDelay = 2;
   _root.buttonScore = 0;
   _root.buttonLife = 5000;
   storeExp = 0;
   storeCoin = 0;
}


