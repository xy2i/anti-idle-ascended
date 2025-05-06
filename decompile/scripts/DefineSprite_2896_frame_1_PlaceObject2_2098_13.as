//! status=pending
on(release){
   if(_root.save.featureDoomSprayer != true && _root.save.coin >= 700000000 && _root.save.level >= 850)
   {
      _root.save.coin -= 700000000;
      _root.save.featureDoomSprayer = true;
      _root.dispNews(14,"[Doom Ant Sprayer] successfully purchased! (-700,000,000 Coins)");
   }
}


