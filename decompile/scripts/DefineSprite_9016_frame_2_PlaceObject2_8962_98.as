//! status=pending
onClipEvent(load){
   id = 4;
   levelCap = 30;
   levelCost = 10;
   bonName = "Quick Harvester";
   bonDesc = "Reduces time needed to harvest trees in the Garden!";
   curLevel = Math.floor(_root.save.totalStupidity / levelCost);
   if(curLevel > levelCap)
   {
      curLevel = levelCap;
   }
   nextLevel = curLevel + 1;
   descA = "Wait time to harvest trees: -" + curLevel * 1 + "%";
   descB = "Wait time to harvest trees: -" + nextLevel * 1 + "%";
}


