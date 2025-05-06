//! status=pending
function checkCount()
{
   _root.fishCount = 0;
   i = 1;
   while(i <= 50)
   {
      _root.fishCount += _root.save.fishLeft[i];
      i++;
   }
   i = 71;
   while(i <= 80)
   {
      _root.fishCount += _root.save.fishLeft[i];
      i++;
   }
}
curScoreDisp = _root.save.fishScore;
curTodayDisp = _root.save.fishScoreToday;
curRecordDisp = _root.save.fishScoreRecord;
if(_root.save.fishExamLeft <= 0)
{
   scoreDisp.gotoAndStop(1);
   scoreDisp.scoreText.text = _root.withComma(curScoreDisp);
   scoreDisp.todayText.text = _root.withComma(curTodayDisp);
   scoreDisp.recordText.text = _root.withComma(curRecordDisp);
}
else
{
   scoreDisp.gotoAndStop(2);
   scoreDisp.skillText.text = "Skill " + _root.save.fishLevel + " -> " + Math.round(_root.save.fishLevel + 1);
   if(_root.save.fishLevel < 50)
   {
      scoreDisp.skillText.text = "Skill 50 -> 51";
   }
   scoreDisp.perfectText.text = _root.withComma(_root.save.fishExamPerfectReq - _root.save.fishExamPerfect);
   if(_root.save.fishExamPerfect >= _root.save.fishExamPerfectReq)
   {
      scoreDisp.perfectText.text = "0";
   }
   scoreDisp.streakText.text = _root.withComma(_root.save.fishExamStreakReq - _root.save.fishStreak) + "x";
   if(_root.save.fishExamStreak >= _root.save.fishExamStreakReq)
   {
      scoreDisp.streakText.text = "0x";
   }
   scoreDisp.lifeGauge.gotoAndStop(_root.save.fishExamLeft);
   if(_root.save.fishLevel >= 60)
   {
      scoreDisp.skillText.text = "Survival";
      scoreDisp.perfectText.text = _root.withComma(_root.save.fishExamPerfect);
      scoreDisp.streakText.text = _root.withComma(_root.save.fishExamStreak) + "x";
   }
}
ready = false;
_root.fishElapsed = 0;
_root.playerLoc = 0;
_root.fishStatus = 1;
_root.fishCount = 0;
_root.fishLoc = 0;
_root.fishSpeed = 0;
_root.fishDest = 100;
_root.fishCurrent = 0;
_root.fishCurrentExp = 0;
_root.fishCheerTime = 0;
_root.fishAExp = 0;
_root.fishFatigue = 0;
_root.fishSpec = "";
_root.fishCate = "";
checkCount();
onEnterFrame = function()
{
   if(_root.save.fishExamLeft >= 0)
   {
      _root.save.fishRod = 8;
      if(_root.save.fishExamLeft == 0)
      {
         if(_root.save.fishExamPerfect >= _root.save.fishExamPerfectReq && _root.save.fishExamStreak >= _root.save.fishExamStreakReq)
         {
            if(_root.save.fishLevel < 60)
            {
               _root.save.fishLevel += 1;
               if(_root.save.fishLevel < 51)
               {
                  _root.save.fishLevel = 51;
               }
               _root.save.fishBestLevel = _root.save.fishLevel;
               _root.dispNews(120,"Your Fishing Skill is now " + _root.save.fishLevel + "!");
               _root.save.fishExamReduce = 0;
               fishPop.gotoAndStop(5);
            }
         }
         else
         {
            fishPop.gotoAndStop(6);
         }
         _root.save.fishExamLeft = -1;
      }
   }
   else if(_root.save.fishExamRod != -1)
   {
      _root.save.fishRod = _root.save.fishExamRod;
      _root.save.fishExamRod = -1;
   }
   if(_root.saveid == 23)
   {
      _root.save.fishRod = 5;
   }
   _root.fishElapsed += 1 / _root.fps;
   if(_root.save.fishScoreRecord < _root.save.fishScoreToday)
   {
      _root.save.fishScoreRecord = _root.save.fishScoreToday;
   }
   if(_root.save.fishScoreToday < curTodayDisp)
   {
      curTodayDisp = _root.save.fishScoreToday;
   }
   curScoreDisp += Math.ceil(_root.save.fishScore - curScoreDisp) / 5;
   curTodayDisp += Math.ceil(_root.save.fishScoreToday - curTodayDisp) / 5;
   curRecordDisp += Math.ceil(_root.save.fishScoreRecord - curRecordDisp) / 5;
   if(curScoreDisp > 999999999999)
   {
      curScoreDisp = 999999999999;
   }
   if(_root.save.fishExamLeft <= 0)
   {
      scoreDisp.gotoAndStop(1);
      scoreDisp.scoreText.text = _root.withComma(curScoreDisp);
      scoreDisp.todayText.text = _root.withComma(curTodayDisp);
      scoreDisp.recordText.text = _root.withComma(curRecordDisp);
   }
   else
   {
      scoreDisp.gotoAndStop(2);
      scoreDisp.skillText.text = "Skill " + _root.save.fishLevel + " -> " + Math.round(_root.save.fishLevel + 1);
      if(_root.save.fishLevel < 50)
      {
         scoreDisp.skillText.text = "Skill 50 -> 51";
      }
      scoreDisp.perfectText.text = _root.withComma(_root.save.fishExamPerfectReq - _root.save.fishExamPerfect);
      if(_root.save.fishExamPerfect >= _root.save.fishExamPerfectReq)
      {
         scoreDisp.perfectText.text = "0";
      }
      scoreDisp.streakText.text = _root.withComma(_root.save.fishExamStreakReq - _root.save.fishStreak) + "x";
      if(_root.save.fishExamStreak >= _root.save.fishExamStreakReq)
      {
         scoreDisp.streakText.text = "0x";
      }
      scoreDisp.lifeGauge.gotoAndStop(_root.save.fishExamLeft);
      if(_root.save.fishLevel >= 60)
      {
         scoreDisp.skillText.text = "Survival";
         scoreDisp.perfectText.text = _root.withComma(_root.save.fishExamPerfect);
         scoreDisp.streakText.text = _root.withComma(_root.save.fishExamStreak) + "x";
      }
   }
   if(_root.save.fishFatigue > 5000)
   {
      _root.save.fishFatigue = 5000;
   }
   if(_root.save.fishFatigue < 0)
   {
      _root.save.fishFatigue = 0;
   }
   fishFreq = (1 + _root.save.fishLevel * 0.02) * (5000 - _root.save.fishFatigue) / 5000 * 0.3 * (1 + _root.save.fishStreak * 0.1);
   if(_root.save.fishRod == 9)
   {
      fishFreq *= 4;
   }
   if(_root.save.fishRod == 5)
   {
      fishFreq *= 0.75;
   }
   if(_root.save.fishRod == 6)
   {
      fishFreq *= 0.4;
   }
   if(_root.fishElapsed < 5)
   {
      fishFreq = 0;
   }
   if(_root.fishStatus == 1 && Math.random() < fishFreq / _root.fps && _root.fishCount < _root.save.fishCapacity && fishPop._currentframe == 1 && bonusPop._currentframe == 1)
   {
      _root.fishStatus = 2;
      chaos1 = random(200) + 1;
      if(_root.save.careerLevel[12] >= 200 && Math.random() < 0.03)
      {
         chaos1 = random(20) + 1;
      }
      if(_root.save.fishRod == 10 && Math.random() < 0.04)
      {
         chaos1 = 4;
      }
      if(Math.random() < 0.05 && _root.save.fishStreak >= 2)
      {
         _root.fishCurrent = 59;
      }
      else if(chaos1 <= 3 && _root.save.fishStreak >= 5)
      {
         chaos = random(100) + 1;
         if(chaos <= 4 && _root.save.fishLevel >= 25 || _root.save.fishRod == 3)
         {
            _root.fishCurrent = 3;
            if(_root.save.fishRod == 10 && _root.save.fishLeft[3] > _root.save.fishLeft[6] && Math.random() < 0.9)
            {
               _root.fishCurrent = 6;
            }
         }
         else if(chaos <= 20 && _root.save.fishLevel >= 15)
         {
            _root.fishCurrent = 2;
            if(_root.save.fishRod == 10 && _root.save.fishLeft[2] > _root.save.fishLeft[5] && Math.random() < 0.9)
            {
               _root.fishCurrent = 5;
            }
         }
         else
         {
            _root.fishCurrent = 1;
            if(_root.save.fishRod == 10 && _root.save.fishLeft[1] > _root.save.fishLeft[4] && Math.random() < 0.9)
            {
               _root.fishCurrent = 4;
            }
         }
      }
      else if(chaos1 <= 6 && _root.save.fishStreak >= 4)
      {
         chaos = random(100) + 1;
         if(chaos <= 4 && _root.save.fishLevel >= 25 || _root.save.fishRod == 3)
         {
            _root.fishCurrent = 6;
            if(_root.save.fishRod == 10 && _root.save.fishLeft[6] > _root.save.fishLeft[3] && Math.random() < 0.7)
            {
               _root.fishCurrent = 3;
            }
         }
         else if(chaos <= 20 && _root.save.fishLevel >= 15)
         {
            _root.fishCurrent = 5;
            if(_root.save.fishRod == 10 && _root.save.fishLeft[5] > _root.save.fishLeft[2] && Math.random() < 0.7)
            {
               _root.fishCurrent = 2;
            }
         }
         else
         {
            _root.fishCurrent = 4;
            if(_root.save.fishRod == 10 && _root.save.fishLeft[4] > _root.save.fishLeft[1] && Math.random() < 0.7)
            {
               _root.fishCurrent = 1;
            }
         }
      }
      else if(chaos1 <= 12 && _root.save.fishStreak >= 3)
      {
         chaos = random(100) + 1;
         tempChance = _root.save.fishLevel;
         if(chaos <= tempChance)
         {
            _root.fishCurrent = 8;
         }
         else if(chaos <= 50)
         {
            _root.fishCurrent = 7;
         }
         else if(chaos <= 50 + tempChance)
         {
            _root.fishCurrent = 10;
         }
         else if(chaos <= 100)
         {
            _root.fishCurrent = 9;
         }
      }
      else if(chaos1 <= 17 && _root.save.fishStreak >= 6)
      {
         if(_root.save.fishStreak >= 10 && _root.save.fishLevel >= 20 && Math.random() < 0.6)
         {
            _root.fishCurrent = 54;
         }
         else if(_root.save.fishStreak >= 9 && _root.save.fishLevel >= 15 && Math.random() < 0.7)
         {
            _root.fishCurrent = 61;
         }
         else if(_root.save.fishStreak >= 8 && _root.save.fishLevel >= 10 && Math.random() < 0.8)
         {
            _root.fishCurrent = 53;
         }
         else if(_root.save.fishStreak >= 7 && _root.save.fishLevel >= 5 && Math.random() < 0.9)
         {
            _root.fishCurrent = 60;
         }
         else
         {
            _root.fishCurrent = 52;
         }
      }
      else if(chaos1 <= 20 && _root.save.fishStreak >= 5 || _root.save.eliteFisherTime > 0 && _root.save.fishStreak >= 2 && Math.random() < 0.02 && chaos1 > 20)
      {
         if(_root.save.fishStreak >= 11 && _root.save.fishLevel >= 30 && Math.random() < 0.4)
         {
            _root.fishCurrent = 58;
         }
         else if(_root.save.fishStreak >= 9 && _root.save.fishLevel >= 20 && Math.random() < 0.6)
         {
            _root.fishCurrent = 57;
         }
         else if(_root.save.fishStreak >= 7 && _root.save.fishLevel >= 10 && Math.random() < 0.8)
         {
            _root.fishCurrent = 56;
         }
         else
         {
            _root.fishCurrent = 55;
         }
      }
      else if(chaos1 <= 130 && _root.save.fishRod != 6 || _root.save.fishRod == 5)
      {
         ftc = 11;
         fL = _root.save.fishLevel + 1 + Math.ceil(Math.sqrt(_root.save.fishStreak / 3));
         if(_root.save.fishRod == 2)
         {
            fL += 3;
         }
         if(_root.save.fishRod == 4 && _root.save.fishStreak >= 1)
         {
            fL += 2 + Math.ceil(Math.sqrt(_root.save.fishStreak / 2));
         }
         if(_root.save.eliteFisherTime > 0)
         {
            fL += 4;
         }
         i = 1;
         while(i <= fL)
         {
            if(ftc < 30)
            {
               blah = _root.save.fishLevel - _root.fishArray[ftc + 1].fishLevel;
               if(blah > 0)
               {
                  chance = 45 + Math.pow(blah,0.7) * 3;
               }
               else
               {
                  chance = 35 - Math.pow(Math.abs(blah),1.1) * 3;
               }
               if(ftc >= 20)
               {
                  chance *= 0.6;
               }
               if(chance > 80)
               {
                  chance = 80;
               }
               if(Math.random() < chance / 100)
               {
                  ftc += 1;
               }
            }
            i++;
         }
         if(Math.random() < 0.3)
         {
            ftc = 11 + random(ftc - 10);
         }
         _root.fishCurrent = ftc;
      }
      else
      {
         ftc = 31;
         fL = _root.save.fishLevel + 1 + Math.ceil(Math.sqrt(_root.save.fishStreak / 3));
         if(_root.save.fishRod == 2)
         {
            fL += 3;
         }
         if(_root.save.fishRod == 4 && _root.save.fishStreak >= 1)
         {
            fL += 2 + Math.ceil(Math.sqrt(_root.save.fishStreak / 2));
         }
         if(_root.save.eliteFisherTime > 0)
         {
            fL += 4;
         }
         i = 1;
         while(i <= fL)
         {
            if(ftc < 60)
            {
               if(ftc >= 50)
               {
                  blah = _root.save.fishLevel - _root.fishArray[ftc + 21].fishLevel;
               }
               else
               {
                  blah = _root.save.fishLevel - _root.fishArray[ftc + 1].fishLevel;
               }
               if(blah > 0)
               {
                  chance = 45 + Math.pow(blah,0.7) * 3;
               }
               else
               {
                  chance = 35 - Math.pow(Math.abs(blah),1.1) * 3;
                  if(ftc >= 50)
                  {
                     chance *= 0.1;
                  }
               }
               if(ftc >= 40)
               {
                  chance *= 0.6;
               }
               if(ftc >= 50)
               {
                  chance *= 0.5;
               }
               if(ftc >= 50 && _root.save.fishStreak < (ftc - 50) * 5 && _root.save.fishRod == 8)
               {
                  chance *= 0.3;
               }
               if(ftc >= 50 && _root.save.fishStreak < (ftc - 50) * 3 && _root.save.fishRod != 8)
               {
                  chance *= 0.3;
               }
               if(chance > 80)
               {
                  chance = 80;
               }
               if(Math.random() < chance / 100)
               {
                  ftc += 1;
               }
            }
            i++;
         }
         if(ftc > 50 && Math.random() < 0.95)
         {
            ftc = 50 + random(ftc - 49);
            if(Math.random() < 0.75)
            {
               ftc = 50;
            }
         }
         if(Math.random() < 0.3)
         {
            ftc = 31 + random(ftc - 30);
         }
         if(ftc > 50)
         {
            ftc += 20;
         }
         _root.fishCurrent = ftc;
      }
      if(Math.random() < 0.5)
      {
         _root.fishLoc = 0;
         _root.fishSpeed = _root.fishArray[_root.fishCurrent].fishSpeed;
      }
      else
      {
         _root.fishLoc = 200;
         _root.fishSpeed = - _root.fishArray[_root.fishCurrent].fishSpeed;
      }
      _root.fishDest = 90 + random(20);
      _root.fishCurrentExp = Math.floor(_root.fishArray[_root.fishCurrent].fishExp * (1 + _root.curCareerLevel[12] * 0.01));
      if(_root.save.fishRod == 1)
      {
         _root.fishCurrentExp += 5;
      }
      if(_root.save.fishLevel > 30)
      {
         _root.fishCurrentExp += _root.save.fishLevel - 30;
      }
      _root.fishFatigue = _root.fishArray[_root.fishCurrent].fishFatigue;
      if(Math.random() < _root.curCareerLevel[12] * 0.003)
      {
         _root.fishFatigue = 0;
      }
      if(_root.save.fishExamLeft > 0)
      {
         _root.fishFatigue = 0;
      }
      _root.fishCate = _root.fishArray[_root.fishCurrent].fishCate;
      _root.fishSpec = _root.fishArray[_root.fishCurrent].fishSpec;
      _root.fishLev = _root.fishArray[_root.fishCurrent].fishLevel;
      _root.fishAExp = Math.floor(_root.fishArray[_root.fishCurrent].fishAExp * (1 + _root.curCareerLevel[12] * 0.005));
      if(_root.save.eliteFisherTime > 0)
      {
         _root.fishAExp = Math.floor(_root.fishAExp * 1.5);
      }
   }
   if(_root.fishStatus == 3)
   {
      _root.fishCheerTime += 1 / _root.fps;
      if(_root.fishCheerTime > 2.5)
      {
         _root.fishCheerTime = 0;
         _root.fishStatus = 1;
      }
   }
};
