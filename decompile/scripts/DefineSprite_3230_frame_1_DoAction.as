//! status=pending
if(_root.save.gardenSeed[ID] > 0)
{
   seedGraphic.gotoAndStop(ID);
}
else
{
   seedGraphic.gotoAndStop(1);
}
if(modified != true)
{
   modified = true;
   multiplier = Math.floor(Math.pow(_root.save.level,0.6)) / 10 + 6.5;
   harvestValue = Math.round(harvestValue * multiplier * 1.2);
   baseHarvestTime = harvestTime;
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
   tempMax = false;
   gardenExp = 200 + Math.floor(_root.save.gardenMastery[ID] / 5);
   if(gardenExp >= 400)
   {
      gardenExp = 400;
      tempMax = true;
   }
   gardenExp = Math.ceil(gardenExp * (baseHarvestTime + 1800) / 18000);
   if(ID == 26 || ID == 51 || ID == 76)
   {
      gardenExp = Math.ceil(gardenExp * 0.8);
   }
   if(tempMax == true)
   {
      harvestValue = Math.round(harvestValue * 3);
   }
   else
   {
      harvestValue = Math.round(harvestValue * (1 + 0.02 * Math.floor(_root.save.gardenMastery[ID] / 10)));
   }
   if(_root.save.careerLevel[2] >= 100)
   {
      gardenExp = Math.floor(gardenExp * 1.2);
   }
}
onEnterFrame = function()
{
   if(_root.save.gardenSeed[ID] > 0)
   {
      fr = ID;
   }
   else
   {
      fr = 1;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
};
onRollOver = function()
{
   _root.actiondescription = "<font color=\"#FFFF00\"><b>Another Tree #" + (ID - 25) + "</b></font>";
   _root.actiondescription += "\nHarvest Time: <font color=\"#CCFF00\">" + _root.convertSecFull(harvestTime) + "</font>";
   _root.actiondescription += "\nExpiration Time: <font color=\"#CCFF00\">" + _root.convertSecFull(expiryTime) + "</font>";
   _root.actiondescription += "\nHarvest Value: <font color=\"#FFFF00\">" + _root.withComma(harvestValue) + "</font> Coins\nGarden EXP: <font color=\"#CCFFFF\">+" + _root.withComma(gardenExp) + "</font>\nMax Harvests: <font color=\"#CCFF00\">" + _root.withComma(Math.floor((expiryTime - 1) / harvestTime)) + "</font>\n\nTotal: <font color=\"#FFFF00\">" + _root.withComma(harvestValue * Math.floor((expiryTime - 1) / harvestTime)) + "</font> Coins\n(Per Second: <font color=\"#FFFF00\">" + _root.withComma(harvestValue / harvestTime) + "</font> Coins)";
   _root.actiondescription += "\n---------\nHarvest Count: <b>" + _root.withComma(_root.save.gardenMastery[ID]) + "</b>";
   if(tempMax != true)
   {
      _root.actiondescription += "\n\n<font color=\'#CCFF00\'>[Mastery: <b>" + Math.floor(_root.save.gardenMastery[ID] / 10) + "%</b>]\nHarvest from this tree more times to increase Harvest Value and the amount of Garden EXP given by this tree.</font>";
   }
   else
   {
      _root.actiondescription += "\n\n<font color=\'#FFFF00\'>[Mastery: <b>100%</b>]\nYou have achieved complete mastery for this tree.</font>";
   }
   _root.actiondescription += "\n---------\nYou have: <b>" + _root.save.gardenSeed[ID] + "</b> Seeds";
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onRelease = function()
{
   if(_parent.breedScreen != true)
   {
      if(_root.save.gardenSeed[ID] > 0)
      {
         _root.treeName = "Another Tree #" + (ID - 25);
         _root.treeToPlant = ID;
         _root.tree_coinCost = 0;
         _root.tree_greenCoinCost = 0;
         _root.tree_blueCoinCost = 0;
         _root.tree_gardenPointCost = 0;
         _root.tree_harvestValue = Math.round(harvestValue / multiplier);
         _root.tree_harvestTime = harvestTime;
         _root.tree_expiryTime = expiryTime;
         _root.tree_exp = gardenExp;
         _parent._parent._parent.treeNameText.text = "Another Tree #" + (ID - 25);
         _parent._parent._parent.treeValueText.text = _root.withComma(harvestValue);
         _parent._parent._parent.treeHarvestText.text = _root.convertSecFull(harvestTime);
         _parent._parent._parent.treeExpiryText.text = _root.convertSecFull(expiryTime);
         _parent._parent._parent.treeExpText.text = "+" + _root.withComma(gardenExp);
         _parent._parent.targetX = -510;
      }
   }
   else if(_root.save.gardenSeed[ID] >= 10)
   {
      if(_root.breedSeed1 == 0)
      {
         _root.breedSeed1 = ID;
         _root.showPopup("Select 1 More","Please select 1 more seed type to breed with seed #" + (ID - 25) + ". If you wish to cancel, click the \'X\' button above.");
      }
      else if(_root.breedSeed1 != ID)
      {
         _root.save.gardenSeed[_root.breedSeed1] -= 10;
         _root.save.gardenSeed[ID] -= 10;
         _root.save.gardenBreed1 = _root.breedSeed1;
         _root.save.gardenBreed2 = ID;
         _root.save.gardenBreedResearch = 0;
         _parent.gotoAndStop(2);
      }
   }
   _root.actiondescription = "";
};
