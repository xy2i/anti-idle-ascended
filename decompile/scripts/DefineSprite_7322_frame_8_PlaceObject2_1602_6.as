//! status=pending
on(release){
   if(_root.save.awesomeReputation >= 60000 && _root.save.careerLevel[10] >= 200)
   {
      _root.save.awesomeReputation -= 60000;
      _root.save.awesomeMaxEnergy = 13;
      _root.dispNews(114,"Your maximum Energy is now 65. (-60,000 Reputation)");
   }
}


