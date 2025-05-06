//! status=pending
on(release){
   if(_root.save.featureGarden != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureGarden = true;
      _root.dispNews(14,"[Garden] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}


onClipEvent(load){
   coinCost = 10000;
   reqLevel = 12;
}


