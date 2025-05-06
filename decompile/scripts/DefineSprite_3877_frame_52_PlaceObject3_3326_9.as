//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b>Spooky Crypt</b>\nDefeat monsters until th- YOU die!";
}


on(release){
   if(_root.save.arenaSpookyKey == true)
   {
      _root.house.arena.travel(destination,travelPrice);
   }
   else
   {
      _root.showPopup("Access Denied","You don\'t have a Spooky Crypt Key.");
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   destination = 52;
}


