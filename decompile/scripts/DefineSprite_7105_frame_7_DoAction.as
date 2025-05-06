//! status=pending
if(_root.stadiumOrder == 1)
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
   i = 1;
   while(i <= _root.todayEvent)
   {
      yy = _root.clock_year % 10;
      mm = _root.clock_month;
      dd = _root.clock_date;
      if(_root.eventList[yy][mm][dd][i] == "Receive Event Tokens by winning in Stadium")
      {
         _root.gainEventToken(300);
      }
      i++;
   }
}
baseExp = 250000;
baseCoin = 250000;
baseGreenCoin = 500000;
baseBlueCoin = 1000;
baseToken = 10000;
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
if(_root.save.questType == "Death Match")
{
   if(_root.save.questSubtype == "PWNt")
   {
      if(_root.save.questCount < _root.pwnts)
      {
         _root.save.questCount = _root.pwnts;
      }
   }
}
_root.gainCyborgPoint(Math.floor(400 + _root.pwnts / 1.25 / _root.stadiumOrder));
_root.gainCareerEXP(7,Math.floor(10000 + (20000 + _root.pwnts * 50 + (5 - _root.stadiumOrder) * 5000) * (100 + fReward) / 100 / _root.stadiumOrder),true);
finalExp = Math.ceil((baseExp + Math.floor(_root.pwnts * 250)) / _root.stadiumOrder * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100) * (1 + fReward * 0.01));
finalCoin = Math.ceil((baseCoin + Math.floor(_root.pwnts * 250)) / _root.stadiumOrder * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100));
finalGreenCoin = Math.ceil((baseGreenCoin + _root.pwnts * 500) / _root.stadiumOrder);
finalBlueCoin = Math.ceil((baseBlueCoin + _root.pwnts * 1) / _root.stadiumOrder);
finalToken = Math.ceil((baseToken + _root.pwnts * 10) / _root.stadiumOrder);
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
if(finalExp < 0)
{
   finalExp = 0;
}
if(finalCoin < 0)
{
   finalCoin = 0;
}
if(finalExp > 999999999999)
{
   finalExp = 999999999999;
}
if(finalCoin > 999999999999)
{
   finalCoin = 999999999999;
}
pwntText.text = _root.withComma(_root.pwnts);
expGainText.text = "+" + _root.withComma(finalExp);
coinGainText.text = "+" + _root.withComma(finalCoin);
greenCoinGainText.text = "+" + _root.withComma(finalGreenCoin);
blueCoinGainText.text = "+" + _root.withComma(finalBlueCoin);
tokenGainText.text = "+" + _root.withComma(finalToken);
_root.gainEXP(finalExp);
_root.gainCoin(finalCoin);
_root.gainGreenCoin(finalGreenCoin);
_root.gainBlueCoin(finalBlueCoin);
_root.gainWhiteCoin(Math.floor((10 + _root.pwnts / 25) / _root.stadiumOrder));
_root.save.stadiumToken += finalToken;
_root.dispNews(103,"Death Match COMPLETE! - Position: #" + _root.stadiumOrder + " - PWNts: " + _root.withComma(_root.pwnts));
_root.dispNews(103,"Gained: " + _root.withComma(finalExp) + " EXP + " + _root.withComma(finalCoin) + " Coins");
if(_root.stadiumOrder == 1)
{
   if(_root.save.questType == "Death Match")
   {
      if(_root.save.questSubtype == "Win")
      {
         _root.save.questCount += 1;
      }
   }
   _root.save.stadiumDeathMatch += 1;
}
if(_root.save.stadiumBestDeathMatch < _root.pwnts)
{
   _root.save.stadiumBestDeathMatch = _root.pwnts;
}
if(_root.save.stadiumTodayDeathMatch < _root.pwnts)
{
   _root.save.stadiumTodayDeathMatch = _root.pwnts;
}
