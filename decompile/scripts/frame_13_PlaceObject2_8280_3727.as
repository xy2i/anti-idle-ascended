//! status=pending
on(dragOver,rollOver){
   if(_root.save.dailyPending == true)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Daily Bonus</b></font>\nYou have unclaimed Daily Bonus.\nPlease click here to claim it before the day ends.";
   }
   else if(_root.save.curDateID != _root.clock_date)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Attendance Check!</b></font>\nYou have unclaimed Attendance Check bonus.\nClose and reopen the game to claim it before the day ends.";
   }
}


on(release){
   if(_root.save.dailyPending == true)
   {
      _root.welcomeBack.gotoAndStop(2);
      _root.save.dailyPending = false;
      if(_root.save.curDateID != _root.clock_date && _root.saveid <= 4)
      {
         gotoAndStop(3);
      }
      else
      {
         gotoAndStop(1);
      }
   }
   _root.actiondescription = "";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.dailyPending == true)
   {
      gotoAndStop(2);
   }
   else if(_root.save.curDateID != _root.clock_date && _root.saveid <= 4 && _root.save.bestLevel >= 100)
   {
      gotoAndStop(3);
   }
   else
   {
      gotoAndStop(1);
   }
}


onClipEvent(load){
   if(_root.save.dailyPending == true)
   {
      gotoAndStop(2);
   }
   else if(_root.save.curDateID != _root.clock_date && _root.saveid <= 4 && _root.save.bestLevel >= 100)
   {
      gotoAndStop(3);
   }
   else
   {
      gotoAndStop(1);
   }
}


