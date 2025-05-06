//! status=pending
function checkStat()
{
   owned = 0;
   if(_root.emptyArmorSlot < 5 || _root.emptyWeaponSlot < 1 || _root.emptyAccessorySlot < 3)
   {
      owned = 1;
   }
   cap = 1;
}
function purchase()
{
   _root.getArenaWeapon(500,"Sword",274,false,2500,50,0,50,250,0,1,0,1,0,10,4200,"EXP","Damage","Equipment Attack",0,Infinity,false,false,true,true,false,50,"Ultimate Weapon","Also shoots projectiles at monsters from a far distance!");
   _root.getArenaArmor(500,"Hat",151,200,5,2500,0,0,500,1,0,1,0,10,4200,"EXP","Attack","Equipment Attack",0,Infinity,false,false,true,true,false,10,"Ultimate Hat","");
   _root.getArenaArmor(500,"Shirt",151,200,5,2500,0,250,0,1,0,1,0,10,4200,"EXP","Attack","Equipment Attack",0,Infinity,false,false,true,true,false,10,"Ultimate Shirt","");
   _root.getArenaArmor(500,"Gloves",151,200,5,2500,500,0,0,1,0,1,0,10,4200,"EXP","Attack","Equipment Attack",0,Infinity,false,false,true,true,false,10,"Ultimate Gloves","");
   _root.getArenaArmor(500,"Pants",151,200,5,2500,0,125,0,1,0,1,0,10,4200,"EXP","Attack","Equipment Attack",0,Infinity,false,false,true,true,false,10,"Ultimate Pants","");
   _root.getArenaArmor(500,"Shoes",151,200,80,2500,0,0,0,1,0,1,0,10,4200,"EXP","Attack","Equipment Attack",0,Infinity,false,false,true,true,false,10,"Ultimate Shoes","");
   _root.getArenaAccessory(500,"Pendant",19,500,0,0,0,0,0,1,0,1,0,0,4200,"EXP","Damage","Equipment Attack",0,Infinity,false,false,true,false,50,"Ultimate Pendant","");
   _root.getArenaAccessory(500,"Earring",9,500,0,0,0,0,0,1,0,1,0,0,4200,"","","",0,Infinity,true,false,true,false,0,"Ultimate Earrings","");
   _root.getArenaAccessory(500,"Trinket",14,1500,0,0,0,0,0,1,0,1,0,0,4200,"","","",0,Infinity,true,false,true,false,0,"Ultimate Trinket","");
}
stop();
qtCost = 0;
etCost = 0;
checkStat();
