//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>Escape the Tower</b>\nYou can only escape the Tower of DOOOOOOM when there aren\'t any monsters.\nOtherwise, enter the menu and leave.";
}


on(release){
   _root.house.arena.travel(destination);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   destination = 44;
}


