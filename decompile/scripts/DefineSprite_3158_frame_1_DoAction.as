//! status=pending
function checkMastery()
{
   masteryLevel = Math.floor(_root.save.gardenMastery[treeToPlant].toString().length - 1);
   if(masteryLevel < 0 || isNaN(masteryLevel))
   {
      masteryLevel = 0;
   }
   harvestValueActual = Math.round(harvestValue * (5 + masteryLevel) / 5);
   gardenExpActual = Math.floor(gardenExp * (5 + masteryLevel) / 5);
   if(_root.save.careerLevel[2] >= 100)
   {
      gardenExpActual = Math.floor(gardenExpActual * 1.2);
   }
}
if(modified != true)
{
   modified = true;
   multiplier = Math.floor(Math.pow(_root.save.level,0.6)) / 10 + 6.5;
   harvestValue = Math.round(harvestValue * multiplier);
   coinCost = Math.round(coinCost * multiplier);
   harvestTime = Math.round(harvestTime * (1 - Math.min(Math.floor(_root.save.totalStupidity / 10),30) * 0.01));
   i = 1;
   while(i <= _root.todayEvent)
   {
      yy = _root.clock_year % 10;
      mm = _root.clock_month;
      dd = _root.clock_date;
      if(_root.eventList[yy][mm][dd][i] == "Wait time to harvest trees in Garden is reduced by 25%")
      {
         harvestTime = Math.round(harvestTime * 0.75);
      }
      i++;
   }
   if(_root.save.permaBanPenalty[33] == 3)
   {
      expiryTime = Math.round(expiryTime * 1.5);
      harvestValue = Math.round(harvestValue * 1.5);
   }
   else if(_root.save.permaBanPenalty[33] == 2)
   {
      expiryTime = Math.round(expiryTime * 1.3);
      harvestValue = Math.round(harvestValue * 1.3);
   }
   else if(_root.save.permaBanPenalty[33] == 1)
   {
      expiryTime = Math.round(expiryTime * 1.2);
      harvestValue = Math.round(harvestValue * 1.2);
   }
}
checkMastery();
onRollOver = function()
{
   checkMastery();
   _root.actiondescription = "<font color=\"#FFFF00\"><b>" + treeName + "</b></font>";
   _root.actiondescription += "\nHarvest Time: <font color=\"#CCFF00\">" + _root.convertSecFull(harvestTime) + "</font>";
   _root.actiondescription += "\nExpiration Time: <font color=\"#CCFF00\">" + _root.convertSecFull(expiryTime) + "</font>";
   _root.actiondescription += "\nHarvest Value: <font color=\"#FFFF00\">" + _root.withComma(harvestValueActual) + "</font> Coins\nGarden EXP: <font color=\"#CCFFFF\">+" + _root.withComma(gardenExpActual) + "</font>\nMax Harvests: <font color=\"#CCFF00\">" + _root.withComma(Math.floor((expiryTime - 1) / harvestTime)) + "</font>";
   _root.actiondescription += "\n---------\nHarvest Count: <b>" + _root.withComma(_root.save.gardenMastery[treeToPlant]) + "</b>";
   if(masteryLevel > 0)
   {
      _root.actiondescription += "\n\n<font color=\'#CCFF00\'>[Mastery Level <b>" + masteryLevel + "</b>]\nBonus <b>" + _root.withComma(masteryLevel * 20) + "%</b> to Harvest Value and Garden EXP gain\nNext level at " + _root.withComma(Math.pow(10,masteryLevel + 1)) + " harvests</font>";
   }
   _root.actiondescription += "\n---------\nCost to plant:";
   if(coinCost == 0 && greenCoinCost == 0 && blueCoinCost == 0)
   {
      _root.actiondescription += "\n<font color=\"#FFFF00\">FREE!!!</font>";
   }
   if(coinCost > 0)
   {
      _root.actiondescription += "\n<font color=\"#FFFF00\">" + _root.withComma(coinCost) + "</font> Coins";
   }
   if(greenCoinCost > 0)
   {
      _root.actiondescription += "\n<font color=\"#00FF00\">" + _root.withComma(greenCoinCost) + "</font> Green Coins";
   }
   if(blueCoinCost > 0)
   {
      _root.actiondescription += "\n<font color=\"#0099FF\">" + _root.withComma(blueCoinCost) + "</font> Blue Coins";
   }
   if(gardenPointCost > 0)
   {
      _root.actiondescription += "\n[Note: You can hold Spacebar while selecting this seed to plant trees with <font color=\"#FF9900\">" + _root.withComma(gardenPointCost) + "</font> Garden Points per tree instead.]";
   }
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOut = function()
{
   _root.actiondescription = "";
};
onRelease = function()
{
   _root.treeName = treeName;
   _root.treeToPlant = treeToPlant;
   _root.tree_coinCost = coinCost;
   _root.tree_greenCoinCost = greenCoinCost;
   _root.tree_blueCoinCost = blueCoinCost;
   _root.tree_gardenPointCost = 0;
   if(Key.isDown(32) && gardenPointCost > 0)
   {
      _root.tree_coinCost = 0;
      _root.tree_greenCoinCost = 0;
      _root.tree_blueCoinCost = 0;
      _root.tree_gardenPointCost = gardenPointCost;
   }
   _root.tree_harvestValue = Math.round(harvestValueActual / multiplier);
   _root.tree_harvestTime = harvestTime;
   _root.tree_expiryTime = expiryTime;
   _root.tree_exp = gardenExpActual;
   _parent.treeNameText.text = treeName;
   _parent.treeValueText.text = _root.withComma(harvestValueActual);
   _parent.treeHarvestText.text = _root.convertSecFull(harvestTime);
   _parent.treeExpiryText.text = _root.convertSecFull(expiryTime);
   _parent.treeExpText.text = "+" + _root.withComma(gardenExpActual);
   _parent.treeCost1Text.text = _root.withComma(_root.tree_coinCost);
   _parent.treeCost2Text.text = _root.withComma(_root.tree_greenCoinCost);
   _parent.treeCost3Text.text = _root.withComma(_root.tree_blueCoinCost);
   _parent.treeCost4Text.text = _root.withComma(_root.tree_gardenPointCost);
};
