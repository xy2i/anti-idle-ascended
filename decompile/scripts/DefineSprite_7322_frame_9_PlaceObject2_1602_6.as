//! status=pending
on(release){
   if(_root.save.awesomeReputation >= 225000 && _root.save.careerLevel[10] >= 200)
   {
      _root.save.awesomeReputation -= 225000;
      _root.save.awesomeMaxEnergy = 14;
      _root.dispNews(114,"Your maximum Energy is now 70. (-225,000 Reputation)");
   }
}


