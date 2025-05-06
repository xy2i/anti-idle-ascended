//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Go back to Ye Olde Pub";
}


on(release){
   _root.house.arena.travel(destination);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   destination = 0;
}


