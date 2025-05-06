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
   while(_loc3_ <= earliestBeatNum + 10)
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
   if(dist < -300)
   {
      _root.arcadeMiss += 1;
      _root.arcadeCombo = 0;
      tmpDamage = 50 + Math.floor((_root.arcadeAwesome + _root.arcadeGood) / 20) + _root.arcadeMiss;
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
         _root.arcadeCombo += 1;
         _root.arcadeScore += tmpScore;
         if(_root.arcadeCombo >= 10)
         {
            _root.arcadeScore += tmpScore;
            _root.arcadeHealth += 10;
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
         _root.arcadeCombo += 1;
         tmpScore = 1000;
         _root.arcadeScore += tmpScore;
         if(_root.arcadeCombo >= 10)
         {
            _root.arcadeScore += tmpScore;
            _root.arcadeHealth += 10;
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
         _root.arcadeCombo += 1;
         tmpScore = 1000;
         _root.arcadeScore += tmpScore;
         if(_root.arcadeCombo >= 10)
         {
            _root.arcadeScore += tmpScore;
            _root.arcadeHealth += 10;
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
   if(judgementInst > 2)
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
   if(pgm <= 2)
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
   _root.arcadeHealth -= tmpDamage;
   _root.arcadeCombo = 0;
   noteResultArr[noteNum] = 1;
   if(noteCurrent < noteNum)
   {
      noteCurrent = noteNum;
   }
   showJudgement(noteNum,3,4,0);
}
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
noteLateArr = new Array();
noteYposArr = new Array();
noteCount = 0;
noteCurrent = 0;
judgementInst = 2;
cool1 = 0;
cool2 = 0;
cool3 = 0;
noteDispArr = new Array();
iter = 0;
onEnterFrame = function()
{
   if(mmrJudgement1.alp > 100)
   {
      mmrJudgement1.alp -= 25;
      mmrJudgement1._alpha = 100;
   }
   else if(mmrJudgement1.alp > 0)
   {
      mmrJudgement1.alp -= 25;
      mmrJudgement1._alpha = mmrJudgement1.alp;
   }
   else if(mmrJudgement1.alp == 0)
   {
      mmrJudgement1.alp = -1;
      mmrJudgement1._x = 600;
      mmrJudgement1._alpha = 0;
   }
   if(mmrJudgement2.alp > 100)
   {
      mmrJudgement2.alp -= 25;
      mmrJudgement2._alpha = 100;
   }
   else if(mmrJudgement2.alp > 0)
   {
      mmrJudgement2.alp -= 25;
      mmrJudgement2._alpha = mmrJudgement2.alp;
   }
   else if(mmrJudgement2.alp == 0)
   {
      mmrJudgement2.alp = -1;
      mmrJudgement2._x = 600;
      mmrJudgement2._alpha = 0;
   }
   if(mmrTrace1.alp > 0)
   {
      mmrTrace1.alp -= 10;
      mmrTrace1._alpha = mmrTrace1.alp;
   }
   else if(mmrTrace1.alp == 0)
   {
      mmrTrace1.alp = -1;
      mmrTrace1._x = 600;
      mmrTrace1._alpha = 0;
   }
   if(mmrTrace2.alp > 0)
   {
      mmrTrace2.alp -= 10;
      mmrTrace2._alpha = mmrTrace2.alp;
   }
   else if(mmrTrace2.alp == 0)
   {
      mmrTrace2.alp = -1;
      mmrTrace2._x = 600;
      mmrTrace2._alpha = 0;
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
         i++;
      }
      rev = 0;
      if((iter + 3) % 4 < 2)
      {
         rev = 4;
      }
      i = 0;
      while(i <= 15)
      {
         if(rhythmArr[i] == 2)
         {
            if(Math.random() < 0.5 && noteCount > 500)
            {
               if(Math.random() < 0.3333333333333333)
               {
                  noteCount += 1;
                  noteBeatArr[noteCount] = (iter - 1) * 16 + i;
                  notePositionArr[noteCount] = 2;
                  noteColorArr[noteCount] = 1;
                  noteCount += 1;
                  noteBeatArr[noteCount] = (iter - 1) * 16 + i;
                  notePositionArr[noteCount] = 6;
                  noteColorArr[noteCount] = 1;
               }
               else if(Math.random() < 0.5)
               {
                  noteCount += 1;
                  noteBeatArr[noteCount] = (iter - 1) * 16 + i;
                  notePositionArr[noteCount] = 3;
                  noteColorArr[noteCount] = 2;
                  noteCount += 1;
                  noteBeatArr[noteCount] = (iter - 1) * 16 + i;
                  notePositionArr[noteCount] = 7;
                  noteColorArr[noteCount] = 2;
               }
               else
               {
                  noteCount += 1;
                  noteBeatArr[noteCount] = (iter - 1) * 16 + i;
                  notePositionArr[noteCount] = 4;
                  noteColorArr[noteCount] = 3;
                  noteCount += 1;
                  noteBeatArr[noteCount] = (iter - 1) * 16 + i;
                  notePositionArr[noteCount] = 8;
                  noteColorArr[noteCount] = 3;
               }
            }
            else if(Math.random() < 0.3333333333333333)
            {
               noteCount += 1;
               noteBeatArr[noteCount] = (iter - 1) * 16 + i;
               notePositionArr[noteCount] = 6 - rev;
               noteColorArr[noteCount] = 1;
               if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
               {
                  if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                  {
                     notePositionArr[noteCount] = 2 + rev;
                  }
               }
               noteCount += 1;
               noteBeatArr[noteCount] = (iter - 1) * 16 + i;
               notePositionArr[noteCount] = 7 - rev;
               noteColorArr[noteCount] = 2;
               if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
               {
                  if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                  {
                     notePositionArr[noteCount] = 3 + rev;
                  }
               }
            }
            else if(Math.random() < 0.5)
            {
               noteCount += 1;
               noteBeatArr[noteCount] = (iter - 1) * 16 + i;
               notePositionArr[noteCount] = 6 - rev;
               noteColorArr[noteCount] = 1;
               if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
               {
                  if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                  {
                     notePositionArr[noteCount] = 2 + rev;
                  }
               }
               noteCount += 1;
               noteBeatArr[noteCount] = (iter - 1) * 16 + i;
               notePositionArr[noteCount] = 8 - rev;
               noteColorArr[noteCount] = 3;
               if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
               {
                  if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                  {
                     notePositionArr[noteCount] = 4 + rev;
                  }
               }
            }
            else
            {
               noteCount += 1;
               noteBeatArr[noteCount] = (iter - 1) * 16 + i;
               notePositionArr[noteCount] = 7 - rev;
               noteColorArr[noteCount] = 2;
               if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
               {
                  if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                  {
                     notePositionArr[noteCount] = 3 + rev;
                  }
               }
               noteCount += 1;
               noteBeatArr[noteCount] = (iter - 1) * 16 + i;
               notePositionArr[noteCount] = 8 - rev;
               noteColorArr[noteCount] = 3;
               if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
               {
                  if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                  {
                     notePositionArr[noteCount] = 4 + rev;
                  }
               }
            }
            noteResultArr[noteCount - 1] = 0;
            noteResultArr[noteCount] = 0;
            noteLateArr[noteCount - 1] = -1;
            noteLateArr[noteCount] = -1;
         }
         else if(rhythmArr[i] == 1)
         {
            if(Math.random() < 0.3333333333333333)
            {
               noteCount += 1;
               noteBeatArr[noteCount] = (iter - 1) * 16 + i;
               notePositionArr[noteCount] = 6 - rev;
               noteColorArr[noteCount] = 1;
               if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
               {
                  if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                  {
                     notePositionArr[noteCount] = 2 + rev;
                  }
               }
            }
            else if(Math.random() < 0.5)
            {
               noteCount += 1;
               noteBeatArr[noteCount] = (iter - 1) * 16 + i;
               notePositionArr[noteCount] = 7 - rev;
               noteColorArr[noteCount] = 2;
               if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
               {
                  if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                  {
                     notePositionArr[noteCount] = 3 + rev;
                  }
               }
            }
            else
            {
               noteCount += 1;
               noteBeatArr[noteCount] = (iter - 1) * 16 + i;
               notePositionArr[noteCount] = 8 - rev;
               noteColorArr[noteCount] = 3;
               if(noteCount > 200 && Math.random() < 0.2 + noteCount / 10000)
               {
                  if(Math.random() < 0.1 || Math.random() < 0.9 && i % 2 == 0)
                  {
                     notePositionArr[noteCount] = 4 + rev;
                  }
               }
            }
            noteResultArr[noteCount] = 0;
            noteLateArr[noteCount] = -1;
            if(noteCount > 2000 && Math.random() < 0.1)
            {
               notePositionArr[noteCount] = 1 + random(9);
            }
         }
         i++;
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
   while(i <= 35)
   {
      j = Math.floor((noteCurrent + 25 - i) / 35) * 35 + i;
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
         if(this["mmrNote" + i]._currentframe != frm)
         {
            this["mmrNote" + i].gotoAndStop(frm);
         }
      }
      else
      {
         this["mmrNote" + i]._y = -999;
      }
      i++;
   }
   if(_root.arcadeHealth > 10000)
   {
      _root.arcadeHealth = 10000;
   }
   if(_root.arcadeHealth <= 0)
   {
      _root.showPopup("Spectate Mode","The Dragon of Wisdom scored " + _root.withComma(_root.arcadeScore) + " in MMR X.");
      _parent.gotoAndStop(2);
   }
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.awesomeText.text = _root.arcadeAwesome;
   _parent.goodText.text = _root.arcadeGood;
   _parent.missText.text = _root.arcadeMiss;
   aearliestBeat = 0;
   aearliestBeatNum = -1;
   c = noteCurrent - 10;
   while(c <= noteCurrent + 9)
   {
      if(aearliestBeat == 0 && noteResultArr[c] == 0)
      {
         aearliestBeat = noteBeatArr[c];
         aearliestBeatNum = c;
         c = noteCurrent + 10;
      }
      c++;
   }
   aacceptableArr = [0,-1,-1,-1];
   c = aearliestBeatNum;
   while(c <= aearliestBeatNum + 5)
   {
      if(noteBeatArr[c] == aearliestBeat && noteResultArr[c] == 0)
      {
         aacceptableArr[noteColorArr[c]] = c;
      }
      c++;
   }
   if(cool1 > 0)
   {
      cool1 -= 1;
   }
   if(cool2 > 0)
   {
      cool2 -= 1;
   }
   if(cool3 > 0)
   {
      cool3 -= 1;
   }
   if(curTimestamp - beatToTimestamp(aearliestBeat) >= -30)
   {
      if(aacceptableArr[1] >= 0 && Math.random() < 0.6 - cool1 * 0.1)
      {
         pressKey(1);
         cool1 += 3;
      }
      if(aacceptableArr[2] >= 0 && Math.random() < 0.6 - cool2 * 0.1)
      {
         pressKey(2);
         cool2 += 3;
      }
      if(aacceptableArr[3] >= 0 && Math.random() < 0.6 - cool3 * 0.1)
      {
         pressKey(3);
         cool3 += 3;
      }
   }
};
