//! status=pending
on(release){
   if(_root.save.featureCardToolbar != true && _root.save.blueCoin >= 15000)
   {
      _root.save.blueCoin -= 15000;
      _root.save.featureCardToolbar = true;
      _root.dispNews(16,"[Card Reminder] successfully purchased! (-15,000 Blue Coins)");
   }
}


