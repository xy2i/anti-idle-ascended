//! status=pending
on(release){
   if(_root.save.featureArcadePack != true && _root.save.blueCoin >= 750 && _root.save.featureArcade == true)
   {
      _root.save.blueCoin -= 750;
      _root.save.featureArcadePack = true;
      _root.dispNews(14,"[Arcade Pack] successfully purchased! (-750 Blue Coins)");
   }
}


