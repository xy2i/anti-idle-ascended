//! status=pending
on(dragOver,rollOver){
   _alpha = 0;
   _root.actiondescription = "<b>Year -Infinity</b>\nAliens have abused time traveling technology to invade the past! Wait, how does that work?";
}


on(release){
   _root.house.arena.travel(30);
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


