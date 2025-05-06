//! status=pending
on(release){
   _root.save.fcgPlay = 0;
   _root.save.fcgWin = 0;
   _root.save.fcgLose = 0;
   _root.save.fcgStreak = 0;
   _root.save.fcgLevel = 1;
   _root.save.fcgExp = 0;
   _root.save.fcgExpTotal = 0;
   _parent.gotoAndStop(2);
}


