//! status=pending
on(release){
   if(_root.save.featureBoostAuto != true && _root.save.greenCoin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.greenCoin -= coinCost;
      _root.save.featureBoostAuto = true;
      _root.dispNews(14,"[Auto-Booster] successfully purchased! (-" + _root.withComma(coinCost) + " Green Coins)");
   }
}


onClipEvent(load){
   coinCost = 10000;
   reqLevel = 125;
}


