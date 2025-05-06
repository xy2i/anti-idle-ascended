//! status=pending
on(release){
   if(_root.save.featureBoostAuto != true && _root.save.coin >= 1000000 && _root.save.level >= 125)
   {
      _root.save.coin -= 1000000;
      _root.save.featureBoostAuto = true;
      _root.dispNews(14,"[Auto-Booster] successfully purchased! (-1,000,000 Coins)");
   }
}


