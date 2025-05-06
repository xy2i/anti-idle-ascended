//! status=pending
on(release){
   if(_root.save.blueCoin >= 75000)
   {
      _root.save.blueCoin -= 75000;
      _root.save.mysteryBox[1] += 200;
      _root.dispNews(17,"200 [Explosion Crate] purchased! (-75,000 Blue Coins) | You now have: " + _root.withComma(_root.save.mysteryBox[1]));
   }
}


