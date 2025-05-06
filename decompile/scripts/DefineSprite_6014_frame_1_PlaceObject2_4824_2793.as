//! status=pending
onClipEvent(enterFrame){
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Dark Ruler")
   {
      fr = 5;
      if(_root.save.arenaZone == 82)
      {
         fr = 6;
      }
   }
   else if(_root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA")
   {
      fr = 4;
      if(_root.save.arenaZone == 82)
      {
         fr = 6;
      }
   }
   else if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      fr = 2;
   }
   else
   {
      fr = 1;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}


onClipEvent(load){
   gotoAndStop(1);
}


