//! status=pending
on(dragOver,rollOver){
   checkDesc();
}


on(release){
   if(_root.save.greenCoin >= cost && _root.save.buttonGrandpaDiscipline < 11)
   {
      _root.save.greenCoin -= cost;
      _root.save.buttonGrandpaDiscipline += 1;
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
      lev = _root.save.buttonGrandpaDiscipline;
      cost = costArray[lev];
      if(_root.save.greenCoin >= cost)
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
      _root.actiondescription = "<font color=\'#FFFF00\'><b>Discipline Upgrade</b></font>\nIncreases the clicking speed and accuracy of Grandpas when you are not viewing the Button Machine screen.\n\n<font color=\'#FFCCCC\'>[Current Level: " + lev + "]</font>\nWhen you are not viewing the Button Machine screen, Grandpas\' click rate and perfect rate are reduced to " + lev * 2 + "% of original rates.";
      if(lev < 11)
      {
         _root.actiondescription += "\n\n<font color=\'#CCCCFF\'>[Next Level: " + (lev + 1) + "]</font>\nWhen you are not viewing the Button Machine screen, Grandpas\' click rate and perfect rate are reduced to " + (lev * 2 + 2) + "% of original rates.";
         _root.actiondescription += "\n\nUpgrade Cost:\n<b>" + _root.withComma(cost) + "</b> Green Coins";
      }
   }
   cost = 0;
   lev = 0;
   costArray = [0,3000,15000,75000,300000,1500000,7500000,30000000,150000000,750000000,3000000000,Infinity];
   checkCost();
}


