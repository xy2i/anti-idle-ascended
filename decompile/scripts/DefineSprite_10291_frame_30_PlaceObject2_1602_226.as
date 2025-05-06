//! status=pending
on(release){
   if(_root.save.featureSuperBattery != true && _root.save.blueCoin >= coinCost && _root.save.featureMoneyPrinter == true)
   {
      _root.save.blueCoin -= coinCost;
      _root.save.featureSuperBattery = true;
      _root.dispNews(14,"[Super Battery] successfully purchased! (-" + _root.withComma(coinCost) + " Blue Coins)");
   }
}


onClipEvent(load){
   coinCost = 750;
}


