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
gardenCapacityText.text = _root.save.gardenCapacity;
if(_root.save.gardenCapacity > 25)
{
   gardenCapacityText.text = 25;
}
onEnterFrame = function()
{
   if(gardenExpText.text != _root.withComma(_root.save.gardenEXP))
   {
      gardenExpText.text = _root.withComma(_root.save.gardenEXP);
   }
   if(gardenPointText.text = _root.withComma(_root.save.gardenPoint))
   {
      gardenPointText.text = _root.withComma(_root.save.gardenPoint);
   }
   _root.save.gardenGrade11 = 0;
   _root.save.gardenGrade12 = 0;
   _root.save.gardenAnotherHarvest = 0;
   _root.save.gardenAnotherMastery = 0;
   i = 1;
   while(i <= 75)
   {
      if(_root.save.gardenSlotGrade[i] >= 11)
      {
         _root.save.gardenGrade11 += 1;
      }
      if(_root.save.gardenSlotGrade[i] >= 12)
      {
         _root.save.gardenGrade12 += 1;
      }
      if(_root.save.gardenMastery[i + 25] >= 1)
      {
         _root.save.gardenAnotherHarvest += 1;
      }
      if(_root.save.gardenMastery[i + 25] >= 1000)
      {
         _root.save.gardenAnotherMastery += 1;
      }
      i++;
   }
};
