//! status=pending
on(release){
   if(_root.save.featureAwesomeAdventures != true && _root.save.coin >= 50000000 && _root.save.level >= 500)
   {
      _root.save.coin -= 50000000;
      _root.save.featureAwesomeAdventures = true;
      _root.dispNews(14,"[Awesome Adventures] successfully purchased! (-50,000,000 Coins)");
   }
}


