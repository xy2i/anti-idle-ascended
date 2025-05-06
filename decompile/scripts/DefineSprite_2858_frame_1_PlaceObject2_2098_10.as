//! status=pending
on(release){
   if(_root.save.featureSpecialSprayer != true && _root.save.blueCoin >= 4500)
   {
      _root.save.blueCoin -= 4500;
      _root.save.featureSpecialSprayer = true;
      _root.dispNews(14,"[Special Ant Sprayer] successfully purchased! (-4,500 Blue Coins)");
   }
}


