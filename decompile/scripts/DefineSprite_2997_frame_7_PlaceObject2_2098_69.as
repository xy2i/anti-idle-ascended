//! status=pending
on(release){
   if(_root.save.blueCoin >= 65000)
   {
      _root.save.blueCoin -= 65000;
      _root.save.mysteryBox[7] += 100;
      _root.dispNews(17,"100 [Awesome Crate] purchased! (-65,000 Blue Coins) | You now have: " + _root.withComma(_root.save.mysteryBox[7]));
   }
}


