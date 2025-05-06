//! status=pending
on(dragOver,rollOver){
   _root.actiondescription += "The DEF in the Bestiary popup will be displayed as the portion of Skill Power blocked by the monster\'s Defense.";
   _root.actiondescription += "\n\nFor example, an attack with 400% Skill Power and a DEF of 200% means the monster\'s Defense is blocking half of the attack\'s damage.";
   _root.actiondescription += "\n\nThe ACC and EVA will be displayed as effective chance of being hit and missing an attack.";
   _root.actiondescription += "\n\nFor example, a monster with 20% ACC and 40% EVA means it will hit you 20% of the time, and you will miss it 40% of the time. ";
}


on(release){
   if(_root.save.arenaDisplayPercentage != true)
   {
      _root.save.arenaDisplayPercentage = true;
   }
   else
   {
      _root.save.arenaDisplayPercentage = false;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.arenaDisplayPercentage == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


