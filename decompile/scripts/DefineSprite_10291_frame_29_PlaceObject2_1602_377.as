//! status=pending
on(release){
   if(_root.save.featureBattleArena != true && _root.save.coin >= coinCost && _root.save.level >= reqLevel)
   {
      _root.save.coin -= coinCost;
      _root.save.featureBattleArena = true;
      _root.kongregate.stats.submit("Awesome",1);
      _root.dispNews(14,"[Battle Arena] successfully purchased! (-" + _root.withComma(coinCost) + " Coins)");
   }
}


onClipEvent(load){
   coinCost = 50000;
   reqLevel = 25;
}


