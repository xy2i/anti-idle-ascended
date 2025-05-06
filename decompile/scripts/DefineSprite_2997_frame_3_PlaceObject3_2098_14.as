//! status=pending
on(release){
   if(_root.save.blueCoin >= 400)
   {
      _root.save.blueCoin -= 400;
      _root.save.mysteryBox[1] += 1;
      _root.dispNews(17,"[Explosion Crate] purchased! (-400 Blue Coins) | You now have: " + _root.withComma(_root.save.mysteryBox[1]));
   }
}


