//! status=pending
processingRow = 0;
processingChar = 0;
noteCount = 0;
init = 0;
_root.mmrSpecialNoteBeat = new Array();
_root.mmrSpecialNotePos = new Array();
_root.mmrSpecialNoteColor = new Array();
i = 1;
while(i <= 4)
{
   _root.mmrSpecialNoteBeat[i] = new Array();
   _root.mmrSpecialNotePos[i] = new Array();
   _root.mmrSpecialNoteColor[i] = new Array();
   i++;
}
_root.mmrSongHash = 0;
_root.mmrSongTitle = "";
_root.mmrSongOriginalBy = "";
_root.mmrSongArrangementBy = "";
_root.mmrSongBPM = 0;
_root.mmrSongMeasureCount = 0;
_root.mmrSongDifficulty = [0,0,0,0,0];
_root.mmrSongNoteCount = [0,0,0,0,0];
i = 1;
while(i <= 4)
{
   _root.mmrSongMeasureDifficulty[i] = new Array();
   j = 1;
   while(j <= 500)
   {
      _root.mmrSongMeasureDifficulty[i][j] = 0;
      j++;
   }
   i++;
}
separatorCount = 0;
onEnterFrame = function()
{
   if(init < 10)
   {
      i = 1;
      while(i <= 4)
      {
         j = 1 + init * 800;
         while(j <= 800 + init * 800)
         {
            _root.mmrSpecialNoteArr[i][j] = new Array();
            k = 1;
            while(k <= 9)
            {
               _root.mmrSpecialNoteArr[i][j][k] = 0;
               k++;
            }
            j++;
         }
         i++;
      }
      init += 1;
   }
   else
   {
      h = 1;
      while(h <= 1000)
      {
         processingChar += 1;
         if(processingChar > _root.mmrSongStr.length)
         {
            if(_root.mmrSongBPM > 0 && _root.mmrSongMeasureCount > 0 && _root.mmrSongNoteCount[1] + _root.mmrSongNoteCount[2] + _root.mmrSongNoteCount[3] + _root.mmrSongNoteCount[4] > 0)
            {
               if(_root.mmrSong == 0)
               {
                  _parent.songStr[0] = _root.save.customSongStr;
                  _root.save.customSongStr = _root.mmrSongStr;
               }
               _root.mmrSongHash %= 89999999;
               _root.mmrSongHash += 10000000;
               _root.mmrSongLength = _root.mmrSongMeasureCount * 240000 / _root.mmrSongBPM + 5000;
               gotoAndStop(4);
            }
            else
            {
               gotoAndStop(3);
            }
         }
         curChar = _root.mmrSongStr.substr(processingChar - 1,1);
         if(curChar == "|")
         {
            separatorCount += 1;
            processingRow = 0;
            tmpNum = 0;
         }
         else if(separatorCount < 3)
         {
            if(separatorCount == 0)
            {
               _root.mmrSongTitle += curChar;
            }
            else if(separatorCount == 1)
            {
               _root.mmrSongOriginalBy += curChar;
            }
            else if(separatorCount == 2)
            {
               _root.mmrSongArrangementBy += curChar;
            }
         }
         else if(separatorCount < 9)
         {
            if(isNaN(curChar * 1))
            {
               separatorCount = 99;
               gotoAndStop(3);
            }
            else if(separatorCount == 3)
            {
               _root.mmrSongBPM = _root.mmrSongBPM * 10 + curChar * 1;
               _root.mmrSongHash = _root.mmrSongBPM * (_root.mmrSongBPM + 9001);
            }
            else if(separatorCount == 4)
            {
               _root.mmrSongMeasureCount = _root.mmrSongMeasureCount * 10 + curChar * 1;
            }
            else
            {
               _root.mmrSongDifficulty[separatorCount - 4] = _root.mmrSongDifficulty[separatorCount - 4] * 10 + curChar * 1;
            }
         }
         else if(separatorCount < 13)
         {
            if(!isNaN(curChar * 1))
            {
               tmpNum = tmpNum * 10 + curChar * 1;
            }
            else
            {
               processingRow += tmpNum;
               tmpNum = 0;
               if(curChar == "%")
               {
                  curChar = "\\";
               }
               noteColor = Math.ceil((curChar.charCodeAt(0) - 64) / 9);
               noteLane = (curChar.charCodeAt(0) - 65) % 9 + 1;
               _root.mmrSongNoteCount[separatorCount - 8] += 1;
               _root.mmrSpecialNoteBeat[separatorCount - 8][_root.mmrSongNoteCount[separatorCount - 8]] = processingRow;
               _root.mmrSpecialNotePos[separatorCount - 8][_root.mmrSongNoteCount[separatorCount - 8]] = noteLane;
               _root.mmrSpecialNoteColor[separatorCount - 8][_root.mmrSongNoteCount[separatorCount - 8]] = noteColor;
               _root.mmrSongHash = _root.mmrSongHash * (133 + _root.mmrSongNoteCount[separatorCount - 8]) + curChar.charCodeAt(0);
               _root.mmrSongHash %= 89999999;
            }
         }
         else if(_root.mmrSongBPM > 0 && _root.mmrSongMeasureCount > 0 && _root.mmrSongNoteCount[1] + _root.mmrSongNoteCount[2] + _root.mmrSongNoteCount[3] + _root.mmrSongNoteCount[4] > 0)
         {
            if(_root.mmrSong == 0)
            {
               _parent.songStr[0] = _root.save.customSongStr;
               _root.save.customSongStr = _root.mmrSongStr;
            }
            _root.mmrSongHash %= 89999999;
            _root.mmrSongHash += 10000000;
            _root.mmrSongLength = _root.mmrSongMeasureCount * 240000 / _root.mmrSongBPM + 5000;
            gotoAndStop(4);
         }
         h++;
      }
   }
   _root.mmrSongDifficultyLevel = _root.mmrSongDifficulty[_root.currentDifficulty];
};
