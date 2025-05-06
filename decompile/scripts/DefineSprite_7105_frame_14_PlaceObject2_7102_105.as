//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Green Headband</b></font>\n\nUnlocked by winning Simple Race 500 times (or 25 times on Impossible difficulty).\n<font color=\'#99FFFF\'>\nAccel: <b>+5</b>\nMax Speed: <b>+5</b>\nReward: <b>+15</b></font>";
}


on(release){
   if(_currentframe != 1)
   {
      _root.save.stadiumHat = hatID;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   hatID = 2;
   if(_root.save.stadiumRace >= 500 || _root.save.stadiumImpossibleRace >= 25)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}


