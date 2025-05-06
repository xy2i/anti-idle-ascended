//! status=pending
onClipEvent(enterFrame){
   checkRot();
}


onClipEvent(load){
   function checkRot()
   {
      if(_root.save.arenaOutfitWeapon != 0)
      {
         if(_root.save.inventoryFrame[_root.save.arenaOutfitWeapon] == 91 || _root.save.inventoryFrame[_root.save.arenaOutfitWeapon] == 93)
         {
            _alpha = 0;
         }
         else
         {
            _alpha = 100;
         }
      }
      id = _root.save.arenaWeapon;
      frame = _root.save.inventoryFrame[id];
      if(id == 0)
      {
         frame = 1;
      }
      gotoAndStop(frame);
      if(_rotation == 0)
      {
         _root.weaponHeight = Math.round(_height / 2);
      }
      else
      {
         _root.weaponHeight = Math.round(_width / 2);
      }
      if(_root.save.inventorySubtype[id] == "Spear" || _root.save.inventorySubtype[id] == "Polearm (Stab)" || _root.save.inventorySubtype[id] == "Dagger")
      {
         _rotation = 90;
         _X = -10;
         _Y = 0;
      }
      else if(_root.save.inventorySubtype[id] == "Wand" && _root.save.inventoryName[id] != "Fairy Godmother Wand")
      {
         _rotation = -90;
         _X = 0;
         _Y = 0;
      }
      else if(_root.save.inventorySubtype[id] == "Staff" || _root.save.inventoryName[id] == "Fairy Godmother Wand")
      {
         _rotation = 0;
         _X = 0;
         _Y = -20;
      }
      else if(_root.save.inventorySubtype[id] == "Claw")
      {
         _rotation = 0;
         _X = -10;
         _Y = 0;
      }
      else
      {
         _rotation = 0;
         _X = 0;
         _Y = 0;
      }
   }
   checkRot();
}


