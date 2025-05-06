//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>Quit Mission</b>\nYou keep the EXP gained from defeated monsters during the mission, but you will not gain additional rewards.";
   roll = 1;
}


on(release){
   _root.house.arena.travel(destination);
}


on(rollOut,dragOut){
   _root.actiondescription = "";
   roll = 0;
}


onClipEvent(load){
   destination = 30;
}


