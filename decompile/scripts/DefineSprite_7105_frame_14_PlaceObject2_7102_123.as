//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Bunny Hat</b></font>\n\nUnlocked by losing a race.\n<font color=\'#99FFFF\'>\nMax Speed: <b>+5</b>\nJump: <b>+10</b></font>";
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
   hatID = 8;
   if(_root.save.stadiumBunnyHat == true)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}


