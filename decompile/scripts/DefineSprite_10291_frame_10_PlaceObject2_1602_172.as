//! status=pending
on(dragOver,rollOver){
   cLevel = _root.save.careerLevel[8];
   _root.actiondescription = "<b>Card Player</b>\nLevel: <b>" + cLevel + "</b>";
   if(cLevel >= 0)
   {
      _root.actiondescription += "\n\n<b>When activated:</b>";
      _root.actiondescription += "\nA: TG EXP gain in TukkunFCG +" + cLevel * 0.5 + "%\nBlue Coin gain in TukkunFCG +" + cLevel * 1 + "%";
   }
   if(cLevel >= 100)
   {
      _root.actiondescription += "\n\n<b>Level 100 Bonus:</b>\n";
      _root.actiondescription += "FCG Cash gain +50%";
   }
   if(cLevel >= 200)
   {
      _root.actiondescription += "\n\n<b>Level 200 Bonus:</b>\n";
      _root.actiondescription += "Superpowers cost 30% less";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


