//! status=pending
function checkStat()
{
   owned = 30 - _root.emptyPotionSlot;
   cap = 30;
}
function purchase()
{
   typeX = random(3) + 1;
   if(typeX == 1)
   {
      _root.getArenaPotion("Power Buff Potion",3,5400,1,0,106,1000000,Infinity,"Large Power Potion","Special Shop Item");
   }
   else if(typeX == 2)
   {
      _root.getArenaPotion("Master Buff Potion",8,5400,1,0,106,1000000,Infinity,"Large Master Potion","Special Shop Item");
   }
   else if(typeX == 3)
   {
      _root.getArenaPotion("Reward Buff Potion",13,5400,1,0,106,1000000,Infinity,"Large Reward Potion","Special Shop Item");
   }
}
stop();
qtCost = 150;
etCost = 150;
checkStat();
