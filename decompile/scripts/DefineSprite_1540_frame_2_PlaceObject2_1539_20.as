//! status=pending
on(dragOver,rollOver){
   checkFrame();
   if(unlocked == true)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>The Second Superpower</font></b>\n\nYou begin the match with 20 additional HP.\n\nCost per match:\n<b>" + _root.withComma(cost) + "</b> FCG Cash";
   }
   else
   {
      _root.actiondescription = "<font color=\'#999999\'>Reach FCG Level 20 to unlock!</font>";
   }
}


on(release){
   if(unlocked == true)
   {
      _root.save.fcgPower[2] = !_root.save.fcgPower[2];
      checkFrame();
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   function checkFrame()
   {
      cost = 1500;
      if(_root.save.careerLevel[8] >= 200)
      {
         cost = 1050;
      }
      if(_root.save.fcgLevel >= 20)
      {
         unlocked = true;
         if(_root.save.fcgPower[2] == true)
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


