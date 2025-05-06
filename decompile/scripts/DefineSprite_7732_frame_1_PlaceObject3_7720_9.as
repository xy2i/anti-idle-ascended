//! status=pending
onClipEvent(enterFrame){
   gcMult = 1;
   if(_root.save.permaBanPenalty[35] == 3)
   {
      gcMult = 6;
   }
   else if(_root.save.permaBanPenalty[35] == 2)
   {
      gcMult = 4;
   }
   else if(_root.save.permaBanPenalty[35] == 1)
   {
      gcMult = 3;
   }
   if(_root.fishCate == "Fish" || _root.fishCate == "Junk")
   {
      tempName = "Lv. " + _root.fishLev + " " + _root.fishCate;
   }
   else if(_root.fishLev == "")
   {
      tempName = _root.fishCate;
   }
   else
   {
      tempName = _root.fishLev + " " + _root.fishCate;
   }
   if(_root.fishLoc < 100)
   {
      _alpha = _root.fishLoc * 2;
   }
   else
   {
      _alpha = (200 - _root.fishLoc) * 2;
   }
   if(_alpha > 100)
   {
      _alpha = 100;
   }
   tempFps = _root.fps;
   if(tempFps < 20)
   {
      tempFps = 20;
   }
   _root.fishLoc += _root.fishSpeed / tempFps;
   _X = _root.fishLoc;
   if(_root.fishLoc > 150 && _root.fishSpeed > 0 || _root.fishLoc < 50 && _root.fishSpeed < 0)
   {
      _root.playerLoc = _root.fishLoc;
      chance = 30 + (_root.save.fishLevel - _root.fishArray[_root.fishCurrent].fishLevel) * 3;
      if(_root.save.careerLevel[12] >= 100)
      {
         chance += 10;
      }
      if(_root.save.fishRod == 7)
      {
         chance += 20;
      }
      if(_root.save.permaBanPenalty[16] == 3)
      {
         chance += 25;
      }
      else if(_root.save.permaBanPenalty[16] == 2)
      {
         chance += 15;
      }
      else if(_root.save.permaBanPenalty[16] == 1)
      {
         chance += 10;
      }
      if(Math.random() < chance / 100 && _root.fishSpec != "Manual" && _root.fishSpec != "Manual+")
      {
         _root.fishStatus = 3;
         _root.save.fishStreak = 0;
         if(_root.save.fishExamLeft > 0)
         {
            _root.save.fishExamLeft -= 1;
         }
         _parent.fishScore.gotoAndStop(2);
         _parent.fishScore._alpha = 100;
         _root.fishLoc = 0;
         _root.fishSpeed = 0;
         _root.save.fishScore += _root.fishCurrentExp * 50;
         _root.save.fishScoreToday += _root.fishCurrentExp * 50;
         _root.save.fishExp += _root.fishCurrentExp;
         _root.gainCareerEXP(12,_root.fishCurrentExp * 3 + _root.save.fishLevel,true);
         _root.gainGreenCoin(2500 * gcMult);
         i = 1;
         while(i <= _root.todayEvent)
         {
            yy = _root.clock_year % 10;
            mm = _root.clock_month;
            dd = _root.clock_date;
            if(_root.eventList[yy][mm][dd][i] == "Receive Event Tokens by fishing")
            {
               _root.gainEventToken(2);
            }
            i++;
         }
         if(_parent._parent.ready != true)
         {
            _root.dispNews(118,"Fishing Mastery increased! (+" + _root.withComma(_root.fishCurrentExp) + ")");
         }
         expToGain = Math.floor(_root.fishAExp * Math.pow(_root.save.level,0.6) * _root.save.boost / 100 * 0.8);
         if(_root.save.permaBanPenalty[6] == 3)
         {
            expToGain = Math.floor(expToGain * 2);
         }
         else if(_root.save.permaBanPenalty[6] == 2)
         {
            expToGain = Math.floor(expToGain * 1.6);
         }
         else if(_root.save.permaBanPenalty[6] == 1)
         {
            expToGain = Math.floor(expToGain * 1.4);
         }
         _root.gainEXP(expToGain);
         _root.dispNews(116,tempName + " GET! (+" + _root.withComma(expToGain) + " EXP)");
         if(_root.save.fishLevel > 30)
         {
            if(_root.save.fishLevel > 50)
            {
               expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.03 - 0.3));
            }
            else
            {
               expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.05 - 1.3));
            }
            _root.gainEXP(expToGain);
            _root.dispNews(162,"Bonus LEGEND EXP gained! (+" + _root.withComma(expToGain) + " EXP)");
         }
         _root.gainCyborgPoint(1);
         _root.save.fishTotal += 1;
         _root.save.fishFound[_root.fishCurrent] += 1;
         _root.save.fishLeft[_root.fishCurrent] += 1;
         _parent._parent.checkCount();
         if(_root.save.fishRod == 7)
         {
            _root.save.fishFatigue += Math.floor(_root.fishFatigue * 0.75);
         }
         else
         {
            _root.save.fishFatigue += _root.fishFatigue;
         }
      }
      else
      {
         _root.fishStatus = 1;
         _root.save.fishStreak = 0;
         if(_root.save.fishExamLeft > 0)
         {
            _root.save.fishExamLeft -= 1;
         }
         _parent.fishScore.gotoAndStop(1);
         _parent.fishScore._alpha = 100;
         _root.fishLoc = 0;
         _root.fishSpeed = 0;
         _root.save.fishExp += Math.ceil(_root.fishCurrentExp / 10);
         if(_parent._parent.ready != true)
         {
            _root.dispNews(118,"Fishing Mastery increased! (+" + _root.withComma(Math.ceil(_root.fishCurrentExp / 10)) + ")");
         }
         expToGain = Math.floor(_root.fishAExp * Math.pow(_root.save.level,0.6) * _root.save.boost / 100 * 0.1);
         _root.gainEXP(expToGain);
         _root.dispNews(115,"Nothing GET! (+" + _root.withComma(expToGain) + " EXP)");
         _root.save.fishFatigue += Math.floor(_root.fishFatigue / 10);
      }
   }
}


