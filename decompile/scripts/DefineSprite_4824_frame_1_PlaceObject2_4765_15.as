//! status=pending
on(dragOver,rollOver){
   _root.actiondescription += "<b><font color=\'#FFFF00\'>Battle Points</font></b>";
   _root.actiondescription += "\n\nBattle Points come from ranking up\n and filling the EXP bar at rank 500, as well as the Special Training Zone!";
   _root.actiondescription += "\n\nEvery 1,000 unlocks a new skillbook\n\nEvery 10,000 unlocks a skill point drop, on top of the 150 base drops";
   _root.actiondescription += "\n\nCurrent Skill Point drops: <b><font color=\'#FFFF00\'>" + _root.save.arenaUltimateSP + "</font></b>";
   _root.actiondescription += "\nMaximum Skill Point drops: <b><font color=\'#FFFF00\'>" + (150 + Math.floor(Math.min(_root.save.battlePoint,1000000) / 10000)) + "</font></b>";
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   del += 1;
   if(del == 2)
   {
      del = 0;
      reloadBP();
   }
}


onClipEvent(load){
   function reloadBP()
   {
      if(_root.save.battlePoint < 500 && _currentframe != 2)
      {
         gotoAndStop(2);
      }
      else if(_root.save.battlePoint >= 500 && _currentframe != 1)
      {
         gotoAndStop(1);
      }
      if(_root.save.battlePoint >= 500)
      {
         htmlText = "<font color=\'#7FFF00\'>" + _root.withComma(_root.save.battlePoint) + "</font>";
         if(_root.save.battlePoint > 999999999)
         {
            htmlText = "<font color=\'#7FFF00\'>999,999,999</font>";
         }
         if(_root.save.battlePoint < 10)
         {
            htmlText = "<font color=\'#236400\'>000,000,00</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 100)
         {
            htmlText = "<font color=\'#236400\'>000,000,0</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 1000)
         {
            htmlText = "<font color=\'#236400\'>000,000,</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 10000)
         {
            htmlText = "<font color=\'#236400\'>000,00</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 100000)
         {
            htmlText = "<font color=\'#236400\'>000,0</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 1000000)
         {
            htmlText = "<font color=\'#236400\'>000,</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 10000000)
         {
            htmlText = "<font color=\'#236400\'>00</font>" + htmlText;
         }
         else if(_root.save.battlePoint < 100000000)
         {
            htmlText = "<font color=\'#236400\'>0</font>" + htmlText;
         }
         bpText.htmlText = htmlText;
      }
   }
   reloadBP();
   del = 0;
}


