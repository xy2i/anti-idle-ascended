//! status=pending
on(dragOver,rollOver){
   checkDesc();
}


on(release){
   if(_root.save.coin >= cost && _root.save.buttonGrandpaAccuracy < 11)
   {
      _root.save.coin -= cost;
      _root.save.buttonGrandpaAccuracy += 1;
      checkDesc();
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   checkCost();
}


onClipEvent(load){
   function checkCost()
   {
      lev = _root.save.buttonGrandpaAccuracy;
      cost = costArray[lev];
      if(_root.save.coin >= cost)
      {
         _alpha = 100;
      }
      else
      {
         _alpha = 30;
      }
   }
   function checkDesc()
   {
      checkCost();
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Accuracy Upgrade</b></font>\nIncreases the clicking accuracy of all Grandpas.\n\n<font color=\'#FFCCCC\'>[Current Level: " + lev + "]</font>\nGrandpas have a " + lev + "% chance to get PERFECT clicks, and a " + lev * 3 + "% chance to get EXCELLENT clicks.";
      if(lev < 11)
      {
         _root.actiondescription += "\n\n<font color=\'#CCCCFF\'>[Next Level: " + (lev + 1) + "]</font>\nGrandpas have a " + (lev + 1) + "% chance to get PERFECT clicks, and a " + (lev * 3 + 3) + "% chance to get EXCELLENT clicks.";
         _root.actiondescription += "\n\nUpgrade Cost:\n<b>" + _root.withComma(cost) + "</b> Coins";
      }
   }
   cost = 0;
   lev = 0;
   costArray = [0,3000000,15000000,75000000,300000000,1500000000,7500000000,30000000000,150000000000,750000000000,3000000000000,Infinity];
   checkCost();
}


