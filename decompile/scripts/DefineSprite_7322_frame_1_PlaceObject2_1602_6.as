//! status=pending
on(release){
   if(_root.save.awesomeReputation >= 150)
   {
      _root.save.awesomeReputation -= 150;
      _root.save.awesomeMaxEnergy = 6;
      _root.dispNews(114,"Your maximum Energy is now 30. (-150 Reputation)");
   }
}


