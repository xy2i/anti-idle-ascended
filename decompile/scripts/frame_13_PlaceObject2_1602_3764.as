//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Stats</font></b>\nView your stats!\n\nHotkey: Control S";
}


on(release){
   if(Key.isDown(16))
   {
      if(_root.save.syncChart == true)
      {
         _root.save.syncChart = false;
      }
      else
      {
         _root.save.syncChart = true;
         _root.save.sauceType = _root.save.graphType;
         _root.save.totalType = _root.save.graphType;
      }
   }
   else if(_root.optionsScreen._currentframe != 5)
   {
      _root.optionsScreen.gotoAndStop(5);
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


