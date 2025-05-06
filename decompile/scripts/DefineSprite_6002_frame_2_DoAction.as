//! status=pending
passiveArray = ["Reward","EXP","Coin","Pixel","Drop Rate","Spawn Rate","Attack %","Defense %","MaxHP %","MaxMP %","Accuracy %","Evasion %","Equipment Attack","Equipment Defense","Attack Speed","Attack Speed %","Mastery","Resist","Hit Chance","Dodge Chance","Critical Chance","Critical Damage","Reflect","Magic Resist","Double Hit Chance","Instant Kill","Boss Damage","Non-Boss Damage","Damage","Ignore Defense","Potion Efficiency","Negate Effect"];
activeArray = ["Attack: Regular","Attack: Knockback","Attack: Poison","Attack: Weaken","Attack: Blind","Attack: Stun","Attack: Power Down","Attack: Defense Down","Attack: Accuracy Down","Attack: Evasion Down","Attack: Silence","Attack: Ignore Defense","Heal","HP Recovery","MP Recovery","Spirit Recovery","Buff Extension","Buff: Power","Buff: Master","Buff: Reward","Buff: Enrage","Buff: Elemental Boost","Buff: Invincibility","Produce Loot: Coin","Produce Loot: Pixel","Produce Loot: Material","Produce Loot: Stat","Produce Loot: Rare Item"];
text1.restrict = "0-9";
text2.restrict = "0-9";
text3.restrict = "0-9";
text4.restrict = "0-9";
text8.restrict = "0-9";
text9.restrict = "0-9";
t1 = _root.save.filterPref1t;
t2 = _root.save.filterPref2t;
t3 = _root.save.filterPref3t;
t4 = _root.save.filterPref4t;
text5.text = _root.save.filterPref5t;
text6.text = _root.save.filterPref6t;
t7 = _root.save.filterPref7t;
t8 = _root.save.filterPref8t;
t9 = _root.save.filterPref9t;
onEnterFrame = function()
{
   if(isNaN(t1) || t1 < 0)
   {
      t1 = 0;
   }
   if(isNaN(t2) || t2 < 0)
   {
      t2 = 0;
   }
   if(isNaN(t3) || t3 < 1)
   {
      t3 = 1;
   }
   if(t3 > 9001)
   {
      t3 = 9001;
   }
   if(isNaN(t4) || t4 < 1)
   {
      t4 = 1;
   }
   if(t4 > 9001)
   {
      t4 = 9001;
   }
   if(isNaN(t8) || t8 < 0)
   {
      t8 = 1;
   }
   if(t8 > 10)
   {
      t8 = 15;
   }
   if(isNaN(t9) || t9 < 0)
   {
      t9 = 1;
   }
   if(t9 > 10)
   {
      t9 = 15;
   }
   _root.save.filterPref1t = t1;
   _root.save.filterPref2t = t2;
   _root.save.filterPref3t = t3;
   _root.save.filterPref4t = t4;
   text5.text = _root.save.filterPref5t;
   text6.text = _root.save.filterPref6t;
   _root.save.filterPref7t = t7;
   _root.save.filterPref8t = t8;
   _root.save.filterPref9t = t9;
   if(_root.save.filterPref5c == true)
   {
      text1.textColor = 0;
   }
   else
   {
      text1.textColor = 10066329;
   }
   if(_root.save.filterPref6c == true)
   {
      text2.textColor = 0;
   }
   else
   {
      text2.textColor = 10066329;
   }
   if(_root.save.filterPref7c == true)
   {
      text3.textColor = 0;
   }
   else
   {
      text3.textColor = 10066329;
   }
   if(_root.save.filterPref8c == true)
   {
      text4.textColor = 0;
   }
   else
   {
      text4.textColor = 10066329;
   }
   if(_root.save.filterPref9c == true)
   {
      text5.textColor = 10092288;
   }
   else
   {
      text5.textColor = 10066329;
   }
   if(_root.save.filterPref10c == true)
   {
      text6.textColor = 10092288;
   }
   else
   {
      text6.textColor = 10066329;
   }
   if(_root.save.filterPref11c == true)
   {
      text7.textColor = 0;
   }
   else
   {
      text7.textColor = 10066329;
   }
   if(_root.save.filterPref12c == true)
   {
      text8.textColor = 0;
   }
   else
   {
      text8.textColor = 10066329;
   }
   if(_root.save.filterPref13c == true)
   {
      text9.textColor = 0;
   }
   else
   {
      text9.textColor = 10066329;
   }
};
