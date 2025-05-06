//! status=pending
on(release){
   if(_root.save.featureTechnicalLight != true && _root.save.blueCoin >= coinCost && _root.save.level >= 1000)
   {
      _root.save.blueCoin -= coinCost;
      _root.save.featureTechnicalLight = true;
      _root.dispNews(14,"[Technical Lights] successfully purchased! (-" + _root.withComma(coinCost) + " Blue Coins)");
   }
}


onClipEvent(load){
   coinCost = 75000;
}


