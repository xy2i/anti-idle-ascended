//! status=pending
on(release){
   if(_root.save.fishRodUnlock[5] != true && _root.save.blueCoin >= coinCost && _root.save.featureFishing == true)
   {
      _root.save.blueCoin -= coinCost;
      _root.save.fishRodUnlock[5] = true;
      _root.dispNews(14,"[Anti-Fish Fishing Rod] successfully purchased! (-" + _root.withComma(coinCost) + " Blue Coins)");
   }
}


onClipEvent(load){
   coinCost = 50000;
}


