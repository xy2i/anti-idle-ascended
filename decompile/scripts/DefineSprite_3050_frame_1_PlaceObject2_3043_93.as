//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Secret Area";
}


on(release){
   _root.house.gotoAndStop(19);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


