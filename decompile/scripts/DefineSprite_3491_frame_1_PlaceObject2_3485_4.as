//! status=pending
on(dragOver,rollOver){
   _alpha = 0;
   _root.actiondescription = "<b>Year 2012</b>\nIt\'s when the apocalypse occurred and destroyed Earth! Luckily, this isn\'t Earth...";
}


on(release){
   _root.house.arena.travel(19);
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


