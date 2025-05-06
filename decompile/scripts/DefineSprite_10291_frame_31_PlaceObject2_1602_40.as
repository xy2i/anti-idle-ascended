//! status=pending
on(release){
   if(_root.save.stadiumH3 != true && _root.save.blueCoin >= coinCost && _root.save.featureStadium == true)
   {
      _root.save.blueCoin -= coinCost;
      _root.save.stadiumH3 = true;
      _root.dispNews(14,"[Anti-Idle Hat] successfully purchased! (-" + _root.withComma(coinCost) + " Blue Coins)");
   }
}


onClipEvent(load){
   coinCost = 100000;
}


