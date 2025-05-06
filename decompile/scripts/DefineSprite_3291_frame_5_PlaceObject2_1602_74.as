//! status=pending
on(release){
   _root.treeName = "?????";
   _root.treeToPlant = 10;
   _root.tree_coinCost = 0;
   _root.tree_greenCoinCost = 0;
   _root.tree_blueCoinCost = 0;
   _root.tree_gardenPointCost = _parent.cost4;
   _root.tree_harvestValue = Math.round(_parent.harvestValue / _parent.multiplier);
   _root.tree_harvestTime = _parent.harvestTime;
   _root.tree_expiryTime = _parent.expiryTime;
   _root.tree_exp = _parent.gardenExp;
   _parent._parent.treeNameText.text = _root.treeName;
   _parent._parent.treeValueText.text = _root.withComma(_parent.harvestValue);
   _parent._parent.treeHarvestText.text = _root.convertSecFull(_parent.harvestTime);
   _parent._parent.treeExpiryText.text = _root.convertSecFull(_parent.expiryTime);
   _parent._parent.treeExpText.text = "+" + _root.withComma(_parent.gardenExp);
   _parent._parent.treeCost1Text.text = _root.withComma(_root.tree_coinCost);
   _parent._parent.treeCost2Text.text = _root.withComma(_root.tree_greenCoinCost);
   _parent._parent.treeCost3Text.text = _root.withComma(_root.tree_blueCoinCost);
   _parent._parent.treeCost4Text.text = _root.withComma(_root.tree_gardenPointCost);
   _parent.targetX = -510;
   _parent.gotoAndStop(3);
}


