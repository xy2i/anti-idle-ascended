//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Pet</font></b>\nRaise your very own pet, which gives you awesome bonuses!\n\nRequired Level: 900";
}


on(release){
   if(_root.saveid == 24)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else if(_root.save.bestLevel >= 900)
   {
      if(_root.optionsScreen._currentframe != 14 && _root.optionsScreen._currentframe != 15)
      {
         _root.optionsScreen.gotoAndStop(14);
      }
      else
      {
         _root.optionsScreen.gotoAndStop(1);
      }
   }
   else
   {
      _root.showPopup("Level 900 Required","You have to be at least Lv. 900. Keep playing!");
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.bestLevel < 900)
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


