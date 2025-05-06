//! status=pending
on(release){
   costX = Math.floor(30000 * Math.sqrt(_root.save.bestLevel)) * 1000;
   if(_root.save.gDifficulty >= 3 && _root.save.level < 8999)
   {
      costX = 20000000000;
   }
   else if(_root.save.gDifficulty >= 2 && _root.save.level < 8999)
   {
      costX = 10000000000;
   }
   else if(_root.save.bestLevel >= 9000)
   {
      costX = 5000000000;
   }
   if(_root.save.coin >= costX && _root.progPercent < 1000)
   {
      _root.save.coin -= costX;
      _root.progPercent += 10000;
   }
}


