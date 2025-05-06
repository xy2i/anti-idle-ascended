//! status=pending
onClipEvent(load){
   id = 3;
   levelCap = 10;
   levelCost = 5;
   bonName = "Green Coin Increase";
   bonDesc = "Gain Green Coins more quickly!";
   curLevel = Math.floor(_root.save.totalStupidity / levelCost);
   if(curLevel > levelCap)
   {
      curLevel = levelCap;
   }
   nextLevel = curLevel + 1;
   descA = "Green Coin Multiplier: +" + curLevel * 3 + "%";
   descB = "Green Coin Multiplier: +" + nextLevel * 3 + "%";
}


