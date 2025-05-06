//! status=pending
onClipEvent(enterFrame){
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA")
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
   checkFrame();
}


