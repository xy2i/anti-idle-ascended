//! status=pending
function timestampToBeat(tim)
{
   if(tim / slowMult < 300000)
   {
      return tim / slowMult / (150 - tim / slowMult / 3000);
   }
   return tim / slowMult * 3 / 50 - 12000;
}
function beatToTimestamp(bea)
{
   if(bea < 6000)
   {
      return bea * 450000 / (bea + 3000) * slowMult;
   }
   return 50 * (bea + 12000) / 3 * slowMult;
}
function pressKey(keyNum)
{
   earliestBeat = 0;
   earliestBeatNum = -1;
   var _loc3_ = noteCurrent - 10;
   while(_loc3_ <= noteCurrent + 9)
   {
      if(earliestBeat == 0 && noteResultArr[_loc3_] == 0)
      {
         earliestBeat = noteBeatArr[_loc3_];
         earliestBeatNum = _loc3_;
         _loc3_ = noteCurrent + 10;
      }
      _loc3_ = _loc3_ + 1;
   }
   acceptableArr = [0,-1,-1,-1];
   _loc3_ = earliestBeatNum;
   while(_loc3_ <= earliestBeatNum + 17)
   {
      if((noteBeatArr[_loc3_] == earliestBeat || curTimestamp >= beatToTimestamp(noteBeatArr[_loc3_]) - 300) && noteResultArr[_loc3_] == 0 && acceptableArr[noteColorArr[_loc3_]] == -1)
      {
         acceptableArr[noteColorArr[_loc3_]] = _loc3_;
      }
      _loc3_ = _loc3_ + 1;
   }
   if(acceptableArr[keyNum] == -1)
   {
      _root.arcadeMiss += 1;
      _root.arcadeCombo = 0;
      tmpDamage = 50 + Math.floor((_root.arcadeAwesome + _root.arcadeGood) / 20) + _root.arcadeMiss * 5;
      if(_root.save.rankedMode != true)
      {
         tmpDamage = Math.ceil(tmpDamage * (1 - _root.save.unrankedPower[38] * 0.1));
      }
      _root.arcadeHealth -= tmpDamage;
      comboBreak.alp = 10;
   }
   else
   {
      hitNote(acceptableArr[keyNum]);
   }
}
function hitNote(noteNum)
{
   dist = curTimestamp - beatToTimestamp(noteBeatArr[noteNum]);
   if(noteColorArr[noteNum] > 9)
   {
      dist = 0;
   }
   if(dist < -300)
   {
      _root.arcadeMiss += 1;
      _root.arcadeCombo = 0;
      tmpDamage = 50 + Math.floor((_root.arcadeAwesome + _root.arcadeGood) / 20) + _root.arcadeMiss;
      if(_root.save.rankedMode != true)
      {
         tmpDamage = Math.ceil(tmpDamage * (1 - _root.save.unrankedPower[38] * 0.1));
      }
      _root.arcadeHealth -= tmpDamage;
      comboBreak.alp = 10;
   }
   else
   {
      tol = 25;
      if(_root.arcadeAwesome >= 200)
      {
         tol = 0;
      }
      if(dist >= -30 && (dist <= 30 || noteLateArr[noteNum] < 1))
      {
         _root.arcadeAwesome += 1;
         if(_root.arcadeAwesome % 100 == 0)
         {
            _root.gainWhiteCoin(1);
         }
         _root.arcadeCombo += 1;
         tmpScore = 1010;
         if(_root.save.rankedMode != true)
         {
            tmpScore = Math.floor(1010 + _root.save.unrankedPower[36] * 50.5);
         }
         if(_root.save.arcadeDifficulty[6] == 1)
         {
            tmpScore = Math.floor(tmpScore * 0.7);
         }
         else if(_root.save.arcadeDifficulty[6] == 3)
         {
            tmpScore = Math.floor(tmpScore * 2.5);
         }
         else if(_root.save.arcadeDifficulty[6] == 4)
         {
            tmpScore = Math.floor(tmpScore * 4);
         }
         _root.arcadeScore += tmpScore;
         if(_root.arcadeCombo >= 10)
         {
            _root.arcadeScore += tmpScore;
            _root.arcadeHealth += 10;
            if(_root.save.rankedMode != true)
            {
               _root.arcadeHealth += _root.save.unrankedPower[37] * 5;
            }
         }
         if(_root.arcadeCombo >= 50)
         {
            _root.arcadeScore += tmpScore;
         }
         if(_root.arcadeAwesome >= 100)
         {
            _root.arcadeScore += tmpScore;
         }
         if(_root.arcadeAwesome >= 500)
         {
            _root.arcadeScore += tmpScore;
         }
         noteResultArr[noteNum] = 3;
         showJudgement(noteNum,1,1,_root.arcadeCombo);
      }
      else if(dist >= -55 - tol && dist < -30)
      {
         _root.arcadeAwesome += 1;
         if(_root.arcadeAwesome % 100 == 0)
         {
            _root.gainWhiteCoin(1);
         }
         _root.arcadeCombo += 1;
         tmpScore = 1000;
         if(_root.save.rankedMode != true)
         {
            tmpScore = Math.floor(1000 + _root.save.unrankedPower[36] * 50);
         }
         if(_root.save.arcadeDifficulty[6] == 1)
         {
            tmpScore = Math.floor(tmpScore * 0.7);
         }
         else if(_root.save.arcadeDifficulty[6] == 3)
         {
            tmpScore = Math.floor(tmpScore * 2.5);
         }
         else if(_root.save.arcadeDifficulty[6] == 4)
         {
            tmpScore = Math.floor(tmpScore * 4);
         }
         _root.arcadeScore += tmpScore;
         if(_root.arcadeCombo >= 10)
         {
            _root.arcadeScore += tmpScore;
            _root.arcadeHealth += 10;
            if(_root.save.rankedMode != true)
            {
               _root.arcadeHealth += _root.save.unrankedPower[37] * 5;
            }
         }
         if(_root.arcadeCombo >= 50)
         {
            _root.arcadeScore += tmpScore;
         }
         if(_root.arcadeAwesome >= 100)
         {
            _root.arcadeScore += tmpScore;
         }
         if(_root.arcadeAwesome >= 500)
         {
            _root.arcadeScore += tmpScore;
         }
         noteResultArr[noteNum] = 3;
         showJudgement(noteNum,1,2,_root.arcadeCombo);
      }
      else if(dist > 30 && dist <= 55 + tol)
      {
         _root.arcadeAwesome += 1;
         if(_root.arcadeAwesome % 100 == 0)
         {
            _root.gainWhiteCoin(1);
         }
         _root.arcadeCombo += 1;
         tmpScore = 1000;
         if(_root.save.rankedMode != true)
         {
            tmpScore = Math.floor(1000 + _root.save.unrankedPower[36] * 50);
         }
         if(_root.save.arcadeDifficulty[6] == 1)
         {
            tmpScore = Math.floor(tmpScore * 0.7);
         }
         else if(_root.save.arcadeDifficulty[6] == 3)
         {
            tmpScore = Math.floor(tmpScore * 2.5);
         }
         else if(_root.save.arcadeDifficulty[6] == 4)
         {
            tmpScore = Math.floor(tmpScore * 4);
         }
         _root.arcadeScore += tmpScore;
         if(_root.arcadeCombo >= 10)
         {
            _root.arcadeScore += tmpScore;
            _root.arcadeHealth += 10;
            if(_root.save.rankedMode != true)
            {
               _root.arcadeHealth += _root.save.unrankedPower[37] * 5;
            }
         }
         if(_root.arcadeCombo >= 50)
         {
            _root.arcadeScore += tmpScore;
         }
         if(_root.arcadeAwesome >= 100)
         {
            _root.arcadeScore += tmpScore;
         }
         if(_root.arcadeAwesome >= 500)
         {
            _root.arcadeScore += tmpScore;
         }
         noteResultArr[noteNum] = 3;
         showJudgement(noteNum,1,3,_root.arcadeCombo);
      }
      else if(dist >= -300 && dist < 0)
      {
         _root.arcadeGood += 1;
         _root.arcadeCombo += 1;
         _root.arcadeScore += 300;
         if(_root.arcadeCombo >= 10)
         {
            _root.arcadeScore += 300;
            _root.arcadeHealth += 1;
         }
         if(_root.arcadeCombo >= 50)
         {
            _root.arcadeScore += 300;
         }
         noteResultArr[noteNum] = 2;
         showJudgement(noteNum,2,2,_root.arcadeCombo);
      }
      else if(dist > 0 && dist <= 300)
      {
         _root.arcadeGood += 1;
         _root.arcadeCombo += 1;
         _root.arcadeScore += 300;
         if(_root.arcadeCombo >= 10)
         {
            _root.arcadeScore += 300;
            _root.arcadeHealth += 1;
         }
         if(_root.arcadeCombo >= 50)
         {
            _root.arcadeScore += 300;
         }
         noteResultArr[noteNum] = 2;
         showJudgement(noteNum,2,3,_root.arcadeCombo);
      }
      if(noteCurrent < noteNum)
      {
         noteCurrent = noteNum;
      }
   }
}
function showJudgement(noteNum, pgm, earlyLate, comboCount)
{
   judgementInst += 1;
   if(judgementInst > judgementSprite)
   {
      judgementInst = 1;
   }
   this["mmrJudgement" + judgementInst]._x = notePositionArr[noteNum] * 50;
   this["mmrJudgement" + judgementInst].pgm.gotoAndStop(pgm);
   this["mmrJudgement" + judgementInst].earlyLate.gotoAndStop(earlyLate);
   if(comboCount > 0)
   {
      this["mmrJudgement" + judgementInst].comboText.text = comboCount;
   }
   else
   {
      this["mmrJudgement" + judgementInst].comboText.text = "";
   }
   this["mmrJudgement" + judgementInst].alp = 250;
   if(pgm <= 2 && noteColorArr[noteNum] < 4)
   {
      this["mmrTrace" + judgementInst].gotoAndStop(pgm + 1);
      this["mmrTrace" + judgementInst]._x = notePositionArr[noteNum] * 50;
      this["mmrTrace" + judgementInst]._y = noteYposArr[noteNum];
      this["mmrTrace" + judgementInst].alp = 100;
   }
}
function missNote(noteNum)
{
   _root.arcadeMiss += 1;
   tmpDamage = 100 + Math.floor((_root.arcadeAwesome + _root.arcadeGood) / 10) + _root.arcadeMiss;
   if(_root.save.rankedMode != true)
   {
      tmpDamage = Math.ceil(tmpDamage * (1 - _root.save.unrankedPower[38] * 0.1));
   }
   _root.arcadeHealth -= tmpDamage;
   _root.arcadeCombo = 0;
   noteResultArr[noteNum] = 1;
   if(noteCurrent < noteNum)
   {
      noteCurrent = noteNum;
   }
   showJudgement(noteNum,3,4,0);
}
function createNote(beat, pos, color)
{
   if(color == -1)
   {
      color = (pos + 2) % 3 + 1;
   }
   if(isNaN(noteRsvArr[beat * 10 + pos]) || noteRsvArr[beat * 10 + pos] == color && color > 9)
   {
      noteCount += 1;
      noteBeatArr[noteCount] = beat;
      notePositionArr[noteCount] = pos;
      noteColorArr[noteCount] = color;
      noteResultArr[noteCount] = 0;
      noteLateArr[noteCount] = -1;
      noteRsvArr[beat * 10 + pos] = color;
   }
   trace(noteCount + " | " + beat + " | " + pos + " | " + color);
}
judgementSprite = 9;
noteSprite = 50;
i = 102;
while(i > noteSprite)
{
   unloadMovie(this["mmrNote" + i]);
   i--;
}
enableHoldNotes = false;
_root.arcadeAwesome = 0;
_root.arcadeGood = 0;
_root.arcadeMiss = 0;
_root.arcadeCombo = 0;
_root.arcadeHealth = 10000;
_root.arcadeScore = 0;
_root.arcadeMultiplier = 1;
_root.arcadeFakeScore = 0;
holdingLeft = false;
holdingDown = false;
holdingRight = false;
holdingA = false;
holdingS = false;
holdingD = false;
slowMult = 2;
mmrClock = new Date();
curTimestamp = -4000;
savedTimestamp = mmrClock.getTime();
noteBeatArr = new Array();
notePositionArr = new Array();
noteColorArr = new Array();
noteResultArr = new Array();
noteRsvArr = new Array();
noteLateArr = new Array();
noteYposArr = new Array();
noteCount = 0;
noteCurrent = 0;
judgementInst = 2;
noteDispArr = new Array();
iter = 0;
onEnterFrame = function()
{
   jud = 1;
   while(jud <= judgementSprite)
   {
      if(this["mmrJudgement" + jud].alp > 100)
      {
         this["mmrJudgement" + jud].alp -= 25;
         this["mmrJudgement" + jud]._alpha = 100;
      }
      else if(this["mmrJudgement" + jud].alp > 0)
      {
         this["mmrJudgement" + jud].alp -= 25;
         this["mmrJudgement" + jud]._alpha = this["mmrJudgement" + jud].alp;
      }
      else if(this["mmrJudgement" + jud].alp == 0)
      {
         this["mmrJudgement" + jud].alp = -1;
         this["mmrJudgement" + jud]._x = 600;
         this["mmrJudgement" + jud]._alpha = 0;
      }
      if(this["mmrTrace" + jud].alp > 0)
      {
         this["mmrTrace" + jud].alp -= 10;
         this["mmrTrace" + jud]._alpha = this["mmrTrace" + jud].alp;
      }
      else if(this["mmrTrace" + jud].alp == 0)
      {
         this["mmrTrace" + jud].alp = -1;
         this["mmrTrace" + jud]._x = 600;
         this["mmrTrace" + jud]._alpha = 0;
      }
      jud++;
   }
   mmrHealthBar._width = Math.ceil(_root.arcadeHealth / 20);
   if(iter < 10000)
   {
      iter += 1;
      rhythmArr = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
      if(iter % 8 == 0 || noteCount >= 10000)
      {
         rhythmArr = [2,1,1,1,2,1,1,1,2,1,1,1,2,1,1,1];
      }
      else if(iter % 4 == 0 || noteCount >= 5000)
      {
         rhythmArr = [2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1];
      }
      else if(iter % 2 == 0 || noteCount >= 1000)
      {
         rhythmArr = [2,0,1,0,1,0,1,0,2,0,1,0,1,0,1,0];
      }
      else
      {
         rhythmArr = [2,0,1,0,1,0,0,0,2,0,1,0,1,0,0,0];
      }
      i = 0;
      while(i <= 15)
      {
         if(rhythmArr[i] < 2 && Math.random() < 0.2 && (Math.random() < 0.3 || i % 2 == 0))
         {
            rhythmArr[i] += 1;
         }
         if(rhythmArr[i] > 0 && Math.random() < 0.3 && (Math.random() < 0.3 || i % 2 != 0))
         {
            rhythmArr[i] -= 1;
         }
         if(rhythmArr[i] == 2 && Math.random() < 0.7 && _root.save.arcadeDifficulty[6] == 1)
         {
            rhythmArr[i] -= 1;
         }
         if(rhythmArr[i] == 1 && Math.random() < 0.7 && _root.save.arcadeDifficulty[6] == 1 && i % 2 != 0)
         {
            rhythmArr[i] -= 1;
         }
         i++;
      }
      rev = 0;
      if((iter + 3) % 4 < 2)
      {
         rev = 4;
      }
      if(_root.save.arcadeDifficulty[6] >= 3)
      {
         pat = 0;
         if(iter % 2 == 1)
         {
            pat = random(59) + 1;
            anp = random(9) + 1;
         }
         i = 0;
         while(i <= 15)
         {
            bea = (iter - 1) * 16 + i;
            reservedArr = [0,0,0,0,0,0,0,0,0,0];
            j = 1;
            while(j <= 9)
            {
               clr = noteRsvArr[bea * 10 + j];
               if(!isNaN(clr) && clr > 9)
               {
                  createNote(bea,j,clr);
               }
               j++;
            }
            if(pat > 0)
            {
               if(pat >= 1 && pat <= 9)
               {
                  createNote(bea,Math.floor((pat - 1) / 3) + ((i + pat) % 3 + 1),-1);
               }
               else if(pat >= 10 && pat <= 18)
               {
                  createNote(bea,Math.floor((pat - 10) / 3) + ((9 - i + pat) % 3 + 1),-1);
               }
               else if(pat >= 19 && pat <= 27)
               {
                  createNote(bea,pat - 18,-1);
               }
               else if(pat >= 28 && pat <= 35)
               {
                  if(i % 2 == 0)
                  {
                     createNote(bea,pat - 27,-1);
                  }
                  else
                  {
                     createNote(bea,pat - 26,-1);
                  }
               }
               else if(pat >= 36 && pat <= 43)
               {
                  if(i % 2 == 0)
                  {
                     createNote(bea,pat - 34,-1);
                  }
                  else
                  {
                     createNote(bea,pat - 35,-1);
                  }
               }
               else if(pat >= 44 && pat <= 47)
               {
                  if(i <= 8)
                  {
                     createNote(bea,i + 1,-1);
                  }
                  else
                  {
                     createNote(bea,17 - i,-1);
                  }
               }
               else if(pat >= 48 && pat <= 51)
               {
                  if(i <= 8)
                  {
                     createNote(bea,9 - i,-1);
                  }
                  else
                  {
                     createNote(bea,i - 7,-1);
                  }
               }
               else if(pat >= 52 && pat <= 55)
               {
                  if(i <= 11)
                  {
                     createNote(bea,i - Math.floor(i / 3) * 2 + (pat - 51),-1);
                  }
               }
               else if(pat >= 56 && pat <= 59)
               {
                  if(i <= 11)
                  {
                     createNote(bea,10 - (i - Math.floor(i / 3) * 2 + (pat - 55)),-1);
                  }
               }
               if(Math.random() < 0.75 && i % 4 == 0)
               {
                  if(anp != notePositionArr[noteCount])
                  {
                     createNote(bea,anp,(anp - 1) % 3 + 1);
                     if(Math.random() < 0.8 && enableHoldNotes == true)
                     {
                        noteRsvArr[noteBeatArr[noteCount] * 10 + 10 + notePositionArr[noteCount]] = noteColorArr[noteCount] + 9;
                        noteRsvArr[noteBeatArr[noteCount] * 10 + 20 + notePositionArr[noteCount]] = noteColorArr[noteCount] + 9;
                        if(Math.random() < 0.4 && i % 8 == 0)
                        {
                           noteRsvArr[noteBeatArr[noteCount] * 10 + 30 + notePositionArr[noteCount]] = noteColorArr[noteCount] + 9;
                           noteRsvArr[noteBeatArr[noteCount] * 10 + 40 + notePositionArr[noteCount]] = noteColorArr[noteCount] + 9;
                           noteRsvArr[noteBeatArr[noteCount] * 10 + 50 + notePositionArr[noteCount]] = noteColorArr[noteCount] + 9;
                           noteRsvArr[noteBeatArr[noteCount] * 10 + 60 + notePositionArr[noteCount]] = noteColorArr[noteCount] + 9;
                        }
                     }
                  }
               }
            }
            else if(rhythmArr[i] == 2)
            {
               if(Math.random() < 0.5 && noteCount > 500)
               {
                  if(Math.random() < 0.1111111111111111)
                  {
                     createNote(bea,1,1);
                     createNote(bea,4,1);
                  }
                  else if(Math.random() < 0.125)
                  {
                     createNote(bea,1,1);
                     createNote(bea,7,1);
                  }
                  else if(Math.random() < 0.14285714285714285)
                  {
                     createNote(bea,4,1);
                     createNote(bea,7,1);
                  }
                  else if(Math.random() < 0.16666666666666666)
                  {
                     createNote(bea,2,2);
                     createNote(bea,5,2);
                  }
                  else if(Math.random() < 0.2)
                  {
                     createNote(bea,2,2);
                     createNote(bea,8,2);
                  }
                  else if(Math.random() < 0.25)
                  {
                     createNote(bea,5,2);
                     createNote(bea,8,2);
                  }
                  else if(Math.random() < 0.3333333333333333)
                  {
                     createNote(bea,3,3);
                     createNote(bea,6,3);
                  }
                  else if(Math.random() < 0.5)
                  {
                     createNote(bea,3,3);
                     createNote(bea,9,3);
                  }
                  else
                  {
                     createNote(bea,6,3);
                     createNote(bea,9,3);
                  }
               }
               else if(Math.random() < 0.3333333333333333)
               {
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.3333333333333333)
                     {
                        createNote(bea,1,1);
                     }
                     else if(Math.random() < 0.5)
                     {
                        createNote(bea,7,1);
                     }
                     else
                     {
                        createNote(bea,4,1);
                     }
                  }
                  else
                  {
                     createNote(bea,4,1);
                  }
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.3333333333333333)
                     {
                        createNote(bea,5,2);
                     }
                     else if(Math.random() < 0.5)
                     {
                        createNote(bea,8,2);
                     }
                     else
                     {
                        createNote(bea,2,2);
                     }
                  }
                  else
                  {
                     createNote(bea,5,2);
                  }
               }
               else if(Math.random() < 0.5)
               {
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.3333333333333333)
                     {
                        createNote(bea,1,1);
                     }
                     else if(Math.random() < 0.5)
                     {
                        createNote(bea,7,1);
                     }
                     else
                     {
                        createNote(bea,4,1);
                     }
                  }
                  else
                  {
                     createNote(bea,4,1);
                  }
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.3333333333333333)
                     {
                        createNote(bea,3,3);
                     }
                     else if(Math.random() < 0.5)
                     {
                        createNote(bea,9,3);
                     }
                     else
                     {
                        createNote(bea,6,3);
                     }
                  }
                  else
                  {
                     createNote(bea,6,3);
                  }
               }
               else
               {
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.3333333333333333)
                     {
                        createNote(bea,2,2);
                     }
                     else if(Math.random() < 0.5)
                     {
                        createNote(bea,8,2);
                     }
                     else
                     {
                        createNote(bea,5,2);
                     }
                  }
                  else
                  {
                     createNote(bea,5,2);
                  }
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.3333333333333333)
                     {
                        createNote(bea,3,3);
                     }
                     else if(Math.random() < 0.5)
                     {
                        createNote(bea,9,3);
                     }
                     else
                     {
                        createNote(bea,6,3);
                     }
                  }
                  else
                  {
                     createNote(bea,6,3);
                  }
               }
            }
            else if(rhythmArr[i] == 1)
            {
               if(Math.random() < 0.3333333333333333)
               {
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.3333333333333333)
                     {
                        createNote(bea,1,1);
                     }
                     else if(Math.random() < 0.5)
                     {
                        createNote(bea,7,1);
                     }
                     else
                     {
                        createNote(bea,4,1);
                     }
                  }
                  else
                  {
                     createNote(bea,4,1);
                  }
               }
               else if(Math.random() < 0.5)
               {
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.3333333333333333)
                     {
                        createNote(bea,2,2);
                     }
                     else if(Math.random() < 0.5)
                     {
                        createNote(bea,8,2);
                     }
                     else
                     {
                        createNote(bea,5,2);
                     }
                  }
                  else
                  {
                     createNote(bea,5,2);
                  }
               }
               else if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
               {
                  if(Math.random() < 0.3333333333333333)
                  {
                     createNote(bea,3,3);
                  }
                  else if(Math.random() < 0.5)
                  {
                     createNote(bea,9,3);
                  }
                  else
                  {
                     createNote(bea,6,3);
                  }
               }
               else
               {
                  createNote(bea,6,3);
               }
            }
            i++;
         }
      }
      else if(_root.save.arcadeDifficulty[6] == 2)
      {
         i = 0;
         while(i <= 15)
         {
            bea = (iter - 1) * 16 + i;
            if(rhythmArr[i] == 2)
            {
               if(Math.random() < 0.5 && noteCount > 500)
               {
                  if(Math.random() < 0.3333333333333333)
                  {
                     createNote(bea,2,1);
                     createNote(bea,6,1);
                  }
                  else if(Math.random() < 0.5)
                  {
                     createNote(bea,3,2);
                     createNote(bea,7,2);
                  }
                  else
                  {
                     createNote(bea,4,3);
                     createNote(bea,8,3);
                  }
               }
               else if(Math.random() < 0.3333333333333333)
               {
                  tmpPos = 6 - rev;
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                     {
                        tmpPos = 2 + rev;
                     }
                  }
                  createNote(bea,tmpPos,1);
                  tmpPos = 7 - rev;
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                     {
                        tmpPos = 3 + rev;
                     }
                  }
                  createNote(bea,tmpPos,2);
               }
               else if(Math.random() < 0.5)
               {
                  tmpPos = 6 - rev;
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                     {
                        tmpPos = 2 + rev;
                     }
                  }
                  createNote(bea,tmpPos,1);
                  tmpPos = 8 - rev;
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                     {
                        tmpPos = 4 + rev;
                     }
                  }
                  createNote(bea,tmpPos,3);
               }
               else
               {
                  tmpPos = 7 - rev;
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                     {
                        tmpPos = 3 + rev;
                     }
                  }
                  createNote(bea,tmpPos,2);
                  tmpPos = 8 - rev;
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                     {
                        tmpPos = 4 + rev;
                     }
                  }
                  createNote(bea,tmpPos,3);
               }
            }
            else if(rhythmArr[i] == 1)
            {
               if(Math.random() < 0.3333333333333333)
               {
                  tmpPos = 6 - rev;
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                     {
                        tmpPos = 2 + rev;
                     }
                  }
                  createNote(bea,tmpPos,1);
               }
               else if(Math.random() < 0.5)
               {
                  tmpPos = 7 - rev;
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                     {
                        tmpPos = 3 + rev;
                     }
                  }
                  createNote(bea,tmpPos,2);
               }
               else
               {
                  tmpPos = 8 - rev;
                  if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
                  {
                     if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                     {
                        tmpPos = 4 + rev;
                     }
                  }
                  createNote(bea,tmpPos,3);
               }
            }
            i++;
         }
      }
      else if(_root.save.arcadeDifficulty[6] == 1)
      {
         i = 0;
         while(i <= 15)
         {
            bea = (iter - 1) * 16 + i;
            if(rhythmArr[i] == 2)
            {
               if(Math.random() < 0.3333333333333333)
               {
                  createNote(bea,4,1);
                  createNote(bea,5,2);
               }
               else if(Math.random() < 0.5)
               {
                  createNote(bea,4,1);
                  createNote(bea,6,3);
               }
               else
               {
                  createNote(bea,5,2);
                  createNote(bea,6,3);
               }
            }
            else if(rhythmArr[i] == 1)
            {
               if(Math.random() < 0.3333333333333333)
               {
                  createNote(bea,4,1);
               }
               else if(Math.random() < 0.5)
               {
                  createNote(bea,5,2);
               }
               else
               {
                  createNote(bea,6,3);
               }
            }
            i++;
         }
      }
   }
   mmrClock = new Date();
   timestampSa = mmrClock.getTime() - savedTimestamp;
   if(timestampSa < 10)
   {
      timestampSa = 10;
   }
   if(timestampSa > 160)
   {
      timestampSa = 160;
   }
   savedTimestamp = mmrClock.getTime();
   curTimestamp += timestampSa;
   curBeat = timestampToBeat(curTimestamp);
   measLine._y = (curBeat - Math.ceil(curBeat / 8) * 8) * 35 + 250;
   i = 1;
   while(i <= noteSprite)
   {
      j = Math.floor((noteCurrent + (noteSprite - 30) - i) / noteSprite) * noteSprite + i;
      if(j < 1 || j > noteCount)
      {
         xPos = -999;
         yPos = -999;
         frm = 1;
      }
      else if(noteResultArr[j] != 0)
      {
         xPos = -999;
         yPos = -999;
         frm = noteColorArr[j];
      }
      else
      {
         xPos = notePositionArr[j] * 50;
         yPos = (curBeat - noteBeatArr[j]) * 35 + 250;
         frm = noteColorArr[j];
         if(noteColorArr[j] > 9 && yPos >= 250)
         {
            if(noteColorArr[j] == 10 && (holdingLeft == true || holdingA == true))
            {
               hitNote(j);
            }
            else if(noteColorArr[j] == 11 && (holdingDown == true || holdingS == true))
            {
               hitNote(j);
            }
            else if(noteColorArr[j] == 12 && (holdingRight == true || holdingD == true))
            {
               hitNote(j);
            }
         }
         if(yPos > 250)
         {
            yPos = 250 + (yPos - 250) / 5;
            if(yPos > 270)
            {
               yPos = 270;
            }
            noteLateArr[j] += 1;
            if(curTimestamp - beatToTimestamp(noteBeatArr[j]) > 300 && noteLateArr[j] > 1)
            {
               missNote(j);
            }
         }
         noteYposArr[j] = yPos;
      }
      if(yPos > -50)
      {
         this["mmrNote" + i]._y = yPos;
         this["mmrNote" + i]._x = xPos;
         if(this["mmrNote" + i]._currentframe != frm + _root.save.arcadeMmrNoteSkin * 3)
         {
            this["mmrNote" + i].gotoAndStop(frm + _root.save.arcadeMmrNoteSkin * 3);
         }
      }
      else
      {
         this["mmrNote" + i]._y = -999;
      }
      i++;
   }
   if(Key.isDown(_root.saveGlobal.keyMmrLeft1) && holdingLeft == false)
   {
      holdingLeft = true;
      pressKey(1);
   }
   if(Key.isDown(_root.saveGlobal.keyMmrDown1) && holdingDown == false)
   {
      holdingDown = true;
      pressKey(2);
   }
   if(Key.isDown(_root.saveGlobal.keyMmrRight1) && holdingRight == false)
   {
      holdingRight = true;
      pressKey(3);
   }
   if(Key.isDown(_root.saveGlobal.keyMmrLeft2) && holdingA == false)
   {
      holdingA = true;
      pressKey(1);
   }
   if(Key.isDown(_root.saveGlobal.keyMmrDown2) && holdingS == false)
   {
      holdingS = true;
      pressKey(2);
   }
   if(Key.isDown(_root.saveGlobal.keyMmrRight2) && holdingD == false)
   {
      holdingD = true;
      pressKey(3);
   }
   if(!Key.isDown(_root.saveGlobal.keyMmrLeft1))
   {
      holdingLeft = false;
   }
   if(!Key.isDown(_root.saveGlobal.keyMmrDown1))
   {
      holdingDown = false;
   }
   if(!Key.isDown(_root.saveGlobal.keyMmrRight1))
   {
      holdingRight = false;
   }
   if(!Key.isDown(_root.saveGlobal.keyMmrLeft2))
   {
      holdingA = false;
   }
   if(!Key.isDown(_root.saveGlobal.keyMmrDown2))
   {
      holdingS = false;
   }
   if(!Key.isDown(_root.saveGlobal.keyMmrRight2))
   {
      holdingD = false;
   }
   if(_root.arcadeHealth > 10000)
   {
      _root.arcadeHealth = 10000;
   }
   if(_root.arcadeHealth <= 0)
   {
      _parent.gotoAndStop(36);
   }
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.awesomeText.text = _root.arcadeAwesome;
   _parent.goodText.text = _root.arcadeGood;
   _parent.missText.text = _root.arcadeMiss;
};
