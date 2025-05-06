//! status=pending
onEnterFrame = function()
{
   if(_root.save.arenaHealth > _root.maxHealth)
   {
      _root.save.arenaHealth = _root.maxHealth;
   }
   if(_root.save.arenaFury > 100)
   {
      _root.save.arenaFury = 100;
   }
   hpDisp.text = _root.withComma(_root.save.arenaHealth) + " / " + _root.withComma(_root.maxHealth);
   rageDisp.text = Math.ceil(_root.save.arenaRage) + "%";
};
