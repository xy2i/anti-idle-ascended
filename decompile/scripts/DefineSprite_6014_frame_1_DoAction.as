//! status=pending
if(_root.save.autoSet6 != true)
{
   z = 1;
   while(z <= 1337)
   {
      if(_root.save.inventoryExist[z] == 1)
      {
         if(_root.save.inventoryType[z] == "Weapon" || _root.save.inventoryType[z] == "Armor" || _root.save.inventoryType[z] == "Accessory")
         {
            _root.save.inventorySet[z] = _root.checkArenaSet(_root.save.inventoryName[z]);
         }
      }
      z++;
   }
   _root.save.autoSet6 = true;
}
_root.recalcMuseumScore();
if(_root.save.autoSwap1 != true)
{
   _root.save.autoSwap1 = true;
   _root.save.arenaMedal = 0;
   _root.save.arenaPendant = 0;
   nextAccSlot = 501;
   z = 101;
   while(z <= 130)
   {
      if(_root.save.inventorySubtype[z] == "Pendant" || _root.save.inventorySubtype[z] == "Medal")
      {
         _root.save.inventoryType[z] = "Accessory";
         _root.swapArenaItem(z,nextAccSlot);
         nextAccSlot += 1;
      }
      z++;
   }
   z = 301;
   while(z <= 330)
   {
      if(_root.save.inventorySubtype[z] == "Pendant" || _root.save.inventorySubtype[z] == "Medal")
      {
         _root.save.inventoryType[z] = "Accessory";
      }
      z++;
   }
}
z = 1;
while(z <= 600)
{
   if(isNaN(_root.save.inventoryUnob[z]) || _root.save.inventoryUnob[z] > 100)
   {
      _root.save.inventoryUnob[z] = 0;
   }
   z++;
}
if(_root.save.curAttMedPend != 0 && _root.emptyAccessorySlot >= 1)
{
   tempAttMonth = _root.save.curAttMedPend % 100;
   tempAttYear = Math.floor(_root.save.curAttMedPend / 100);
   _root.save.curAttMedPend = 0;
   _root.getArenaAccessory(40,"Medal",64,40,8,40,40,40,40,1,0,1,0,10,706,"Pixel","Damage","Attack Power",0,6480000000,true,true,false,false,16,"Perfect Attendance","Thank you for playing Anti-Idle every day in " + _root.getFullMonthName(tempAttMonth) + " " + tempAttYear + "!\n\nWhen this item is in your inventory, you will receive +10% Pixel, +10% MaxHP and +10% MaxMP! Stacks up to 2 times. Does not apply if the item is expired.",true);
}
