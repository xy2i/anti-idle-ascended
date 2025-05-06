//! status=pending
on(dragOver,rollOver){
   _alpha = 0;
   _root.actiondescription = "<b>Year 9001</b>\nAliens have invaded! Where do they come from anyway, and why are they so poorly designed and look like they were made in Paint in 5 seconds? Oh wait, that doesn\'t matter, you have to kill the aliens and save the planet of Anti-Idle!";
}


on(release){
   _root.house.arena.travel(22);
}


on(rollOut,dragOut){
   _alpha = 120;
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_alpha < 50)
   {
      _alpha = _alpha + 5;
   }
}


onClipEvent(load){
   _alpha = 120;
}


