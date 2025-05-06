//! status=pending
onClipEvent(load){
   id = 9;
   levelCap = 250;
   levelCost = 250;
   bonName = "Coin UP!";
   bonDesc = "Increases Coin gain rate from all sources except the Progress Bar. Applies only to yellow ones. If the level of this bonus is higher than 100, Coin Multiplier is only increased by 100% for Garden and LolMarket.";
   curLevel = Math.floor(_root.save.totalStupidity / levelCost);
   if(curLevel > levelCap)
   {
      curLevel = levelCap;
   }
   nextLevel = curLevel + 1;
   if(curLevel < 100)
   {
      descA = "Coin Multiplier: +" + curLevel * 1 + "%";
      descB = "Coin Multiplier: +" + nextLevel * 1 + "%";
   }
   else
   {
      descA = "Coin Multiplier: +" + (curLevel * 2 - 100) + "%";
      descB = "Coin Multiplier: +" + (nextLevel * 2 - 100) + "%";
   }
}


