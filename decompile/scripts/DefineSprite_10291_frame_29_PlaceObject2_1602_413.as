//! status=pending
on(release){
   if(_root.save.featureArcade != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureArcade = true;
      _root.dispNews(14,"[Arcade] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}


onClipEvent(load){
   coinCost = 750000;
   reqLevel = 80;
}


