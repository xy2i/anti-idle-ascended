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
      id = _root.save.arenaGloves;
      if(_root.save.arenaOutfitGloves != 0)
      {
         id = _root.save.arenaOutfitGloves;
      }
      fr = _root.save.inventoryFrame[id];
      if(id == 0)
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


