//! status=pending
on(release){
   if(_root.save.featureArcade != true && _root.save.coin >= 300000 && _root.save.level >= 80)
   {
      _root.save.coin -= 300000;
      _root.save.featureArcade = true;
      _root.dispNews(14,"[Arcade] successfully purchased! (-300,000 Coins)");
   }
}


