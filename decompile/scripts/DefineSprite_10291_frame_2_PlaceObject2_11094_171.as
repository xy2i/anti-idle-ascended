//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "When this option is enabled, you can select at which feature you want your game to start next time you open it up.";
   _root.actiondescription += "\n\n<b>NUMBERS, MASON:</b>\n1 - World Map\n2 - Garden\n3 - Battle Arena\n4 - Button\n5 - Printer";
   _root.actiondescription += "\n6 - Arcade\n7 - Stadium\n8 - TukkunFCG\n9 - LolMarket\n10 - Awesome Adventures";
   _root.actiondescription += "\n11 - Mystery Box\n12 - Cards\n13 - Dragon of Wisdom (lol)";
   _root.actiondescription += "\n14 - Fishing\n15 - Typing\n16 - Business";
}


on(release){
   if(_root.save.screenSelect == true)
   {
      _root.save.screenSelect = false;
   }
   else
   {
      _root.save.screenSelect = true;
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.screenSelect == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


onClipEvent(load){
   if(_root.saveid > 21)
   {
      _visible = false;
   }
   else
   {
      _visible = true;
   }
   if(_root.save.screenSelect == undefined)
   {
      _root.save.screenSelect = false;
   }
}


