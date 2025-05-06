//! status=pending
on(release){
   if(_root.save.featureFishing == true && _root.save.blueCoin >= 250000 && _root.save.fishRodUnlock[5] != 1)
   {
      _root.save.blueCoin -= 250000;
      _root.save.fishRodUnlock[5] = 1;
      _root.dispNews(16,"[Anti-Fish Fishing Rod] successfully purchased! (-250,000 Blue Coins)");
   }
}


