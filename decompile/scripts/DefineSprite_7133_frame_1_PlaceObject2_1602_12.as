//! status=pending
on(release){
   lolMode = _root.save.lolConfig1;
   if(Key.isDown(32))
   {
      lolMode = _root.save.lolConfig2;
   }
   if(lolMode != 1)
   {
      maxPossible = Math.floor((999999999999 - _root.save.greenCoin) / (_root.save.lolPrice[_parent.gemLevel] * _parent.sellRatio));
      if(lolMode == 2 && maxPossible > Math.floor(_root.save.lolCapacity / 10))
      {
         maxPossible = Math.floor(_root.save.lolCapacity / 10);
      }
      if(lolMode == 3 && maxPossible > 5000)
      {
         maxPossible = 5000;
      }
      if(lolMode == 4 && maxPossible > 100000)
      {
         maxPossible = 100000;
      }
      if(_root.curCareerLevel[9] > 0 && _parent.profit > 0)
      {
         multiplier = 1;
         if(_root.saveid == 24)
         {
            multiplier = 0.3;
         }
         if(_root.saveid == 4)
         {
            multiplier = _root.save.dbCoin / 100;
         }
         multiplier += Math.min(Math.floor(_root.save.totalStupidity / 250),100) * 0.01;
         i = 1;
         while(i <= _root.todayEvent)
         {
            yy = _root.clock_year % 10;
            mm = _root.clock_month;
            dd = _root.clock_date;
            if(_root.eventList[yy][mm][dd][i] == "Gain 10% more Coins from all sources")
            {
               multiplier += 0.1;
            }
            if(_root.eventList[yy][mm][dd][i] == "Gain 20% more Coins from all sources")
            {
               multiplier += 0.2;
            }
            if(_root.eventList[yy][mm][dd][i] == "Gain 30% more Coins from all sources")
            {
               multiplier += 0.3;
            }
            if(_root.eventList[yy][mm][dd][i] == "Gain 50% more Coins from all sources")
            {
               multiplier += 0.5;
            }
            i++;
         }
         if(_root.save.restTime > 0)
         {
            multiplier *= 1.1 + _root.save.restEfficiency[2] * 0.01;
         }
         if(_root.save.doubleCoinTime > 0)
         {
            multiplier *= 1.5;
         }
         if(maxPossible > Math.floor((999999999999999 - _root.save.coin) / (_parent.profit * _root.curCareerLevel[9] * 5)))
         {
            maxPossible = Math.floor((999999999999999 - _root.save.coin) / (_parent.profit * _root.curCareerLevel[9] * 5));
         }
      }
      if(maxPossible > _root.save.lolGems[_parent.gemLevel])
      {
         maxPossible = _root.save.lolGems[_parent.gemLevel];
      }
      if(maxPossible > _root.save.lolGems[_parent.gemLevel])
      {
         maxPossible = _root.save.lolGems[_parent.gemLevel];
      }
      if(maxPossible > 0)
      {
         if(_parent.profit > 0)
         {
            if(_root.save.questType == "Sell")
            {
               if(_root.save.questSubtype == "0.5k Profit" && _parent.profit >= 500)
               {
                  _root.save.questCount += maxPossible;
               }
               if(_root.save.questSubtype == "1.0k Profit" && _parent.profit >= 1000)
               {
                  _root.save.questCount += maxPossible;
               }
               if(_root.save.questSubtype == "1.5k Profit" && _parent.profit >= 1500)
               {
                  _root.save.questCount += maxPossible;
               }
               if(_root.save.questSubtype == "2.0k Profit" && _parent.profit >= 2000)
               {
                  _root.save.questCount += maxPossible;
               }
               if(_root.save.questSubtype == "2.5k Profit" && _parent.profit >= 2500)
               {
                  _root.save.questCount += maxPossible;
               }
               if(_root.save.questSubtype == "3.0k Profit" && _parent.profit >= 3000)
               {
                  _root.save.questCount += maxPossible;
               }
               if(_root.save.questSubtype == "3.5k Profit" && _parent.profit >= 3500)
               {
                  _root.save.questCount += maxPossible;
               }
               if(_root.save.questSubtype == "4.0k Profit" && _parent.profit >= 4000)
               {
                  _root.save.questCount += maxPossible;
               }
            }
            _root.gainBlueCoin(maxPossible + Math.min(_parent.profit,_parent.gemLevel * 1000) / 2000 * maxPossible,13);
            _root.gainCareerEXP(9,Math.floor((10 + Math.min(_parent.profit,_parent.gemLevel * 1000) / 100) * maxPossible),true);
            expToGet = Math.floor(Math.min(_parent.profit,_parent.gemLevel * 1000) * maxPossible * Math.pow(_root.save.level,0.65) * 3 * (1 + _root.save.petStat[7] * 0.002) * (1 + _root.curCareerLevel[9] * 0.005));
            if(_root.save.gDifficulty >= 3 && _root.save.level < 8999)
            {
               expToGet = Math.floor(expToGet * 0.6);
            }
            else if(_root.save.gDifficulty >= 2 && _root.save.level < 8999)
            {
               expToGet = Math.floor(expToGet * 0.8);
            }
            if(_root.save.permaBanPenalty[5] == 3)
            {
               expToGet = Math.floor(expToGet * 2);
            }
            else if(_root.save.permaBanPenalty[5] == 2)
            {
               expToGet = Math.floor(expToGet * 1.6);
            }
            else if(_root.save.permaBanPenalty[5] == 1)
            {
               expToGet = Math.floor(expToGet * 1.4);
            }
            _root.gainEXP(expToGet);
            _root.gainCoin(_parent.profit * maxPossible * _root.curCareerLevel[9] * 4);
         }
         _root.save.lolDemand[_parent.gemLevel] -= Math.min(Math.floor(maxPossible / 5 / _parent.gemLevel / _parent.gemLevel),20);
         _root.save.greenCoin += Math.floor(_root.save.lolPrice[_parent.gemLevel] * _parent.sellRatio) * maxPossible;
         _root.save.greenCoinGraph[7] += Math.floor(_parent.profit) * maxPossible;
         _root.save.greenCoinGraph2[7] += Math.floor(_parent.profit) * maxPossible;
         _root.save.greenCoinSauce[13] += Math.floor(_parent.profit) * maxPossible;
         _root.save.greenCoinTotal[13] += Math.floor(_parent.profit) * maxPossible;
         _root.save.greenCoinSauce[40] += Math.floor(_parent.profit) * maxPossible;
         _root.save.greenCoinTotal[40] += Math.floor(_parent.profit) * maxPossible;
         _root.save.lolProfit += Math.floor(_root.save.lolPrice[_parent.gemLevel] * _parent.sellRatio) * maxPossible;
         _root.save.lolSpent[_parent.gemLevel] -= Math.ceil(_root.save.lolSpent[_parent.gemLevel] * maxPossible / _root.save.lolGems[_parent.gemLevel]);
         _root.save.lolGems[_parent.gemLevel] -= 1 * maxPossible;
         _root.dispNews(109,maxPossible + " Lv. " + _parent.gemLevel + " Gems sold! (+" + _root.withComma(Math.floor(_root.save.lolPrice[_parent.gemLevel] * _parent.sellRatio) * maxPossible) + " Green Coins)");
      }
   }
   else if(_root.save.lolGems[_parent.gemLevel] > 0)
   {
      if(_parent.profit > 0)
      {
         if(_root.save.questType == "Sell")
         {
            if(_root.save.questSubtype == "0.5k Profit" && _parent.profit >= 500)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "1.0k Profit" && _parent.profit >= 1000)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "1.5k Profit" && _parent.profit >= 1500)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "2.0k Profit" && _parent.profit >= 2000)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "2.5k Profit" && _parent.profit >= 2500)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "3.0k Profit" && _parent.profit >= 3000)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "3.5k Profit" && _parent.profit >= 3500)
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == "4.0k Profit" && _parent.profit >= 4000)
            {
               _root.save.questCount += 1;
            }
         }
         _root.gainBlueCoin(1 + Math.min(_parent.profit,_parent.gemLevel * 1000) / 2000,13);
         _root.gainCareerEXP(9,Math.floor(10 + Math.min(_parent.profit,_parent.gemLevel * 1000) / 100),true);
         expToGet = Math.floor(Math.min(_parent.profit,_parent.gemLevel * 1000) * Math.pow(_root.save.level,0.65) * 3 * (1 + _root.save.petStat[7] * 0.002) * (1 + _root.curCareerLevel[9] * 0.005));
         if(_root.save.gDifficulty >= 3 && _root.save.level < 8999)
         {
            expToGet = Math.floor(expToGet * 0.6);
         }
         else if(_root.save.gDifficulty >= 2 && _root.save.level < 8999)
         {
            expToGet = Math.floor(expToGet * 0.8);
         }
         if(_root.save.permaBanPenalty[5] == 3)
         {
            expToGet = Math.floor(expToGet * 2);
         }
         else if(_root.save.permaBanPenalty[5] == 2)
         {
            expToGet = Math.floor(expToGet * 1.6);
         }
         else if(_root.save.permaBanPenalty[5] == 1)
         {
            expToGet = Math.floor(expToGet * 1.4);
         }
         _root.gainEXP(expToGet);
         _root.gainCoin(_parent.profit * _root.curCareerLevel[9] * 4);
      }
      _root.save.greenCoin += Math.floor(_root.save.lolPrice[_parent.gemLevel] * _parent.sellRatio);
      _root.save.greenCoinGraph[7] += Math.floor(_parent.profit);
      _root.save.greenCoinGraph2[7] += Math.floor(_parent.profit);
      _root.save.greenCoinSauce[13] += Math.floor(_parent.profit);
      _root.save.greenCoinTotal[13] += Math.floor(_parent.profit);
      _root.save.greenCoinSauce[40] += Math.floor(_parent.profit);
      _root.save.greenCoinTotal[40] += Math.floor(_parent.profit);
      _root.save.lolProfit += Math.floor(_root.save.lolPrice[_parent.gemLevel] * _parent.sellRatio);
      _root.save.lolSpent[_parent.gemLevel] -= Math.ceil(_root.save.lolSpent[_parent.gemLevel] / _root.save.lolGems[_parent.gemLevel]);
      _root.save.lolGems[_parent.gemLevel] -= 1;
      _root.dispNews(109,"1 Lv. " + _parent.gemLevel + " Gem sold! (+" + _root.withComma(Math.floor(_root.save.lolPrice[_parent.gemLevel] * _parent.sellRatio)) + " Green Coins)");
   }
   _parent.checkStuff();
}


onClipEvent(enterFrame){
   if(_root.save.lolGems[_parent.gemLevel] > 0)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


