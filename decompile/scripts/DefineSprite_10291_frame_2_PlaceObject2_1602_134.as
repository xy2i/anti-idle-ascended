//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Enable Cheats</font></b>\nHold Ctrl and D at the same time while clicking this button to enable cheats. Once cheats are enabled, they can no longer be disabled. Be sure to backup your savefile first.";
}


on(release){
   if(Key.isDown(17) && Key.isDown(68) && _root.saveid <= 3 && _root.save.cheatEnabled == false)
   {
      _root.save.cheatEnabled = true;
      _root.gotoAndStop(11);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   if(_root.saveid > 3 || _root.save.cheatEnabled == true)
   {
      _alpha = 30;
   }
}


