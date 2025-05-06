//! status=pending
on(release){
   if(_root.save.featureBattleArena != true && _root.save.coin >= 50000 && _root.save.level >= 25)
   {
      _root.save.coin -= 50000;
      _root.save.featureBattleArena = true;
      if(_root.saveid != 4)
      {
         _root.kongregate.stats.submit("Awesome",1);
      }
      _root.dispNews(14,"[Battle Arena] successfully purchased! (-50,000 Coins)");
   }
}


