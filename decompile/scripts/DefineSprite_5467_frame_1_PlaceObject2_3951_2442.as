//! status=pending
onClipEvent(enterFrame){
   if(_root.save.disableManaEffect == true)
   {
      fr = 4;
   }
   else if(_root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA")
   {
      fr = 3;
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


