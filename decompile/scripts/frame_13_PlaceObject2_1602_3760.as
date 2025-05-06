//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Careers</font></b>\nGain additional bonuses for doing stuff you usually do!\n\nRequired Level: 700";
}


on(release){
   if(_root.saveid == 24)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else if(_root.save.bestLevel >= 700)
   {
      if(_root.optionsScreen._currentframe != 10)
      {
         _root.optionsScreen.gotoAndStop(10);
      }
      else
      {
         _root.optionsScreen.gotoAndStop(1);
      }
   }
   else
   {
      _root.showPopup("Level 700 Required","You have to be at least Lv. 700. Keep playing!");
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.bestLevel < 700)
   {
      xAlpha = 30;
   }
   else
   {
      xAlpha = 100;
   }
   if(_alpha != xAlpha)
   {
      _alpha = xAlpha;
   }
}


