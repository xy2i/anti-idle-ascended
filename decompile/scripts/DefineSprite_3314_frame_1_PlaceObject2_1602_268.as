//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Click this button to plant in all available plots with the selected tree seed.";
}


on(release){
   if(_root.treeToPlant != -1)
   {
      coinCost = _root.tree_coinCost;
      greenCoinCost = _root.tree_greenCoinCost;
      blueCoinCost = _root.tree_blueCoinCost;
      gardenPointCost = _root.tree_gardenPointCost;
      harvestTime = _root.tree_harvestTime;
      expiryTime = _root.tree_expiryTime;
      treeToPlant = _root.treeToPlant;
      treeExp = _root.tree_exp;
      tempCap = _root.save.gardenCapacity;
      if(_root.save.gardenCapacity > 25)
      {
         tempCap = 25;
      }
      treeCount = 0;
      i = 1;
      while(i <= tempCap)
      {
         harvestValue = Math.floor(_root.tree_harvestValue * (0.95 + _root.treeGrade[i] * 0.1 + Math.random() * 0.1));
         if(!isNaN(harvestValue) && _root.save.gardenTrees[i] <= 0 && _root.save.coin >= coinCost && _root.save.greenCoin >= greenCoinCost && _root.save.blueCoin >= blueCoinCost && _root.save.gardenPoint >= gardenPointCost)
         {
            treeCount += 1;
            _root.save.coin -= coinCost;
            _root.save.greenCoin -= greenCoinCost;
            _root.save.blueCoin -= blueCoinCost;
            _root.save.gardenPoint -= gardenPointCost;
            _root.save.gardenRecentTime[i] = _root.systemtimenow;
            _root.save.gardenPurchaseTime[i] = _root.systemtimenow;
            _root.save.gardenHarvestTime[i] = harvestTime * 1000;
            _root.save.gardenHarvestValue[i] = harvestValue;
            _root.save.gardenExpiryTime[i] = expiryTime * 1000;
            _root.save.gardenTreeExp[i] = treeExp;
            _root.save.gardenTreeFertilize[i] = 0;
            _root.save.gardenTreeModuleProc[i] = 0;
            _root.save.gardenTrees[i] = treeToPlant;
         }
         i++;
      }
      if(coinCost > 0)
      {
         if(treeCount >= 2)
         {
            _root.dispNews(18,treeCount + " trees planted! (-" + _root.withComma(coinCost * treeCount) + " Coins)");
         }
         else if(treeCount >= 1)
         {
            _root.dispNews(18,"1 tree planted! (-" + _root.withComma(coinCost) + " Coins)");
         }
      }
      else if(gardenPointCost > 0)
      {
         if(treeCount >= 2)
         {
            _root.dispNews(18,treeCount + " trees planted! (-" + _root.withComma(gardenPointCost * treeCount) + " Garden Points)");
         }
         else if(treeCount >= 1)
         {
            _root.dispNews(18,"1 tree planted! (-" + _root.withComma(gardenPointCost) + " Garden Points)");
         }
      }
      else if(treeCount >= 2)
      {
         _root.dispNews(18,treeCount + " trees planted!");
      }
      else if(treeCount >= 1)
      {
         _root.dispNews(18,"1 tree planted!");
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


