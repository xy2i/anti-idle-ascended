//! status=pending
on(release){
   if(_root.save.blueCoin >= 95000)
   {
      _root.save.blueCoin -= 95000;
      _root.save.mysteryBox[5] += 400;
      _root.dispNews(17,"400 [Progress Box] purchased! (-95,000 Blue Coins) | You now have: " + _root.withComma(_root.save.mysteryBox[5]));
   }
}


