//! status=pending
on(release){
   if(_root.save.featureCardToolbar != true && _root.save.blueCoin >= coinCost && _root.save.level >= 1000)
   {
      _root.save.blueCoin -= coinCost;
      _root.save.featureCardToolbar = true;
      _root.dispNews(14,"[Card Reminder] successfully purchased! (-" + _root.withComma(coinCost) + " Blue Coins)");
   }
}


onClipEvent(load){
   coinCost = 15000;
}


