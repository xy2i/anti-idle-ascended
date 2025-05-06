//! status=pending
onClipEvent(enterFrame){
   del += 1;
   if(del >= 2)
   {
      del = 0;
      if(_root.save.arenaZone == 38 || _root.save.arenaZone == 24)
      {
         if(Key.isDown(16))
         {
            Xalpha = 30;
            if(_root.house.arena.enemy.enemyID == 323)
            {
               Xalpha = 100;
            }
         }
         else
         {
            Xalpha = 100;
         }
      }
      else
      {
         Xalpha = 100;
      }
      if(_root.save.arenaSkill[49] >= 1 || _root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA")
      {
         if(Key.isDown(32) && holdSpace != true)
         {
            pressSpace = true;
            holdSpace = true;
         }
         else if(Key.isDown(32))
         {
            pressSpace = false;
         }
         else
         {
            pressSpace = false;
            holdSpace = false;
         }
         if(pressSpace == true)
         {
            if(_root.manaPower != true)
            {
               if(_root.save.inventoryName[_root.save.arenaWeapon] != "CHAOS AURA" || _root.save.arenaFury >= 25)
               {
                  _root.manaPower = true;
                  _root.save.arenaManaPower = true;
               }
            }
            else if(_root.save.inventoryName[_root.save.arenaWeapon] != "CHAOS AURA")
            {
               _root.manaPower = false;
               _root.save.arenaManaPower = false;
            }
         }
      }
      if(_root.save.arenaZone == 38 || _root.save.arenaZone == 24)
      {
         _root.manaPower = false;
         _root.save.arenaManaPower = false;
      }
      if(_alpha != Xalpha)
      {
         _alpha = Xalpha;
      }
      if(_root.save.arenaZone == 24)
      {
         _alpha = 0;
      }
   }
}


onClipEvent(load){
   manaShield = false;
   pressSpace = false;
   holdSpace = false;
   del = 0;
   if(_root.save.arenaSkill[49] >= 1 && _root.save.arenaManaPower == true)
   {
      _root.manaPower = true;
   }
}


