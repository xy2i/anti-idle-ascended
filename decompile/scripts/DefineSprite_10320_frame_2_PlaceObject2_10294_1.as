//! status=pending
on(release){
   if(_parent.dayMissed != -1)
   {
      _parent.gotoAndStop(3);
   }
   else
   {
      _root.showPopup("Reminder","Your game progress is stored in your computer, not your Kongregate account. Don\'t forget to backup your savefile frequently!\nFor help, see the [Backup Help] in the main menu.");
      _parent.gotoAndStop(4);
   }
}


