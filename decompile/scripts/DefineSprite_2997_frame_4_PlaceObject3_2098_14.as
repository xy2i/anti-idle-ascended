//! status=pending
on(release){
   if(_root.save.blueCoin >= 1000)
   {
      _root.save.blueCoin -= 1000;
      _root.save.mysteryBox[3] += 1;
      _root.dispNews(17,"[Pixelated Mystery Box] purchased! (-1,000 Blue Coins) | You now have: " + _root.withComma(_root.save.mysteryBox[3]));
   }
}


