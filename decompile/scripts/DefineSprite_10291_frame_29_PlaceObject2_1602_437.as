//! status=pending
on(release){
   if(_root.save.featureTukkunFCG != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureTukkunFCG = true;
      _root.dispNews(14,"[TukkunFCG] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}


onClipEvent(load){
   coinCost = 10000000;
   reqLevel = 300;
}


