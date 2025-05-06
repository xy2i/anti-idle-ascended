//! status=pending
on(dragOver,rollOver){
   cLevel = _root.save.careerLevel[10];
   _root.actiondescription = "<b>Adventurer</b>\nLevel: <b>" + cLevel + "</b>";
   if(cLevel >= 0)
   {
      _root.actiondescription += "\n\n<b>When activated:</b>";
      _root.actiondescription += "\nWait time for Adventure Energy -" + cLevel * 1 + " sec.";
   }
   if(cLevel >= 100)
   {
      _root.actiondescription += "\n\n<b>Level 100 Bonus:</b>\n";
      _root.actiondescription += "You can upgrade Max Adventure Energy 2 more times";
   }
   if(cLevel >= 200)
   {
      _root.actiondescription += "\n\n<b>Level 200 Bonus:</b>\n";
      _root.actiondescription += "You can upgrade Max Adventure Energy 3 more times";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


