//! status=pending
on(dragOver,rollOver){
   cLevel = _root.save.careerLevel[5];
   _root.actiondescription = "<b>Button Basher</b>\nLevel: <b>" + cLevel + "</b>";
   if(cLevel >= 0)
   {
      _root.actiondescription += "\n\n<b>When activated:</b>";
      _root.actiondescription += "\nEXP/Coin gain in Button Machine +" + cLevel * 0.5 + "%";
   }
   if(cLevel >= 100)
   {
      _root.actiondescription += "\n\n<b>Level 100 Bonus:</b>\n";
      _root.actiondescription += "Each PERFECT click gives 1 Insta-Progress";
   }
   if(cLevel >= 200)
   {
      _root.actiondescription += "\n\n<b>Level 200 Bonus:</b>\n";
      _root.actiondescription += "Each EXCELLENT click fills 30% of the Progress Bar";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


