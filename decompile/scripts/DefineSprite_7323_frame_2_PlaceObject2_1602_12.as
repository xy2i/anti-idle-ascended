//! status=pending
on(release){
   if(_root.save.awesomeReputation >= 200)
   {
      _root.save.awesomeReputation -= 200;
      _root.gainBlueCoin(1000);
      _root.dispNews(114,"[1,000 Blue Coins] successfully purchased! (-200 Reputation)");
   }
}


