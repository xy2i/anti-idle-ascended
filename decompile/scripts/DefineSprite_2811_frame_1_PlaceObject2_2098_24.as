//! status=pending
on(release){
   if(_root.save.featureMoneyPrinter != true && _root.save.coin >= 200000 && _root.save.level >= 40)
   {
      _root.save.coin -= 200000;
      _root.save.featureMoneyPrinter = true;
      _root.dispNews(14,"[Money Printer] successfully purchased! (-200,000 Coins)");
   }
}


