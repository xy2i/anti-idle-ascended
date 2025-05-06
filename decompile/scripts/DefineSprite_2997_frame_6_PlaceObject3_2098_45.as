//! status=pending
on(release){
   if(_root.save.greenCoin >= 900000)
   {
      _root.save.greenCoin -= 900000;
      _root.save.mysteryBox[2] += 1;
      _root.dispNews(17,"[Gambler\'s Box] purchased! (-900,000 Green Coins) | You now have: " + _root.withComma(_root.save.mysteryBox[2]));
   }
}


