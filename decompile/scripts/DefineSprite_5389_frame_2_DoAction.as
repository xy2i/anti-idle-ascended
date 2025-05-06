//! status=pending
function autoSort()
{
   VAL = new Array();
   VTEMP = 0;
   if(_root.invTab == 0)
   {
      var _loc2_ = 1;
      while(_loc2_ <= 30)
      {
         VAL[_loc2_] = 9999999999;
         if(_root.save.inventoryExist[_loc2_] == 1)
         {
            VAL[_loc2_] = 100000;
            VAL[_loc2_] += _root.save.inventoryBonusPow[_loc2_];
            if(VAL[_loc2_] > 109999)
            {
               VAL[_loc2_] = 109999;
            }
            VAL[_loc2_] += _root.save.inventoryFrame[_loc2_] * 10000;
            if(_root.save.inventoryRange[_loc2_] == true)
            {
               VAL[_loc2_] += 100000000;
            }
         }
         _loc2_ = _loc2_ + 1;
      }
      _loc2_ = 1;
      while(_loc2_ <= 29)
      {
         var _loc3_ = _loc2_ + 1;
         while(_loc3_ <= 30)
         {
            if(_root.save.arenaWeapon != _loc2_ && _root.save.arenaWeapon != _loc3_ && _root.save.arenaSubWeapon != _loc2_ && _root.save.arenaSubWeapon != _loc3_)
            {
               if(VAL[_loc2_] > VAL[_loc3_])
               {
                  VTEMP = VAL[_loc2_];
                  VAL[_loc2_] = VAL[_loc3_];
                  VAL[_loc3_] = VTEMP;
                  _root.swapArenaItem(_loc2_,_loc3_);
               }
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   else if(_root.invTab == 1)
   {
      _loc2_ = 101;
      while(_loc2_ <= 130)
      {
         VAL[_loc2_] = 9999999999;
         if(_root.save.inventoryExist[_loc2_] == 1)
         {
            VAL[_loc2_] = 100000;
            VAL[_loc2_] += _root.save.inventoryBonusPow[_loc2_];
            if(VAL[_loc2_] > 109999)
            {
               VAL[_loc2_] = 109999;
            }
            VAL[_loc2_] += _root.save.inventoryFrame[_loc2_] * 10000;
            if(_root.save.inventorySubtype[_loc2_] == "Hat")
            {
               VAL[_loc2_] += 100000000;
            }
            else if(_root.save.inventorySubtype[_loc2_] == "Shirt")
            {
               VAL[_loc2_] += 200000000;
            }
            else if(_root.save.inventorySubtype[_loc2_] == "Gloves")
            {
               VAL[_loc2_] += 300000000;
            }
            else if(_root.save.inventorySubtype[_loc2_] == "Pants")
            {
               VAL[_loc2_] += 400000000;
            }
            else if(_root.save.inventorySubtype[_loc2_] == "Shoes")
            {
               VAL[_loc2_] += 500000000;
            }
            else if(_root.save.inventorySubtype[_loc2_] == "Skin")
            {
               VAL[_loc2_] += 600000000;
            }
         }
         _loc2_ = _loc2_ + 1;
      }
      _loc2_ = 101;
      while(_loc2_ <= 129)
      {
         _loc3_ = _loc2_ + 1;
         while(_loc3_ <= 130)
         {
            if(_root.save.arenaHat != _loc2_ && _root.save.arenaHat != _loc3_ && _root.save.arenaShirt != _loc2_ && _root.save.arenaShirt != _loc3_ && _root.save.arenaGloves != _loc2_ && _root.save.arenaGloves != _loc3_ && _root.save.arenaPants != _loc2_ && _root.save.arenaPants != _loc3_ && _root.save.arenaShoes != _loc2_ && _root.save.arenaShoes != _loc3_ && _root.save.arenaSkin != _loc2_ && _root.save.arenaSkin != _loc3_)
            {
               if(VAL[_loc2_] > VAL[_loc3_])
               {
                  VTEMP = VAL[_loc2_];
                  VAL[_loc2_] = VAL[_loc3_];
                  VAL[_loc3_] = VTEMP;
                  _root.swapArenaItem(_loc2_,_loc3_);
               }
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   else if(_root.invTab == 5)
   {
      _loc2_ = 501;
      while(_loc2_ <= 530)
      {
         VAL[_loc2_] = 9999999999;
         if(_root.save.inventoryExist[_loc2_] == 1)
         {
            VAL[_loc2_] = 100000;
            VAL[_loc2_] += _root.save.inventoryBonusPow[_loc2_];
            if(VAL[_loc2_] > 109999)
            {
               VAL[_loc2_] = 109999;
            }
            VAL[_loc2_] += _root.save.inventoryFrame[_loc2_] * 10000;
            if(_root.save.inventorySubtype[_loc2_] == "Medal")
            {
               VAL[_loc2_] += 100000000;
            }
            else if(_root.save.inventorySubtype[_loc2_] == "Pendant")
            {
               VAL[_loc2_] += 200000000;
            }
            else if(_root.save.inventorySubtype[_loc2_] == "Earring")
            {
               VAL[_loc2_] += 300000000;
            }
            else if(_root.save.inventorySubtype[_loc2_] == "Trinket")
            {
               VAL[_loc2_] += 400000000;
            }
         }
         _loc2_ = _loc2_ + 1;
      }
      _loc2_ = 501;
      while(_loc2_ <= 529)
      {
         _loc3_ = _loc2_ + 1;
         while(_loc3_ <= 530)
         {
            if(_root.save.arenaMedal != _loc2_ && _root.save.arenaMedal != _loc3_ && _root.save.arenaPendant != _loc2_ && _root.save.arenaPendant != _loc3_ && _root.save.arenaEarring != _loc2_ && _root.save.arenaEarring != _loc3_ && _root.save.arenaTrinket != _loc2_ && _root.save.arenaTrinket != _loc3_)
            {
               if(VAL[_loc2_] > VAL[_loc3_])
               {
                  VTEMP = VAL[_loc2_];
                  VAL[_loc2_] = VAL[_loc3_];
                  VAL[_loc3_] = VTEMP;
                  _root.swapArenaItem(_loc2_,_loc3_);
               }
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   else if(_root.invTab == 2)
   {
      _loc2_ = 201;
      while(_loc2_ <= 230)
      {
         VAL[_loc2_] = 9999999999;
         if(_root.save.inventoryExist[_loc2_] == 1)
         {
            VAL[_loc2_] = 100000;
            VAL[_loc2_] += _root.save.inventoryBonusPow[_loc2_];
            if(VAL[_loc2_] > 109999)
            {
               VAL[_loc2_] = 109999;
            }
            VAL[_loc2_] += _root.save.inventoryFrame[_loc2_] * 10000;
         }
         _loc2_ = _loc2_ + 1;
      }
      _loc2_ = 201;
      while(_loc2_ <= 229)
      {
         _loc3_ = _loc2_ + 1;
         while(_loc3_ <= 230)
         {
            if(VAL[_loc2_] > VAL[_loc3_])
            {
               VTEMP = VAL[_loc2_];
               VAL[_loc2_] = VAL[_loc3_];
               VAL[_loc3_] = VTEMP;
               _root.swapArenaItem(_loc2_,_loc3_);
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   else if(_root.invTab == 4)
   {
      _loc2_ = 401;
      while(_loc2_ <= 430)
      {
         VAL[_loc2_] = 9999999999;
         if(_root.save.inventoryExist[_loc2_] == 1)
         {
            VAL[_loc2_] = 100000;
            VAL[_loc2_] += _root.save.inventoryDefense[_loc2_];
            if(VAL[_loc2_] > 109999)
            {
               VAL[_loc2_] = 109999;
            }
            VAL[_loc2_] += _root.save.inventoryFrame[_loc2_] * 10000;
         }
         _loc2_ = _loc2_ + 1;
      }
      _loc2_ = 401;
      while(_loc2_ <= 429)
      {
         _loc3_ = _loc2_ + 1;
         while(_loc3_ <= 430)
         {
            if(VAL[_loc2_] > VAL[_loc3_])
            {
               VTEMP = VAL[_loc2_];
               VAL[_loc2_] = VAL[_loc3_];
               VAL[_loc3_] = VTEMP;
               _root.swapArenaItem(_loc2_,_loc3_);
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   else if(_root.invTab == 6)
   {
      _loc2_ = 601;
      while(_loc2_ <= 630)
      {
         VAL[_loc2_] = 9999999999;
         if(_root.save.inventoryExist[_loc2_] == 1)
         {
            VAL[_loc2_] = 1000000;
            VAL[_loc2_] += _root.save.inventoryBonusPow[_loc2_] * 10000;
            VAL[_loc2_] += _root.save.inventoryFrame[_loc2_];
         }
         _loc2_ = _loc2_ + 1;
      }
      _loc2_ = 601;
      while(_loc2_ <= 629)
      {
         _loc3_ = _loc2_ + 1;
         while(_loc3_ <= 630)
         {
            if(_root.save.arenaOutfitHat != _loc2_ && _root.save.arenaOutfitHat != _loc3_ && _root.save.arenaOutfitShirt != _loc2_ && _root.save.arenaOutfitShirt != _loc3_ && _root.save.arenaOutfitGloves != _loc2_ && _root.save.arenaOutfitGloves != _loc3_ && _root.save.arenaOutfitPants != _loc2_ && _root.save.arenaOutfitPants != _loc3_ && _root.save.arenaOutfitShoes != _loc2_ && _root.save.arenaOutfitShoes != _loc3_ && _root.save.arenaOutfitSkin != _loc2_ && _root.save.arenaOutfitSkin != _loc3_ && _root.save.arenaOutfitEarring != _loc2_ && _root.save.arenaOutfitEarring != _loc3_ && _root.save.arenaOutfitMedal != _loc2_ && _root.save.arenaOutfitMedal != _loc3_)
            {
               if(VAL[_loc2_] > VAL[_loc3_])
               {
                  VTEMP = VAL[_loc2_];
                  VAL[_loc2_] = VAL[_loc3_];
                  VAL[_loc3_] = VTEMP;
                  _root.swapArenaItem(_loc2_,_loc3_);
               }
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   else if(_root.invTab == 7)
   {
      _loc2_ = 701;
      while(_loc2_ <= 730)
      {
         VAL[_loc2_] = 9999999999;
         if(_root.save.inventoryExist[_loc2_] == 1)
         {
            VAL[_loc2_] = 1000000;
            VAL[_loc2_] -= _root.save.inventoryBonusPow[_loc2_] * 1000;
            VAL[_loc2_] += _root.save.inventoryAttack[_loc2_];
         }
         _loc2_ = _loc2_ + 1;
      }
      _loc2_ = 701;
      while(_loc2_ <= 729)
      {
         _loc3_ = _loc2_ + 1;
         while(_loc3_ <= 730)
         {
            if(VAL[_loc2_] > VAL[_loc3_])
            {
               VTEMP = VAL[_loc2_];
               VAL[_loc2_] = VAL[_loc3_];
               VAL[_loc3_] = VTEMP;
               _root.swapArenaItem(_loc2_,_loc3_);
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   _root.toCheck = true;
   _root.gCheck = true;
}
_root.arenaSwap1 = 0;
_root.enhancerToUse = 0;
_root.toCheck = true;
_root.gCheck = true;
_root.toCheckDel = 0;
onEnterFrame = function()
{
   if(_root.toCheck == true)
   {
      _root.toCheckDel += 1;
      if(_root.toCheckDel > 3)
      {
         _root.toCheckDel = 0;
         _root.toCheck = false;
      }
   }
   if(_root.house.arena._currentframe != 1)
   {
      _root.toCheck = true;
   }
};
