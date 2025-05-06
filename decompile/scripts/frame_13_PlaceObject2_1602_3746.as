//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Options</font></b>\nA bunch of confusing options to customize your gameplay.";
}


on(release){
   if(_root.optionsScreen._currentframe != 2)
   {
      _root.save.viewOption += 1;
      _root.optionsScreen.gotoAndStop(2);
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


