//! status=pending
if(_root.arcadeScore >= 13500000)
{
   if(_root.save.boost < _root.boostMax * 2.5 - 1 && _root.save.megaBoostPotion >= 1 && _root.save.boostAuto2 == true)
   {
      _root.save.megaBoostPotion -= 1;
      _root.gainBoost(9999,4);
      _root.save.boost = _root.boostMax * 2.5;
      if(_root.save.boostFreeze < 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),250))
      {
         _root.save.boostFreeze = 45 + Math.min(Math.floor(_root.save.totalStupidity / 500),250);
      }
   }
}
i = 1;
while(i <= _root.todayEvent)
{
   yy = _root.clock_year % 10;
   mm = _root.clock_month;
   dd = _root.clock_date;
   if(_root.eventList[yy][mm][dd][i] == "Receive Event Tokens by playing games in Arcade")
   {
      _root.gainEventToken(_root.arcadeScore / 100000 * 3);
   }
   i++;
}
if(_root.save.rankedMode != true && _root.save.restTime > 0)
{
   _root.arcadeScore = Math.floor(_root.arcadeScore * (1.1 + _root.save.restEfficiency[7] * 0.01));
}
if(_root.arcadeScore == 0)
{
   _root.save.wakeUp = 1337;
}
if(_root.save.questType == "Triangle Count")
{
   if(_root.save.questSubtype == "High Score")
   {
      if(_root.save.questCount < _root.arcadeScore)
      {
         _root.save.questCount = _root.arcadeScore;
      }
   }
   if(_root.save.questSubtype == "Total Score")
   {
      _root.save.questCount += _root.arcadeScore;
   }
}
statText.text = _root.arcadeDifficulty;
scoreText.text = _root.withComma(_root.arcadeScore);
if(_root.arcadeScore > 100000 && _root.save.rankedMode == true)
{
   _root.submitScore("[Arcade] Triangle Count",_root.arcadeScore);
}
if(_root.save.highCount < _root.arcadeScore)
{
   _root.save.highCount = _root.arcadeScore;
}
if(_root.save.todayHighCount < _root.arcadeScore)
{
   _root.save.todayHighCount = _root.arcadeScore;
}
_root.save.totalCount += _root.arcadeScore;
checkGlobal();
if(_root.arcadeScore >= 100000)
{
   medalToGet = Math.floor(Math.floor(_root.arcadeScore / 100000) * 3 * (1 + _root.curCareerLevel[6] * 0.02));
   _root.dispNews(161,"You have gained " + medalToGet + " [Arcade 100k Medal]!");
   _root.save.arcade100kMedal += medalToGet;
}
fakeScore = _root.arcadeScore;
if(_root.arcadeScore > 100000000)
{
   fakeScore = 100000000;
}
_root.gainCyborgPoint(Math.floor(fakeScore * 2 / 25000));
baseExp = Math.floor(fakeScore / 180 * _root.arcadeRewardMult);
baseCoin = Math.floor(fakeScore / 240 * _root.arcadeRewardMult);
baseGreenCoin = Math.floor(fakeScore / 40 * _root.arcadeRewardMult);
baseBlueCoin = Math.floor(fakeScore / 20000 * _root.arcadeRewardMult);
_root.gainCareerEXP(6,Math.floor(_root.arcadeScore / 400 * _root.arcadeRewardMult),true);
baseExp = Math.floor(baseExp * (1 + _root.curCareerLevel[6] * 0.005) * (1 + _root.save.petStat[4] * 0.002));
baseCoin = Math.floor(baseCoin * (1 + _root.curCareerLevel[6] * 0.01));
baseGreenCoin = Math.floor(baseGreenCoin * (1 + _root.curCareerLevel[6] * 0.01));
finalExp = Math.ceil(baseExp * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100));
finalCoin = Math.ceil(baseCoin * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100));
finalGreenCoin = Math.ceil(baseGreenCoin);
finalBlueCoin = Math.ceil(baseBlueCoin);
if(_root.save.permaBanPenalty[10] == 3)
{
   finalExp = Math.floor(finalExp * 3);
}
else if(_root.save.permaBanPenalty[10] == 2)
{
   finalExp = Math.floor(finalExp * 2.2);
}
else if(_root.save.permaBanPenalty[10] == 1)
{
   finalExp = Math.floor(finalExp * 1.8);
}
if(_root.save.arcadeBless > 0)
{
   _root.save.arcadeBless -= 1;
   finalExp = Math.floor(finalExp * 2);
   finalCoin = Math.floor(finalCoin * 2);
   _root.dispNews(97,"Arcade Blessing activated! (" + _root.withComma(_root.save.arcadeBless) + " left)");
}
if(_root.save.rankedMode == true)
{
   addRankedScore(7,_root.arcadeScore,_root.save.arcadeDifficulty[8]);
   checkGlobal();
   if(_root.save.rankedCount < _root.arcadeScore)
   {
      _root.save.rankedCount = _root.arcadeScore;
   }
}
if(finalExp > 99999999999)
{
   finalExp = 99999999999;
}
if(finalCoin > 99999999999)
{
   finalCoin = 99999999999;
}
_root.dispNews(97,"[Triangle Count] Final Score: " + _root.withComma(_root.arcadeScore) + " (+" + _root.withComma(finalExp) + " EXP | +" + _root.withComma(finalCoin) + " Coins)");
expGainText.text = "+" + _root.withComma(finalExp);
coinGainText.text = "+" + _root.withComma(finalCoin);
greenCoinGainText.text = "+" + _root.withComma(finalGreenCoin);
blueCoinGainText.text = "+" + _root.withComma(finalBlueCoin);
_root.gainEXP(finalExp);
_root.gainCoin(finalCoin);
_root.gainGreenCoin(finalGreenCoin);
_root.gainBlueCoin(finalBlueCoin);
