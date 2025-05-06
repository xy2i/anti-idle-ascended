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
treeCost1Text.text = "";
treeCost2Text.text = "";
treeCost3Text.text = "";
treeCost4Text.text = "";
gardenExpText.text = _root.withComma(_root.save.gardenEXP);
gardenPointText.text = _root.withComma(_root.save.gardenPoint);
gardenCapacityText.text = _root.save.gardenCapacity - 50;
if(_root.save.gardenCapacity > 75)
{
   gardenCapacityText.text = 25;
}
onEnterFrame = function()
{
   gardenExpText.text = _root.withComma(_root.save.gardenEXP);
   gardenPointText.text = _root.withComma(_root.save.gardenPoint);
   gardenCapacityText.text = _root.save.gardenCapacity - 50;
   if(_root.save.gardenCapacity > 75)
   {
      gardenCapacityText.text = 25;
   }
};
