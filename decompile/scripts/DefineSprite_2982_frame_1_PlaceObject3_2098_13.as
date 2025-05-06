//! status=pending
on(release){
   if(_root.save.featureFishing == true && _root.save.blueCoin >= 350000 && _root.save.fishRodUnlock[6] != 1)
   {
      _root.save.blueCoin -= 350000;
      _root.save.fishRodUnlock[6] = 1;
      _root.dispNews(16,"[Anti-Junk Fishing Rod] successfully purchased! (-350,000 Blue Coins)");
   }
}


