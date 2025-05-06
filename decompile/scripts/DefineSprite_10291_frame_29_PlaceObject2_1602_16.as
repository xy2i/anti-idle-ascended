//! status=pending
on(release){
   if(_root.save.featureIdleMode != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureIdleMode = true;
      _root.dispNews(14,"[Idle Mode] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}


onClipEvent(load){
   coinCost = 500;
   reqLevel = 2;
}


