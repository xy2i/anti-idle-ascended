//! status=pending
del = 40;
holdL = false;
holdR = false;
minCol = 1;
maxCol = 15;
onEnterFrame = function()
{
   if(_root.save.arenaZone == 46)
   {
      if(Key.isDown(37))
      {
         if(holdL != true)
         {
            _root.save.medalColor -= 1;
            if(_root.save.medalColor < minCol)
            {
               _root.save.medalColor = maxCol;
            }
            del = 40;
            holdL = true;
         }
      }
      else if(holdL == true)
      {
         holdL = false;
      }
      if(Key.isDown(39))
      {
         if(holdR != true)
         {
            _root.save.medalColor += 1;
            if(_root.save.medalColor > maxCol)
            {
               _root.save.medalColor = minCol;
            }
            del = 40;
            holdR = true;
         }
      }
      else if(holdR == true)
      {
         holdR = false;
      }
   }
   del += 1;
   if(del >= 40)
   {
      del = 0;
      if(_root.save.inventoryName[_root.save.arenaOutfitMedal] != "" && _root.save.arenaOutfitMedal != 0 && _root.cursoridle < 600 && _root.save.inventoryFrame[_root.save.arenaOutfitMedal] > 4)
      {
         gotoAndStop(2);
         textBox.text = _root.save.inventoryName[_root.save.arenaOutfitMedal];
         medIcon.gotoAndStop(_root.save.inventoryFrame[_root.save.arenaOutfitMedal]);
         bgBox._width = textBox.textWidth + 22;
         bgBox.gotoAndStop(_root.save.medalColor + 1);
         textBox._x = 2;
         medIcon._x = bgBox._width;
         _X = Math.floor(30 - bgBox._width / 2);
         if(_X < -35)
         {
            _X = -35;
         }
      }
      else if(_root.save.inventoryName[_root.save.arenaOutfitMedal] != "" && _root.save.arenaOutfitMedal != 0 && _root.cursoridle < 600 && _root.save.inventoryFrame[_root.save.arenaOutfitMedal] <= 3)
      {
         gotoAndStop(1);
      }
      else if(_root.save.inventoryName[_root.save.arenaMedal] != "" && _root.save.arenaMedal != 0 && _root.cursoridle < 600 && _root.save.inventoryFrame[_root.save.arenaMedal] > 4)
      {
         gotoAndStop(2);
         textBox.text = _root.save.inventoryName[_root.save.arenaMedal];
         medIcon.gotoAndStop(_root.save.inventoryFrame[_root.save.arenaMedal]);
         bgBox._width = textBox.textWidth + 22;
         bgBox.gotoAndStop(_root.save.medalColor + 1);
         textBox._x = 2;
         medIcon._x = bgBox._width;
         _X = Math.floor(30 - bgBox._width / 2);
         if(_X < -35)
         {
            _X = -35;
         }
      }
      else
      {
         gotoAndStop(1);
      }
   }
};
