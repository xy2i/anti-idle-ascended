//! status=pending
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
songHashText.text = _root.mmrSongHash;
i = 1;
while(i <= _root.todayEvent)
{
   yy = _root.clock_year % 10;
   mm = _root.clock_month;
   dd = _root.clock_date;
   if(_root.eventList[yy][mm][dd][i] == "Receive Event Tokens by playing games in Arcade")
   {
      _root.gainEventToken(_root.arcadeScore / 100000 * 4);
   }
   i++;
}
if(_root.arcadeScore == 0)
{
   _root.save.wakeUp = 1337;
}
awesomeText.text = _root.arcadeAwesome;
awesomeStatText.text = "[Early: " + _root.arcadeEarlyAwesome + " | Late: " + _root.arcadeLateAwesome + "]";
goodText.text = _root.arcadeGood;
goodStatText.text = "[Early: " + _root.arcadeEarlyGood + " | Late: " + _root.arcadeLateGood + "]";
missText.text = _root.arcadeMiss;
scoreText.text = _root.withComma(_root.arcadeScore);
checkGlobal();
songId = _root.mmrSong;
if(_root.mmrSong == 0)
{
   songId = _root.mmrSongHash;
}
highScoreText.text = "[High Score: " + _root.withComma(_root.save.highMMRSpecial[songId * 10 + _root.mmrDifficulty]) + "]";
if(_root.save.highMMRSpecial[songId * 10 + _root.mmrDifficulty] < _root.arcadeScore)
{
   _root.save.highMMRSpecial[songId * 10 + _root.mmrDifficulty] = _root.arcadeScore;
}
