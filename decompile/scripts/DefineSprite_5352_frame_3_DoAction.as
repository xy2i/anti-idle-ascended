//! status=pending
function viewStat()
{
   t1.text = _root.withComma(_root.hpRecover);
   t2.text = _root.withComma(_root.mpRecover);
   t3.text = _root.withComma(_root.manaEater);
   t4.text = "Lv. " + _root.withComma(_root.lifeDrain);
   t5.text = "Lv. " + _root.withComma(_root.autoSteal);
   t6.text = _root.withComma(_root.save.arenaLevel);
   t7.text = _root.withComma(_root.save.arenaLevel * 20 + _root.save.arenaUltimateSP * 10);
   t8.text = _root.withComma(_root.save.arenaSP);
   t11.text = _root.withComma(_root.poisonChance) + "%";
   t12.text = _root.withComma(_root.weakenChance) + "%";
   t13.text = _root.withComma(_root.blindChance) + "%";
   t14.text = _root.withComma(_root.stunChance) + "%";
   t15.text = _root.withComma(_root.poisonDamage) + "%";
   t16.text = "-" + _root.withComma(_root.weakenPower) + "%";
   t17.text = "-" + _root.withComma(_root.blindPower) + "%";
   t18.text = _root.withComma(_root.poisonDuration) + "s";
   t19.text = _root.withComma(_root.weakenDuration) + "s";
   t20.text = _root.withComma(_root.blindDuration) + "s";
   ringArray = ["Not equipped","Health","Mana","Power","Speed","Mastery","Critical","Defense","Reflection","Accuracy","Evasion","Leech","Chaos","Encounter","Experience","Greed","Protection","Luck","Combo","Chronos","Rage","Resistance","Cruelty"];
   t21.text = ringArray[_root.save.arenaRing];
   if(_root.save.arenaAlly != 0)
   {
      t22.text = "[#" + _root.save.arenaAlly + "] " + _root.enemyList[_root.save.arenaAlly].name + " [+" + _root.save.arenaAllyUpgrade[_root.save.arenaAlly] + "]";
   }
   else
   {
      t22.text = "Not equipped";
   }
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
