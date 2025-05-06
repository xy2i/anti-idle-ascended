//! status=pending
onEnterFrame = function()
{
   if(_root.save.arenaHealth > _root.maxHealth)
   {
      _root.save.arenaHealth = _root.maxHealth;
   }
   if(_root.save.arenaSpirit > _root.maxSpirit)
   {
      _root.save.arenaSpirit = _root.maxSpirit;
   }
   hpDisp.text = _root.withComma(_root.save.arenaHealth) + " / " + _root.withComma(_root.maxHealth);
   mpDisp.text = _root.withComma(_root.save.arenaSpirit) + " / " + _root.withComma(_root.maxSpirit);
   rageDisp.text = Math.ceil(_root.save.arenaRage) + "%";
};
