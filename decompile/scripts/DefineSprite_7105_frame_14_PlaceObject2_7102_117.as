//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Ninja Hat</b></font>\n\nUnlocked by winning 50 Bets.\n<font color=\'#99FFFF\'>\nAccel: <b>+15</b>\nMax Speed: <b>+5</b>\nDash: <b>+5</b></font>";
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
   hatID = 6;
   if(_root.save.stadiumBetCorrect >= 50)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}


