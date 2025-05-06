//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Crown Hat</b></font>\n\nBuy this hat in the Mystery Shop.\n<font color=\'#99FFFF\'>\nAll Abilities: <b>+5</b></font>";
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
   hatID = 10;
   if(_root.save.stadiumH2 == true)
   {
      gotoAndStop(hatID + 1);
   }
   else
   {
      gotoAndStop(1);
   }
}