onClipEvent(keyDown){
   dist = Math.abs(_root.fishDest - _root.fishLoc);
   distAllow = Math.ceil(Math.abs(_root.fishSpeed / 40)) * 1.5;
   if(_root.save.fishRod == 8)
   {
      if(dist <= distAllow)
      {
         tolerance = 0;
         _root.save.fishShield += Math.ceil(150 / (5 + _root.save.fishStreak));
         if(_root.save.fishShield > 100)
         {
            _root.save.fishShield = 100;
         }
      }
      else if(dist <= 15 && dist <= distAllow * 3 && _root.save.fishShield >= 50)
      {
         tolerance = 1;
         _root.save.fishShield -= 50;
      }
      else
      {
         tolerance = 0;
      }
   }
   else
   {
      tolerance = 0;
      _root.save.fishShield = 0;
   }
   if(dist <= distAllow || tolerance >= 1)
   {
      _root.playerDist = _root.fishLoc - _root.fishDest;
      _root.playerLoc = _root.fishLoc;
      _root.fishStatus = 3;
      _root.save.fishStreak += 1;
      if(_root.save.fishExamLeft > 0)
      {
         _root.save.fishExamPerfect += 1;
         if(_root.save.fishExamStreak < _root.save.fishStreak)
         {
            _root.save.fishExamStreak = _root.save.fishStreak;
         }
      }
      if(_root.save.fishBestStreak < _root.save.fishStreak)
      {
         _root.save.fishBestStreak = _root.save.fishStreak;
      }
      if(tolerance == 1)
      {
         _parent.fishScore.gotoAndStop(4);
         _parent.fishScore._alpha = 100;
      }
      else
      {
         _parent.fishScore.gotoAndStop(3);
         _parent.fishScore._alpha = 100;
      }
      _root.fishLoc = 0;
      _root.fishSpeed = 0;
      streakBonus = _root.save.fishStreak;
      if(_root.save.fishStreak > 10)
      {
         streakBonus = 9 + Math.ceil(_root.save.fishStreak / 10);
      }
      if(_root.save.fishStreak > 100)
      {
         streakBonus = 20;
      }
      if(_root.save.fishStreak > 1000)
      {
         streakBonus = 0;
      }
      if(_root.save.fishRod == 8)
      {
         _root.save.fishScore += _root.fishCurrentExp * (200 + streakBonus * 25);
         _root.save.fishScoreToday += _root.fishCurrentExp * (200 + streakBonus * 25);
      }
      else if(_root.save.fishRod == 4)
      {
         _root.save.fishScore += _root.fishCurrentExp * (500 + streakBonus * 125);
         _root.save.fishScoreToday += _root.fishCurrentExp * (500 + streakBonus * 125);
      }
      else
      {
         _root.save.fishScore += _root.fishCurrentExp * (200 + streakBonus * 50);
         _root.save.fishScoreToday += _root.fishCurrentExp * (200 + streakBonus * 50);
      }
      _root.save.fishExp += _root.fishCurrentExp + streakBonus;
      _root.gainCareerEXP(12,100 + _root.fishCurrentExp * 3 + streakBonus * 5 + _root.save.fishLevel,true);
      _root.gainGreenCoin(5000 * gcMult + streakBonus * 1000 * gcMult);
      _root.gainBlueCoin(10 + streakBonus * 2);
      i = 1;
      while(i <= _root.todayEvent)
      {
         yy = _root.clock_year % 10;
         mm = _root.clock_month;
         dd = _root.clock_date;
         if(_root.eventList[yy][mm][dd][i] == "Receive Event Tokens by fishing")
         {
            _root.gainEventToken(5);
         }
         i++;
      }
      if(_parent._parent.ready != true)
      {
         _root.dispNews(118,"Fishing Mastery increased! (+" + _root.withComma(_root.fishCurrentExp + streakBonus) + ")");
      }
      expToGain = Math.floor(_root.fishAExp * Math.pow(_root.save.level,0.6) * _root.save.boost / 100 * (1 + streakBonus / 20));
      if(_root.save.fishRod == 4)
      {
         expToGain = Math.floor(expToGain * 1.4);
      }
      if(_root.save.permaBanPenalty[6] == 3)
      {
         expToGain = Math.floor(expToGain * 3);
      }
      else if(_root.save.permaBanPenalty[6] == 2)
      {
         expToGain = Math.floor(expToGain * 2.2);
      }
      else if(_root.save.permaBanPenalty[6] == 1)
      {
         expToGain = Math.floor(expToGain * 1.8);
      }
      if(_root.fishCurrent == 52)
      {
         _root.save.awesomeRefill += 1;
      }
      if(_root.fishCurrent == 53)
      {
         _root.save.gardenFertilizer += 1;
      }
      if(_root.fishCurrent == 54)
      {
         _root.save.gardenMegaFertilizer += 1;
      }
      if(_root.fishCurrent == 55)
      {
         _root.save.mysteryBox[1] += 1;
      }
      if(_root.fishCurrent == 56)
      {
         _root.save.mysteryBox[7] += 1;
      }
      if(_root.fishCurrent == 57)
      {
         _root.save.mysteryBox[8] += 1;
      }
      if(_root.fishCurrent == 58)
      {
         _root.save.mysteryBox[4] += 1;
      }
      if(_root.fishCurrent == 59)
      {
         _root.gainWhiteCoin(1);
      }
      if(_root.fishCurrent == 60)
      {
         _root.save.boostPotion += 1;
      }
      if(_root.fishCurrent == 61)
      {
         _root.save.megaBoostPotion += 1;
      }
      _root.gainEXP(expToGain);
      _root.dispNews(117,"PERFECT CATCH (" + _root.save.fishStreak + "x)! " + tempName + " GET! (+" + _root.withComma(expToGain) + " EXP)");
      if(_root.save.fishLevel > 30)
      {
         if(_root.save.fishLevel > 50)
         {
            expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.03 - 0.3));
         }
         else
         {
            expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.05 - 1.3));
         }
         if(_root.save.fishExamLeft > 0)
         {
            expToGain = Math.floor(expToGain * 2);
         }
         _root.gainEXP(expToGain);
         _root.dispNews(162,"Bonus LEGEND EXP gained! (+" + _root.withComma(expToGain) + " EXP)");
      }
      _root.gainCyborgPoint(4);
      _root.save.fishPerfect += 1;
      _root.save.fishTotal += 1;
      _root.save.fishFound[_root.fishCurrent] += 1;
      _root.save.fishLeft[_root.fishCurrent] += 1;
      _parent._parent.checkCount();
      _root.gainBoost(1,3);
      _root.save.fishFatigue += Math.floor(_root.fishFatigue / 4);
   }
   else if(dist <= 15 && _root.fishSpec != "Manual+")
   {
      _root.playerDist = _root.fishLoc - _root.fishDest;
      _root.playerLoc = _root.fishLoc;
      _root.fishStatus = 3;
      _root.save.fishStreak = 0;
      if(_root.save.fishExamLeft > 0)
      {
         _root.save.fishExamLeft -= 1;
      }
      _parent.fishScore.gotoAndStop(2);
      _parent.fishScore._alpha = 100;
      distPenalty = Math.floor(dist - distAllow);
      if(distPenalty > 7)
      {
         distPenalty = 7;
      }
      _root.save.fishScore += _root.fishCurrentExp * (200 - distPenalty * 20);
      _root.save.fishScoreToday += _root.fishCurrentExp * (200 - distPenalty * 20);
      _root.fishLoc = 0;
      _root.fishSpeed = 0;
      _root.save.fishExp += _root.fishCurrentExp;
      _root.gainCareerEXP(12,50 + _root.fishCurrentExp * 3 + _root.save.fishLevel,true);
      _root.gainGreenCoin(2500 * gcMult);
      _root.gainBlueCoin(5);
      i = 1;
      while(i <= _root.todayEvent)
      {
         yy = _root.clock_year % 10;
         mm = _root.clock_month;
         dd = _root.clock_date;
         if(_root.eventList[yy][mm][dd][i] == "Receive Event Tokens by fishing")
         {
            _root.gainEventToken(2);
         }
         i++;
      }
      if(_parent._parent.ready != true)
      {
         _root.dispNews(118,"Fishing Mastery increased! (+" + _root.withComma(_root.fishCurrentExp) + ")");
      }
      if(_root.fishCurrent == 52)
      {
         _root.save.awesomeRefill += 1;
      }
      if(_root.fishCurrent == 53)
      {
         _root.save.gardenFertilizer += 1;
      }
      if(_root.fishCurrent == 54)
      {
         _root.save.gardenMegaFertilizer += 1;
      }
      if(_root.fishCurrent == 55)
      {
         _root.save.mysteryBox[1] += 1;
      }
      if(_root.fishCurrent == 56)
      {
         _root.save.mysteryBox[7] += 1;
      }
      if(_root.fishCurrent == 57)
      {
         _root.save.mysteryBox[8] += 1;
      }
      if(_root.fishCurrent == 58)
      {
         _root.save.mysteryBox[4] += 1;
      }
      if(_root.fishCurrent == 59)
      {
         _root.gainWhiteCoin(1);
      }
      if(_root.fishCurrent == 60)
      {
         _root.save.boostPotion += 1;
      }
      if(_root.fishCurrent == 61)
      {
         _root.save.megaBoostPotion += 1;
      }
      expToGain = Math.floor(_root.fishAExp * Math.pow(_root.save.level,0.6) * _root.save.boost / 100 * 0.8);
      if(_root.save.permaBanPenalty[6] == 3)
      {
         expToGain = Math.floor(expToGain * 2);
      }
      else if(_root.save.permaBanPenalty[6] == 2)
      {
         expToGain = Math.floor(expToGain * 1.6);
      }
      else if(_root.save.permaBanPenalty[6] == 1)
      {
         expToGain = Math.floor(expToGain * 1.4);
      }
      _root.gainEXP(expToGain);
      _root.dispNews(116,tempName + " GET! (+" + _root.withComma(expToGain) + " EXP)");
      if(_root.save.fishLevel > 30)
      {
         if(_root.save.fishLevel > 50)
         {
            expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.03 - 0.3));
         }
         else
         {
            expToGain = Math.floor(expToGain * (_root.save.fishLevel * 0.05 - 1.3));
         }
         _root.gainEXP(expToGain);
         _root.dispNews(162,"Bonus LEGEND EXP gained! (+" + _root.withComma(expToGain) + " EXP)");
      }
      _root.gainCyborgPoint(1);
      _root.save.fishTotal += 1;
      _root.save.fishFound[_root.fishCurrent] += 1;
      _root.save.fishLeft[_root.fishCurrent] += 1;
      _parent._parent.checkCount();
      _root.save.fishFatigue += _root.fishFatigue;
   }
   else if(_root.fishLoc >= 50 && _root.fishLoc <= 150)
   {
      _root.fishStatus = 1;
      _root.save.fishStreak = 0;
      if(_root.save.fishExamLeft > 0)
      {
         _root.save.fishExamLeft -= 1;
      }
      _parent.fishScore.gotoAndStop(1);
      _parent.fishScore._alpha = 100;
      _root.fishLoc = 0;
      _root.fishSpeed = 0;
      _root.save.fishExp += Math.ceil(_root.fishCurrentExp / 10);
      if(_parent._parent.ready != true)
      {
         _root.dispNews(118,"Fishing Mastery increased! (+" + _root.withComma(Math.ceil(_root.fishCurrentExp / 10)) + ")");
      }
      expToGain = Math.floor(_root.fishAExp * Math.pow(_root.save.level,0.6) * _root.save.boost / 100 * 0.1);
      _root.gainEXP(expToGain);
      _root.dispNews(115,"Nothing GET! (+" + _root.withComma(expToGain) + " EXP)");
      _root.save.fishFatigue += Math.floor(_root.fishFatigue / 10);
   }
}


onClipEvent(load){
   _alpha = 0;
   tolerance = 0;
}


