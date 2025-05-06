//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Achievements</font></b>\nComplete achievements to make the Progress Bar give more EXP and Coins. They also give you bragging rights.";
}


on(release){
   if(_root.save.newbieProgress == 14)
   {
      _root.save.newbieProgress = 15;
   }
   if(_root.optionsScreen._currentframe != 6)
   {
      _root.save.viewAchievement += 1;
      _root.optionsScreen.gotoAndStop(6);
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


