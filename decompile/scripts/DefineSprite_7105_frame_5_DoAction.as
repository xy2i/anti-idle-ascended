//! status=pending
if(_root.stadiumOrder == 1)
{
   _root.gainCyborgPoint(Math.floor(6 + _root.stadiumDifficulty * 2));
   i = 1;
   while(i <= _root.todayEvent)
   {
      yy = _root.clock_year % 10;
      mm = _root.clock_month;
      dd = _root.clock_date;
      if(_root.eventList[yy][mm][dd][i] == "Receive Event Tokens by winning in Stadium")
      {
         _root.gainEventToken(_root.stadiumDifficulty + 2);
      }
      i++;
   }
}
else
{
   _root.gainCyborgPoint(1);
}
baseExp = 600 + _root.stadiumDifficulty * _root.stadiumDifficulty * 350;
baseCoin = 600 + _root.stadiumDifficulty * _root.stadiumDifficulty * 700;
baseGreenCoin = 5000 + _root.stadiumDifficulty * 2500;
baseBlueCoin = 10 + _root.stadiumDifficulty * 5;
baseToken = 250 + _root.stadiumDifficulty * _root.stadiumDifficulty * 50;
fReward = _root.save.stadiumReward;
if(_root.save.stadiumHat == 2)
{
   fReward += 15;
}
if(_root.save.stadiumHat == 3)
{
   fReward += 15;
}
if(_root.save.stadiumHat == 4)
{
   fReward += 20;
}
if(_root.save.stadiumHat == 5)
{
   fReward += 20;
}
if(_root.save.stadiumHat == 7)
{
   fReward += 25;
}
if(_root.save.stadiumHat == 9)
{
   fReward += 2;
}
if(_root.save.stadiumHat == 10)
{
   fReward += 5;
}
if(_root.save.stadiumHat == 11)
{
   fReward += 10;
}
_root.gainCareerEXP(7,Math.floor(250 + (125 + _root.stadiumDifficulty * _root.stadiumDifficulty * 25 + (5 - _root.stadiumOrder) * 50) * (100 + fReward) / 100 / _root.stadiumOrder) + Math.max(320 - _root.stadiumTimer * 20,0),true);
finalExp = Math.ceil((baseExp - Math.floor(_root.stadiumTimer * 10)) / _root.stadiumOrder * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100) * (1 + fReward * 0.01));
finalCoin = Math.ceil((baseCoin - Math.floor(_root.stadiumTimer * 10)) / _root.stadiumOrder * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100));
finalGreenCoin = Math.ceil(baseGreenCoin / _root.stadiumOrder);
finalBlueCoin = Math.ceil(baseBlueCoin / _root.stadiumOrder);
finalToken = Math.ceil(baseToken / _root.stadiumOrder);
finalExp = Math.floor(finalExp * (1 + _root.curCareerLevel[7] * 0.005) * (1 + _root.save.petStat[5] * 0.002));
finalCoin = Math.floor(finalCoin * (1 + _root.curCareerLevel[7] * 0.005));
finalToken = Math.floor(finalToken * (1 + _root.curCareerLevel[7] * 0.01));
if(_root.save.careerLevel[7] >= 100)
{
   finalGreenCoin = Math.floor(finalGreenCoin * 2);
}
if(_root.save.careerLevel[7] >= 200)
{
   finalBlueCoin = Math.floor(finalBlueCoin * 4);
}
if(_root.stadiumOrder >= 2)
{
   finalCoin = Math.floor(finalCoin * 0.5);
   finalToken = Math.floor(finalToken * 0.5);
}
if(_root.stadiumOrder == 5)
{
   finalExp = Math.floor(finalExp * 0.5);
   finalCoin = Math.floor(finalCoin * 0.5);
   finalGreenCoin = Math.floor(finalGreenCoin * 0.5);
   finalBlueCoin = Math.floor(finalBlueCoin * 0.5);
   finalToken = Math.floor(finalToken * 0.5);
}
if(_root.save.stadiumProTime > 0)
{
   finalExp = Math.floor(finalExp * 1.5);
   finalToken = Math.floor(finalToken * 2);
}
if(_root.save.permaBanPenalty[19] == 3)
{
   finalExp = Math.floor(finalExp * 3);
}
else if(_root.save.permaBanPenalty[19] == 2)
{
   finalExp = Math.floor(finalExp * 2.2);
}
else if(_root.save.permaBanPenalty[19] == 1)
{
   finalExp = Math.floor(finalExp * 1.8);
}
if(_root.save.stadiumBless > 0)
{
   _root.save.stadiumBless -= 1;
   finalExp = Math.floor(finalExp * 2);
   finalCoin = Math.floor(finalCoin * 2);
   _root.dispNews(103,"Stadium Blessing activated! (" + _root.save.stadiumBless + " left)");
}
if(finalExp < 0)
{
   finalExp = 0;
}
if(finalCoin < 0)
{
   finalCoin = 0;
}
expGainText.text = "+" + _root.withComma(finalExp);
coinGainText.text = "+" + _root.withComma(finalCoin);
greenCoinGainText.text = "+" + _root.withComma(finalGreenCoin);
blueCoinGainText.text = "+" + _root.withComma(finalBlueCoin);
tokenGainText.text = "+" + _root.withComma(finalToken);
_root.gainEXP(finalExp);
_root.gainCoin(finalCoin);
_root.gainGreenCoin(finalGreenCoin);
_root.gainBlueCoin(finalBlueCoin);
_root.save.stadiumToken += finalToken;
_root.dispNews(103,"Item Fight COMPLETE! - Position: #" + _root.stadiumOrder + " - Time: " + Math.floor(_root.stadiumTimer * 100) / 100 + " sec.");
_root.dispNews(103,"Gained: " + _root.withComma(finalExp) + " EXP + " + _root.withComma(finalCoin) + " Coins");
if(_root.stadiumOrder == 1)
{
   if(_root.save.questType == "Item Fight")
   {
      if(_root.save.questSubtype == "Easy")
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Medium" && _root.stadiumDifficulty >= 1)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Hard" && _root.stadiumDifficulty >= 2)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Impossible" && _root.stadiumDifficulty >= 3)
      {
         _root.save.questCount += 1;
      }
   }
   _root.save.stadiumItem += 1;
   if(_root.stadiumDifficulty == 3)
   {
      _root.save.stadiumImpossibleItem += 1;
   }
}
if(_root.save.stadiumBestTime > Math.floor(_root.stadiumTimer * 1000))
{
   _root.save.stadiumBestTime = Math.floor(_root.stadiumTimer * 1000);
}
