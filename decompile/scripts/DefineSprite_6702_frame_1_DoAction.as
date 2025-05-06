//! status=pending
function timestampToBeat(tim)
{
   return tim * _root.mmrSongBPM / 120 / 125;
}
function beatToTimestamp(bea)
{
   return bea / _root.mmrSongBPM * 120 * 125;
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
      if((_root.arcadeAwesome > 0 || _root.arcadeGood > 0) && _root.arcadeAwesome + _root.arcadeGood + _root.arcadeLateMiss < _root.mmrSongNoteCount[_root.mmrDifficulty] && curTimestamp < _root.mmrSongLength - 5000)
      {
         _root.arcadeMiss += 1;
         _root.arcadeCombo = 0;
         tmpDamage = 50 + Math.floor((_root.arcadeAwesome + _root.arcadeGood) / 20) + _root.arcadeMiss * 5;
         if(_root.save.rankedMode != true)
         {
            tmpDamage = Math.ceil(tmpDamage * (1 - _root.save.unrankedPower[38] * 0.1));
         }
         comboBreak.alp = 10;
      }
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
      if((_root.arcadeAwesome > 0 || _root.arcadeGood > 0) && curTimestamp < _root.mmrSongLength - 5000)
      {
         _root.arcadeMiss += 1;
         _root.arcadeCombo = 0;
         tmpDamage = 50 + Math.floor((_root.arcadeAwesome + _root.arcadeGood) / 20) + _root.arcadeMiss;
         if(_root.save.rankedMode != true)
         {
            tmpDamage = Math.ceil(tmpDamage * (1 - _root.save.unrankedPower[38] * 0.1));
         }
         comboBreak.alp = 10;
      }
   }
   else
   {
      tol = 25;
      pureTol = 25;
      if(dist >= -30 - pureTol && (dist <= 30 + pureTol || noteLateArr[noteNum] < 1))
      {
         _root.arcadePureAwesome += 1;
         _root.arcadeAwesome += 1;
         _root.arcadeCombo += 1;
         noteResultArr[noteNum] = 3;
         showJudgement(noteNum,1,1,_root.arcadeCombo);
      }
      else if(dist >= -55 - tol && dist < -30)
      {
         _root.arcadeEarlyAwesome += 1;
         _root.arcadeAwesome += 1;
         _root.arcadeCombo += 1;
         noteResultArr[noteNum] = 3;
         showJudgement(noteNum,1,2,_root.arcadeCombo);
      }
      else if(dist > 30 && dist <= 55 + tol)
      {
         _root.arcadeLateAwesome += 1;
         _root.arcadeAwesome += 1;
         _root.arcadeCombo += 1;
         noteResultArr[noteNum] = 3;
         showJudgement(noteNum,1,3,_root.arcadeCombo);
      }
      else if(dist >= -300 && dist < 0)
      {
         _root.arcadeEarlyGood += 1;
         _root.arcadeGood += 1;
         _root.arcadeCombo += 1;
         noteResultArr[noteNum] = 2;
         showJudgement(noteNum,2,2,_root.arcadeCombo);
      }
      else if(dist > 0 && dist <= 300)
      {
         _root.arcadeLateGood += 1;
         _root.arcadeGood += 1;
         _root.arcadeCombo += 1;
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
   _root.arcadeLateMiss += 1;
   _root.arcadeMiss += 1;
   tmpDamage = 100 + Math.floor((_root.arcadeAwesome + _root.arcadeGood) / 10) + _root.arcadeMiss;
   if(_root.save.rankedMode != true)
   {
      tmpDamage = Math.ceil(tmpDamage * (1 - _root.save.unrankedPower[38] * 0.1));
   }
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
}
judgementSprite = 9;
noteSprite = 102;
i = 102;
while(i > noteSprite)
{
   unloadMovie(this["mmrNote" + i]);
   i--;
}
songNameText.text = _root.mmrSongTitle;
if(_root.mmrDifficulty == 1)
{
   songDiffText.text = "NORMAL " + Math.floor(_root.mmrSongDifficulty[1] / 2) + (_root.mmrSongDifficulty[1] % 2 != 1 ? "" : "+");
   songDiffText.textColor = 8256125;
}
if(_root.mmrDifficulty == 2)
{
   songDiffText.text = "EXPERT " + Math.floor(_root.mmrSongDifficulty[2] / 2) + (_root.mmrSongDifficulty[2] % 2 != 1 ? "" : "+");
   songDiffText.textColor = 16431997;
}
if(_root.mmrDifficulty == 3)
{
   songDiffText.text = "LEGEND " + Math.floor(_root.mmrSongDifficulty[3] / 2) + (_root.mmrSongDifficulty[3] % 2 != 1 ? "" : "+");
   songDiffText.textColor = 12287482;
}
if(_root.mmrDifficulty == 4)
{
   songDiffText.text = "ANOTHER " + Math.floor(_root.mmrSongDifficulty[4] / 2) + (_root.mmrSongDifficulty[4] % 2 != 1 ? "" : "+");
   songDiffText.textColor = 13819080;
}
clearDisp.gotoAndStop(5);
_root.arcadePureAwesome = 0;
_root.arcadeEarlyAwesome = 0;
_root.arcadeLateAwesome = 0;
_root.arcadeEarlyGood = 0;
_root.arcadeLateGood = 0;
_root.arcadeAwesome = 0;
_root.arcadeGood = 0;
_root.arcadeLateMiss = 0;
_root.arcadeMiss = 0;
_root.arcadeCombo = 0;
_root.arcadeHealth = 10000;
_root.arcadeScore = 0;
_root.arcadeAccuracy = 0;
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
trace(_root.mmrSongNoteCount[_root.mmrDifficulty]);
n = 1;
while(n <= _root.mmrSongNoteCount[_root.mmrDifficulty])
{
   tmpNoteBea = _root.mmrSpecialNoteBeat[_root.mmrDifficulty][n];
   tmpNotePos = _root.mmrSpecialNotePos[_root.mmrDifficulty][n];
   tmpNoteCol = _root.mmrSpecialNoteColor[_root.mmrDifficulty][n];
   if(tmpNoteCol >= 4)
   {
      tmpNoteCol += 6;
   }
   createNote(tmpNoteBea,tmpNotePos,tmpNoteCol);
   n++;
}
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
   mmrHealthBar._xscale = curTimestamp / _root.mmrSongLength * 100;
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
   measLine._y = (curBeat - 1 - Math.ceil((curBeat - 1) / 16) * 16) * 35 + 250;
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
   if(curTimestamp > _root.mmrSongLength)
   {
      _parent.gotoAndStop(39);
   }
   if(_root.mmrSongNoteCount[_root.mmrDifficulty] > 0 && _root.arcadeAwesome + _root.arcadeGood > 0)
   {
      _root.arcadeAccuracy = 10100 * (_root.arcadePureAwesome * 101 + _root.arcadeEarlyAwesome * 100 + _root.arcadeLateAwesome * 100 + _root.arcadeGood * 30) / ((_root.arcadeAwesome + _root.arcadeGood + _root.arcadeMiss) * 101);
      _root.arcadeScore = Math.floor(_root.arcadeAccuracy * 100 * ((_root.arcadeAwesome + _root.arcadeGood) / (_root.mmrSongNoteCount[_root.mmrDifficulty] + _root.arcadeMiss)));
   }
   else
   {
      _root.arcadeAccuracy = 0;
      _root.arcadeScore = 0;
   }
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   if(_root.arcadeFakeScore > _root.arcadeScore)
   {
      _root.arcadeFakeScore = _root.arcadeScore;
   }
   tmpAcc = Math.floor(_root.arcadeAccuracy);
   tmpAccText = Math.floor(tmpAcc / 100);
   tmpAcc -= Math.floor(tmpAcc / 100) * 100;
   tmpAccText += ".";
   if(tmpAcc < 10)
   {
      tmpAccText += "0";
   }
   tmpAccText += tmpAcc + "%";
   _parent.accText.text = tmpAccText;
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.awesomeText.text = _root.arcadeAwesome;
   _parent.goodText.text = _root.arcadeGood;
   _parent.missText.text = _root.arcadeMiss;
};
