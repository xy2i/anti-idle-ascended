//! status=pending
on(dragOver,rollOver){
   if(_parent.specType == 9)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Tukkonium</b></font>\nThe rarest material in the world. It can turn the impossible into the possible.";
   }
   else if(_parent.specType == 6)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Enhancer Fragment</b></font>\nA piece of a broken enhancer. Good thing some of them are still usable, and can be used to craft working enhancers. Monsters drop these - stronger monsters drop more!";
   }
   else if(_parent.specType == 5)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Unobtainium</b></font>\nContrary to popular belief, it\'s not blue. Monsters carry it for odd reasons. Required to craft extremely powerful items.";
   }
   else if(_parent.specType == 3)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Proof of Mission</b></font>\nIt looks like you can obtain this from missions, like Mission Kommander\'s Mission, Defend Mission and Prehistoric Mission. You have no idea why this is required for crafting, but oh well.";
   }
   else if(_parent.specType == 2)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Proof of Training</b></font>\nA proof... I mean, yellow square that shows you have been training hard. It can be obtained by defeating monsters in The Special Arena and completing the Tower of DOOOOOOM.";
   }
   else if(_parent.specType == 1)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Superior Crafting Material</b></font>\nA very rare and valuable type of Crafting Material. Only a few monsters drop it. Needed to craft powerful items.";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   gotoAndStop(_parent.specType);
}


