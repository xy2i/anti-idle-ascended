//! status=pending
onClipEvent(load){
   id = 6;
   levelCap = 20;
   levelCost = 50;
   bonName = "Accelerated Progress";
   bonDesc = "Increases the fill speed of the Progress Bar! Stacks multiplicatively with other Progress Bar Speed multipliers.";
   curLevel = Math.floor(_root.save.totalStupidity / levelCost);
   if(curLevel > levelCap)
   {
      curLevel = levelCap;
   }
   nextLevel = curLevel + 1;
   descA = "Progress Bar fills " + curLevel * 1 + "% more quickly.";
   descB = "Progress Bar fills " + nextLevel * 1 + "% more quickly.";
}


