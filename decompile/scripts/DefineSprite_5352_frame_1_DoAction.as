//! status=pending
function viewStat()
{
   t1.text = _root.withComma(_root.attackPower) + " (base: " + _root.withComma(_root.save.arenaAttack) + ")";
   t2.text = _root.withComma(_root.defensePower) + " (base: " + _root.withComma(_root.save.arenaDefense) + ")";
   t3.text = _root.withComma(_root.maxHealth) + " (base: " + _root.withComma(_root.save.arenaMaxHealth) + ")";
   t4.text = _root.withComma(_root.maxMana) + " (base: " + _root.withComma(_root.save.arenaMaxMana) + ")";
   t5.text = _root.withComma(_root.accuracyPct) + "% + " + _root.withComma(_root.accuracy) + " (base: " + _root.withComma(_root.save.arenaAccuracy) + ")";
   t6.text = _root.withComma(_root.evasionPct) + "% + " + _root.withComma(_root.evasion) + " (base: " + _root.withComma(_root.save.arenaEvasion) + ")";
   t7.text = _root.withComma(_root.arenaExpMult) + "%";
   t8.text = _root.withComma(_root.arenaCoinMult) + "%";
   t9.text = _root.withComma(_root.arenaPixelMult) + "%";
   t10.text = _root.withComma(_root.arenaDropRate) + "%";
   t11.text = _root.withComma(_root.spawnSpeed) + "%";
   t12.text = _root.withComma(_root.abilResistFire) + "%";
   t13.text = _root.withComma(_root.abilResistIce) + "%";
   t14.text = _root.withComma(_root.abilResistWind) + "%";
   t15.text = _root.withComma(_root.abilResistEarth) + "%";
   t16.text = _root.withComma(_root.abilResistThunder) + "%";
   t17.text = _root.withComma(_root.abilResistWater) + "%";
   t18.text = _root.withComma(_root.abilResistLight) + "%";
   t19.text = _root.withComma(_root.abilResistDark) + "%";
   t20.text = _root.withComma(_root.arenaRareRate) + "%";
   t21.text = _root.withComma(_root.arenaEpicRate) + "%";
}
stop();
if(_root.save.defStatPage == 2)
{
   gotoAndStop(2);
}
if(_root.save.defStatPage == 3)
{
   gotoAndStop(3);
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
