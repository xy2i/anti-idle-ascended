//! status=pending
on(release){
   if(_root.save.featureTukkunFCG != true && _root.save.coin >= 10000000 && _root.save.level >= 300)
   {
      _root.save.coin -= 10000000;
      _root.save.featureTukkunFCG = true;
      _root.dispNews(14,"[TukkunFCG] successfully purchased! (-10,000,000 Coins)");
   }
}


