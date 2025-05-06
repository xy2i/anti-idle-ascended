//! status=pending
on(dragOver,rollOver){
   cLevel = _root.save.careerLevel[1];
   _root.actiondescription = "<b>Idler</b>\nLevel: <b>" + cLevel + "</b>";
   if(cLevel >= 0)
   {
      _root.actiondescription += "\n\n<b>When activated:</b>";
      _root.actiondescription += "\nIdle Mode Speed +" + cLevel * 0.6 + "%";
   }
   if(cLevel >= 100)
   {
      _root.actiondescription += "\n\n<b>Level 100 Bonus:</b>\n";
      _root.actiondescription += "Idle Mode Speed +30%";
   }
   if(cLevel >= 200)
   {
      _root.actiondescription += "\n\n<b>Level 200 Bonus:</b>\n";
      _root.actiondescription += "When idling for 30 seconds or more, gain 3% more EXP and Coins from all sources";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


