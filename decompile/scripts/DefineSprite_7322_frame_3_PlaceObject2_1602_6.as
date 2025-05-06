//! status=pending
on(release){
   if(_root.save.awesomeReputation >= 750)
   {
      _root.save.awesomeReputation -= 750;
      _root.save.awesomeMaxEnergy = 8;
      _root.dispNews(114,"Your maximum Energy is now 40. (-750 Reputation)");
   }
}


