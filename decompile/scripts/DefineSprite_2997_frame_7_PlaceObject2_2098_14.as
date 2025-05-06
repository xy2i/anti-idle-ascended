//! status=pending
on(release){
   if(_root.save.blueCoin >= 95000)
   {
      _root.save.blueCoin -= 95000;
      _root.save.mysteryBox[4] += 20;
      _root.dispNews(17,"20 [Legendary Box] purchased! (-95,000 Blue Coins) | You now have: " + _root.withComma(_root.save.mysteryBox[4]));
   }
}


