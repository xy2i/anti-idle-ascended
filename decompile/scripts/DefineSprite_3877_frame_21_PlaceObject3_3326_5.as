//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>Leave the Pyramid</b>\nYou can only leave the Pyramid before the first monster spawns. Otherwise, re-enter the Battle Arena.\n<b>WARNING:</b> YOU WILL NOT GET YOUR KEY BACK.";
}


on(release){
   _root.house.arena.travel(destination);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   destination = 8;
}


