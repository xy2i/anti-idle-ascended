//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Back to Menu</font></b>\nGo back to the main menu.";
}


on(release){
   _root.gotoAndStop(11);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


