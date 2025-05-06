//! status=pending
on(release){
   if(_root.save.coin >= 600000000)
   {
      _root.save.coin -= 600000000;
      _root.save.mysteryBox[8] += 1;
      _root.dispNews(17,"[Chaos Crate] purchased! (-600,000,000 Coins) | You now have: " + _root.withComma(_root.save.mysteryBox[8]));
   }
}


