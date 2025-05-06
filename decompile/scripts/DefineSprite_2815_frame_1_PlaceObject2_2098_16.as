//! status=pending
on(release){
   if(_root.save.featureMysteryShop != true && _root.save.coin >= 666666 && _root.save.level >= 66)
   {
      _root.save.coin -= 666666;
      _root.save.featureMysteryShop = true;
      _root.dispNews(14,"[Mystery Shop] unlocked! (-666,666 Coins)");
   }
}


