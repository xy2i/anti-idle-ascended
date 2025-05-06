//! status=pending
onClipEvent(enterFrame){
   fr = 1;
   if(_root.arenaSoap > 0)
   {
      fr = 2;
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "Censor Sword")
      {
         if(_root.save.inventoryName[_root.save.arenaHat] == "Censor Hat" && _root.save.inventoryName[_root.save.arenaShirt] == "Censor Shirt" && _root.save.inventoryName[_root.save.arenaGloves] == "Censor Gloves" && _root.save.inventoryName[_root.save.arenaPants] == "Censor Pants" && _root.save.inventoryName[_root.save.arenaShoes] == "Censor Shoes")
         {
            fr = 3;
         }
      }
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


