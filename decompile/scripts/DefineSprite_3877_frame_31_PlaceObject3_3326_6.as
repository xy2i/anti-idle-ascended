//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>Prehistoric Mission</b>\nAliens have invaded the past! Defeat them!";
   roll = 1;
}


on(release){
   _parent._parent.kommanderDialog.gotoAndStop(18);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
   roll = 0;
}


onClipEvent(load){
   destination = 31;
}


