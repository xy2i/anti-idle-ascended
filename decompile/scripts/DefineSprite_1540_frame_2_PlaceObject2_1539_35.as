//! status=pending
on(dragOver,rollOver){
   checkFrame();
   if(unlocked == true)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>EXP Boost</font></b>\n\nYou gain 2x A: TG EXP if you win.\n\nCost per match:\n<b>" + _root.withComma(cost) + "</b> FCG Cash";
   }
   else
   {
      _root.actiondescription = "<font color=\'#999999\'>Reach FCG Level 1 to unlock!</font>";
   }
}


on(release){
   if(unlocked == true)
   {
      _root.save.fcgPower[7] = !_root.save.fcgPower[7];
      checkFrame();
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   function checkFrame()
   {
      cost = 5000;
      if(_root.save.careerLevel[8] >= 200)
      {
         cost = 3500;
      }
      if(_root.save.fcgLevel >= 1)
      {
         unlocked = true;
         if(_root.save.fcgPower[7] == true)
         {
            gotoAndStop(4);
         }
         else
         {
            gotoAndStop(3);
         }
      }
      else
      {
         unlocked = false;
         gotoAndStop(2);
      }
   }
   checkFrame();
}


