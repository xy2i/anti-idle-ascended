//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<font color=\'#FFFF00\'><b>Breaking News Config</b></font>\nConfigure what kind of messages you want to see in the Breaking News, in which tabs, and change the colors of messages. These settings apply to all of your savefiles.";
}


on(release){
   _root.actiondescription = "";
   _root.optionsScreen.gotoAndStop(25);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


