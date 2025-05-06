//! status=pending
on(release){
   if(_root.save.featureStadium != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureStadium = true;
      _root.dispNews(14,"[Stadium] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}


onClipEvent(load){
   coinCost = 3000000;
   reqLevel = 180;
}


