//! status=pending
function correct()
{
   _root.arcadeScoreThis += Math.floor((3000 + _root.arcadeDifficulty * (150 + _root.arcadeSpeedBonus / 20)) * _root.arcadeMultiplier);
   _root.arcadeScore += Math.floor((3000 + _root.arcadeDifficulty * (150 + _root.arcadeSpeedBonus / 20)) * _root.arcadeMultiplier);
   if(_root.save.arcadeDifficulty[3] == 2 || _root.arcadeMultiplier >= 6)
   {
      _root.arcadeDifficulty += 1;
   }
   if(_root.save.arcadeDifficulty[3] == 3)
   {
      _root.arcadeDifficulty += 1;
   }
   if(_root.save.arcadeDifficulty[3] == 4)
   {
      _root.arcadeDifficulty += 2;
   }
   _root.arcadeMathPower += (_root.arcadeSpeedBonus + 500 * _root.save.arcadeDifficulty[3]) / (10 + _root.arcadeMultiplier * 20) + _root.save.arcadeDifficulty[3] * 5;
   if(_root.save.rankedMode != true)
   {
      _root.arcadeMathPower += ((_root.arcadeSpeedBonus + 500 * _root.save.arcadeDifficulty[3]) / (10 + _root.arcadeMultiplier * 20) + _root.save.arcadeDifficulty[3] * 5) * (_root.save.unrankedPower[11] * 0.05);
   }
   _root.arcadeCorrect += 1;
   mathBoard.problem4text.htmlText = mathBoard.problem3text.htmlText;
   mathBoard.problem3text.htmlText = mathBoard.problem2text.htmlText;
   mathBoard.problem2text.htmlText = mathBoard.problem1text.htmlText;
   mathBoard.problem1text.htmlText = _root.problemDisp;
   timeDisp = Math.round(_root.arcadeTimeSpent * 100) / 100;
   if(Math.floor(timeDisp) == timeDisp)
   {
      timeDisp += ".00s";
   }
   else if(Math.floor(timeDisp * 10) == timeDisp * 10)
   {
      timeDisp += "0s";
   }
   else
   {
      timeDisp += "s";
   }
   mathBoard.time4text.text = mathBoard.time3text.text;
   mathBoard.time3text.text = mathBoard.time2text.text;
   mathBoard.time2text.text = mathBoard.time1text.text;
   mathBoard.time1text.text = timeDisp;
   mathBoard.score4text.text = mathBoard.score3text.text;
   mathBoard.score3text.text = mathBoard.score2text.text;
   mathBoard.score2text.text = mathBoard.score1text.text;
   if(_root.arcadeScoreThis > 0)
   {
      mathBoard.score1text.text = "+" + _root.withComma(_root.arcadeScoreThis);
   }
   else
   {
      mathBoard.score1text.text = _root.withComma(_root.arcadeScoreThis);
   }
   if(_root.arcadeSpeedBonus > 500)
   {
      speedRank = 3;
      progToEarn = Math.floor(75 + _root.arcadeMultiplier * 15);
      _root.progPercent += progToEarn;
      _root.dispNews(83,"[Math Master] Excellent! (+" + progToEarn + "% Progress)");
   }
   else if(_root.arcadeSpeedBonus > 0)
   {
      speedRank = 2;
      progToEarn = Math.floor(50 + _root.arcadeMultiplier * 10);
      _root.progPercent += progToEarn;
      _root.dispNews(82,"[Math Master] Nice! (+" + progToEarn + "% Progress)");
   }
   else
   {
      speedRank = 1;
      progToEarn = Math.floor(25 + _root.arcadeMultiplier * 5);
      _root.progPercent += progToEarn;
      _root.dispNews(81,"[Math Master] Correct! (+" + progToEarn + "% Progress)");
   }
   speedDisplay.gotoAndStop(speedRank);
   speedDisplay._alpha = 100;
   _root.arcadeTimeSpent = 0;
   _root.arcadeScoreThis = 0;
   _root.arcadeSpeedBonus = 1000;
   questionScreen.gotoAndStop(1);
}
function wrong()
{
   _root.arcadeMathPower = 0;
   _root.arcadeSpeedBonus = 0;
   _root.arcadeTimeLeft -= 6;
   _root.arcadeScoreThis -= Math.ceil(_root.arcadeScore * 0.1);
   _root.arcadeTimeSpent += 6;
   _root.arcadeScore = Math.floor(_root.arcadeScore * 0.9);
   speedRank = 4;
   speedDisplay.gotoAndStop(speedRank);
   speedDisplay._alpha = 100;
}
mathBoard.problem1text.htmlText = "";
mathBoard.problem2text.htmlText = "";
mathBoard.problem3text.htmlText = "";
mathBoard.problem4text.htmlText = "";
mathBoard.time1text.text = "";
mathBoard.time2text.text = "";
mathBoard.time3text.text = "";
mathBoard.time4text.text = "";
mathBoard.score1text.text = "";
mathBoard.score2text.text = "";
mathBoard.score3text.text = "";
mathBoard.score4text.text = "";
_root.arcadeScore = 0;
_root.arcadeFakeScore = 0;
_root.arcadeTimeLeft = 60;
if(_root.save.rankedMode != true)
{
   _root.arcadeTimeLeft = 60 + _root.save.unrankedPower[12] * 2;
}
if(_root.save.arcadeDifficulty[3] == 4)
{
   _root.arcadeTimeLeft += 10;
}
_root.arcadeCorrect = 0;
_root.arcadeMathPower = 0;
_root.arcadeSpeedBonus = 1000;
_root.arcadeTimeSpent = 0;
_root.arcadeScoreThis = 0;
_root.arcadeDifficulty = 1;
if(_root.save.arcadeDifficulty[3] == 3)
{
   _root.arcadeDifficulty = 40;
}
if(_root.save.arcadeDifficulty[3] == 4)
{
   _root.arcadeDifficulty = 50;
}
_root.arcadeMultiplier = 1;
onEnterFrame = function()
{
   _root.arcadeTimeLeft -= 1 / _root.fps;
   _root.arcadeTimeSpent += 1 / _root.fps;
   if(_root.arcadeSpeedBonus > 0)
   {
      _root.arcadeSpeedBonus -= 400 / _root.fps;
   }
   if(_root.arcadeSpeedBonus < 0)
   {
      _root.arcadeSpeedBonus = 0;
   }
   if(_root.arcadeTimeLeft <= 0)
   {
      _parent.gotoAndStop(33);
   }
   _root.arcadeFakeScore += Math.ceil((_root.arcadeScore - _root.arcadeFakeScore) / 1.1);
   _parent.scoreText.text = _root.withComma(_root.arcadeFakeScore);
   _parent.timeText.text = _root.convertSec(_root.arcadeTimeLeft);
   _parent.multiplierText.text = _root.arcadeMultiplier + "x";
   mDispText.text = _root.arcadeMultiplier + "x";
};
