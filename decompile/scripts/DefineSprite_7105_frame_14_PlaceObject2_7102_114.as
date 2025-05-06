//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Ace Hat</b></font>\n\nYou can probably guess how to get this hat.\n<font color=\'#99FFFF\'>\nJump: <b>+10</b>\nReward: <b>+20</b></font>";
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
   hatID = 5;
   if(_root.save.aceFinish > 0)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}


