//! status=pending
on(release){
   if(_root.save.featureBoostGen != true && _root.save.coin >= 2000 && _root.save.level >= 5)
   {
      _root.save.coin -= 2000;
      _root.save.featureBoostGen = true;
      _root.dispNews(14,"[Boost Generator] successfully purchased! (-2,000 Coins)");
   }
}


