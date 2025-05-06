//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>REST</font></b>\nYou can REST by giving your computer some rest and turn the game off. When you are RESTED, you will gain bonuses.\n\n<font color=\'#FFFF00\'>Click here for more details and to upgrade REST efficiency.</font>";
}


on(release){
   if(_root.optionsScreen._currentframe != 26)
   {
      _root.optionsScreen.gotoAndStop(26);
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.restTime > 0)
   {
      gotoAndStop(2);
      timeText.text = _root.convertSecFull(_root.save.restTime);
   }
   else
   {
      gotoAndStop(1);
   }
}


