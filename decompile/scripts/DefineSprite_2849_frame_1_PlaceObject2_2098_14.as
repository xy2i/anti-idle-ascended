//! status=pending
on(release){
   if(_root.save.featureLolMarket != true && _root.save.coin >= 20000000 && _root.save.level >= 400)
   {
      _root.save.coin -= 20000000;
      _root.save.featureLolMarket = true;
      _root.dispNews(14,"[LolMarket] successfully purchased! (-20,000,000 Coins)");
   }
}


