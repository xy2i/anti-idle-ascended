//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Join the Discussion!</font></b>\nDid you know that Anti-Idle: The Game has a whole FORUM on Kongregate? Click this button to visit it now! (Opens in a new tab)\n\nEveryone can view the forums, but a Kongregate account is required to post.";
}


on(release){
   getUrl("http://www.kongregate.com/forums/60", "_blank");
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


