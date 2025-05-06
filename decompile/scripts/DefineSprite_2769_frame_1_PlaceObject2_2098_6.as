//! status=pending
on(release){
   if(_root.save.featureGarden != true && _root.save.coin >= 10000 && _root.save.level >= 12)
   {
      _root.save.coin -= 10000;
      _root.save.featureGarden = true;
      _root.dispNews(14,"[Garden] successfully purchased! (-10,000 Coins)");
   }
}


