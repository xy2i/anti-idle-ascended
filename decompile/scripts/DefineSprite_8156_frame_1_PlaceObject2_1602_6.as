//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Quest</font></b>\nFinish quests and get awesome rewards, including Quest Tokens!\n\n";
   _root.actiondescription += "Hold down Shift and U while in the Main Quests menu to claim all available quests!";
}


on(release){
   if(_root.optionsScreen._currentframe != 16 && _root.optionsScreen._currentframe != 17)
   {
      _root.save.viewQuest += 1;
      if(_root.save.questCount >= _root.save.questNeed || _root.questScreenPage == 2)
      {
         _root.optionsScreen.gotoAndStop(17);
      }
      else
      {
         _root.optionsScreen.gotoAndStop(16);
      }
   }
   else
   {
      _root.optionsScreen.gotoAndStop(1);
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


