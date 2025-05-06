//! status=pending
on(release){
   if(_parent._parent.mindMonster != true)
   {
      if(Key.isDown(70))
      {
         if(_currentframe == 1)
         {
            gotoAndStop(8);
         }
         else if(_currentframe == 8)
         {
            gotoAndStop(1);
         }
      }
      else if(_currentframe == 2)
      {
         _parent._parent.nextFrame();
      }
      else if(_currentframe == 1)
      {
         revealTile();
         _root.arcadeTurns -= 1;
      }
      if(_currentframe != 1 && _currentframe != 8)
      {
         _root.focusx = tilex;
         _root.focusy = tiley;
         _root.focusTiletype = tiletype;
         if(tiletype == 5)
         {
            _root.focusDist = distance;
         }
         if(tiletype == 3)
         {
            _root.focusNearby = nearby;
         }
      }
   }
}


onClipEvent(enterFrame){
   if(_root["tile" + tilex + "_" + tiley + "A"] == true && (_currentframe == 1 || _currentframe == 8))
   {
      revealTile();
   }
   if(_root["tile" + tilex + "_" + tiley + "S"] == true && (_currentframe == 1 || _currentframe == 8) && tiletype != 3)
   {
      revealTile();
   }
   if(_root["tile" + tilex + "_" + tiley + "B"] == true && (_currentframe == 1 || _currentframe == 8) && tiletype == 3)
   {
      revealTile();
   }
   if(_root["tile" + tilex + "_" + tiley + "ToArrow"] == true && tiletype != 4)
   {
      changeToArrowTile();
   }
   if(_root["tile" + tilex + "_" + tiley + "ToNumber"] == true && tiletype != 5)
   {
      changeToNumberTile();
   }
   if(_parent._parent.mindMonster == true)
   {
      if(_root["tile" + tilex + "_" + tiley + "R"] == 1 && _currentframe == 3)
      {
         nearbyX = 0;
         if(_root["tile" + (tilex - 1) + "_" + (tiley - 1)] != 3 && _root["tile" + (tilex - 1) + "_" + (tiley - 1)] != undefined && _root["tile" + (tilex - 1) + "_" + (tiley - 1) + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + (tilex - 1) + "_" + tiley] != 3 && _root["tile" + (tilex - 1) + "_" + tiley] != undefined && _root["tile" + (tilex - 1) + "_" + tiley + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + (tilex - 1) + "_" + (tiley + 1)] != 3 && _root["tile" + (tilex - 1) + "_" + (tiley + 1)] != undefined && _root["tile" + (tilex - 1) + "_" + (tiley + 1) + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + tilex + "_" + (tiley - 1)] != 3 && _root["tile" + tilex + "_" + (tiley - 1)] != undefined && _root["tile" + tilex + "_" + (tiley - 1) + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + tilex + "_" + (tiley + 1)] != 3 && _root["tile" + tilex + "_" + (tiley + 1)] != undefined && _root["tile" + tilex + "_" + (tiley + 1) + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + (tilex + 1) + "_" + (tiley - 1)] != 3 && _root["tile" + (tilex + 1) + "_" + (tiley - 1)] != undefined && _root["tile" + (tilex + 1) + "_" + (tiley - 1) + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + (tilex + 1) + "_" + tiley] != 3 && _root["tile" + (tilex + 1) + "_" + tiley] != undefined && _root["tile" + (tilex + 1) + "_" + tiley + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(_root["tile" + (tilex + 1) + "_" + (tiley + 1)] != 3 && _root["tile" + (tilex + 1) + "_" + (tiley + 1)] != undefined && _root["tile" + (tilex + 1) + "_" + (tiley + 1) + "R"] == 1)
         {
            nearbyX += 1;
         }
         if(nearbyX >= nearby)
         {
            _root["tile" + (tilex - 1) + "_" + (tiley - 1) + "F"] = 1;
            _root["tile" + (tilex - 1) + "_" + tiley + "F"] = 1;
            _root["tile" + (tilex - 1) + "_" + (tiley + 1) + "F"] = 1;
            _root["tile" + tilex + "_" + (tiley - 1) + "F"] = 1;
            _root["tile" + tilex + "_" + (tiley + 1) + "F"] = 1;
            _root["tile" + (tilex + 1) + "_" + (tiley - 1) + "F"] = 1;
            _root["tile" + (tilex + 1) + "_" + tiley + "F"] = 1;
            _root["tile" + (tilex + 1) + "_" + (tiley + 1) + "F"] = 1;
         }
      }
      if(_root["tile" + tilex + "_" + tiley + "R"] == 1 && _currentframe == 1)
      {
         if(_root.treasurerevealed < 1 && tiletype != 2)
         {
            tiletype = 4;
            _root["tile" + tilex + "_" + tiley] = tiletype;
            if(_root.keyx < tilex)
            {
               directionx = "LEFT";
            }
            else if(_root.keyx > tilex)
            {
               directionx = "RIGHT";
            }
            directiony = "N/A";
            if(_root.keyy < tiley)
            {
               directiony = "UP";
            }
            if(_root.keyy > tiley)
            {
               directiony = "DOWN";
            }
            if(directionx == "N/A")
            {
               if(directiony == "UP")
               {
                  rotat = 0;
               }
               if(directiony == "DOWN")
               {
                  rotat = 180;
               }
            }
            else if(directiony == "N/A")
            {
               if(directionx == "LEFT")
               {
                  rotat = 270;
               }
               if(directionx == "RIGHT")
               {
                  rotat = 90;
               }
            }
            else if(Math.random() < 0.5)
            {
               if(directiony == "UP")
               {
                  rotat = 0;
               }
               if(directiony == "DOWN")
               {
                  rotat = 180;
               }
            }
            else
            {
               if(directionx == "LEFT")
               {
                  rotat = 270;
               }
               if(directionx == "RIGHT")
               {
                  rotat = 90;
               }
            }
            if(rotat == 0)
            {
               X = 0;
               while(X <= 19)
               {
                  Y = tiley;
                  while(Y <= 9)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                     Y++;
                  }
                  X++;
               }
            }
            if(rotat == 180)
            {
               X = 0;
               while(X <= 19)
               {
                  Y = 0;
                  while(Y <= tiley)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                     Y++;
                  }
                  X++;
               }
            }
            if(rotat == 270)
            {
               X = tilex;
               while(X <= 19)
               {
                  Y = 0;
                  while(Y <= 9)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                     Y++;
                  }
                  X++;
               }
            }
            if(rotat == 90)
            {
               X = 0;
               while(X <= tilex)
               {
                  Y = 0;
                  while(Y <= 9)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                     Y++;
                  }
                  X++;
               }
            }
            _root.arcadeScore += 200 * _root.arcadeMultiplier;
         }
         else if(_root.treasurerevealed >= Math.round(7 + _root.arcadeMultiplier / 5) && tiletype != 2 && tiletype != 3 && _root.redrevealed != true)
         {
            _root.redrevealed = true;
            tiletype = 5;
            xdiff = _root.keyx - tilex;
            if(xdiff < 0)
            {
               xdiff = - xdiff;
            }
            ydiff = _root.keyy - tiley;
            if(ydiff < 0)
            {
               ydiff = - ydiff;
            }
            distance = xdiff + ydiff;
            X = 0;
            while(X <= 19)
            {
               Y = 0;
               while(Y <= 9)
               {
                  dist = Math.abs(X - tilex) + Math.abs(Y - tiley);
                  if(dist != distance)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                  }
                  Y++;
               }
               X++;
            }
            _root.arcadeScore += 200 * _root.arcadeMultiplier;
         }
         else if(_root.treasurerevealed >= Math.round(7 + _root.arcadeMultiplier / 5) && _root.treasurerevealed % 4 == 0 && tiletype == 6)
         {
            if(_root.treasurerevealed % 8 == 0)
            {
               tiletype = 4;
               _root["tile" + tilex + "_" + tiley] = tiletype;
               if(_root.keyx < tilex)
               {
                  directionx = "LEFT";
               }
               else if(_root.keyx > tilex)
               {
                  directionx = "RIGHT";
               }
               directiony = "N/A";
               if(_root.keyy < tiley)
               {
                  directiony = "UP";
               }
               if(_root.keyy > tiley)
               {
                  directiony = "DOWN";
               }
               if(directionx == "N/A")
               {
                  if(directiony == "UP")
                  {
                     rotat = 0;
                  }
                  if(directiony == "DOWN")
                  {
                     rotat = 180;
                  }
               }
               else if(directiony == "N/A")
               {
                  if(directionx == "LEFT")
                  {
                     rotat = 270;
                  }
                  if(directionx == "RIGHT")
                  {
                     rotat = 90;
                  }
               }
               else if(Math.random() < 0.5)
               {
                  if(directiony == "UP")
                  {
                     rotat = 0;
                  }
                  if(directiony == "DOWN")
                  {
                     rotat = 180;
                  }
               }
               else
               {
                  if(directionx == "LEFT")
                  {
                     rotat = 270;
                  }
                  if(directionx == "RIGHT")
                  {
                     rotat = 90;
                  }
               }
               if(rotat == 0)
               {
                  X = 0;
                  while(X <= 19)
                  {
                     Y = tiley;
                     while(Y <= 9)
                     {
                        _root["tile" + X + "_" + Y + "F"] = 1;
                        Y++;
                     }
                     X++;
                  }
               }
               if(rotat == 180)
               {
                  X = 0;
                  while(X <= 19)
                  {
                     Y = 0;
                     while(Y <= tiley)
                     {
                        _root["tile" + X + "_" + Y + "F"] = 1;
                        Y++;
                     }
                     X++;
                  }
               }
               if(rotat == 270)
               {
                  X = tilex;
                  while(X <= 19)
                  {
                     Y = 0;
                     while(Y <= 9)
                     {
                        _root["tile" + X + "_" + Y + "F"] = 1;
                        Y++;
                     }
                     X++;
                  }
               }
               if(rotat == 90)
               {
                  X = 0;
                  while(X <= tilex)
                  {
                     Y = 0;
                     while(Y <= 9)
                     {
                        _root["tile" + X + "_" + Y + "F"] = 1;
                        Y++;
                     }
                     X++;
                  }
               }
               _root.arcadeScore += 200 * _root.arcadeMultiplier;
            }
            else
            {
               tiletype = 7;
               _root.arcadeScore += 100 * _root.arcadeMultiplier;
               _root.arcadeTurns += 2;
            }
         }
         else if(tiletype == 2)
         {
            _root.arcadeTurns += 2;
            _root.arcadeScore += (1000 + _root.save.arcadeDifficulty[5] * 500) * _root.arcadeMultiplier;
            _root.mindMonsterFound = 1;
         }
         else if(tiletype == 3)
         {
            nearby = 0;
            if(_root["tile" + (tilex - 1) + "_" + (tiley - 1)] != 3 && _root["tile" + (tilex - 1) + "_" + (tiley - 1)] != undefined)
            {
               nearby += 1;
            }
            if(_root["tile" + (tilex - 1) + "_" + tiley] != 3 && _root["tile" + (tilex - 1) + "_" + tiley] != undefined)
            {
               nearby += 1;
            }
            if(_root["tile" + (tilex - 1) + "_" + (tiley + 1)] != 3 && _root["tile" + (tilex - 1) + "_" + (tiley + 1)] != undefined)
            {
               nearby += 1;
            }
            if(_root["tile" + tilex + "_" + (tiley - 1)] != 3 && _root["tile" + tilex + "_" + (tiley - 1)] != undefined)
            {
               nearby += 1;
            }
            if(_root["tile" + tilex + "_" + (tiley + 1)] != 3 && _root["tile" + tilex + "_" + (tiley + 1)] != undefined)
            {
               nearby += 1;
            }
            if(_root["tile" + (tilex + 1) + "_" + (tiley - 1)] != 3 && _root["tile" + (tilex + 1) + "_" + (tiley - 1)] != undefined)
            {
               nearby += 1;
            }
            if(_root["tile" + (tilex + 1) + "_" + tiley] != 3 && _root["tile" + (tilex + 1) + "_" + tiley] != undefined)
            {
               nearby += 1;
            }
            if(_root["tile" + (tilex + 1) + "_" + (tiley + 1)] != 3 && _root["tile" + (tilex + 1) + "_" + (tiley + 1)] != undefined)
            {
               nearby += 1;
            }
            _root.arcadeScore += 10 * _root.arcadeMultiplier;
         }
         else if(tiletype == 4)
         {
            if(_root.keyx < tilex)
            {
               directionx = "LEFT";
            }
            else if(_root.keyx > tilex)
            {
               directionx = "RIGHT";
            }
            directiony = "N/A";
            if(_root.keyy < tiley)
            {
               directiony = "UP";
            }
            if(_root.keyy > tiley)
            {
               directiony = "DOWN";
            }
            if(directionx == "N/A")
            {
               if(directiony == "UP")
               {
                  rotat = 0;
               }
               if(directiony == "DOWN")
               {
                  rotat = 180;
               }
            }
            else if(directiony == "N/A")
            {
               if(directionx == "LEFT")
               {
                  rotat = 270;
               }
               if(directionx == "RIGHT")
               {
                  rotat = 90;
               }
            }
            else if(Math.random() < 0.5)
            {
               if(directiony == "UP")
               {
                  rotat = 0;
               }
               if(directiony == "DOWN")
               {
                  rotat = 180;
               }
            }
            else
            {
               if(directionx == "LEFT")
               {
                  rotat = 270;
               }
               if(directionx == "RIGHT")
               {
                  rotat = 90;
               }
            }
            if(rotat == 0)
            {
               X = 0;
               while(X <= 19)
               {
                  Y = tiley;
                  while(Y <= 9)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                     Y++;
                  }
                  X++;
               }
            }
            if(rotat == 180)
            {
               X = 0;
               while(X <= 19)
               {
                  Y = 0;
                  while(Y <= tiley)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                     Y++;
                  }
                  X++;
               }
            }
            if(rotat == 270)
            {
               X = tilex;
               while(X <= 19)
               {
                  Y = 0;
                  while(Y <= 9)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                     Y++;
                  }
                  X++;
               }
            }
            if(rotat == 90)
            {
               X = 0;
               while(X <= tilex)
               {
                  Y = 0;
                  while(Y <= 9)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                     Y++;
                  }
                  X++;
               }
            }
            _root.arcadeScore += 200 * _root.arcadeMultiplier;
         }
         else if(tiletype == 5)
         {
            xdiff = _root.keyx - tilex;
            if(xdiff < 0)
            {
               xdiff = - xdiff;
            }
            ydiff = _root.keyy - tiley;
            if(ydiff < 0)
            {
               ydiff = - ydiff;
            }
            distance = xdiff + ydiff;
            X = 0;
            while(X <= 19)
            {
               Y = 0;
               while(Y <= 9)
               {
                  dist = Math.abs(X - tilex) + Math.abs(Y - tiley);
                  if(dist != distance)
                  {
                     _root["tile" + X + "_" + Y + "F"] = 1;
                  }
                  Y++;
               }
               X++;
            }
            _root.arcadeScore += 200 * _root.arcadeMultiplier;
         }
         else if(tiletype == 6)
         {
            _root.arcadeScore += 100 * _root.arcadeMultiplier;
            _root.arcadeTimeLeft += 5;
         }
         else if(tiletype == 7)
         {
            _root.arcadeScore += 100 * _root.arcadeMultiplier;
            _root.arcadeTurns += 2;
         }
         else if(tiletype == 9)
         {
            _root.arcadeScore += 100 * _root.arcadeMultiplier;
         }
         _root.treasurerevealed += 1;
         gotoAndStop(tiletype);
         _root.arcadeTurns -= 1;
         if(_currentframe != 8)
         {
            _root.focusx = tilex;
            _root.focusy = tiley;
            _root.focusTiletype = tiletype;
            if(tiletype == 5)
            {
               _root.focusDist = distance;
            }
         }
      }
      else if(_root["tile" + tilex + "_" + tiley + "F"] == 1 && _root["tile" + tilex + "_" + tiley + "R"] == 0)
      {
         gotoAndStop(8);
      }
   }
}


