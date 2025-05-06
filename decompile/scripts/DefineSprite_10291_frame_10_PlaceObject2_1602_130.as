//! status=pending
on(dragOver,rollOver){
   cLevel = _root.save.careerLevel[6];
   _root.actiondescription = "<b>Arcade Player</b>\nLevel: <b>" + cLevel + "</b>";
   if(cLevel >= 0)
   {
      _root.actiondescription += "\n\n<b>When activated:</b>";
      _root.actiondescription += "\nEXP/Coin gain in Arcade +" + cLevel * 0.5 + "%\nArcade 100k Medal gain +" + cLevel * 2 + "%\nGreen Coin gain in Arcade +" + cLevel * 1 + "%";
   }
   if(cLevel >= 100)
   {
      _root.actiondescription += "\n\n<b>Level 100 Bonus:</b>\n";
      _root.actiondescription += "You gain up to 50 free Arcade Tokens every day instead of 25\nEach 1.00 Rating increases rewards on Ranked Mode by 12% instead of 10%";
   }
   if(cLevel >= 200)
   {
      _root.actiondescription += "\n\n<b>Level 200 Bonus:</b>\n";
      _root.actiondescription += "Each 1.00 Rating increases rewards on Unranked Mode by 6% instead of 5%";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


