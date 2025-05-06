//! status=pending
on(release){
   if(_root.save.featureSuperBattery != true && _root.save.blueCoin >= 750 && _root.save.featureMoneyPrinter == true)
   {
      _root.save.blueCoin -= 750;
      _root.save.featureSuperBattery = true;
      _root.dispNews(14,"[Super Battery] successfully purchased! (-750 Blue Coins)");
   }
}


