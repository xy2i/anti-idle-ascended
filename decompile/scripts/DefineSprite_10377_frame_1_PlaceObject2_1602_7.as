//! status=pending
on(release){
   _root.save.progBoxAsc = 0;
   _root.save.refillAsc = 0;
   _root.save.level = 1;
   _root.save.currentExp = 0;
   _root.save.totalExp = 0;
   _root.save.expLag = 0;
   if(_root.save.speedRunAscend > Math.floor(_root.save.ascendPlayTime / 60))
   {
      _root.save.speedRunAscend = Math.floor(_root.save.ascendPlayTime / 60);
   }
   i = 0;
   while(i <= 41)
   {
      _root.save.expSauceAsc[i] = 0;
      i++;
   }
   i = 1;
   while(i <= 75)
   {
      if(_root.save.gardenTrees[i] > 0)
      {
         _root.save.gardenRecentTime[i] = _root.systemtimenow;
      }
      i++;
   }
   _root.save.boostFreeze = 0;
   _root.save.banned += 1;
   _root.save.permaStupidity += 1;
   _root.save.remStupidity += 1;
   _root.save.totalStupidity += 1;
   _root.save.ascStupidity = 0;
   _root.save.stupidity += 1;
   _root.gainWhiteCoinB(250);
   _root.save.ascendPlayTime = 0;
   _root.save.seppukuAscension = 0;
   ti = 1;
   while(ti <= _root.save.autoAp)
   {
      tmpCost = ti * (ti + 1) / 2;
      if(ti >= 10)
      {
         tmpCost *= ti - 9;
      }
      if(_root.save.remStupidity >= tmpCost)
      {
         _root.save.remStupidity -= tmpCost;
         _root.save.ascStupidity += 1;
      }
      ti++;
   }
   _root.gotoAndStop(13);
}


