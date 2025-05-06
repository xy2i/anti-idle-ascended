//! status=pending
on(release){
   if(_root.save.featureDoomSprayer != true && _root.save.greenCoin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.greenCoin -= coinCost;
      _root.save.featureDoomSprayer = true;
      _root.dispNews(14,"[Doom Ant Sprayer] successfully purchased! (-" + _root.withComma(coinCost) + " Green Coins)");
   }
}


onClipEvent(load){
   coinCost = 6000000;
   reqLevel = 850;
}


