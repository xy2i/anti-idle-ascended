//! status=pending
on(release){
   if(_root.save.featureFishing != true && _root.save.coin >= 500000000 && _root.save.level >= 750)
   {
      _root.save.coin -= 500000000;
      _root.save.featureFishing = true;
      _root.dispNews(14,"[Fishing] successfully purchased! (-500,000,000 Coins)");
   }
}


