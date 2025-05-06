//! status=pending
on(release){
   if(_root.save.featureEpicLicense != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureEpicLicense = true;
      _root.dispNews(14,"[Epic License] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}


onClipEvent(load){
   coinCost = 1337000000;
   reqLevel = 1000;
   if(_root.save.gDifficulty >= 2)
   {
      coinCost = 13370000000;
      reqLevel = 3000;
   }
}


