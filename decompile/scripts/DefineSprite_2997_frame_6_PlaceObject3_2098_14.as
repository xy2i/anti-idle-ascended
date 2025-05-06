//! status=pending
on(release){
   if(_root.save.blueCoin >= 900)
   {
      _root.save.blueCoin -= 900;
      _root.save.mysteryBox[2] += 1;
      _root.dispNews(17,"[Gambler\'s Box] purchased! (-900 Blue Coins) | You now have: " + _root.withComma(_root.save.mysteryBox[2]));
   }
}


