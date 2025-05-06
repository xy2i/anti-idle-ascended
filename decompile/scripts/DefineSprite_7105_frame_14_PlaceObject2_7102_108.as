//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Blue Headband</b></font>\n\nUnlocked by winning Item Fight 500 times (or 25 times on Impossible difficulty).\n<font color=\'#99FFFF\'>\nStarting Speed: <b>+5</b>\nDash: <b>+5</b>\nBoost: <b>+5</b>\nReward: <b>+15</b></font>";
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
   hatID = 3;
   if(_root.save.stadiumItem >= 500 || _root.save.stadiumImpossibleItem >= 25)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}


