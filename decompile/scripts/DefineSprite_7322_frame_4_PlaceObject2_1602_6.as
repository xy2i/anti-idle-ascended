//! status=pending
on(release){
   if(_root.save.awesomeReputation >= 1500)
   {
      _root.save.awesomeReputation -= 1500;
      _root.save.awesomeMaxEnergy = 9;
      _root.dispNews(114,"Your maximum Energy is now 45. (-1,500 Reputation)");
   }
}


