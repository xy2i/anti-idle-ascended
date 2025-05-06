//! status=pending
on(release){
   if(_root.save.blueCoin >= 700)
   {
      _root.save.blueCoin -= 700;
      _root.save.mysteryBox[7] += 1;
      _root.dispNews(17,"[Awesome Crate] purchased! (-700 Blue Coins) | You now have: " + _root.withComma(_root.save.mysteryBox[7]));
   }
}


