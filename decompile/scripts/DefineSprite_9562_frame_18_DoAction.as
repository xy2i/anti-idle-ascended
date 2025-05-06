//! status=pending
function checkStat()
{
   owned = 30 - _root.emptyAccessorySlot;
   cap = 30;
}
function purchase()
{
   itemAttack = 0;
   itemSpeed = 0;
   itemDefense = 0;
   itemCrit = 0;
   itemDexterity = 0;
   itemHealth = 0;
   itemBonusPow = 0;
   if(Math.random() < 0.8)
   {
      itemAttack += 8 * (random(10) + 6);
      itemBonusPow += itemAttack;
   }
   if(Math.random() < 0.8)
   {
      itemSpeed += 2 * (random(4) + 2);
      itemBonusPow += itemSpeed * 20;
   }
   if(Math.random() < 0.8)
   {
      itemDefense += 8 * (random(10) + 6);
      itemBonusPow += itemDefense;
   }
   if(Math.random() < 0.6)
   {
      itemCrit += 4 * (random(10) + 6);
      itemBonusPow += itemCrit * 5;
   }
   if(Math.random() < 0.6)
   {
      itemDexterity += 4 * (random(10) + 6);
      itemBonusPow += itemDexterity * 5;
   }
   if(Math.random() < 0.6)
   {
      itemHealth += 4 * (random(10) + 6);
      itemBonusPow += itemHealth * 5;
   }
   _root.getArenaAccessory(_root.save.arenaLevel,"Pendant",5,itemAttack,itemSpeed,itemDefense,itemCrit,itemDexterity,itemHealth,1,0,1,0,10,itemBonusPow,"Random","Random","",0,2592000000,false,true,false,false,20,"Immortal Pendant","Special Shop Item");
}
stop();
qtCost = 1500;
etCost = 1500;
checkStat();
