//! status=pending
on(release){
   if(_root.save.featureIdleMode != true && _root.save.coin >= 500)
   {
      _root.save.coin -= 500;
      _root.save.featureIdleMode = true;
      _root.dispNews(14,"[Idle Mode] successfully purchased! (-500 Coins)");
   }
}


