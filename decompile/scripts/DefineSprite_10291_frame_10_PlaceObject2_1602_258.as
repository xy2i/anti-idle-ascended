//! status=pending
on(dragOver,rollOver){
   cLevel = _root.save.careerLevel[12];
   _root.actiondescription = "<b>Fisher</b>\nLevel: <b>" + cLevel + "</b>";
   if(cLevel >= 0)
   {
      _root.actiondescription += "\n\n<b>When activated:</b>";
      _root.actiondescription += "\nEXP gain in Fishing: +" + cLevel * 0.5 + "%\nFishing Mastery: +" + cLevel * 1 + "%\n" + cLevel * 0.3 + "% chance to gain no Fatigue";
   }
   if(cLevel >= 100)
   {
      _root.actiondescription += "\n\n<b>Level 100 Bonus:</b>\n";
      _root.actiondescription += "Chance of successfully catching when idling +10%";
   }
   if(cLevel >= 200)
   {
      _root.actiondescription += "\n\n<b>Level 200 Bonus:</b>\n";
      _root.actiondescription += "Chance to catch special items is increased";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


