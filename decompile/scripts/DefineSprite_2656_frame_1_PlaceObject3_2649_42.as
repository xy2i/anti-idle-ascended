//! status=pending
on(dragOver,rollOver){
   if(_root.saveid >= 20)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Challenge Mode</font></b>\nYou\'re currently on Challenge Mode.";
   }
   else if(_root.saveid >= 10)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Speedrun</font></b>\nYou\'re currently on Speedrun Mode. Reach level 9001 as fast as possible!";
   }
   else
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Ascension</font></b>\nThe number of times you have ascended so far.\n\nClick here to open Ascension menu.";
   }
}


on(release){
   _root.optionsScreen.gotoAndStop(11);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


