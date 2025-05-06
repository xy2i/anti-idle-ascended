//! status=pending
onClipEvent(load){
   id = 10;
   levelCap = 250;
   levelCost = 500;
   bonName = "Freeze!";
   bonDesc = "Increases Boost Freeze duration when using Boost Potions. AND increases EXP gain from the Progress Bar when Boost is frozen! So awesome!";
   curLevel = Math.floor(_root.save.totalStupidity / levelCost);
   if(curLevel > levelCap)
   {
      curLevel = levelCap;
   }
   nextLevel = curLevel + 1;
   descA = "Boost Freeze duration: +" + curLevel * 1 + " sec\nWhen Boost is frozen, EXP Multiplier from Progress Bar +" + curLevel * 1 + "%";
   descB = "Boost Freeze duration: +" + nextLevel * 1 + " sec\nWhen Boost is frozen, EXP Multiplier from Progress Bar +" + nextLevel * 1 + "%";
}


