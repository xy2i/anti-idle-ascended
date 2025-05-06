//! status=pending
onClipEvent(load){
   id = 7;
   levelCap = 20;
   levelCost = 500;
   bonName = "White Coin Master";
   bonDesc = "Grants a chance to gain twice as many White Coins! Does not apply to White Coins obtained from ascending and reaching level 9001.";
   curLevel = Math.floor(_root.save.totalStupidity / levelCost);
   if(curLevel > levelCap)
   {
      curLevel = levelCap;
   }
   nextLevel = curLevel + 1;
   descA = "Whenever you gain White Coins, " + curLevel * 5 + "% chance to gain twice as many White Coins as you are supposed to gain.";
   descB = "Whenever you gain White Coins, " + nextLevel * 5 + "% chance to gain twice as many White Coins as you are supposed to gain.";
}


