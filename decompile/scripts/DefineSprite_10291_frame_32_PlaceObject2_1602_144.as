//! status=pending
on(release){
   if(_root.save.greenCoin >= 750000000 && _root.anotherDay != true)
   {
      _root.save.greenCoin -= 750000000;
      _root.anotherDay = true;
      _root.dispNews(16,"[Day Skip] purchased! (-750,000,000 Green Coins)");
   }
}


