//! status=pending
on(release){
   if(_root.save.featureEnergyToolbar != true && _root.save.blueCoin >= 3000 && _root.save.featureAwesomeAdventures == true)
   {
      _root.save.blueCoin -= 3000;
      _root.save.featureEnergyToolbar = true;
      _root.dispNews(14,"[Adventure Reminder] successfully purchased! (-3,000 Blue Coins)");
   }
}


