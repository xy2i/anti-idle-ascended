//! status=pending
_root.gainCyborgPoint(1);
baseExp = 1500;
baseCoin = 1000;
baseGreenCoin = 7000;
baseBlueCoin = 15;
baseToken = 300;
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
_root.gainCareerEXP(7,500 * (100 + fReward) / 100,true);
finalExp = Math.ceil((baseExp - Math.floor(_root.stadiumTimer * 50)) * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100) * (1 + fReward * 0.01));
finalCoin = Math.ceil((baseCoin - Math.floor(_root.stadiumTimer * 50)) * Math.pow(_root.save.level,0.6) * (_root.save.boost / 100));
finalGreenCoin = Math.ceil(baseGreenCoin);
finalBlueCoin = Math.ceil(baseBlueCoin);
finalToken = Math.ceil(baseToken - _root.stadiumTimer * 2);
finalExp = Math.floor(finalExp * (1 + _root.curCareerLevel[7] * 0.005) * (1 + _root.save.petStat[5] * 0.002));
finalCoin = Math.floor(finalCoin * (1 + _root.curCareerLevel[7] * 0.005));
finalToken = Math.floor(finalToken * (1 + _root.curCareerLevel[7] * 0.01));
if(_root.save.careerLevel[7] >= 100)
{
   finalGreenCoin = Math.floor(finalGreenCoin * 2);
}
if(_root.save.careerLevel[7] >= 200)
{
   finalBlueCoin = Math.floor(finalBlueCoin * 3);
}
if(_root.save.stadiumProTime > 0)
{
   finalExp = Math.floor(finalExp * 1.5);
   finalToken = Math.floor(finalToken * 2);
}
if(finalExp < 0)
{
   finalExp = 0;
}
if(finalCoin < 0)
{
   finalCoin = 0;
}
if(finalToken < 0)
{
   finalToken = 0;
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
if(_root.save.stadiumBestTime > Math.floor(_root.stadiumTimer * 1000))
{
   _root.save.stadiumBestTime = Math.floor(_root.stadiumTimer * 1000);
}
