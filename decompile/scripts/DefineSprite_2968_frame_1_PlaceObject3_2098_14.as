//! status=pending
on(release){
   if(_root.save.blueCoin >= 10000 && _root.save.stadiumH2 != true)
   {
      _root.save.blueCoin -= 10000;
      _root.save.stadiumH2 = true;
      _root.dispNews(16,"[Crown Hat] successfully purchased! (-10,000 Blue Coins)");
   }
}


