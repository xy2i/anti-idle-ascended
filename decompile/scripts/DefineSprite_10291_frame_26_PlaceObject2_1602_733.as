//! status=pending
on(dragOver,rollOver){
   if(upgradeLevel < 10)
   {
      _root.actiondescription = "Upgrade cost:\n<b>" + _root.withComma(finalCost) + "</b> White Coins";
   }
}


on(release){
   if(_root.save.whiteCoin >= finalCost)
   {
      _root.save.whiteCoin -= finalCost;
      _root.save.restEfficiency[upgradeID] += 1;
      _root.totalRestEfficiency += 1;
      checkCost();
      if(upgradeLevel < 10)
      {
         _root.actiondescription = "Upgrade cost:\n<b>" + _root.withComma(finalCost) + "</b> White Coins";
      }
      else
      {
         _root.actiondescription = "";
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(load){
   function checkCost()
   {
      upgradeLevel = _root.save.restEfficiency[upgradeID];
      finalCost = baseCost * (upgradeLevel + 1) * (upgradeLevel + 1);
      if(upgradeLevel >= 10)
      {
         finalCost = Infinity;
      }
   }
   upgradeID = 9;
   baseCost = 100;
   checkCost();
}


