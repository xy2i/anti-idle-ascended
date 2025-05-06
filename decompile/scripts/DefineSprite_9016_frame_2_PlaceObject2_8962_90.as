//! status=pending
onClipEvent(load){
   id = 2;
   levelCap = 5;
   levelCost = 1;
   bonName = "First Ascensions";
   bonDesc = "The feeling of ascending the first few times is great! The first 5 times you ascend, permanently gain 10% extra EXP multiplier and 100% extra Max Boost each time!";
   curLevel = Math.floor(_root.save.totalStupidity / levelCost);
   if(curLevel > levelCap)
   {
      curLevel = levelCap;
   }
   nextLevel = curLevel + 1;
   descA = "EXP Multiplier: +" + curLevel * 10 + "%\nMax Boost: +" + curLevel * 100 + "%";
   descB = "EXP Multiplier: +" + nextLevel * 10 + "%\nMax Boost: +" + nextLevel * 100 + "%";
}


