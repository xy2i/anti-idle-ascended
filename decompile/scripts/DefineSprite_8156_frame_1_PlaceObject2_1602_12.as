//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Event</font></b>\nCheck which event is going on, what it is about and why it is awesome!";
}


on(release){
   if(_root.optionsScreen._currentframe != 18)
   {
      _root.save.viewEvent += 1;
      _root.optionsScreen.gotoAndStop(18);
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


