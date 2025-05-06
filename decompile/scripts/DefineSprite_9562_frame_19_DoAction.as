//! status=pending
function checkStat()
{
   owned = 30 - _root.emptyAccessorySlot;
   cap = 30;
}
function purchase()
{
   itemToGet = random(7) + 1;
   itemUnob = 7 + random(4);
   itemRank = 70;
   itemBonusPow = 26;
   itemSell = 50000;
   if(Math.random() < 0.99 && _root.save.arenaLevel >= 115 || _root.save.arenaLevel >= 210)
   {
      itemRank = 120;
      itemBonusPow = 66;
      itemSell = 100000;
   }
   if(Math.random() < 0.97 && _root.save.arenaLevel >= 175 || _root.save.arenaLevel >= 295)
   {
      itemRank = 180;
      itemBonusPow = 106;
      itemSell = 250000;
   }
   if(Math.random() < 0.94 && _root.save.arenaLevel >= 245 || _root.save.arenaLevel >= 420)
   {
      itemRank = 250;
      itemBonusPow = 156;
      itemSell = 500000;
   }
   if(Math.random() < 0.9 && _root.save.arenaLevel >= 345)
   {
      itemRank = 350;
      itemBonusPow = 256;
      itemSell = 1000000;
   }
   if(Math.random() < 0.85 && _root.save.arenaLevel >= 495)
   {
      itemRank = 500;
      itemBonusPow = 406;
      itemSell = 5000000;
   }
   if(itemToGet == 1)
   {
      itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Double Hit Chance","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Double Hit",""];
   }
   if(itemToGet == 2)
   {
      itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Rage Attack","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Rage",""];
   }
   if(itemToGet == 3)
   {
      itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Potion Efficiency","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Recovery",""];
   }
   if(itemToGet == 4)
   {
      itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Boss Damage","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Bosshunter",""];
   }
   if(itemToGet == 5)
   {
      itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Magic Resist","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Spell Protection",""];
   }
   if(itemToGet == 6)
   {
      itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Instant Kill","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Cruelty",""];
   }
   if(itemToGet == 7)
   {
      itemArray = [itemRank,"Pendant",7,0,0,0,0,0,0,1,0,10,itemBonusPow,"","Negate Effect","",itemSell,Infinity,true,false,false,false,itemUnob,"Pendant of Resistance",""];
   }
   _root.getArenaAccessory(itemArray[0],itemArray[1],itemArray[2],itemArray[3],itemArray[4],itemArray[5],itemArray[6],itemArray[7],itemArray[8],itemArray[9],itemArray[10],1,0,itemArray[11],itemArray[12],itemArray[13],itemArray[14],itemArray[15],itemArray[16],itemArray[17],itemArray[18],itemArray[19],itemArray[20],itemArray[21],itemArray[22],itemArray[23],"Special Shop Item");
}
stop();
qtCost = 1000;
etCost = 1000;
checkStat();
