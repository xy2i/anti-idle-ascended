//! status=pending
on(release){
   _root.save.ascStupidity = 0;
   _root.save.progBoxAsc = 0;
   _root.save.refillAsc = 0;
   i = 0;
   while(i <= 41)
   {
      _root.save.expSauceAsc[i] = 0;
      i++;
   }
   i = 1;
   while(i <= 75)
   {
      if(_root.save.gardenTrees[i] > 0)
      {
         _root.save.gardenRecentTime[i] = _root.systemtimenow;
      }
      i++;
   }
   _root.save.boostFreeze = 0;
   if(_root.save.gDifficulty >= 2)
   {
      if(_root.save.gOldAscension != true)
      {
         _root.save.bannedHard += 1;
         _root.save.permaStupidityHard += 1;
      }
      if(_root.save.speedRunAscendHard > Math.floor(_root.save.ascendPlayTime / 60))
      {
         _root.save.speedRunAscendHard = Math.floor(_root.save.ascendPlayTime / 60);
      }
   }
   if(_root.save.gDifficulty >= 3)
   {
      if(_root.save.gOldAscension != true)
      {
         _root.save.bannedImpossible += 1;
         _root.save.permaStupidityImpossible += 1;
      }
      if(_root.save.speedRunAscendImpossible > Math.floor(_root.save.ascendPlayTime / 60))
      {
         _root.save.speedRunAscendImpossible = Math.floor(_root.save.ascendPlayTime / 60);
      }
   }
   _root.save.gDifficulty = 2;
   _root.save.level = 1;
   _root.save.currentExp = 0;
   _root.save.totalExp = 0;
   _root.save.expLag = 0;
   _root.save.bankCoin = _root.save.coin;
   _root.save.coin = 0;
   _root.save.coinLag = 0;
   _root.save.bankGreenCoin = _root.save.greenCoin;
   _root.save.greenCoin = 0;
   _root.save.bankBlueCoin = _root.save.blueCoin;
   _root.save.blueCoin = 0;
   _root.save.featureBoostGen = false;
   _root.save.featureGarden = false;
   _root.save.featureBattleArena = false;
   _root.save.featureButtonMachine = false;
   _root.save.featureMoneyPrinter = false;
   _root.save.featureMysteryShop = false;
   _root.save.featureArcade = false;
   _root.save.featureStadium = false;
   _root.save.featureTukkunFCG = false;
   _root.save.featureLolMarket = false;
   _root.save.featureAwesomeAdventures = false;
   _root.save.featureFishing = false;
   _root.save.featureEpicLicense = false;
   _root.save.featureMiniGarden = false;
   _root.save.featureSuperBattery = false;
   _root.save.featureArcadePack = false;
   _root.save.featureManualSprayer = false;
   _root.save.featureSpecialSprayer = false;
   _root.save.featureDoomSprayer = false;
   _root.save.featureEnergyToolbar = false;
   _root.save.featurePremiumSprayer = false;
   _root.save.featureBoostAuto = false;
   _root.save.boost = 100;
   _root.save.boostMax = 500;
   if(_root.save.speedRunAscend > Math.floor(_root.save.ascendPlayTime / 60))
   {
      _root.save.speedRunAscend = Math.floor(_root.save.ascendPlayTime / 60);
   }
   if(_root.save.gOldAscension != true)
   {
      _root.save.banned += 1;
      _root.save.permaStupidity += 1;
   }
   _root.gainWhiteCoinB(750);
   _root.save.stupidity += 3;
   _root.save.remStupidity += 3;
   _root.save.totalStupidity += 3;
   _root.save.ascendPlayTime = 0;
   _root.save.seppukuAscension = 0;
   _root.save.gOldAscension = _root.tempOld;
   ti = 1;
   while(ti <= _root.save.autoAp)
   {
      tmpCost = ti * (ti + 1) / 2;
      if(ti >= 10)
      {
         tmpCost *= ti - 9;
      }
      if(_root.save.remStupidity >= tmpCost)
      {
         _root.save.remStupidity -= tmpCost;
         _root.save.ascStupidity += 1;
      }
      ti++;
   }
   _root.gotoAndStop(13);
}


