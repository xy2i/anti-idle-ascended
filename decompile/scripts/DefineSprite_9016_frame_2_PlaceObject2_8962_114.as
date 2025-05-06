//! status=pending
onClipEvent(load){
   id = 8;
   levelCap = 20;
   levelCost = 250;
   bonName = "Career EXP UP!";
   bonDesc = "Increases Career EXP gain rate. Remember that Career levels past 100 give Supply Crates! And for level 200 Careers, you gain one Supply Crate every 40,000,000 Career EXP, so extra Career EXP never hurts!";
   curLevel = Math.floor(_root.save.totalStupidity / levelCost);
   if(curLevel > levelCap)
   {
      curLevel = levelCap;
   }
   nextLevel = curLevel + 1;
   descA = "Career EXP Multiplier: +" + curLevel * 3 + "%";
   descB = "Career EXP Multiplier: +" + nextLevel * 3 + "%";
}


