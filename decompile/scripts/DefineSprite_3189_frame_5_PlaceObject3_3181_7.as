//! status=pending
on(release){
   cnt = 1;
   if(Key.isDown(17))
   {
      cnt = maxFert;
   }
   c = 1;
   while(c <= cnt)
   {
      if(_root.systemtimenow < _root.save.gardenFertilizerAllow && _root.save.greenCoin >= 1000000 && Key.isDown(16))
      {
         _root.save.greenCoin -= 1000000;
         _root.save.gardenFertilizerAllow = _root.systemtimenow;
      }
      usable = false;
      if(_root.save.gardenMegaFertilizer > 0 && _root.systemtimenow >= _root.save.gardenFertilizerAllow)
      {
         i = 51;
         while(i <= 75)
         {
            if(_root.save.gardenTrees[i] > 0 && _root.save.gardenTreeFertilize[i] < maxFert)
            {
               _alpha = 100;
               usable = true;
            }
            i++;
         }
      }
      if(usable == true)
      {
         _root.save.gardenMegaFertilizer -= 1;
         fertCount = 0;
         _root.gainCareerEXP(2,2500,true);
         valP = 0;
         i = 51;
         while(i <= 75)
         {
            if(_root.save.gardenTrees[i] > 0 && _root.save.gardenTreeFertilize[i] < maxFert)
            {
               fertCount += 1;
               _root.save.gardenTreeFertilize[i] += 1;
               oldVal = _root.save.gardenHarvestValue[i];
               _root.save.gardenHarvestValue[i] = Math.floor((_root.save.gardenHarvestValue[i] - _root.save.gardenTreeModuleProc[i]) * 1.1 + _root.save.gardenTreeModuleProc[i]);
               valP += _root.save.gardenHarvestValue[i] - oldVal;
               _root.save.gardenTreeExp[i] += 2;
            }
            i++;
         }
         _root.save.gardenFertilizerAllow = _root.systemtimenow + 900000;
         if(_root.save.careerLevel[2] >= 200)
         {
            _root.save.gardenFertilizerAllow = _root.systemtimenow + 630000;
         }
         _root.actiondescription = "";
         multiplier = Math.floor(Math.pow(_root.save.level,0.6)) / 10 + 6.5;
         _root.dispNews(23,fertCount + " trees fertilized with Mega Fertilizer! Total Harvest Value: +" + _root.withComma(valP * multiplier));
      }
      c++;
   }
}


on(rollOut){
   _root.actiondescription = "";
}


on(rollOver){
   _root.actiondescription = "<b>Mega Fertilizer</b>\nIncreases the Harvest Value of all planted trees in Another Another Garden by 10% and Garden EXP given by 2. Each tree can be fertilized up to 20 times.\nYou may have up to 9,999 unused Mega Fertilizers.\n\nAfter using this, you may not use another Fertilizer or Mega Fertilizer in any Garden for 15 minutes.";
   if(usable == true)
   {
      _root.actiondescription += "\n<font color=\'#FFFF00\'>Available now</font>";
   }
   else
   {
      _root.actiondescription += "\n<font color=\'#FFFF00\'>Next: " + _root.convertSecFull((_root.save.gardenFertilizerAllow - _root.systemtimenow) / 1000) + "</font>";
   }
}


onClipEvent(enterFrame){
   maxFert = 20;
   if(_root.save.careerLevel[2] >= 200)
   {
      maxFert = 21;
   }
   _alpha = 30;
   usable = false;
   if(_root.save.gardenMegaFertilizer > 0 && _root.systemtimenow >= _root.save.gardenFertilizerAllow)
   {
      i = 51;
      while(i <= 75)
      {
         if(_root.save.gardenTrees[i] > 0 && _root.save.gardenTreeFertilize[i] < maxFert)
         {
            _alpha = 100;
            usable = true;
         }
         i++;
      }
   }
}


