//! status=pending
stop();
_root.treeGrade = new Array();
_root.treeToPlant = -1;
_root.treeName = "-";
_root.tree_coinCost = "-";
_root.tree_greenCoinCost = "-";
_root.tree_blueCoinCost = "-";
_root.tree_gardenPointCost = "-";
_root.tree_harvestValue = "-";
_root.tree_harvestTime = 0;
_root.tree_expiryTime = 0;
_root.tree_exp = 0;
treeNameText.text = "";
treeValueText.text = "";
treeExpText.text = "";
treeHarvestText.text = "";
treeExpiryText.text = "";
seedLeft.text = "";
gardenExpText.text = _root.withComma(_root.save.gardenEXP);
gardenPointText.text = _root.withComma(_root.save.gardenPoint);
gardenCapacityText.text = _root.save.gardenCapacity - 25;
if(_root.save.gardenCapacity > 50)
{
   gardenCapacityText.text = 25;
}
checkD = 10;
onEnterFrame = function()
{
   gardenExpText.text = _root.withComma(_root.save.gardenEXP);
   gardenPointText.text = _root.withComma(_root.save.gardenPoint);
   gardenCapacityText.text = _root.save.gardenCapacity - 25;
   if(_root.save.gardenCapacity > 50)
   {
      gardenCapacityText.text = 25;
   }
   seedLeft.text = _root.withComma(_root.save.gardenSeed[_root.treeToPlant]);
   checkD += 1;
   if(checkD > 10)
   {
      checkD = 0;
      i = 26;
      while(i <= 100)
      {
         if(_root.save.gardenSeed[i] > 99)
         {
            _root.save.gardenSeed[i] = 99;
         }
         i++;
      }
   }
};
