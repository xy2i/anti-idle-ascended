//! status=pending
on(release){
   if(_root.save.blueCoin >= 250)
   {
      _root.save.blueCoin -= 250;
      _root.save.mysteryBox[5] += 1;
      _root.dispNews(17,"[Progress Box] purchased! (-250 Blue Coins) | You now have: " + _root.withComma(_root.save.mysteryBox[5]));
   }
}


