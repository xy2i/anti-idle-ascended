//! status=pending
on(dragOver,rollOver){
   _alpha = 0;
   _root.actiondescription = "<b>Year 2011</b>\nLooks strange and dangerous... Maybe you shouldn\'t enter if there\'s nothing you need to do here.";
}


on(release){
   _root.house.arena.travel(70);
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


