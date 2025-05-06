//! status=pending
function checkFrame()
{
   ready = 0;
   if(_root.save.gardenTrees[slot] > 0)
   {
      if(_root.save.gardenRecentTime[slot] + _root.save.gardenHarvestTime[slot] - _root.systemtimenow <= 0)
      {
         ready = 1;
      }
      else
      {
         ready = 0;
      }
   }
   if(tr == true && (slot < 26 || _parent.anotherGardenSeed.targetX < 0) && _parent.fertilizerMenu._currentframe < 3)
   {
      rolling = 1;
      plotReq = grade * grade * 1000;
      if(grade == 11)
      {
         plotReq = ((slot - 1) % 25 * 100000 + 600000) * (slot < 51 ? 1 : 2) * (slot < 26 ? 1 : 1.5);
      }
      if(grade == 12)
      {
         plotReq = "MAX";
      }
      _root.actiondescription = "[Grade <b>" + grade + "</b> Plot]\nBonus <b>" + grade * 10 + "%</b> to harvest value";
      if(grade < 12)
      {
         _root.actiondescription += "\nPlot EXP: <b>" + _root.withComma(_root.save.gardenSlotEXP[slot]) + "</b> / " + _root.withComma(plotReq);
      }
      else
      {
         _root.actiondescription += "\nPlot EXP: <b>" + _root.withComma(_root.save.gardenSlotEXP[slot]) + "</b>";
      }
      if(_root.save.gardenTrees[slot] > 0)
      {
         if(ready == 1)
         {
            _root.actiondescription += "\n---------\n<font color=\"#FFFF00\"><b>Click to harvest!</b></font>";
         }
         else
         {
            _root.actiondescription += "\n---------\nHarvest in: <font color=\'#CCFF00\'>" + _root.convertSecFull((_root.save.gardenRecentTime[slot] + _root.save.gardenHarvestTime[slot] - _root.systemtimenow) / 1000) + "</font>";
         }
         multiplier = Math.floor(Math.pow(_root.save.level,0.6)) / 10 + 6.5;
         _root.actiondescription += "\nExpires in: <font color=\'#CCFF00\'>" + _root.convertSecFull((_root.save.gardenPurchaseTime[slot] + _root.save.gardenExpiryTime[slot] - _root.systemtimenow) / 1000) + "</font>";
         _root.actiondescription += "\nHarvest Value: <font color=\'#FFFF00\'>" + _root.withComma(Math.floor(_root.save.gardenHarvestValue[slot] * multiplier)) + "</font> Coins\n(" + _root.withComma(_root.save.gardenHarvestValue[slot]) + " x " + Math.floor(multiplier * 10) / 10 + ")\nGarden EXP: <font color=\'#CCFFFF\'>+" + _root.withComma(_root.save.gardenTreeExp[slot]) + "</font>";
         if(_root.save.gardenTreeModuleProc[slot] > 0)
         {
            _root.actiondescription += "\n\n<font color=\'#CCFF00\'>Extra Harvest Value from Modules:\n<b>" + _root.withComma(Math.floor(_root.save.gardenTreeModuleProc[slot])) + "</b> / 10,000,000</font>";
         }
         maxFert = 20;
         if(_root.save.careerLevel[2] >= 200)
         {
            maxFert = 21;
         }
         if(_root.save.gardenTreeFertilize[slot] <= maxFert - 2)
         {
            _root.actiondescription += "\n---------\n<font color=\'#CCFF00\'><b>" + _root.withComma(maxFert - _root.save.gardenTreeFertilize[slot]) + "</b> more Fertilizers can be used on this tree.</font>";
         }
         else if(_root.save.gardenTreeFertilize[slot] == maxFert - 1)
         {
            _root.actiondescription += "\n---------\n<font color=\'#CCFF00\'><b>1</b> more Fertilizer can be used on this tree.</font>";
         }
         else
         {
            _root.actiondescription += "\n---------\n<font color=\'#CCFF00\'>No more Fertilizers can be used on this tree.</font>";
         }
      }
   }
   else if(rolling == 1)
   {
      rolling = 0;
      _root.actiondescription = "";
   }
}
grade = 1;
alt = false;
tr = false;
checkFrame();
onEnterFrame = function()
{
   alt = !alt;
   if(alt == true)
   {
      checkFrame();
   }
};
onRollOver = function()
{
   tr = true;
};
onRollOut = function()
{
   tr = false;
};
onDragOver = onRollOver;
onDragOut = onRollOut;
onRelease = function()
{
   if(ready == 1)
   {
      _root.harvestTree(slot);
   }
   else if(Key.isDown(16))
   {
      if(_root.saveid == 23)
      {
         _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
      }
      else if(_root.save.gardenTrees[slot] != 0)
      {
         _root.save.curForestDestroyer += 1;
         if(_root.save.forestDestroyer < _root.save.curForestDestroyer)
         {
            _root.save.forestDestroyer = _root.save.curForestDestroyer;
         }
         _root.save.gardenTrees[slot] = 0;
      }
   }
   else if(_root.save.gardenTrees[slot] <= 0 || isNaN(_root.save.gardenTrees[slot]))
   {
      if(_root.treeToPlant != -1)
      {
         coinCost = _root.tree_coinCost;
         greenCoinCost = _root.tree_greenCoinCost;
         blueCoinCost = _root.tree_blueCoinCost;
         gardenPointCost = _root.tree_gardenPointCost;
         harvestTime = _root.tree_harvestTime;
         harvestValue = Math.floor(_root.tree_harvestValue * (0.95 + grade * 0.1 + Math.random() * 0.1));
         treeExp = _root.tree_exp;
         expiryTime = _root.tree_expiryTime;
         treeToPlant = _root.treeToPlant;
         seedCost = 0;
         if(slot >= 26 && slot <= 50)
         {
            seedCost = 1;
         }
         if(_root.save.gardenSeed[_root.treeToPlant] >= seedCost && _root.save.coin >= coinCost && _root.save.greenCoin >= greenCoinCost && _root.save.blueCoin >= blueCoinCost && _root.save.gardenPoint >= gardenPointCost)
         {
            _root.save.coin -= coinCost;
            _root.save.greenCoin -= greenCoinCost;
            _root.save.blueCoin -= blueCoinCost;
            _root.save.gardenPoint -= gardenPointCost;
            _root.save.gardenSeed[_root.treeToPlant] -= seedCost;
            _root.save.gardenRecentTime[slot] = _root.systemtimenow;
            _root.save.gardenPurchaseTime[slot] = _root.systemtimenow;
            _root.save.gardenHarvestTime[slot] = harvestTime * 1000;
            _root.save.gardenHarvestValue[slot] = harvestValue;
            _root.save.gardenExpiryTime[slot] = expiryTime * 1000;
            _root.save.gardenTreeExp[slot] = treeExp;
            _root.save.gardenTreeFertilize[slot] = 0;
            _root.save.gardenTreeModuleProc[slot] = 0;
            _root.save.gardenTrees[slot] = treeToPlant;
            if(coinCost > 0)
            {
               _root.dispNews(18,"Tree planted! (-" + _root.withComma(coinCost) + " Coins)");
            }
            else if(gardenPointCost > 0)
            {
               _root.dispNews(18,"Tree planted! (-" + _root.withComma(gardenPointCost) + " Garden Points)");
            }
            else
            {
               _root.dispNews(18,"Tree planted!");
            }
         }
         else if(gardenPointCost > 0)
         {
            _root.showPopup("Not enough Garden Points!","You don\'t have enough Garden Points to plant this tree.");
         }
         else if(seedCost > 0)
         {
            _root.showPopup("Not enough Seeds!","You don\'t have enough Seeds.");
         }
         else
         {
            _root.showPopup("Not enough money!","You don\'t even have enough money to afford a tree seed, LOL! Though, you can use Garden Points to plant trees for free. Try it!");
         }
      }
   }
   else if(_root.treeToPlant != -1)
   {
      _root.showPopup("There\'s already a tree here!","There\'s already a tree planted in this plot. You can either wait for it to be ready for harvest, or Shift + Click to get rid of it.");
   }
};
