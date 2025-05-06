//! status=pending
on(release){
   if(_root.save.awesomeReputation >= 7500 && _root.save.careerLevel[10] >= 100)
   {
      _root.save.awesomeReputation -= 7500;
      _root.save.awesomeMaxEnergy = 11;
      _root.dispNews(114,"Your maximum Energy is now 55. (-7,500 Reputation)");
   }
}


