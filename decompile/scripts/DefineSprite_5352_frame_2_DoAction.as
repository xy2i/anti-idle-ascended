//! status=pending
function viewStat()
{
   t1.text = _root.withComma(_root.minDamage);
   t2.text = _root.withComma(_root.maxDamage);
   t3.text = _root.withComma(_root.damageResistPct) + "% + " + _root.withComma(_root.damageResist);
   t4.text = _root.withComma(_root.minMult) + "%";
   t5.text = _root.withComma(_root.ignoreDefense) + "%";
   t6.text = _root.withComma(_root.magicResist) + "%";
   t7.text = _root.withComma(_root.weaponAttack);
   t8.text = _root.withComma(_root.weaponDefense);
   t9.text = _root.withComma(_root.attackSpeed);
   t10.text = _root.withComma(_root.doubleHit) + "%";
   t11.text = _root.withComma(_root.criticalChance) + "%";
   t12.text = _root.withComma(_root.criticalDamage) + "%";
   t13.text = _root.withComma(_root.damageReflect) + "%";
   t14.text = _root.withComma(_root.magicReflect) + "%";
   t15.text = _root.withComma(_root.instantKill) + "%";
   t16.text = _root.withComma(100 + _root.nonBossDamage) + "%";
   t17.text = _root.withComma(100 + _root.bossDamage) + "%";
   t18.text = _root.withComma(_root.potionEfficiency) + "%";
   t19.text = _root.withComma(_root.negateEffect) + "%";
   t20.text = _root.withComma(_root.rageDepletion) + "%";
   t21.text = _root.withComma(_root.ragePowerMult) + "%";
   t22.text = _root.withComma(_root.rageSpeedMult) + "%";
}
viewStat();
statDelay = 0;
onEnterFrame = function()
{
   statDelay += 1;
   if(statDelay > 8)
   {
      statDelay = 0;
      viewStat();
   }
};
