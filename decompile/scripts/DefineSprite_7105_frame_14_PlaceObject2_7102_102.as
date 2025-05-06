//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>No Hat</b></font>";
}


on(release){
   _root.save.stadiumHat = 1;
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   gotoAndStop(2);
}


