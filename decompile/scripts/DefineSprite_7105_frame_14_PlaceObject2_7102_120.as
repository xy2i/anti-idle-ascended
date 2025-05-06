//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Gold Headband</b></font>\n\nUnlocked by saving up 1,000,000 Stadium Tokens.\n<font color=\'#99FFFF\'>\nReward: <b>+25</b></font>";
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
   hatID = 7;
   if(_root.save.stadiumTokenMax >= 1000000)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}


