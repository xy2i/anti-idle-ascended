//! status=pending
on(release){
   if(_root.save.awesomeReputation >= 300)
   {
      _root.save.awesomeReputation -= 300;
      _root.save.awesomeMaxEnergy = 7;
      _root.dispNews(114,"Your maximum Energy is now 35. (-300 Reputation)");
   }
}


