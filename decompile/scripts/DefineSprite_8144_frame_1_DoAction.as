//! status=pending
function checkLight()
{
   alt = !alt;
   light = false;
   tempDesc = "<b><font color=\'#FFFF00\'>" + _root.save["tech" + i + "Program"] + "</font></b>\n";
   if(_root.save["tech" + i + "Program"] != "Disabled")
   {
      if(_root.save["tech" + i + "Program"] == "Variable Check")
      {
         if(_root.save["tech" + i + "Array"][1] == true)
         {
            if(_root.save["tech" + i + "Array"][2] == true)
            {
               varToCheck = _root[_root.save["tech" + i + "StringA"]][_root.save["tech" + i + "NumberC"]];
               tempDesc += "\nTracked Variable:\n_root." + _root.save["tech" + i + "StringA"] + "[" + _root.save["tech" + i + "NumberC"] + "]";
            }
            else
            {
               varToCheck = _root[_root.save["tech" + i + "StringA"]];
               tempDesc += "\nTracked Variable:\n_root." + _root.save["tech" + i + "StringA"];
            }
         }
         else if(_root.save["tech" + i + "Array"][2] == true)
         {
            varToCheck = _root.save[_root.save["tech" + i + "StringA"]][_root.save["tech" + i + "NumberC"]];
            tempDesc += "\nTracked Variable:\n_root.save." + _root.save["tech" + i + "StringA"] + "[" + _root.save["tech" + i + "NumberC"] + "]";
         }
         else
         {
            varToCheck = _root.save[_root.save["tech" + i + "StringA"]];
            tempDesc += "\nTracked Variable:\n_root.save." + _root.save["tech" + i + "StringA"];
         }
         if(_root.save["tech" + i + "Array"][1] == true && (_root.house._currentframe == 10 || _root.house._currentframe == 12))
         {
            tempDesc += "\n\nValue:\n<b>[temporarily unavailable]</b>";
         }
         else if(_root.save["tech" + i + "Array"][1] == true && _root.house._currentframe == 7 && (_root.save.arenaZone == 53 || _root.save.arenaZone == 78))
         {
            tempDesc += "\n\nValue:\n<b>[temporarily unavailable]</b>";
         }
         else if(!isNaN(varToCheck))
         {
            tempDesc += "\n\nValue:\n<b>" + _root.withComma(varToCheck) + "</b>";
         }
         else if(varToCheck == undefined)
         {
            tempDesc += "\n\nValue:\n<b>(Not defined)</b>";
         }
         else if(varToCheck.length < 200)
         {
            tempDesc += "\n\nValue:\n<b>" + varToCheck + "</b>";
         }
         else
         {
            tempDesc += "\n\nValue:\n<b>(Cannot be displayed)</b>";
         }
         if(!(_root.save["tech" + i + "Array"][1] == true && (_root.house._currentframe == 10 || _root.house._currentframe == 12)))
         {
            if(!(_root.save["tech" + i + "Array"][1] == true && _root.house._currentframe == 7 && (_root.save.arenaZone == 53 || _root.save.arenaZone == 78)))
            {
               if(_root.save["tech" + i + "Array"][3] == true)
               {
                  if(varToCheck == _root.save["tech" + i + "StringB"])
                  {
                     light = true;
                  }
               }
               else if(varToCheck >= _root.save["tech" + i + "NumberA"] && varToCheck <= _root.save["tech" + i + "NumberB"])
               {
                  light = true;
               }
            }
         }
      }
      if(_root.save["tech" + i + "Program"] == "Inventory Check")
      {
         tempDesc += "\nWeapon slots left: <b>" + _root.emptyWeaponSlot + "</b>";
         tempDesc += "\nArmor slots left: <b>" + _root.emptyArmorSlot + "</b>";
         tempDesc += "\nAccessory slots left: <b>" + _root.emptyAccessorySlot + "</b>";
         tempDesc += "\nEnhancer slots left: <b>" + _root.emptyEnhancerSlot + "</b>";
         tempDesc += "\nPotion slots left: <b>" + _root.emptyPotionSlot + "</b>";
         tempDesc += "\nOutfit slots left: <b>" + _root.emptyOutfitSlot + "</b>";
         tempDesc += "\nChip slots left: <b>" + _root.emptyChipSlot + "</b>";
         if(_root.save["tech" + i + "Array"][1] == true && _root.emptyWeaponSlot <= _root.save["tech" + i + "NumberA"])
         {
            light = true;
         }
         if(_root.save["tech" + i + "Array"][2] == true && _root.emptyArmorSlot <= _root.save["tech" + i + "NumberA"])
         {
            light = true;
         }
         if(_root.save["tech" + i + "Array"][3] == true && _root.emptyAccessorySlot <= _root.save["tech" + i + "NumberA"])
         {
            light = true;
         }
         if(_root.save["tech" + i + "Array"][4] == true && _root.emptyEnhancerSlot <= _root.save["tech" + i + "NumberA"])
         {
            light = true;
         }
         if(_root.save["tech" + i + "Array"][5] == true && _root.emptyPotionSlot <= _root.save["tech" + i + "NumberA"])
         {
            light = true;
         }
         if(_root.save["tech" + i + "Array"][6] == true && _root.emptyOutfitSlot <= _root.save["tech" + i + "NumberA"])
         {
            light = true;
         }
         if(_root.save["tech" + i + "Array"][7] == true && _root.emptyChipSlot <= _root.save["tech" + i + "NumberA"])
         {
            light = true;
         }
      }
      if(_root.save["tech" + i + "Program"] == "Time Check")
      {
         minCorruptA = 15 - _root.save["tech" + i + "NumberA"];
         maxCorruptA = 17;
         minCorruptB = 45 - _root.save["tech" + i + "NumberA"];
         maxCorruptB = 47;
         minRevengeA = 5 - _root.save["tech" + i + "NumberA"];
         maxRevengeA = 7;
         minRevengeB = 20 - _root.save["tech" + i + "NumberA"];
         maxRevengeB = 22;
         minRevengeC = 35 - _root.save["tech" + i + "NumberA"];
         maxRevengeC = 37;
         minRevengeD = 50 - _root.save["tech" + i + "NumberA"];
         maxRevengeD = 52;
         minEndless = 30 - _root.save["tech" + i + "NumberA"];
         maxEndless = 32;
         tempMin = _root.clock_min;
         tempDesc += "\nThe Corruption entries: <b>\n" + _root.save.arenaCorruptionEntry + "</b>\n";
         tempDesc += "\nTHE MEGABOSS\'s Revenge entries: \n<b>" + _root.save.arenaRevengeEntry + "</b>\n";
         tempDesc += "\nEndless Dungeon entries: \n<b>" + _root.save.arenaEndlessEntry + "</b>\n";
         if(_root.save["tech" + i + "Array"][1] == true && _root.save.arenaCorruptionEntry > 0 && _root.save.level >= 1000)
         {
            if(tempMin >= minCorruptA && tempMin <= maxCorruptA)
            {
               tempDesc += "\n<b><font color=\'#FF9900\'>It\'s time for The Corruption!</font></b>";
               light = true;
            }
            if(tempMin >= minCorruptB && tempMin <= maxCorruptB)
            {
               tempDesc += "\n<b><font color=\'#FF9900\'>It\'s time for The Corruption!</font></b>";
               light = true;
            }
         }
         if(_root.save["tech" + i + "Array"][2] == true && _root.save.arenaRevengeEntry > 0 && _root.save.arenaBestiary[295] >= 1 && !isNaN(_root.save.arenaBestiary[295]))
         {
            if(tempMin >= minRevengeA && tempMin <= maxRevengeA)
            {
               tempDesc += "\n<b><font color=\'#0099FF\'>It\'s time for THE MEGABOSS\'s Revenge!</font></b>";
               light = true;
            }
            if(tempMin >= minRevengeB && tempMin <= maxRevengeB)
            {
               tempDesc += "\n<b><font color=\'#0099FF\'>It\'s time for THE MEGABOSS\'s Revenge!</font></b>";
               light = true;
            }
            if(tempMin >= minRevengeC && tempMin <= maxRevengeC)
            {
               tempDesc += "\n<b><font color=\'#0099FF\'>It\'s time for THE MEGABOSS\'s Revenge!</font></b>";
               light = true;
            }
            if(tempMin >= minRevengeD && tempMin <= maxRevengeD)
            {
               tempDesc += "\n<b><font color=\'#0099FF\'>It\'s time for THE MEGABOSS\'s Revenge!</font></b>";
               light = true;
            }
         }
         if(_root.save["tech" + i + "Array"][3] == true && _root.save.arenaEndlessEntry > 0 && _root.save.arenaBestiary[432] >= 1 && !isNaN(_root.save.arenaBestiary[432]))
         {
            if(tempMin >= minEndless && tempMin <= maxEndless)
            {
               tempDesc += "\n<b><font color=\'#0099FF\'>It\'s time for Endless Dungeon!</font></b>";
               light = true;
            }
         }
      }
      if(_root.save["tech" + i + "Program"] == "Daily Check")
      {
         if(_root.save["tech" + i + "Array"][1] == true && (_root.save.mainQuestRank[2] < 1 || isNaN(_root.save.mainQuestRank[2])))
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t finished Daily Quests.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][2] == true && _root.save.fcgPack1Cost == 0)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t claimed free Card Packs in TukkunFCG.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][3] == true)
         {
            if(_root.save.battleDaily != true)
            {
               tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t claimed free Pixels from Battle Master.</font></b>";
               light = true;
            }
            if(_root.save.vegetarianMode == true)
            {
               if(_root.save.freeBacon1 > 0)
               {
                  tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t claimed free Broccoli in Ye Olde Pub.</font></b>";
                  light = true;
               }
               if(_root.save.freeBacon2 > 0)
               {
                  tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t claimed free Broccoli in 2012: Ye Olde Pub.</font></b>";
                  light = true;
               }
            }
            else
            {
               if(_root.save.freeBacon1 > 0)
               {
                  tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t claimed free Bacon in Ye Olde Pub.</font></b>";
                  light = true;
               }
               if(_root.save.freeBacon2 > 0)
               {
                  tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t claimed free Bacon in 2012: Ye Olde Pub.</font></b>";
                  light = true;
               }
            }
         }
         if(_root.save["tech" + i + "Array"][4] == true)
         {
            if(_root.save.arenaSpookyToday == 0)
            {
               tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t attempted Spooky Crypt today.</font></b>";
               light = true;
            }
            if(_root.save.arenaTriangleToday == 0)
            {
               tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t attempted Triangle Hideout today.</font></b>";
               light = true;
            }
         }
         if(_root.save["tech" + i + "Array"][5] == true)
         {
            if(_root.save.arenaChaosLeft >= 10)
            {
               tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t attempted Secret Dungeon today.</font></b>";
               light = true;
            }
            if(_root.save.arenaEndlessEntry >= 1)
            {
               tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t attempted Endless Dungeon today.</font></b>";
               light = true;
            }
         }
         if(_root.save["tech" + i + "Array"][6] == true && _root.save.buttonPressToday == 0)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t pressed the Button Machine today.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][7] == true && _root.save.arcadeTradeIn == false)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t traded-in your Arcade prize.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][8] == true && _root.save.deathMatchEntry > 0)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t used up your Death Match entries.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][9] == true && _root.save.fcgLegendLife == 10)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t dealt any damage to the Legendary Monster.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][10] == true && _root.save.fishScoreToday == 0)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You haven\'t caught anything in Fishing today.</font></b>";
            light = true;
         }
      }
      if(_root.save["tech" + i + "Program"] == "Limit Check")
      {
         if(_root.save["tech" + i + "Array"][1] == true && _root.save.coin >= 999999999999)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Coins.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][2] == true && _root.save.greenCoin >= 999999999)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Green Coins.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][3] == true && _root.save.blueCoin >= 999999)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Blue Coins.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][4] == true && _root.save.gardenPoint >= 9999999)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Garden Points.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][5] == true && _root.save.gardenFertilizer >= 9999)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Fertilizer.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][6] == true && _root.save.gardenMegaFertilizer >= 9999)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Mega Fertilizer.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][7] == true && _root.save.arenaPixel >= 999999999999)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Pixels.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][8] == true && _root.save.arenaCraft >= 999999999999)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Crafting Material.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][9] == true && _root.save.awesomeRefill >= 9999)
         {
            tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Energy Refills.</font></b>";
            light = true;
         }
         if(_root.save["tech" + i + "Array"][10] == true)
         {
            if(_root.save.arenaSuperiorCraft >= 9999999)
            {
               tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Superior Crafting Material.</font></b>";
               light = true;
            }
            if(_root.save.arenaUnobtainium >= 9999999)
            {
               tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Unobtainium.</font></b>";
               light = true;
            }
            if(_root.save.arenaEnhancerFragment >= 9999999)
            {
               tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Enhancer Fragments.</font></b>";
               light = true;
            }
            if(_root.save.arenaChaoticFragment >= 9999999)
            {
               tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Chaotic Fragments of Chaos.</font></b>";
               light = true;
            }
            if(_root.save.arenaCrystal1 >= 9999)
            {
               tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Crystals of Rarity.</font></b>";
               light = true;
            }
            if(_root.save.arenaCrystal2 >= 9999)
            {
               tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Crystals of Ultimate Rarity.</font></b>";
               light = true;
            }
            if(_root.save.arenaBacon >= 9999999)
            {
               if(_root.save.vegetarianMode == true)
               {
                  tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Broccoli.</font></b>";
                  light = true;
               }
               else
               {
                  tempDesc += "\n<b><font color=\'#FFCC00\'>You have maximum Bacon.</font></b>";
                  light = true;
               }
            }
         }
      }
      if(_root.save["tech" + i + "Program"] == "LolMarket Check")
      {
         if(_root.save["tech" + i + "Array"][1] == true)
         {
            if(_root.save.lolCooldown <= 0)
            {
               tempDesc += "\n<b><font color=\'#99FF00\'>Demand Control READY</font></b>\n";
               light = true;
            }
            else
            {
               tempDesc += "\n<b><font color=\'#FF9900\'>Next Demand Control:</font> " + _root.convertSec(_root.save.lolCooldown) + "</b>\n";
            }
         }
         var _loc2_ = 1;
         while(_loc2_ <= 10)
         {
            demandDisp = _root.save.lolDemand[_loc2_];
            if(_root.save.lolDemand[_loc2_] > 0)
            {
               demandDisp = "+" + demandDisp;
            }
            if(_root.save["tech" + i + "Array"][2] == true && _root.save.lolGems[_loc2_] <= 0 && _root.save.lolPrice[_loc2_] <= _loc2_ * _root.save["tech" + i + "NumberA"] && _root.save.lolDemand[_loc2_] >= _root.save["tech" + i + "NumberC"] * -1)
            {
               tempDesc += "\n<font color=\'#99FF00\'><b>Lv. " + _loc2_ + ": " + _root.withComma(_root.save.lolPrice[_loc2_]) + " [" + demandDisp + "]</b></font>";
               light = true;
            }
            else if(_root.save["tech" + i + "Array"][3] == true && _root.save.lolGems[_loc2_] > 0 && _root.save.lolPrice[_loc2_] >= _loc2_ * _root.save["tech" + i + "NumberB"] && _root.save.lolDemand[_loc2_] <= _root.save["tech" + i + "NumberC"])
            {
               tempDesc += "\n<font color=\'#FFFF00\'><b>Lv. " + _loc2_ + ": " + _root.withComma(_root.save.lolPrice[_loc2_]) + " [" + demandDisp + "]</b></font>";
               light = true;
            }
            else if(_root.save.lolGems[_loc2_] > 0)
            {
               tempDesc += "\n<font color=\'#FFFFFF\'><b>Lv. " + _loc2_ + ": " + _root.withComma(_root.save.lolPrice[_loc2_]) + " [" + demandDisp + "]</b></font>";
            }
            else
            {
               tempDesc += "\n<font color=\'#999999\'><b>Lv. " + _loc2_ + ": " + _root.withComma(_root.save.lolPrice[_loc2_]) + " [" + demandDisp + "]</b></font>";
            }
            _loc2_ = _loc2_ + 1;
         }
      }
      if(_root.save["tech" + i + "Program"] == "Garden Check")
      {
         expireCount = 0;
         firstSlot = 0;
         var _loc3_ = 1;
         while(_loc3_ <= _root.save.gardenCapacity)
         {
            if(_root.save.gardenTrees[_loc3_] > 0)
            {
               if(_root.save.gardenRecentTime[_loc3_] + _root.save.gardenHarvestTime[_loc3_] - _root.save.gardenPurchaseTime[_loc3_] - _root.save.gardenExpiryTime[_loc3_] > 0)
               {
                  expireCount += 1;
                  if(firstSlot == 0)
                  {
                     firstSlot = _loc3_;
                  }
               }
            }
            _loc3_ = _loc3_ + 1;
         }
         if(expireCount > 1)
         {
            tempDesc += "\n<b><font color=\'#FF0000\'>Trees planted in plot #" + firstSlot + " and " + (expireCount - 1) + " other plots are about to expire.</font></b>\n";
            if(_root.save["tech" + i + "Array"][1] == true)
            {
               light = true;
            }
         }
         else if(expireCount == 1)
         {
            tempDesc += "\n<b><font color=\'#FF0000\'>Tree planted in plot #" + firstSlot + " is about to expire.</font></b>\n";
            if(_root.save["tech" + i + "Array"][1] == true)
            {
               light = true;
            }
         }
         if(_root.save.gardenFertilizerAllow < _root.systemtimenow)
         {
            tempDesc += "\n<b><font color=\'#99FF00\'>Fertilizer READY</font></b>\n";
            if(_root.save["tech" + i + "Array"][2] == true)
            {
               light = true;
            }
         }
         else
         {
            tempDesc += "\n<b><font color=\'#FF9900\'>Next Fertilizer:</font> " + _root.convertSecFull((_root.save.gardenFertilizerAllow - _root.systemtimenow) / 1000) + "</b>\n";
         }
         researchD = Math.floor(Math.sqrt(_root.save.gardenEXP) / 2);
         if(researchD > 2000)
         {
            researchD = 2000;
         }
         reqResearch = 3000 - researchD;
         if(_root.save.gardenResearch >= reqResearch)
         {
            tempDesc += "\n<b><font color=\'#99FF00\'>Breeding Complete</font></b>\n";
            if(_root.save["tech" + i + "Array"][3] == true)
            {
               light = true;
            }
         }
         else if(_root.save.gardenBreed1 == 0)
         {
            tempDesc += "\n<b><font color=\'#999999\'>Breeding Inactive</b>\n";
         }
         else
         {
            tempDesc += "\n<b><font color=\'#FF9900\'>Breeding: </font>" + _root.withComma(_root.save.gardenResearch) + " / " + _root.withComma(reqResearch) + "</b>\n";
         }
         expireCount = 0;
         _loc3_ = 1;
         while(_loc3_ <= 25)
         {
            if(_loc3_ <= _root.save.gardenCapacity)
            {
               if(_root.save.gardenTrees[_loc3_] <= 0)
               {
                  expireCount += 1;
               }
            }
            _loc3_ = _loc3_ + 1;
         }
         if(expireCount > 1)
         {
            tempDesc += "\n<b><font color=\'#FF0000\'>You have " + expireCount + " empty plots in Home Garden.</font></b>\n";
            if(_root.save["tech" + i + "Array"][4] == true)
            {
               light = true;
            }
         }
         else if(expireCount == 1)
         {
            tempDesc += "\n<b><font color=\'#FF0000\'>You have 1 empty plot in Home Garden.</font></b>\n";
            if(_root.save["tech" + i + "Array"][4] == true)
            {
               light = true;
            }
         }
         expireCount = 0;
         _loc3_ = 26;
         while(_loc3_ <= 50)
         {
            if(_loc3_ <= _root.save.gardenCapacity)
            {
               if(_root.save.gardenTrees[_loc3_] <= 0)
               {
                  expireCount += 1;
               }
            }
            _loc3_ = _loc3_ + 1;
         }
         if(expireCount > 1)
         {
            tempDesc += "\n<b><font color=\'#FF0000\'>You have " + expireCount + " empty plots in Another Garden.</font></b>\n";
            if(_root.save["tech" + i + "Array"][5] == true)
            {
               light = true;
            }
         }
         else if(expireCount == 1)
         {
            tempDesc += "\n<b><font color=\'#FF0000\'>You have 1 empty plot in Another Garden.</font></b>\n";
            if(_root.save["tech" + i + "Array"][5] == true)
            {
               light = true;
            }
         }
         expireCount = 0;
         _loc3_ = 51;
         while(_loc3_ <= 75)
         {
            if(_loc3_ <= _root.save.gardenCapacity)
            {
               if(_root.save.gardenTrees[_loc3_] <= 0)
               {
                  expireCount += 1;
               }
            }
            _loc3_ = _loc3_ + 1;
         }
         if(expireCount > 1)
         {
            tempDesc += "\n<b><font color=\'#FF0000\'>You have " + expireCount + " empty plots in Another Another Garden.</font></b>\n";
            if(_root.save["tech" + i + "Array"][6] == true)
            {
               light = true;
            }
         }
         else if(expireCount == 1)
         {
            tempDesc += "\n<b><font color=\'#FF0000\'>You have 1 empty plot in Another Another Garden.</font></b>\n";
            if(_root.save["tech" + i + "Array"][6] == true)
            {
               light = true;
            }
         }
      }
      if(_root.save["tech" + i + "Program"] == "Variable Recording")
      {
         if(_root.save["tech" + i + "Array"][1] == true)
         {
            if(_root.save["tech" + i + "Array"][2] == true)
            {
               varToCheck = _root[_root.save["tech" + i + "StringA"]][_root.save["tech" + i + "NumberC"]];
               tempDesc += "\nTracked Variable:\n_root." + _root.save["tech" + i + "StringA"] + "[" + _root.save["tech" + i + "NumberC"] + "]";
               aDesc = "_root." + _root.save["tech" + i + "StringA"] + "[" + _root.save["tech" + i + "NumberC"] + "] = " + _root.withComma(varToCheck);
            }
            else
            {
               varToCheck = _root[_root.save["tech" + i + "StringA"]];
               tempDesc += "\nTracked Variable:\n_root." + _root.save["tech" + i + "StringA"];
               aDesc = "_root." + _root.save["tech" + i + "StringA"] + " = " + _root.withComma(varToCheck);
            }
         }
         else if(_root.save["tech" + i + "Array"][2] == true)
         {
            varToCheck = _root.save[_root.save["tech" + i + "StringA"]][_root.save["tech" + i + "NumberC"]];
            tempDesc += "\nTracked Variable:\n_root.save." + _root.save["tech" + i + "StringA"] + "[" + _root.save["tech" + i + "NumberC"] + "]";
            aDesc = "_root.save." + _root.save["tech" + i + "StringA"] + "[" + _root.save["tech" + i + "NumberC"] + "] = " + _root.withComma(varToCheck);
         }
         else
         {
            varToCheck = _root.save[_root.save["tech" + i + "StringA"]];
            tempDesc += "\nTracked Variable:\n_root.save." + _root.save["tech" + i + "StringA"];
            aDesc = "_root.save." + _root.save["tech" + i + "StringA"] + " = " + _root.withComma(varToCheck);
         }
         if(_root.save["tech" + i + "Array"][1] == true && (_root.house._currentframe == 10 || _root.house._currentframe == 12))
         {
            tempDesc += "\n\n[temporarily unavailable]";
         }
         else if(_root.save["tech" + i + "Array"][1] == true && _root.house._currentframe == 7 && (_root.save.arenaZone == 53 || _root.save.arenaZone == 78))
         {
            tempDesc += "\n\n[temporarily unavailable]";
         }
         else
         {
            tempDesc += "\n\nCurrent Value:\n<b>" + _root.withComma(varToCheck) + "</b>";
            tempDesc += "\n\nLatest Values:\n<b>" + _root.withComma(curVar) + " (" + _root.withComma(recDel) + "s)\n<font color=\'#999999\'>" + _root.withComma(prevVar) + " (" + _root.withComma(recDel + _root.save["tech" + i + "NumberA"]) + "s)</font></b>";
            impr = curVar - prevVar;
            if(impr >= _root.save["tech" + i + "NumberB"] && _root.save["tech" + i + "NumberB"] != 0)
            {
               light = true;
            }
            if(varToCheck - curVar > 0)
            {
               aDesc += " (+" + _root.withComma(varToCheck - curVar) + ")";
            }
            else
            {
               aDesc += " (" + _root.withComma(varToCheck - curVar) + ")";
            }
            tempDesc += "\n\nImprovement:\n<b>" + _root.withComma(impr) + " in " + _root.withComma(_root.save["tech" + i + "NumberA"]) + "s";
            if(tempString != _root.save["tech" + i + "StringA"])
            {
               tempString = _root.save["tech" + i + "StringA"];
               prevVar = varToCheck;
               curVar = varToCheck;
               recDel = 0;
            }
            recDel += 1;
            if(recDel >= _root.save["tech" + i + "NumberA"])
            {
               recDel = 0;
               prevVar = curVar;
               curVar = varToCheck;
               if(_root.save["tech" + i + "Array"][3] == true)
               {
                  _root.dispNews(160,aDesc);
               }
            }
         }
      }
   }
   if(light == true)
   {
      if(alt == true)
      {
         cov.gotoAndStop(3);
      }
      else
      {
         cov.gotoAndStop(2);
      }
   }
   else
   {
      cov.gotoAndStop(1);
   }
}
i = Math.round((_X + 17.5) / 20);
col.gotoAndStop(i);
light = false;
alt = false;
tempDesc = "";
prevVar = 0;
curVar = 0;
recDel = 0;
tempString = "";
checkLight();
onRollOver = function()
{
   _root.actiondescription = tempDesc;
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOver = onRollOver;
onDragOut = onRollOut;
onRelease = function()
{
   if(_root.save.featureTechnicalLight == true)
   {
      _root.optionsScreen.gotoAndStop(8);
   }
};
