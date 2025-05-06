//! status=pending
_root.toCheck = true;
_root.gCheck = true;
storage = true;
recycleCooldown = 0;
onEnterFrame = function()
{
   if(_root.save.inventoryExist[399] == 1 && _root.save.inventoryType[399] == "Armor" && _root.emptyOutfitSlot > 0)
   {
      rSubtype = _root.save.inventorySubtype[399];
      rFrame = _root.save.inventoryFrame[399];
      rBonusPow = 706;
      rSell = _root.save.inventorySell[399];
      rName = _root.save.inventoryName[399];
      rDesc = _root.save.inventoryDesc[399];
      _root.getArenaOutfit(1,rSubtype,rFrame,rBonusPow,rSell,rName,rDesc);
      _root.deleteArenaItem(399);
   }
   if(_root.save.inventoryExist[399] == 1 && _root.save.inventorySubtype[399] == "Medal" && _root.emptyOutfitSlot > 0)
   {
      rSubtype = _root.save.inventorySubtype[399];
      rFrame = _root.save.inventoryFrame[399];
      rBonusPow = 706;
      rSell = _root.save.inventorySell[399];
      rName = _root.save.inventoryName[399];
      rDesc = _root.save.inventoryDesc[399];
      _root.getArenaOutfit(1,rSubtype,rFrame,rBonusPow,rSell,rName,rDesc);
      _root.deleteArenaItem(399);
   }
};
