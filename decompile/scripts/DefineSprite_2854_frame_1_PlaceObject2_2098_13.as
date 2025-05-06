//! status=pending
on(release){
   if(_root.save.featureManualSprayer != true && _root.save.coin >= 30000000 && _root.save.level >= 350)
   {
      _root.save.coin -= 30000000;
      _root.save.featureManualSprayer = true;
      _root.dispNews(14,"[Manual Ant Sprayer] successfully purchased! (-30,000,000 Coins)");
   }
}


