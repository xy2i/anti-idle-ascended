//! status=pending
on(dragOver,rollOver){
   checkFrame();
   if(unlocked == true)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>The Fourth Superpower</font></b>\n\nYou begin the match with a Dream Book, which costs no energy to play.\n\nCost per match:\n<b>" + _root.withComma(cost) + "</b> FCG Cash";
   }
   else
   {
      _root.actiondescription = "<font color=\'#999999\'>Reach FCG Level 40 to unlock!</font>";
   }
}


on(release){
   if(unlocked == true)
   {
      _root.save.fcgPower[4] = !_root.save.fcgPower[4];
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
      if(_root.save.fcgLevel >= 40)
      {
         unlocked = true;
         if(_root.save.fcgPower[4] == true)
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


