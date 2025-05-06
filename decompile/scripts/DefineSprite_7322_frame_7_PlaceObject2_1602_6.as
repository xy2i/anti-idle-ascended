//! status=pending
on(release){
   if(_root.save.awesomeReputation >= 15000 && _root.save.careerLevel[10] >= 100)
   {
      _root.save.awesomeReputation -= 15000;
      _root.save.awesomeMaxEnergy = 12;
      _root.dispNews(114,"Your maximum Energy is now 60. (-15,000 Reputation)");
   }
}


