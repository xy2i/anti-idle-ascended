//! status=pending
on(release){
   if(_root.save.featureBoostGen != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureBoostGen = true;
      _root.dispNews(14,"[Boost Generator] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}


onClipEvent(load){
   coinCost = 2000;
   reqLevel = 4;
}


