//! status=pending
on(release){
   if(_root.save.featureStadium != true && _root.save.coin >= 3000000 && _root.save.level >= 180)
   {
      _root.save.coin -= 3000000;
      _root.save.featureStadium = true;
      _root.dispNews(14,"[Stadium] successfully purchased! (-3,000,000 Coins)");
   }
}


