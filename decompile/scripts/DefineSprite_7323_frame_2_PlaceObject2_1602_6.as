//! status=pending
on(release){
   if(_root.save.awesomeReputation >= 150 && _root.save.awesomeRefill < 9999)
   {
      _root.save.awesomeReputation -= 150;
      _root.save.awesomeRefill += 1;
      _root.dispNews(114,"[Energy Refill] successfully purchased! (-150 Reputation)");
   }
}


