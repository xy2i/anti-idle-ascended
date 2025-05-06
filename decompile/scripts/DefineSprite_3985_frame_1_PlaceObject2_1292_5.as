//! status=pending
onClipEvent(enterFrame){
   if(_root.gCheck == true)
   {
      checkFrame();
   }
}


onClipEvent(load){
   function checkFrame()
   {
      id = _root.save.arenaSkin;
      if(_root.save.arenaOutfitSkin != 0)
      {
         id = _root.save.arenaOutfitSkin;
      }
      fr = _root.save.inventoryFrame[id];
      if(id == 0)
      {
         fr = 1;
      }
      nm1 = _root.save.inventoryName[_root.save.arenaHat];
      nm2 = _root.save.inventoryName[_root.save.arenaShirt];
      nm3 = _root.save.inventoryName[_root.save.arenaGloves];
      nm4 = _root.save.inventoryName[_root.save.arenaPants];
      nm5 = _root.save.inventoryName[_root.save.arenaShoes];
      if(_root.save.arenaOutfitHat != 0)
      {
         nm1 = _root.save.inventoryName[_root.save.arenaOutfitHat];
      }
      if(_root.save.arenaOutfitShirt != 0)
      {
         nm2 = _root.save.inventoryName[_root.save.arenaOutfitShirt];
      }
      if(_root.save.arenaOutfitGloves != 0)
      {
         nm3 = _root.save.inventoryName[_root.save.arenaOutfitGloves];
      }
      if(_root.save.arenaOutfitPants != 0)
      {
         nm4 = _root.save.inventoryName[_root.save.arenaOutfitPants];
      }
      if(_root.save.arenaOutfitShoes != 0)
      {
         nm5 = _root.save.inventoryName[_root.save.arenaOutfitShoes];
      }
      if(nm1 == "CHAOS HAT" && nm2 == "CHAOS SHIRT" && nm4 == "CHAOS PANTS" && nm5 == "CHAOS SHOES")
      {
         fr = 12;
      }
      if(nm4 == "Ghost Pants")
      {
         fr = 12;
      }
      if(_currentframe != fr)
      {
         gotoAndStop(fr);
      }
   }
   checkFrame();
}


