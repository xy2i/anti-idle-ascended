//! status=pending
on(release){
   if(_root.save.awesomeReputation >= 600000 && _root.save.careerLevel[10] >= 200)
   {
      _root.save.awesomeReputation -= 600000;
      _root.save.awesomeMaxEnergy = 15;
      _root.dispNews(114,"Your maximum Energy is now 75. (-600,000 Reputation)");
   }
}


