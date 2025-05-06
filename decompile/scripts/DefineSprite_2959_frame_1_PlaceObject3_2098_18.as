//! status=pending
on(release){
   if(_root.save.blueCoin >= 18000 && _root.save.featurePremiumSprayer != true)
   {
      _root.save.blueCoin -= 18000;
      _root.save.featurePremiumSprayer = true;
      _root.dispNews(16,"[Premium Ant Sprayer] successfully purchased! (-18,000 Blue Coins)");
   }
}


