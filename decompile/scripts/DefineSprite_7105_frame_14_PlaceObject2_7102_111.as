//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Sword Hat</b></font>\n\nUnlocked by winning Death Match 50 times or getting a high score of 1,000 PWNts.\n<font color=\'#99FFFF\'>\nEnergy: <b>+15</b>\nReward: <b>+20</b></font>";
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
   hatID = 4;
   if(_root.save.stadiumDeathMatch >= 50 || _root.save.stadiumBestDeathMatch >= 1000)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}


