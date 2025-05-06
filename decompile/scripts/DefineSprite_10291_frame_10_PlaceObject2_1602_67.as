//! status=pending
on(dragOver,rollOver){
   cLevel = _root.save.careerLevel[3];
   _root.actiondescription = "<b>Fighter</b>\nLevel: <b>" + cLevel + "</b>";
   if(cLevel >= 0)
   {
      _root.actiondescription += "\n\n<b>When activated:</b>";
      _root.actiondescription += "\nAttack, Defense, MaxHP, MaxMP, Accuracy, Evasion +" + cLevel * 0.1 + "%";
   }
   if(cLevel >= 100)
   {
      _root.actiondescription += "\n\n<b>Level 100 Bonus:</b>\n";
      _root.actiondescription += "EXP, Coin and Pixel stats in Battle Arena +10%";
   }
   if(cLevel >= 200)
   {
      _root.actiondescription += "\n\n<b>Level 200 Bonus:</b>\n";
      _root.actiondescription += "All Elements +30%";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


