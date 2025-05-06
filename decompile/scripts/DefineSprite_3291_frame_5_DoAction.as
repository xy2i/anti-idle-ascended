//! status=pending
onEnterFrame = function()
{
   _root.save.aagStat4 = Math.round(_root.save.aagStat4 / 5) * 5;
   harvestTime = Math.floor(180000 / (100 + _root.save.aagStat1));
   expiryTime = Math.floor(4800 + _root.save.aagStat2 * (_root.save.aagStat2 + 100));
   harvestValue = Math.floor(Math.pow(Math.min(_root.save.gardenEXP / 1000,1000000),0.3) * 5 * (100 + _root.save.aagStat3 + _root.save.aagStat3 * _root.save.aagStat3 / 200) / 4000 + _root.save.aagStat3) * 1000;
   gardenExp = Math.floor(10 + _root.save.aagStat4 / 5);
   multiplier = Math.floor(Math.pow(_root.save.level,0.6)) / 10 + 6.5;
   harvestValue = Math.round(harvestValue * multiplier);
   mul = 1.4285714285714286;
   mul *= 1 - Math.min(Math.floor(_root.save.totalStupidity / 10),30) * 0.01;
   harvestTime = Math.round(harvestTime * (1 - Math.min(Math.floor(_root.save.totalStupidity / 10),30) * 0.01));
   i = 1;
   while(i <= _root.todayEvent)
   {
      yy = _root.clock_year % 10;
      mm = _root.clock_month;
      dd = _root.clock_date;
      if(_root.eventList[yy][mm][dd][i] == "Wait time to harvest trees in Garden is reduced by 25%")
      {
         harvestTime = Math.floor(harvestTime * 0.75);
         mul *= 0.75;
      }
      i++;
   }
   if(_root.save.permaBanPenalty[33] == 3)
   {
      harvestValue = Math.round(harvestValue * 1.5);
      expiryTime = Math.round(expiryTime * 1.5);
      mul /= 1.5;
   }
   else if(_root.save.permaBanPenalty[33] == 2)
   {
      harvestValue = Math.round(harvestValue * 1.3);
      expiryTime = Math.round(expiryTime * 1.3);
      mul /= 1.3;
   }
   else if(_root.save.permaBanPenalty[33] == 1)
   {
      harvestValue = Math.round(harvestValue * 1.2);
      expiryTime = Math.round(expiryTime * 1.2);
      mul /= 1.2;
   }
   harvestCount = Math.floor((expiryTime - 1) / harvestTime);
   cost1 = Math.floor(Math.pow(harvestCount * (50 + Math.min(harvestCount,100)) / 150 * mul * (_root.save.aagStat3 * _root.save.aagStat3 + 10000) * 100,1.1) * (100 + _root.save.aagStat1) * 0.9 / 200000000 * ((50 + gardenExp * 3) / 100) * 1.25) * 500000;
   cost2 = Math.floor(((_root.save.aagStat1 * _root.save.aagStat1 + 2000) * (_root.save.aagStat2 * _root.save.aagStat2 + 2000) * (_root.save.aagStat3 * _root.save.aagStat3 + 2000) / 1000000000 + 912) * 8 / 150 * ((50 + gardenExp * 3) / 100)) * 250;
   cost3 = Math.floor(cost2 * 3 / 8000 + (_root.save.aagStat1 + 100) * (_root.save.aagStat2 + 100) * (_root.save.aagStat3 + 100) / 100000 * ((50 + gardenExp * 3) / 200)) * 2 - 40;
   if(cost1 > 10000000000 || _root.save.aagStat1 == 200 && _root.save.aagStat2 == 200 && _root.save.aagStat3 == 200 && _root.save.aagStat4 == 200)
   {
      cost1 = 10000000000;
   }
   if(cost3 < 0)
   {
      cost3 = 0;
   }
   cost4 = Math.floor(cost1 / 2500000 + cost2 / 1000 + cost3 / 1) * 10;
   if(_root.save.careerLevel[2] >= 100)
   {
      gardenExp = Math.floor(gardenExp * 1.2);
   }
   treeStat1Text.text = _root.convertSecFull(harvestTime);
   treeStat2Text.text = _root.convertSecFull(expiryTime);
   treeStat3Text.text = _root.withComma(harvestValue);
   treeStat4Text.text = _root.withComma(harvestCount);
   treeStat5Text.text = "+" + _root.withComma(gardenExp);
   treeCost1Text.text = _root.withComma(cost1);
   treeCost2Text.text = _root.withComma(cost2);
   treeCost3Text.text = _root.withComma(cost3);
   treeCost4Text.text = _root.withComma(cost4);
};
