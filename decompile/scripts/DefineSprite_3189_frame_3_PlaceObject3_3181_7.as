//! status=pending
on(release){
}


on(rollOut){
   _root.actiondescription = "";
}


on(rollOver){
   _root.actiondescription = "<b>Mega Fertilizer</b>\nIncreases the Harvest Value of all planted trees in Home Garden by 10% and Garden EXP given by 2. Each tree can be fertilized up to 20 times.\nYou may have up to 9,999 unused Mega Fertilizers.\n\nAfter using this, you may not use another Fertilizer or Mega Fertilizer in any Garden for 15 minutes.";
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
      i = 1;
      while(i <= 25)
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


