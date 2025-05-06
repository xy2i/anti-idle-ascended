//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "";
}


on(release){
   _parent.cyborgPrompt.gotoAndStop(4);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


