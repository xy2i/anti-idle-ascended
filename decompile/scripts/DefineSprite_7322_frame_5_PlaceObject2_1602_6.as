//! status=pending
on(release){
   if(_root.save.awesomeReputation >= 3000)
   {
      _root.save.awesomeReputation -= 3000;
      _root.save.awesomeMaxEnergy = 10;
      _root.dispNews(114,"Your maximum Energy is now 50. (-3,000 Reputation)");
   }
}


