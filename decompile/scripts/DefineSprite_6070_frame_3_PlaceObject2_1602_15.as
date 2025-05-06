//! status=pending
on(dragOver,rollOver){
   checkDesc();
}


on(release){
   if(_root.save.coin >= cost && _root.save.buttonGrandpaSpeed < 11)
   {
      _root.save.coin -= cost;
      _root.save.buttonGrandpaSpeed += 1;
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
      lev = _root.save.buttonGrandpaSpeed;
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
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Speed Upgrade</b></font>\nIncreases the clicking speed of all Grandpas.\n\n<font color=\'#FFCCCC\'>[Current Level: " + lev + "]</font>\nEvery second, each Grandpa has a " + lev + "% chance to press the Button Machine.";
      if(lev < 11)
      {
         _root.actiondescription += "\n\n<font color=\'#CCCCFF\'>[Next Level: " + (lev + 1) + "]</font>\nEvery second, each Grandpa has a " + (lev + 1) + "% chance to press the Button Machine.";
         _root.actiondescription += "\n\nUpgrade Cost:\n<b>" + _root.withComma(cost) + "</b> Coins";
      }
   }
   cost = 0;
   lev = 0;
   costArray = [0,3000000,15000000,75000000,300000000,1500000000,7500000000,30000000000,150000000000,750000000000,3000000000000,Infinity];
   checkCost();
}


