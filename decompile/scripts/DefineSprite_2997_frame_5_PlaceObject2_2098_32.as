//! status=pending
on(release){
   costX = 5000000;
   if(_root.save.gDifficulty >= 3 && _root.save.level < 8999)
   {
      costX = 20000000;
   }
   else if(_root.save.gDifficulty >= 2 && _root.save.level < 8999)
   {
      costX = 10000000;
   }
   if(_root.save.greenCoin >= costX && _root.progPercent < 1000)
   {
      _root.save.greenCoin -= costX;
      _root.progPercent += 10000;
   }
}


