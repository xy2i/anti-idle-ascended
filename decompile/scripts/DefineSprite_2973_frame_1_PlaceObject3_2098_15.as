//! status=pending
on(release){
   if(_root.save.blueCoin >= 100000 && _root.save.stadiumH3 != true)
   {
      _root.save.blueCoin -= 100000;
      _root.save.stadiumH3 = true;
      _root.dispNews(16,"[Anti-Idle Hat] successfully purchased! (-100,000 Blue Coins)");
   }
}


