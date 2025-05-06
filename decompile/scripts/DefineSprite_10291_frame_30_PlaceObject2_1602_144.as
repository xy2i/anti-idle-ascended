//! status=pending
on(release){
   if(_root.save.featureSpecialSprayer != true && _root.save.greenCoin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.greenCoin -= coinCost;
      _root.save.featureSpecialSprayer = true;
      _root.dispNews(14,"[Special Ant Sprayer] successfully purchased! (-" + _root.withComma(coinCost) + " Green Coins)");
   }
}


onClipEvent(load){
   coinCost = 1000000;
   reqLevel = 550;
}