onClipEvent(load){
   function revealTile()
   {
      if(_root.treasurerevealed < 1 && tiletype != 2)
      {
         tiletype = 4;
         _root["tile" + tilex + "_" + tiley] = tiletype;
         if(_root.keyx < tilex)
         {
            directionx = "LEFT";
         }
         else if(_root.keyx > tilex)
         {
            directionx = "RIGHT";
         }
         directiony = "N/A";
         if(_root.keyy < tiley)
         {
            directiony = "UP";
         }
         if(_root.keyy > tiley)
         {
            directiony = "DOWN";
         }
         if(directionx == "N/A")
         {
            if(directiony == "UP")
            {
               rotat = 0;
            }
            if(directiony == "DOWN")
            {
               rotat = 180;
            }
         }
         else if(directiony == "N/A")
         {
            if(directionx == "LEFT")
            {
               rotat = 270;
            }
            if(directionx == "RIGHT")
            {
               rotat = 90;
            }
         }
         else if(Math.random() < 0.5)
         {
            if(directiony == "UP")
            {
               rotat = 0;
            }
            if(directiony == "DOWN")
            {
               rotat = 180;
            }
         }
         else
         {
            if(directionx == "LEFT")
            {
               rotat = 270;
            }
            if(directionx == "RIGHT")
            {
               rotat = 90;
            }
         }
         _root.arcadeScore += 200 * _root.arcadeMultiplier;
         if(_root.save.arcadeDifficulty[5] == 1)
         {
            var _loc2_ = 1;
            while(_loc2_ <= 15 - _root.arcadeMultiplier / 8)
            {
               tmpTilex = random(20);
               tmpTiley = random(10);
               _root["tile" + tmpTilex + "_" + tmpTiley + "B"] = true;
               _loc2_ = _loc2_ + 1;
            }
         }
      }
      else if(_root.treasurerevealed >= Math.round(3 + _root.arcadeMultiplier / 3) && tiletype != 2 && tiletype != 3 && _root.redrevealed != true)
      {
         _root.redrevealed = true;
         tiletype = 5;
         xdiff = _root.keyx - tilex;
         if(xdiff < 0)
         {
            xdiff = - xdiff;
         }
         ydiff = _root.keyy - tiley;
         if(ydiff < 0)
         {
            ydiff = - ydiff;
         }
         distance = xdiff + ydiff;
         _root.arcadeScore += 200 * _root.arcadeMultiplier;
      }
      else if(_root.treasurerevealed >= Math.round(3 + _root.arcadeMultiplier / 3) && _root.treasurerevealed % 5 == 0 && tiletype == 6)
      {
         if(_root.treasurerevealed % 10 == 0)
         {
            tiletype = 4;
            _root["tile" + tilex + "_" + tiley] = tiletype;
            if(_root.keyx < tilex)
            {
               directionx = "LEFT";
            }
            else if(_root.keyx > tilex)
            {
               directionx = "RIGHT";
            }
            directiony = "N/A";
            if(_root.keyy < tiley)
            {
               directiony = "UP";
            }
            if(_root.keyy > tiley)
            {
               directiony = "DOWN";
            }
            if(directionx == "N/A")
            {
               if(directiony == "UP")
               {
                  rotat = 0;
               }
               if(directiony == "DOWN")
               {
                  rotat = 180;
               }
            }
            else if(directiony == "N/A")
            {
               if(directionx == "LEFT")
               {
                  rotat = 270;
               }
               if(directionx == "RIGHT")
               {
                  rotat = 90;
               }
            }
            else if(Math.random() < 0.5)
            {
               if(directiony == "UP")
               {
                  rotat = 0;
               }
               if(directiony == "DOWN")
               {
                  rotat = 180;
               }
            }
            else
            {
               if(directionx == "LEFT")
               {
                  rotat = 270;
               }
               if(directionx == "RIGHT")
               {
                  rotat = 90;
               }
            }
            if(rotat == 0)
            {
               var _loc3_ = 0;
               while(_loc3_ <= 19)
               {
                  var _loc4_ = tiley;
                  while(_loc4_ <= 9)
                  {
                     _root["tile" + _loc3_ + "_" + _loc4_ + "F"] = 1;
                     _loc4_ = _loc4_ + 1;
                  }
                  _loc3_ = _loc3_ + 1;
               }
            }
            if(rotat == 180)
            {
               _loc3_ = 0;
               while(_loc3_ <= 19)
               {
                  _loc4_ = 0;
                  while(_loc4_ <= tiley)
                  {
                     _root["tile" + _loc3_ + "_" + _loc4_ + "F"] = 1;
                     _loc4_ = _loc4_ + 1;
                  }
                  _loc3_ = _loc3_ + 1;
               }
            }
            if(rotat == 270)
            {
               _loc3_ = tilex;
               while(_loc3_ <= 19)
               {
                  _loc4_ = 0;
                  while(_loc4_ <= 9)
                  {
                     _root["tile" + _loc3_ + "_" + _loc4_ + "F"] = 1;
                     _loc4_ = _loc4_ + 1;
                  }
                  _loc3_ = _loc3_ + 1;
               }
            }
            if(rotat == 90)
            {
               _loc3_ = 0;
               while(_loc3_ <= tilex)
               {
                  _loc4_ = 0;
                  while(_loc4_ <= 9)
                  {
                     _root["tile" + _loc3_ + "_" + _loc4_ + "F"] = 1;
                     _loc4_ = _loc4_ + 1;
                  }
                  _loc3_ = _loc3_ + 1;
               }
            }
            _root.arcadeScore += 200 * _root.arcadeMultiplier;
         }
         else
         {
            tiletype = 7;
            _root.arcadeScore += 100 * _root.arcadeMultiplier;
            _root.arcadeTurns += 2;
         }
      }
      else if(tiletype == 2)
      {
         _root.keyrevealed = true;
         _root.arcadeTurns += 2;
         _root.arcadeScore += (1000 + _root.save.arcadeDifficulty[5] * 500) * _root.arcadeMultiplier;
         progToEarn = 500 + _root.arcadeMultiplier * 100;
         _root.progPercent += progToEarn;
         _root.dispNews(89,"[MindSweeper] Goal found! (+" + progToEarn + "% Progress)");
      }
      else if(tiletype == 3)
      {
         nearby = 0;
         if(_root["tile" + (tilex - 1) + "_" + (tiley - 1)] != 3 && _root["tile" + (tilex - 1) + "_" + (tiley - 1)] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + (tilex - 1) + "_" + tiley] != 3 && _root["tile" + (tilex - 1) + "_" + tiley] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + (tilex - 1) + "_" + (tiley + 1)] != 3 && _root["tile" + (tilex - 1) + "_" + (tiley + 1)] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + tilex + "_" + (tiley - 1)] != 3 && _root["tile" + tilex + "_" + (tiley - 1)] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + tilex + "_" + (tiley + 1)] != 3 && _root["tile" + tilex + "_" + (tiley + 1)] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + (tilex + 1) + "_" + (tiley - 1)] != 3 && _root["tile" + (tilex + 1) + "_" + (tiley - 1)] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + (tilex + 1) + "_" + tiley] != 3 && _root["tile" + (tilex + 1) + "_" + tiley] != undefined)
         {
            nearby += 1;
         }
         if(_root["tile" + (tilex + 1) + "_" + (tiley + 1)] != 3 && _root["tile" + (tilex + 1) + "_" + (tiley + 1)] != undefined)
         {
            nearby += 1;
         }
         _root.arcadeScore += 10 * _root.arcadeMultiplier;
      }
      else if(tiletype == 4)
      {
         if(_root.keyx < tilex)
         {
            directionx = "LEFT";
         }
         else if(_root.keyx > tilex)
         {
            directionx = "RIGHT";
         }
         directiony = "N/A";
         if(_root.keyy < tiley)
         {
            directiony = "UP";
         }
         if(_root.keyy > tiley)
         {
            directiony = "DOWN";
         }
         if(directionx == "N/A")
         {
            if(directiony == "UP")
            {
               rotat = 0;
            }
            if(directiony == "DOWN")
            {
               rotat = 180;
            }
         }
         else if(directiony == "N/A")
         {
            if(directionx == "LEFT")
            {
               rotat = 270;
            }
            if(directionx == "RIGHT")
            {
               rotat = 90;
            }
         }
         else if(Math.random() < 0.5)
         {
            if(directiony == "UP")
            {
               rotat = 0;
            }
            if(directiony == "DOWN")
            {
               rotat = 180;
            }
         }
         else
         {
            if(directionx == "LEFT")
            {
               rotat = 270;
            }
            if(directionx == "RIGHT")
            {
               rotat = 90;
            }
         }
         _root.arcadeScore += 200 * _root.arcadeMultiplier;
      }
      else if(tiletype == 5)
      {
         xdiff = _root.keyx - tilex;
         if(xdiff < 0)
         {
            xdiff = - xdiff;
         }
         ydiff = _root.keyy - tiley;
         if(ydiff < 0)
         {
            ydiff = - ydiff;
         }
         distance = xdiff + ydiff;
         _root.arcadeScore += 200 * _root.arcadeMultiplier;
      }
      else if(tiletype == 6)
      {
         _root.arcadeScore += 100 * _root.arcadeMultiplier;
         _root.arcadeTimeLeft += 5;
      }
      else if(tiletype == 7)
      {
         _root.arcadeScore += 100 * _root.arcadeMultiplier;
         _root.arcadeTurns += 2;
      }
      else if(tiletype == 9)
      {
         _root.arcadeScore += 100 * _root.arcadeMultiplier;
         _root.gainWhiteCoin(1);
      }
      _root.treasurerevealed += 1;
      gotoAndStop(tiletype);
   }
   function changeToArrowTile()
   {
      if(_root.keyx < tilex)
      {
         directionx = "LEFT";
      }
      else if(_root.keyx > tilex)
      {
         directionx = "RIGHT";
      }
      directiony = "N/A";
      if(_root.keyy < tiley)
      {
         directiony = "UP";
      }
      if(_root.keyy > tiley)
      {
         directiony = "DOWN";
      }
      if(directionx == "N/A")
      {
         if(directiony == "UP")
         {
            rotat = 0;
         }
         if(directiony == "DOWN")
         {
            rotat = 180;
         }
      }
      else if(directiony == "N/A")
      {
         if(directionx == "LEFT")
         {
            rotat = 270;
         }
         if(directionx == "RIGHT")
         {
            rotat = 90;
         }
      }
      else if(Math.random() < 0.5)
      {
         if(directiony == "UP")
         {
            rotat = 0;
         }
         if(directiony == "DOWN")
         {
            rotat = 180;
         }
      }
      else
      {
         if(directionx == "LEFT")
         {
            rotat = 270;
         }
         if(directionx == "RIGHT")
         {
            rotat = 90;
         }
      }
      _root.arcadeScore += 200 * _root.arcadeMultiplier;
      tiletype = 4;
      gotoAndStop(4);
      _root.focusTiletype = tiletype;
   }
   function changeToNumberTile()
   {
      xdiff = _root.keyx - tilex;
      if(xdiff < 0)
      {
         xdiff = - xdiff;
      }
      ydiff = _root.keyy - tiley;
      if(ydiff < 0)
      {
         ydiff = - ydiff;
      }
      distance = xdiff + ydiff;
      _root.arcadeScore += 200 * _root.arcadeMultiplier;
      tiletype = 5;
      gotoAndStop(5);
      _root.focusTiletype = tiletype;
      _root.focusDist = distance;
   }
   unrankedMult = 1;
   if(_root.save.rankedMode != true)
   {
      unrankedMult = 1 + _root.save.unrankedPower[27] * 0.04;
   }
   if(_root.save.arcadeDifficulty[5] == 1)
   {
      unrankedMult *= 1.1;
   }
   if(_root.save.arcadeDifficulty[5] == 3)
   {
      unrankedMult *= 0.95;
   }
   if(_root.save.arcadeDifficulty[5] == 4)
   {
      unrankedMult *= 0.9;
   }
   tilex = Math.floor(_parent._x / 24);
   tiley = Math.floor(_parent._y / 24);
   directionx = "N/A";
   tiletype = 3;
   if(Math.random() < 0.02 + _root.arcadeMultiplier * 0.0002 && _root.arcadeMultiplier >= 20)
   {
      tiletype = 9;
   }
   else if(Math.random() < (0.1 + 0.4 / _root.arcadeMultiplier) * unrankedMult)
   {
      tiletype = 4;
   }
   else if(Math.random() < (0.04 + 0.16 / _root.arcadeMultiplier) * unrankedMult)
   {
      tiletype = 5;
   }
   else if(Math.random() < 0.075 - _root.save.arcadeDifficulty[5] * 0.005 + Math.min(_root.arcadeMultiplier,25) * 0.00035)
   {
      tiletype = 6;
   }
   else if(Math.random() < 0.0525 - _root.save.arcadeDifficulty[5] * 0.0025 + Math.min(_root.arcadeMultiplier,25) * 0.00025)
   {
      tiletype = 7;
   }
   if(tilex == _root.keyx && tiley == _root.keyy)
   {
      tiletype = 2;
   }
   _root["tile" + tilex + "_" + tiley] = tiletype;
   _root["tile" + tilex + "_" + tiley + "A"] = false;
   _root["tile" + tilex + "_" + tiley + "S"] = false;
   _root["tile" + tilex + "_" + tiley + "B"] = false;
   _root["tile" + tilex + "_" + tiley + "ToArrow"] = false;
   _root["tile" + tilex + "_" + tiley + "ToNumber"] = false;
}


