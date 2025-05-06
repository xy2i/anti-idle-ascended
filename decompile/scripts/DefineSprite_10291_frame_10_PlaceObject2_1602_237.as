//! status=pending
on(dragOver,rollOver){
   cLevel = _root.save.careerLevel[11];
   _root.actiondescription = "<b>Pet Trainer</b>\nLevel: <b>" + cLevel + "</b>";
   if(cLevel >= 0)
   {
      _root.actiondescription += "\n\n<b>When activated:</b>";
      _root.actiondescription += "\n" + cLevel * 0.2 + "% chance to get 2x Pet Mana when feeding pet\nWhen your pet is not sleeping, " + cLevel * 0.5 + "% chance to get +5 extra Pet Mana every 5 minutes";
   }
   if(cLevel >= 100)
   {
      _root.actiondescription += "\n\n<b>Level 100 Bonus:</b>\n";
      _root.actiondescription += "When you are not playing, Pet Health and Pet Fullness drops 50% more slowly.\nWhen Pet Fullness is 0, 50% chance to lose no Pet Health";
   }
   if(cLevel >= 200)
   {
      _root.actiondescription += "\n\n<b>Level 200 Bonus:</b>\n";
      _root.actiondescription += "30% chance to consume no Pet Mana when using Mad Skillz.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


