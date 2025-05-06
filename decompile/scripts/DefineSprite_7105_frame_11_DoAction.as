//! status=pending
if(_root.stadiumOrder == 1)
{
   _root.gainCyborgPoint(1);
   i = 1;
   while(i <= _root.todayEvent)
   {
      yy = _root.clock_year % 10;
      mm = _root.clock_month;
      dd = _root.clock_date;
      if(_root.eventList[yy][mm][dd][i] == "Receive Event Tokens by winning in Stadium")
      {
         _root.gainEventToken(2);
      }
      i++;
   }
}
baseExp = 1500;
baseCoin = 0;
baseGreenCoin = 7000;
baseBlueCoin = 15;
baseToken = 0;
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
finalExp = Math.ceil(baseExp / _root.stadiumOrder * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100) * (1 + fReward * 0.01));
finalExp = Math.floor(finalExp * (1 + _root.curCareerLevel[7] * 0.005) * (1 + _root.save.petStat[5] * 0.002));
if(_root.stadiumOrder == 1)
{
   if(_root.save.questType == "Bet")
   {
      if(_root.save.questSubtype == "Win")
      {
         _root.save.questCount += 1;
      }
   }
   _root.gainCareerEXP(7,600 * (100 + fReward) / 100,true);
   _root.save.stadiumBetCorrect += 1;
   _root.save.stadiumBetWinningCoin += Math.ceil(_root.stadiumBetCoin * 4);
   finalCoin = Math.ceil(_root.stadiumBetCoin * 4);
}
else
{
   _root.gainCareerEXP(7,60 * (100 + fReward) / 100,true);
   finalCoin = 0;
}
finalGreenCoin = Math.ceil(baseGreenCoin / _root.stadiumOrder);
finalBlueCoin = Math.ceil(baseBlueCoin / _root.stadiumOrder);
if(_root.save.careerLevel[7] >= 100)
{
   finalGreenCoin = Math.floor(finalGreenCoin * 2);
}
if(_root.save.careerLevel[7] >= 200)
{
   finalBlueCoin = Math.floor(finalBlueCoin * 3);
}
if(_root.stadiumOrder == 1)
{
   _root.save.stadiumBetWinningToken += Math.ceil(_root.stadiumBetToken * 4);
   finalToken = Math.ceil(_root.stadiumBetToken * 4);
}
else
{
   finalToken = 0;
}
if(_root.save.stadiumProTime > 0)
{
   finalExp = Math.floor(finalExp * 1.5);
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
_root.save.coinLag += finalCoin;
_root.gainGreenCoin(finalGreenCoin);
_root.gainBlueCoin(finalBlueCoin);
_root.save.stadiumToken += finalToken;
