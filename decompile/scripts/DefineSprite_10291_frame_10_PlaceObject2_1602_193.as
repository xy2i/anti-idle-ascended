//! status=pending
on(dragOver,rollOver){
   cLevel = _root.save.careerLevel[9];
   _root.actiondescription = "<b>Gem Trader</b>\nLevel: <b>" + cLevel + "</b>";
   if(cLevel >= 0)
   {
      _root.actiondescription += "\n\n<b>When activated:</b>";
      _root.actiondescription += "\nEXP gain in LolMarket +" + cLevel * 0.5 + "%\nGain Coins when selling gems with profit, equal to " + cLevel * 4 + "x of profit.";
   }
   if(cLevel >= 100)
   {
      _root.actiondescription += "\n\n<b>Level 100 Bonus:</b>\n";
      _root.actiondescription += "Every time the LolMarket updates, chance to slightly change gem demand based on your needs";
   }
   if(cLevel >= 200)
   {
      _root.actiondescription += "\n\n<b>Level 200 Bonus:</b>\n";
      _root.actiondescription += "Manual demand control is more effective and has more favorable effects";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


