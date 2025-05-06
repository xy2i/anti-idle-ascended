//! status=pending
on(release){
   if(_root.save.blueCoin >= 1000 && _root.save.stadiumH1 != true)
   {
      _root.save.blueCoin -= 1000;
      _root.save.stadiumH1 = true;
      _root.dispNews(16,"[Party Hat] successfully purchased! (-1,000 Blue Coins)");
   }
}


