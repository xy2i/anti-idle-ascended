//! status=pending
on(release){
   if(_root.save.featureAwesomeAdventures != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureAwesomeAdventures = true;
      _root.dispNews(14,"[Awesome Adventures] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}


onClipEvent(load){
   coinCost = 75000000;
   reqLevel = 500;
}


