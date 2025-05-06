//! status=pending
onClipEvent(load){
   id = 5;
   levelCap = 25;
   levelCost = 20;
   bonName = "Blue Coin Printer";
   bonDesc = "Allows the Money Printer to print Blue Coins!";
   curLevel = Math.floor(_root.save.totalStupidity / levelCost);
   if(curLevel > levelCap)
   {
      curLevel = levelCap;
   }
   nextLevel = curLevel + 1;
   descA = "Money Printer has a " + curLevel * 4 + "% chance to print 1 Blue Coin.";
   descB = "Money Printer has a " + nextLevel * 4 + "% chance to print 1 Blue Coin.";
}


