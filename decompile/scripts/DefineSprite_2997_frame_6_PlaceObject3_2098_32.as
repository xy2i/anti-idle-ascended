//! status=pending
on(release){
   if(_root.save.blueCoin >= 5000)
   {
      _root.save.blueCoin -= 5000;
      _root.save.mysteryBox[4] += 1;
      _root.dispNews(17,"[Legendary Box] purchased! (-5,000 Blue Coins) | You now have: " + _root.withComma(_root.save.mysteryBox[4]));
   }
}


