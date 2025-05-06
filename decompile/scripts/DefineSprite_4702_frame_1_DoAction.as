//! status=pending
onEnterFrame = function()
{
   if(_root.save.arenaHealth > _root.maxHealth)
   {
      _root.save.arenaHealth = _root.maxHealth;
   }
   if(_root.save.arenaMana > _root.maxMana)
   {
      _root.save.arenaMana = _root.maxMana;
   }
   hpDisp.text = _root.withComma(_root.save.arenaHealth) + " / " + _root.withComma(_root.maxHealth);
   mpDisp.text = _root.withComma(_root.save.arenaMana) + " / " + _root.withComma(_root.maxMana);
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Dark Ruler")
   {
      mpDisp.text = "";
   }
   if(_root.save.arenaRage > 100)
   {
      _root.save.arenaRage = 100;
   }
   rageDisp.text = Math.ceil(_root.save.arenaRage) + "%";
};
