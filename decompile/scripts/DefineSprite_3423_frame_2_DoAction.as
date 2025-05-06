//! status=pending
pass = "";
onEnterFrame = function()
{
   _root.save.arenaMana = _root.maxMana;
   _root.house.arena.enemy.approach = 10;
   if(pass == "case-sensitive")
   {
      _root.save.arenaMana = _root.maxMana;
      _root.house.arena.travel(44,0);
      if(_root.save.inventoryType[400] == "Weapon" && _root.save.inventoryReqRank[400] <= _root.save.robaconLevel && _root.save.robaconBacon > 0 && _root.save.inventoryExpiry[400] >= _root.systemtimenow || _root.save.inventoryName[400] == "Bacon Sword" && _root.save.inventoryExpiry[400] >= _root.systemtimenow)
      {
         if(_root.save.vegetarianMode == true)
         {
            _root.showPopup("Notice","Robroccoli failed to figure out the password to enter this area, and was left outside.");
         }
         else
         {
            _root.showPopup("Notice","Robacon failed to figure out the password to enter this area, and was left outside.");
         }
      }
      onEnterFrame = null;
   }
};
