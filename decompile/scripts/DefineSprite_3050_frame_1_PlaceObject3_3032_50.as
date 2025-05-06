//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Your House";
}


on(release){
   _root.showPopup("House","What are you talking about? You are in your house!");
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


