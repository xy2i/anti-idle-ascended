//! status=pending
onClipEvent(enterFrame){
   if(tmpFr != _root.save.inventoryFrame[_root.save.arenaWeapon])
   {
      checkFrame();
   }
}


onClipEvent(load){
   function checkFrame()
   {
      tmpFr = _root.save.inventoryFrame[_root.save.arenaWeapon];
      gotoAndStop(_root.save.inventoryFrame[_root.save.arenaWeapon]);
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "Ultimate Weapon" || _root.save.inventoryName[_root.save.arenaWeapon] == "Reincarnation Weapon")
      {
      }
      if(_root.save.inventoryRange[_root.save.arenaWeapon] != false)
      {
         _Y = 40;
         _root.wpRange = 200;
      }
      else
      {
         _Y = 40;
         _parent.scanLine._y = 40;
         while(_parent.scanLine.hitTest(this))
         {
            _parent.scanLine._y -= 3;
         }
         _root.wpRange = Math.round((40 - _parent.scanLine._y) * 5 / 3);
      }
      trace("WEAPON RANGE: " + _root.wpRange);
      _parent.scanLine._y = 1999;
   }
   tmpFr = -1;
   checkFrame();
}


