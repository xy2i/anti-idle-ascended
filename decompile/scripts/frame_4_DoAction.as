//! status=progress
// functions not ported
function filterItem(name, sell)
{
   autoSell = false;
   checkWhitelist = false;
   whitelisted = false;
   filterArr = _root.save.arenaFilter.split(",");
   whiteList = new Array();
   var _loc4_ = 0;
   while(_loc4_ < filterArr.length)
   {
      tmpFilter = filterArr[_loc4_];
      if(tmpFilter.indexOf("%") == 0)
      {
         tmpFilter = tmpFilter.split("%").join("");
         checkWhitelist = true;
      }
      if(tmpFilter.indexOf("*") != -1)
      {
         tmpFilter = tmpFilter.split("*").join("");
         if(name.indexOf(tmpFilter) != -1)
         {
            autoSell = true;
            if(checkWhitelist)
            {
               whitelisted = true;
            }
         }
      }
      if(tmpFilter == name)
      {
         autoSell = true;
         if(checkWhitelist)
         {
            whitelisted = true;
         }
      }
      checkWhitelist = false;
      _loc4_ += 1;
   }
   if(autoSell == true && whitelisted == false)
   {
      if(!isNaN(sell))
      {
         _root.save.arenaPixel += sell;
      }
      return true;
   }
   return false;
}
function addArenaCraftWeapon(recipeType, recipeReq, recipeLimit, reqRank, subtype, range, frame, attack, speed, defense, crit, dexterity, health, maxLevel, expTNL, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noFuse, noUnique, spirit, unob, costPixel, costCraft, costSpec, careerExp, name, desc)
{
   var _loc35_ = new Object();
   _loc35_.recipeType = recipeType;
   _loc35_.recipeReq = recipeReq;
   _loc35_.recipeLimit = recipeLimit;
   _loc35_.name = name;
   _loc35_.reqRank = reqRank;
   _loc35_.subtype = subtype;
   _loc35_.frame = frame;
   _loc35_.range = range;
   _loc35_.attack = attack;
   _loc35_.speed = speed;
   _loc35_.defense = defense;
   _loc35_.bonus = bonus;
   _loc35_.ability = ability;
   _loc35_.moreBonus = moreBonus;
   _loc35_.maxLevel = maxLevel;
   _loc35_.expTNL = expTNL;
   _loc35_.enhance = enhance;
   _loc35_.bonusPow = bonusPow;
   _loc35_.sell = sell;
   _loc35_.expiry = expiry * 86400000;
   if(noLife == false)
   {
      _loc35_.expiry = Infinity;
   }
   _loc35_.noBonus = noBonus;
   _loc35_.noLife = noLife;
   _loc35_.noFuse = noFuse;
   _loc35_.noUnique = noUnique;
   _loc35_.spirit = spirit;
   _loc35_.unob = unob;
   _loc35_.costPixel = costPixel;
   _loc35_.costCraft = costCraft;
   _loc35_.costSpec = costSpec;
   _loc35_.careerExp = careerExp;
   _loc35_.crit = crit;
   _loc35_.dexterity = dexterity;
   _loc35_.health = health;
   _loc35_.desc = desc;
   craftWeapon.push(_loc35_);
}
function addArenaCraftArmor(recipeType, recipeReq, recipeLimit, reqRank, subtype, frame, attack, speed, defense, crit, dexterity, health, maxLevel, expTNL, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noFuse, noUnique, spirit, unob, costPixel, costCraft, costSpec, careerExp, name, desc)
{
   var _loc34_ = new Object();
   _loc34_.recipeType = recipeType;
   _loc34_.recipeReq = recipeReq;
   _loc34_.recipeLimit = recipeLimit;
   _loc34_.name = name;
   _loc34_.reqRank = reqRank;
   _loc34_.subtype = subtype;
   _loc34_.frame = frame;
   _loc34_.attack = attack;
   _loc34_.speed = speed;
   _loc34_.defense = defense;
   _loc34_.bonus = bonus;
   _loc34_.ability = ability;
   _loc34_.moreBonus = moreBonus;
   _loc34_.maxLevel = maxLevel;
   _loc34_.expTNL = expTNL;
   _loc34_.enhance = enhance;
   _loc34_.bonusPow = bonusPow;
   _loc34_.sell = sell;
   _loc34_.expiry = expiry * 86400000;
   if(noLife == false)
   {
      _loc34_.expiry = Infinity;
   }
   _loc34_.noBonus = noBonus;
   _loc34_.noLife = noLife;
   _loc34_.noFuse = noFuse;
   _loc34_.noUnique = noUnique;
   _loc34_.spirit = spirit;
   _loc34_.unob = unob;
   _loc34_.costPixel = costPixel;
   _loc34_.costCraft = costCraft;
   _loc34_.costSpec = costSpec;
   _loc34_.careerExp = careerExp;
   _loc34_.crit = crit;
   _loc34_.dexterity = dexterity;
   _loc34_.health = health;
   _loc34_.desc = desc;
   craftArmor.push(_loc34_);
}
function addArenaCraftAccessory(recipeType, recipeReq, recipeLimit, reqRank, subtype, frame, attack, speed, defense, crit, dexterity, health, maxLevel, expTNL, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noUnique, spirit, unob, costPixel, costCraft, costSpec, careerExp, name, desc)
{
   var _loc33_ = new Object();
   _loc33_.recipeType = recipeType;
   _loc33_.recipeReq = recipeReq;
   _loc33_.recipeLimit = recipeLimit;
   _loc33_.name = name;
   _loc33_.reqRank = reqRank;
   _loc33_.subtype = subtype;
   _loc33_.frame = frame;
   _loc33_.attack = attack;
   _loc33_.speed = speed;
   _loc33_.defense = defense;
   _loc33_.bonus = bonus;
   _loc33_.ability = ability;
   _loc33_.moreBonus = moreBonus;
   _loc33_.maxLevel = maxLevel;
   _loc33_.expTNL = expTNL;
   _loc33_.enhance = enhance;
   _loc33_.bonusPow = bonusPow;
   _loc33_.sell = sell;
   _loc33_.expiry = expiry * 86400000;
   if(noLife == false)
   {
      _loc33_.expiry = Infinity;
   }
   _loc33_.noBonus = noBonus;
   _loc33_.noLife = noLife;
   _loc33_.noFuse = false;
   _loc33_.noUnique = noUnique;
   _loc33_.spirit = spirit;
   _loc33_.unob = unob;
   _loc33_.costPixel = costPixel;
   _loc33_.costCraft = costCraft;
   _loc33_.costSpec = costSpec;
   _loc33_.careerExp = careerExp;
   _loc33_.crit = crit;
   _loc33_.dexterity = dexterity;
   _loc33_.health = health;
   _loc33_.desc = desc;
   craftAccessory.push(_loc33_);
}
function addArenaCraftMedal(recipeType, recipeReq, recipeLimit, reqRank, subtype, frame, attack, speed, defense, crit, dexterity, health, maxLevel, expTNL, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noUnique, spirit, unob, costPixel, costCraft, costSpec, careerExp, name, desc)
{
   var _loc33_ = new Object();
   _loc33_.recipeType = recipeType;
   _loc33_.recipeReq = recipeReq;
   _loc33_.recipeLimit = recipeLimit;
   _loc33_.name = name;
   _loc33_.reqRank = reqRank;
   _loc33_.subtype = subtype;
   _loc33_.frame = frame;
   _loc33_.attack = attack;
   _loc33_.speed = speed;
   _loc33_.defense = defense;
   _loc33_.bonus = bonus;
   _loc33_.ability = ability;
   _loc33_.moreBonus = moreBonus;
   _loc33_.maxLevel = maxLevel;
   _loc33_.expTNL = expTNL;
   _loc33_.enhance = enhance;
   _loc33_.bonusPow = bonusPow;
   _loc33_.sell = sell;
   _loc33_.expiry = expiry * 86400000;
   if(noLife == false)
   {
      _loc33_.expiry = Infinity;
   }
   _loc33_.noBonus = noBonus;
   _loc33_.noLife = noLife;
   _loc33_.noFuse = false;
   _loc33_.noUnique = noUnique;
   _loc33_.spirit = spirit;
   _loc33_.unob = unob;
   _loc33_.costPixel = costPixel;
   _loc33_.costCraft = costCraft;
   _loc33_.costSpec = costSpec;
   _loc33_.careerExp = careerExp;
   _loc33_.crit = crit;
   _loc33_.dexterity = dexterity;
   _loc33_.health = health;
   _loc33_.desc = desc;
   craftMedal.push(_loc33_);
}
function addArenaCraftEnhancer(recipeType, recipeReq, recipeLimit, subtype, frame, power, curse, success, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, costPixel, costCraft, costSpec, careerExp, name, desc)
{
   var _loc22_ = new Object();
   _loc22_.recipeType = recipeType;
   _loc22_.recipeReq = recipeReq;
   _loc22_.recipeLimit = recipeLimit;
   _loc22_.name = name;
   _loc22_.subtype = subtype;
   _loc22_.frame = frame;
   _loc22_.power = power;
   _loc22_.curse = curse;
   _loc22_.success = success;
   _loc22_.bonus = bonus;
   _loc22_.ability = ability;
   _loc22_.moreBonus = moreBonus;
   _loc22_.enhance = enhance;
   _loc22_.bonusPow = bonusPow;
   _loc22_.sell = sell;
   _loc22_.expiry = expiry * 86400000;
   _loc22_.costPixel = costPixel;
   _loc22_.costCraft = costCraft;
   _loc22_.costSpec = costSpec;
   _loc22_.careerExp = careerExp;
   _loc22_.desc = desc;
   craftEnhancer.push(_loc22_);
}
function addArenaCraftPotion(recipeType, recipeReq, recipeLimit, subtype, frame, attack, defense, enhance, bonusPow, sell, expiry, costPixel, costCraft, costSpec, careerExp, name, desc)
{
   var _loc18_ = new Object();
   _loc18_.recipeType = recipeType;
   _loc18_.recipeReq = recipeReq;
   _loc18_.recipeLimit = recipeLimit;
   _loc18_.name = name;
   _loc18_.subtype = subtype;
   _loc18_.frame = frame;
   _loc18_.attack = attack;
   _loc18_.defense = defense;
   _loc18_.enhance = enhance;
   _loc18_.bonusPow = bonusPow;
   _loc18_.sell = sell;
   _loc18_.expiry = expiry * 86400000;
   _loc18_.costPixel = costPixel;
   _loc18_.costCraft = costCraft;
   _loc18_.costSpec = costSpec;
   _loc18_.careerExp = careerExp;
   _loc18_.desc = desc;
   craftPotion.push(_loc18_);
}
function addArenaCraftChip(recipeType, recipeReq, recipeLimit, subtype, frame, attack, defense, enhance, bonusPow, sell, expiry, costPixel, costCraft, costSpec, careerExp, name, desc)
{
   var _loc18_ = new Object();
   _loc18_.recipeType = recipeType;
   _loc18_.recipeReq = recipeReq;
   _loc18_.recipeLimit = recipeLimit;
   _loc18_.name = name;
   _loc18_.subtype = subtype;
   _loc18_.frame = frame;
   _loc18_.attack = attack;
   _loc18_.defense = defense;
   _loc18_.enhance = enhance;
   _loc18_.bonusPow = bonusPow;
   _loc18_.sell = sell;
   _loc18_.expiry = expiry * 86400000;
   _loc18_.costPixel = costPixel;
   _loc18_.costCraft = costCraft;
   _loc18_.costSpec = costSpec;
   _loc18_.careerExp = careerExp;
   _loc18_.desc = desc;
   craftChip.push(_loc18_);
}
function addArenaSet(setNameD, bonusReq, bonusStat, bonusAmnt, setItems)
{
   var _loc6_ = new Object();
   _loc6_.setNameD = setNameD;
   _loc6_.setItems = setItems;
   _loc6_.bonusReq = bonusReq;
   _loc6_.bonusStat = bonusStat;
   _loc6_.bonusAmnt = bonusAmnt;
   setArray.push(_loc6_);
}
function checkArenaSet(itemName)
{
   tempSetID = 0;
   var _loc2_ = 1;
   while(_loc2_ <= setArray.length - 1)
   {
      var _loc3_ = 0;
      while(_loc3_ <= setArray[_loc2_].setItems.length - 1)
      {
         tempName = setArray[_loc2_].setItems[_loc3_];
         if(itemName == tempName)
         {
            tempSetID = _loc2_;
         }
         if(tempName == "Any Weapon of DOOOOOOM")
         {
            if(itemName.indexOf("DOOOOOOM") != -1)
            {
               tempSetID = _loc2_;
            }
         }
         if(tempName == "Any Meteoric Weapon")
         {
            if(itemName.indexOf("Meteoric") != -1)
            {
               tempSetID = _loc2_;
            }
         }
         if(tempName == "Any Dragon Slayer Weapon")
         {
            if(itemName.indexOf("Dragon Slayer") != -1)
            {
               tempSetID = _loc2_;
            }
         }
         if(tempName == "Any Demon Slayer Weapon")
         {
            if(itemName.indexOf("Demon Slayer") != -1)
            {
               tempSetID = _loc2_;
            }
         }
         if(tempName == "Any Tukkonium Weapon")
         {
            if(itemName.indexOf("Tukkonium") != -1)
            {
               tempSetID = _loc2_;
            }
         }
         if(tempName == "Any Pickaxe")
         {
            if(itemName.indexOf("Pickaxe") != -1)
            {
               tempSetID = _loc2_;
            }
         }
         if(tempName.indexOf("Any Alien") != -1)
         {
            if(itemName.indexOf("Alien") != -1)
            {
               tempSetID = _loc2_;
            }
         }
         if(tempName.indexOf("Dragon Slayer") != -1)
         {
            if(itemName.indexOf("Dragon Slayer") != -1)
            {
               tempSetID = _loc2_;
            }
         }
         if(tempName.indexOf("Demon Slayer") != -1)
         {
            if(itemName.indexOf("Demon Slayer") != -1)
            {
               tempSetID = _loc2_;
            }
         }
         _loc3_ += 1;
      }
      _loc2_ += 1;
   }
   return tempSetID;
}
function displaySetItems(setID)
{
   tempDisp = "";
   equipCount = 0;
   var _loc3_ = 0;
   while(_loc3_ <= setArray[setID].setItems.length - 1)
   {
      tempName = setArray[setID].setItems[_loc3_];
      equipped = false;
      if(_root.save.inventoryName[_root.save.arenaWeapon] == tempName)
      {
         equipped = true;
      }
      if(_root.save.inventoryName[_root.save.arenaSubWeapon] == tempName)
      {
         equipped = true;
      }
      if(_root.save.inventoryName[_root.save.arenaHat] == tempName)
      {
         equipped = true;
      }
      if(_root.save.inventoryName[_root.save.arenaShirt] == tempName)
      {
         equipped = true;
      }
      if(_root.save.inventoryName[_root.save.arenaGloves] == tempName)
      {
         equipped = true;
      }
      if(_root.save.inventoryName[_root.save.arenaPants] == tempName)
      {
         equipped = true;
      }
      if(_root.save.inventoryName[_root.save.arenaShoes] == tempName)
      {
         equipped = true;
      }
      if(_root.save.inventoryName[_root.save.arenaSkin] == tempName)
      {
         equipped = true;
      }
      if(_root.save.inventoryName[_root.save.arenaMedal] == tempName && _root.save.inventoryDesc[_root.save.arenaMedal] != "This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works." && _root.save.inventoryDesc[_root.save.arenaMedal] != "Thank you for your donation and your continued support!")
      {
         equipped = true;
      }
      if(_root.save.inventoryName[_root.save.arenaPendant] == tempName)
      {
         equipped = true;
      }
      if(_root.save.inventoryName[_root.save.arenaEarring] == tempName)
      {
         equipped = true;
      }
      if(_root.save.inventoryName[_root.save.arenaTrinket] == tempName)
      {
         equipped = true;
      }
      if(tempName == "Any Weapon of DOOOOOOM")
      {
         if(_root.save.inventoryName[_root.save.arenaWeapon].indexOf("DOOOOOOM") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Meteoric Weapon")
      {
         if(_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Meteoric") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Dragon Slayer Weapon")
      {
         if(_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Dragon Slayer") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Demon Slayer Weapon")
      {
         if(_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Demon Slayer") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Tukkonium Weapon")
      {
         if(_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Tukkonium") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Dragon Slayer Hat")
      {
         if(_root.save.inventoryName[_root.save.arenaHat].indexOf("Dragon Slayer") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Dragon Slayer Shirt")
      {
         if(_root.save.inventoryName[_root.save.arenaShirt].indexOf("Dragon Slayer") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Dragon Slayer Gloves")
      {
         if(_root.save.inventoryName[_root.save.arenaGloves].indexOf("Dragon Slayer") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Dragon Slayer Pants")
      {
         if(_root.save.inventoryName[_root.save.arenaPants].indexOf("Dragon Slayer") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Dragon Slayer Shoes")
      {
         if(_root.save.inventoryName[_root.save.arenaShoes].indexOf("Dragon Slayer") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Demon Slayer Hat")
      {
         if(_root.save.inventoryName[_root.save.arenaHat].indexOf("Demon Slayer") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Demon Slayer Shirt")
      {
         if(_root.save.inventoryName[_root.save.arenaShirt].indexOf("Demon Slayer") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Demon Slayer Gloves")
      {
         if(_root.save.inventoryName[_root.save.arenaGloves].indexOf("Demon Slayer") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Demon Slayer Pants")
      {
         if(_root.save.inventoryName[_root.save.arenaPants].indexOf("Demon Slayer") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Demon Slayer Shoes")
      {
         if(_root.save.inventoryName[_root.save.arenaShoes].indexOf("Demon Slayer") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Pickaxe")
      {
         if(_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Pickaxe") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Alien Weapon")
      {
         if(_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Alien") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Alien Hat")
      {
         if(_root.save.inventoryName[_root.save.arenaHat].indexOf("Alien") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Alien Shirt")
      {
         if(_root.save.inventoryName[_root.save.arenaShirt].indexOf("Alien") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Alien Gloves")
      {
         if(_root.save.inventoryName[_root.save.arenaGloves].indexOf("Alien") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Alien Pants")
      {
         if(_root.save.inventoryName[_root.save.arenaPants].indexOf("Alien") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Alien Shoes")
      {
         if(_root.save.inventoryName[_root.save.arenaShoes].indexOf("Alien") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Crystal Hat")
      {
         if(_root.save.inventoryName[_root.save.arenaHat].indexOf("Crystal") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Crystal Shirt")
      {
         if(_root.save.inventoryName[_root.save.arenaShirt].indexOf("Crystal") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Crystal Gloves")
      {
         if(_root.save.inventoryName[_root.save.arenaGloves].indexOf("Crystal") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Crystal Pants")
      {
         if(_root.save.inventoryName[_root.save.arenaPants].indexOf("Crystal") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Crystal Shoes")
      {
         if(_root.save.inventoryName[_root.save.arenaShoes].indexOf("Crystal") != -1)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Rank 200+ Weapon")
      {
         if(_root.save.inventoryReqRank[_root.save.arenaWeapon] >= 200)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Rank 300+ Weapon")
      {
         if(_root.save.inventoryReqRank[_root.save.arenaWeapon] >= 300)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Rank 400+ Weapon")
      {
         if(_root.save.inventoryReqRank[_root.save.arenaWeapon] >= 400)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Finalized Weapon")
      {
         if(_root.save.inventoryLevel[_root.save.arenaWeapon] == 9999)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Finalized Hat")
      {
         if(_root.save.inventoryLevel[_root.save.arenaHat] == 9999)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Finalized Shirt")
      {
         if(_root.save.inventoryLevel[_root.save.arenaShirt] == 9999)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Finalized Gloves")
      {
         if(_root.save.inventoryLevel[_root.save.arenaGloves] == 9999)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Finalized Pants")
      {
         if(_root.save.inventoryLevel[_root.save.arenaPants] == 9999)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Finalized Shoes")
      {
         if(_root.save.inventoryLevel[_root.save.arenaShoes] == 9999)
         {
            equipped = true;
         }
      }
      if(tempName == "Any Finalized Skin")
      {
         if(_root.save.inventoryLevel[_root.save.arenaSkin] == 9999)
         {
            equipped = true;
         }
      }
      if(tempName == "Invisible X")
      {
         if(_root.save.arenaAlly == 1)
         {
            equipped = true;
         }
      }
      if(tempName == "Apocalypse Mode")
      {
         if(_root.apocalypse == true)
         {
            equipped = true;
         }
      }
      if(tempName == "Rune of Rage")
      {
         if(_root.save.arenaRuneDuration[3] > 0)
         {
            equipped = true;
         }
      }
      if(equipped == true)
      {
         tempDisp += "\n<font color=\'#FFFF00\'>" + tempName + "</font>";
         equipCount += 1;
      }
      else
      {
         tempDisp += "\n<font color=\'#CCCCCC\'>" + tempName + "</font>";
      }
      _loc3_ += 1;
   }
   tempDisp += "\n\n<font color=\'#CC9900\'><b>Set Bonus</b></font>";
   _loc3_ = 0;
   while(_loc3_ <= setArray[setID].bonusStat.length - 1)
   {
      if(setArray[setID].bonusAmnt[_loc3_] == -1)
      {
         if(setArray[setID].bonusReq[_loc3_] == 1)
         {
            plu = " item";
         }
         else
         {
            plu = " items";
         }
         if(equipCount >= setArray[setID].bonusReq[_loc3_])
         {
            tempDisp += "\n<font color=\'#FFFF00\'>[" + setArray[setID].bonusReq[_loc3_] + plu + "]" + "</font> <font color=\'#CCFF33\'>" + setArray[setID].bonusStat[_loc3_];
         }
         else
         {
            tempDisp += "\n<font color=\'#CCCCCC\'>[" + setArray[setID].bonusReq[_loc3_] + plu + "]" + "</font> <font color=\'#BBBBBB\'>" + setArray[setID].bonusStat[_loc3_];
         }
      }
      else
      {
         if(setArray[setID].bonusReq[_loc3_] == 1)
         {
            plu = " item";
         }
         else
         {
            plu = " items";
         }
         if(equipCount >= setArray[setID].bonusReq[_loc3_])
         {
            tempDisp += "\n<font color=\'#FFFF00\'>[" + setArray[setID].bonusReq[_loc3_] + plu + "]" + "</font> <font color=\'#CCFF33\'>" + setArray[setID].bonusStat[_loc3_] + " <b>+" + setArray[setID].bonusAmnt[_loc3_] + "%</b>";
         }
         else
         {
            tempDisp += "\n<font color=\'#CCCCCC\'>[" + setArray[setID].bonusReq[_loc3_] + plu + "]" + "</font> <font color=\'#BBBBBB\'>" + setArray[setID].bonusStat[_loc3_] + " <b>+" + setArray[setID].bonusAmnt[_loc3_] + "%</b>";
         }
      }
      _loc3_ += 1;
   }
   return tempDisp;
}
function checkSetBonus()
{
   var _loc2_ = 1;
   while(_loc2_ <= setArray.length - 1)
   {
      _root.setCount[_loc2_] = 0;
      _loc2_ += 1;
   }
   _root.setHighest = 0;
   _root.setCount[_root.save.inventorySet[_root.save.arenaWeapon]] += 1;
   _root.setCount[_root.save.inventorySet[_root.save.arenaHat]] += 1;
   _root.setCount[_root.save.inventorySet[_root.save.arenaShirt]] += 1;
   _root.setCount[_root.save.inventorySet[_root.save.arenaGloves]] += 1;
   _root.setCount[_root.save.inventorySet[_root.save.arenaPants]] += 1;
   _root.setCount[_root.save.inventorySet[_root.save.arenaShoes]] += 1;
   _root.setCount[_root.save.inventorySet[_root.save.arenaSkin]] += 1;
   _root.setCount[_root.save.inventorySet[_root.save.arenaMedal]] += 1;
   _root.setCount[_root.save.inventorySet[_root.save.arenaPendant]] += 1;
   _root.setCount[_root.save.inventorySet[_root.save.arenaEarring]] += 1;
   _root.setCount[_root.save.inventorySet[_root.save.arenaTrinket]] += 1;
   _root.setCount[_root.save.inventorySet[_root.save.arenaSubWeapon]] += 1;
   if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Constancy")
   {
      if(_root.save.inventoryLevel[_root.save.arenaWeapon] == 9999)
      {
         _root.setCount[1] += 1;
      }
      if(_root.save.inventoryLevel[_root.save.arenaHat] == 9999)
      {
         _root.setCount[1] += 1;
      }
      if(_root.save.inventoryLevel[_root.save.arenaShirt] == 9999)
      {
         _root.setCount[1] += 1;
      }
      if(_root.save.inventoryLevel[_root.save.arenaGloves] == 9999)
      {
         _root.setCount[1] += 1;
      }
      if(_root.save.inventoryLevel[_root.save.arenaPants] == 9999)
      {
         _root.setCount[1] += 1;
      }
      if(_root.save.inventoryLevel[_root.save.arenaShoes] == 9999)
      {
         _root.setCount[1] += 1;
      }
      if(_root.save.inventoryLevel[_root.save.arenaSkin] == 9999)
      {
         _root.setCount[1] += 1;
      }
   }
   if(_root.save.inventoryName[_root.save.arenaTrinket] == "Empowering Gem")
   {
      if(_root.save.inventoryReqRank[_root.save.arenaWeapon] >= 200)
      {
         _root.setCount[2] += 1;
      }
      if(_root.save.inventoryReqRank[_root.save.arenaWeapon] >= 300)
      {
         _root.setCount[2] += 1;
      }
      if(_root.save.inventoryReqRank[_root.save.arenaWeapon] >= 400)
      {
         _root.setCount[2] += 1;
      }
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon].indexOf("Pickaxe") != -1)
   {
      if(_root.save.inventoryName[_root.save.arenaHat].indexOf("Crystal") != -1)
      {
         _root.setCount[3] += 1;
      }
      if(_root.save.inventoryName[_root.save.arenaShirt].indexOf("Crystal") != -1)
      {
         _root.setCount[3] += 1;
      }
      if(_root.save.inventoryName[_root.save.arenaGloves].indexOf("Crystal") != -1)
      {
         _root.setCount[3] += 1;
      }
      if(_root.save.inventoryName[_root.save.arenaPants].indexOf("Crystal") != -1)
      {
         _root.setCount[3] += 1;
      }
      if(_root.save.inventoryName[_root.save.arenaShoes].indexOf("Crystal") != -1)
      {
         _root.setCount[3] += 1;
      }
   }
   if(_root.setCount[48] > 0 && _root.apocalypse == true)
   {
      _root.setCount[48] += 1;
   }
   if(_root.setCount[64] > 0 && _root.apocalypse == true)
   {
      _root.setCount[64] += 1;
   }
   if(_root.setCount[70] > 0 && _root.save.arenaAlly == 1)
   {
      _root.setCount[70] += 1;
   }
   if(_root.setCount[75] > 0 && _root.save.arenaRuneDuration[3] > 0)
   {
      _root.setCount[75] += 1;
   }
   _root.setExpBonus = 0;
   _root.setCoinBonus = 0;
   _root.setPixelBonus = 0;
   _root.setDropBonus = 0;
   _root.setSpawnBonus = 0;
   _root.setDamageBonus = 0;
   _root.setDefenseBonus = 0;
   _root.setAccuracyBonus = 0;
   _root.setEvasionBonus = 0;
   _root.setHealthBonus = 0;
   _root.setManaBonus = 0;
   _root.setSpeedBonus = 0;
   _root.setRareBonus = 0;
   _root.setEpicBonus = 0;
   _loc2_ = 1;
   while(_loc2_ <= setArray.length - 1)
   {
      if(_root.setCount[_loc2_] > 0)
      {
         tmpItemCount = _root.setCount[_loc2_];
         if(_loc2_ == 48 && _root.setCount[48] > 0 && _root.apocalypse == true)
         {
            tmpItemCount -= 1;
         }
         if(_loc2_ == 64 && _root.setCount[64] > 0 && _root.apocalypse == true)
         {
            tmpItemCount -= 1;
         }
         if(_loc2_ == 70 && _root.setCount[70] > 0 && _root.save.arenaAlly == 1)
         {
            tmpItemCount -= 1;
         }
         if(_root.setHighest < tmpItemCount)
         {
            _root.setHighest = tmpItemCount;
         }
         var _loc3_ = 0;
         while(_loc3_ <= setArray[_loc2_].bonusStat.length - 1)
         {
            if(_root.setCount[_loc2_] >= setArray[_loc2_].bonusReq[_loc3_])
            {
               if(setArray[_loc2_].bonusStat[_loc3_] == "EXP")
               {
                  _root.setExpBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "Coin")
               {
                  _root.setCoinBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "Pixel")
               {
                  _root.setPixelBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "Drop Rate")
               {
                  _root.setDropBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "Spawn Rate")
               {
                  _root.setSpawnBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "Damage")
               {
                  _root.setDamageBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "Defense")
               {
                  _root.setDefenseBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "Accuracy")
               {
                  _root.setAccuracyBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "Evasion")
               {
                  _root.setEvasionBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "MaxHP")
               {
                  _root.setHealthBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "MaxMP")
               {
                  _root.setManaBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "Attack Speed")
               {
                  _root.setSpeedBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "Rare Monster Rate")
               {
                  _root.setRareBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
               else if(setArray[_loc2_].bonusStat[_loc3_] == "Epic Monster Rate")
               {
                  _root.setEpicBonus += setArray[_loc2_].bonusAmnt[_loc3_];
               }
            }
            _loc3_ += 1;
         }
      }
      _loc2_ += 1;
   }
}
function previewFusedWeapon(reqRank, subtype, frame, range, attack, speed, defense, crit, dexterity, health, maxLevel, expTNL, level, exp, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noFuse, noUnique, spirit, unob, name, desc, guard)
{
   k = 1331;
   if(noBonus == undefined)
   {
      noBonus = false;
   }
   if(noLife == undefined)
   {
      noLife = true;
   }
   if(noFuse == undefined)
   {
      noFuse = false;
   }
   if(noUnique == undefined)
   {
      noUnique = false;
   }
   if(spirit == undefined)
   {
      spirit = false;
   }
   if(guard == undefined)
   {
      guard = false;
   }
   if(isNaN(level))
   {
      level = 1;
      _root.breakNews("[Error]","ERROR: " + name + " / [level] not defined.",16711680,9002);
   }
   if(isNaN(exp))
   {
      exp = 0;
      _root.breakNews("[Error]","ERROR: " + name + " / [exp] not defined.",16711680,9002);
   }
   if(isNaN(crit))
   {
      crit = 10;
      dexterity = 0;
      health = 0;
      _root.breakNews("[Error]","ERROR: " + name + " / [crit] not defined.",16711680,9002);
   }
   if(isNaN(unob))
   {
      unob = 0;
      _root.breakNews("[Error]","ERROR: " + name + " / [unob] not defined.",16711680,9002);
   }
   itemSet = _root.checkArenaSet(name);
   if(moreBonus == undefined)
   {
      moreBonus = "";
      _root.breakNews("[Error]","ERROR: " + name + " / [moreBonus] not defined.",16711680,9002);
   }
   if(desc == undefined)
   {
      desc = "";
      _root.breakNews("[Error]","ERROR: " + name + " / [desc] not defined.",16711680,9002);
   }
   _root.save.inventoryExist[k] = 1;
   _root.save.inventoryName[k] = name;
   _root.save.inventoryReqRank[k] = reqRank;
   _root.save.inventoryType[k] = "Weapon";
   _root.save.inventorySubtype[k] = subtype;
   _root.save.inventoryFrame[k] = frame;
   _root.save.inventoryRange[k] = range;
   _root.save.inventoryAttack[k] = attack;
   _root.save.inventorySpeed[k] = speed;
   _root.save.inventoryDefense[k] = defense;
   _root.save.inventoryBonus[k] = bonus;
   _root.save.inventoryAbility[k] = ability;
   _root.save.inventoryMoreBonus[k] = moreBonus;
   _root.save.inventoryLevel[k] = level;
   _root.save.inventoryMaxLevel[k] = maxLevel;
   _root.save.inventoryExp[k] = exp;
   _root.save.inventoryExpTNL[k] = expTNL;
   _root.save.inventoryEnhance[k] = enhance;
   _root.save.inventoryBonusPow[k] = bonusPow;
   _root.save.inventorySell[k] = sell;
   _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
   if(noLife == false)
   {
      _root.save.inventoryExpiry[k] = Infinity;
   }
   _root.save.inventoryObtainTime[k] = _root.systemtimenow;
   _root.save.inventoryDesc[k] = desc;
   _root.save.inventoryCrit[k] = crit;
   _root.save.inventoryDexterity[k] = dexterity;
   _root.save.inventoryHealth[k] = health;
   _root.save.inventoryNoBonus[k] = noBonus;
   _root.save.inventoryNoFuse[k] = noFuse;
   _root.save.inventoryNoUnique[k] = noUnique;
   _root.save.inventorySpirit[k] = spirit;
   _root.save.inventoryGuard[k] = guard;
   _root.save.inventoryUnob[k] = unob;
   _root.save.inventorySet[k] = itemSet;
   if(_root.save.inventoryBonus[k] == "Random")
   {
      bonusToGet = random(22) + 1;
      if(bonusToGet == 1 || bonusToGet == 2)
      {
         _root.save.inventoryBonus[k] = "Reward";
      }
      if(bonusToGet == 3 || bonusToGet == 4)
      {
         _root.save.inventoryBonus[k] = "EXP";
      }
      if(bonusToGet == 5 || bonusToGet == 6)
      {
         _root.save.inventoryBonus[k] = "Coin";
      }
      if(bonusToGet == 7 || bonusToGet == 8)
      {
         _root.save.inventoryBonus[k] = "Pixel";
      }
      if(bonusToGet == 9 || bonusToGet == 10)
      {
         _root.save.inventoryBonus[k] = "Drop Rate";
      }
      if(bonusToGet == 11 || bonusToGet == 12)
      {
         _root.save.inventoryBonus[k] = "Spawn Rate";
      }
      if(bonusToGet == 13)
      {
         _root.save.inventoryBonus[k] = "Fire Element";
      }
      if(bonusToGet == 14)
      {
         _root.save.inventoryBonus[k] = "Ice Element";
      }
      if(bonusToGet == 15)
      {
         _root.save.inventoryBonus[k] = "Wind Element";
      }
      if(bonusToGet == 16)
      {
         _root.save.inventoryBonus[k] = "Earth Element";
      }
      if(bonusToGet == 17)
      {
         _root.save.inventoryBonus[k] = "Thunder Element";
      }
      if(bonusToGet == 18)
      {
         _root.save.inventoryBonus[k] = "Water Element";
      }
      if(bonusToGet == 19)
      {
         _root.save.inventoryBonus[k] = "Light Element";
      }
      if(bonusToGet == 20)
      {
         _root.save.inventoryBonus[k] = "Dark Element";
      }
      if(bonusToGet == 21)
      {
         _root.save.inventoryBonus[k] = "Rare Monster Rate";
      }
      if(bonusToGet == 22)
      {
         _root.save.inventoryBonus[k] = "Epic Monster Rate";
      }
      if(_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
      {
         _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
      }
      else if(_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
      {
         _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
      }
   }
   if(_root.save.inventoryAbility[k] == "Random")
   {
      bonusToGet = random(47) + 1;
      if(bonusToGet == 1)
      {
         _root.save.inventoryAbility[k] = "Attack";
      }
      if(bonusToGet == 2)
      {
         _root.save.inventoryAbility[k] = "Attack Speed";
      }
      if(bonusToGet == 3)
      {
         _root.save.inventoryAbility[k] = "Ignore Defense";
      }
      if(bonusToGet == 4)
      {
         _root.save.inventoryAbility[k] = "Mastery";
      }
      if(bonusToGet == 5)
      {
         _root.save.inventoryAbility[k] = "Critical Chance";
      }
      if(bonusToGet == 6)
      {
         _root.save.inventoryAbility[k] = "Critical Damage";
      }
      if(bonusToGet == 7)
      {
         _root.save.inventoryAbility[k] = "Defense";
      }
      if(bonusToGet == 8)
      {
         _root.save.inventoryAbility[k] = "Damage Taken";
      }
      if(bonusToGet == 9)
      {
         _root.save.inventoryAbility[k] = "Reflect";
      }
      if(bonusToGet == 10)
      {
         _root.save.inventoryAbility[k] = "Accuracy";
      }
      if(bonusToGet == 11)
      {
         _root.save.inventoryAbility[k] = "Hit Chance";
      }
      if(bonusToGet == 12)
      {
         _root.save.inventoryAbility[k] = "Evasion";
      }
      if(bonusToGet == 13)
      {
         _root.save.inventoryAbility[k] = "Dodge Chance";
      }
      if(bonusToGet == 14)
      {
         _root.save.inventoryAbility[k] = "Poison Chance";
      }
      if(bonusToGet == 15)
      {
         _root.save.inventoryAbility[k] = "Weaken Chance";
      }
      if(bonusToGet == 16)
      {
         _root.save.inventoryAbility[k] = "Blind Chance";
      }
      if(bonusToGet == 17)
      {
         _root.save.inventoryAbility[k] = "Stun Chance";
      }
      if(bonusToGet == 18)
      {
         _root.save.inventoryAbility[k] = "HP";
      }
      if(bonusToGet == 19)
      {
         _root.save.inventoryAbility[k] = "MP";
      }
      if(bonusToGet == 20)
      {
         _root.save.inventoryAbility[k] = "HP Regen";
      }
      if(bonusToGet == 21)
      {
         _root.save.inventoryAbility[k] = "MP Regen";
      }
      if(bonusToGet == 22)
      {
         _root.save.inventoryAbility[k] = "Rage Depletion";
      }
      if(bonusToGet == 23)
      {
         _root.save.inventoryAbility[k] = "Drain";
      }
      if(bonusToGet == 24)
      {
         _root.save.inventoryAbility[k] = "Mana Eater";
      }
      if(bonusToGet == 25)
      {
         _root.save.inventoryAbility[k] = "Autosteal";
      }
      if(bonusToGet == 26)
      {
         _root.save.inventoryAbility[k] = "Double Hit Chance";
      }
      if(bonusToGet == 27)
      {
         _root.save.inventoryAbility[k] = "Rage Attack";
      }
      if(bonusToGet == 28)
      {
         _root.save.inventoryAbility[k] = "Rage Speed";
      }
      if(bonusToGet == 29)
      {
         _root.save.inventoryAbility[k] = "Poison Damage";
      }
      if(bonusToGet == 30)
      {
         _root.save.inventoryAbility[k] = "Poison Duration";
      }
      if(bonusToGet == 31)
      {
         _root.save.inventoryAbility[k] = "Weaken Effect";
      }
      if(bonusToGet == 32)
      {
         _root.save.inventoryAbility[k] = "Weaken Duration";
      }
      if(bonusToGet == 33)
      {
         _root.save.inventoryAbility[k] = "Blind Effect";
      }
      if(bonusToGet == 34)
      {
         _root.save.inventoryAbility[k] = "Blind Duration";
      }
      if(bonusToGet == 35)
      {
         _root.save.inventoryAbility[k] = "Potion Efficiency";
      }
      if(bonusToGet == 36)
      {
         _root.save.inventoryAbility[k] = "Boss Damage";
      }
      if(bonusToGet == 37)
      {
         _root.save.inventoryAbility[k] = "Magic Resist";
      }
      if(bonusToGet == 38)
      {
         _root.save.inventoryAbility[k] = "Instant Kill";
      }
      if(bonusToGet == 39)
      {
         _root.save.inventoryAbility[k] = "Negate Effect";
      }
      if(bonusToGet == 40)
      {
         _root.save.inventoryAbility[k] = "Non-Boss Damage";
      }
      if(bonusToGet == 41)
      {
         _root.save.inventoryAbility[k] = "Damage";
      }
      if(bonusToGet == 42)
      {
         _root.save.inventoryAbility[k] = "Extra Combo";
      }
      if(bonusToGet == 43)
      {
         _root.save.inventoryAbility[k] = "Magic Reflect";
      }
      if(bonusToGet == 44)
      {
         _root.save.inventoryAbility[k] = "Nullify Death Penalty";
      }
      if(bonusToGet == 45)
      {
         _root.save.inventoryAbility[k] = "Buff Effect";
      }
      if(bonusToGet == 46)
      {
         _root.save.inventoryAbility[k] = "All Elements";
      }
      if(bonusToGet == 47)
      {
         _root.save.inventoryAbility[k] = "Max Spirit";
      }
      if(_root.save.arenaAbilityPreference1 != "None" && Math.random() < 0.2)
      {
         _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference1;
      }
      else if(_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.1)
      {
         _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
      }
      else if(_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.05)
      {
         _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
      }
   }
   if(_root.save.inventoryMoreBonus[k] == "Random")
   {
      bonusToGet = random(11) + 1;
      if(bonusToGet == 1)
      {
         _root.save.inventoryMoreBonus[k] = "Equipment Attack";
      }
      if(bonusToGet == 2)
      {
         _root.save.inventoryMoreBonus[k] = "Equipment Defense";
      }
      if(bonusToGet == 3)
      {
         _root.save.inventoryMoreBonus[k] = "Attack Power";
      }
      if(bonusToGet == 4)
      {
         _root.save.inventoryMoreBonus[k] = "Defense Power";
      }
      if(bonusToGet == 5)
      {
         _root.save.inventoryMoreBonus[k] = "MaxHP";
      }
      if(bonusToGet == 6)
      {
         _root.save.inventoryMoreBonus[k] = "MaxMP";
      }
      if(bonusToGet == 7)
      {
         _root.save.inventoryMoreBonus[k] = "Accuracy";
      }
      if(bonusToGet == 8)
      {
         _root.save.inventoryMoreBonus[k] = "Evasion";
      }
      if(bonusToGet == 9)
      {
         _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
      }
      if(bonusToGet == 10)
      {
         _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
      }
      if(bonusToGet == 11)
      {
         _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
      }
      if(_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
      {
         _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
      }
      else if(_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
      {
         _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
      }
   }
}
function previewFusedArmor(reqRank, subtype, frame, attack, speed, defense, crit, dexterity, health, maxLevel, expTNL, level, exp, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noFuse, noUnique, spirit, unob, name, desc, guard)
{
   k = 1331;
   if(noBonus == undefined)
   {
      noBonus = false;
   }
   if(noLife == undefined)
   {
      noLife = true;
   }
   if(noFuse == undefined)
   {
      noFuse = false;
   }
   if(noUnique == undefined)
   {
      noUnique = false;
   }
   if(spirit == undefined)
   {
      spirit = false;
   }
   if(guard == undefined)
   {
      guard = false;
   }
   if(isNaN(level))
   {
      level = 1;
      _root.breakNews("[Error]","ERROR: " + name + " / [level] not defined.",16711680,9002);
   }
   if(isNaN(exp))
   {
      exp = 0;
      _root.breakNews("[Error]","ERROR: " + name + " / [exp] not defined.",16711680,9002);
   }
   if(isNaN(crit))
   {
      crit = 10;
      dexterity = 0;
      health = 0;
      _root.breakNews("[Error]","ERROR: " + name + " / [crit] not defined.",16711680,9002);
   }
   if(isNaN(unob))
   {
      unob = 0;
      _root.breakNews("[Error]","ERROR: " + name + " / [unob] not defined.",16711680,9002);
   }
   itemSet = _root.checkArenaSet(name);
   if(moreBonus == undefined)
   {
      moreBonus = "";
      _root.breakNews("[Error]","ERROR: " + name + " / [moreBonus] not defined.",16711680,9002);
   }
   if(desc == undefined)
   {
      desc = "";
      _root.breakNews("[Error]","ERROR: " + name + " / [desc] not defined.",16711680,9002);
   }
   _root.save.inventoryExist[k] = 1;
   _root.save.inventoryName[k] = name;
   _root.save.inventoryReqRank[k] = reqRank;
   _root.save.inventoryType[k] = "Armor";
   _root.save.inventorySubtype[k] = subtype;
   _root.save.inventoryFrame[k] = frame;
   _root.save.inventoryRange[k] = false;
   _root.save.inventoryAttack[k] = attack;
   _root.save.inventorySpeed[k] = speed;
   _root.save.inventoryDefense[k] = defense;
   _root.save.inventoryBonus[k] = bonus;
   _root.save.inventoryAbility[k] = ability;
   _root.save.inventoryMoreBonus[k] = moreBonus;
   _root.save.inventoryLevel[k] = level;
   _root.save.inventoryMaxLevel[k] = maxLevel;
   _root.save.inventoryExp[k] = exp;
   _root.save.inventoryExpTNL[k] = expTNL;
   _root.save.inventoryEnhance[k] = enhance;
   _root.save.inventoryBonusPow[k] = bonusPow;
   _root.save.inventorySell[k] = sell;
   _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
   if(noLife == false)
   {
      _root.save.inventoryExpiry[k] = Infinity;
   }
   _root.save.inventoryObtainTime[k] = _root.systemtimenow;
   _root.save.inventoryDesc[k] = desc;
   _root.save.inventoryCrit[k] = crit;
   _root.save.inventoryDexterity[k] = dexterity;
   _root.save.inventoryHealth[k] = health;
   _root.save.inventoryNoBonus[k] = noBonus;
   _root.save.inventoryNoFuse[k] = noFuse;
   _root.save.inventoryNoUnique[k] = noUnique;
   _root.save.inventorySpirit[k] = spirit;
   _root.save.inventoryGuard[k] = guard;
   _root.save.inventoryUnob[k] = unob;
   _root.save.inventorySet[k] = itemSet;
   if(_root.save.inventoryBonus[k] == "Random")
   {
      bonusToGet = random(15) + 1;
      if(Math.random() < 0.2)
      {
         bonusToGet = random(22) + 1;
      }
      if(bonusToGet == 1 || bonusToGet == 2)
      {
         _root.save.inventoryBonus[k] = "Reward";
      }
      if(bonusToGet == 3 || bonusToGet == 4)
      {
         _root.save.inventoryBonus[k] = "EXP";
      }
      if(bonusToGet == 5 || bonusToGet == 6)
      {
         _root.save.inventoryBonus[k] = "Coin";
      }
      if(bonusToGet == 7 || bonusToGet == 8)
      {
         _root.save.inventoryBonus[k] = "Pixel";
      }
      if(bonusToGet == 9 || bonusToGet == 10)
      {
         _root.save.inventoryBonus[k] = "Drop Rate";
      }
      if(bonusToGet == 11 || bonusToGet == 12)
      {
         _root.save.inventoryBonus[k] = "Spawn Rate";
      }
      if(bonusToGet == 13)
      {
         _root.save.inventoryBonus[k] = "Fire Element";
      }
      if(bonusToGet == 14)
      {
         _root.save.inventoryBonus[k] = "Ice Element";
      }
      if(bonusToGet == 15)
      {
         _root.save.inventoryBonus[k] = "Wind Element";
      }
      if(bonusToGet == 16)
      {
         _root.save.inventoryBonus[k] = "Earth Element";
      }
      if(bonusToGet == 17)
      {
         _root.save.inventoryBonus[k] = "Thunder Element";
      }
      if(bonusToGet == 18)
      {
         _root.save.inventoryBonus[k] = "Water Element";
      }
      if(bonusToGet == 19)
      {
         _root.save.inventoryBonus[k] = "Light Element";
      }
      if(bonusToGet == 20)
      {
         _root.save.inventoryBonus[k] = "Dark Element";
      }
      if(bonusToGet == 21)
      {
         _root.save.inventoryBonus[k] = "Rare Monster Rate";
      }
      if(bonusToGet == 22)
      {
         _root.save.inventoryBonus[k] = "Epic Monster Rate";
      }
      if(_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
      {
         _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
      }
      else if(_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
      {
         _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
      }
   }
   if(_root.save.inventoryAbility[k] == "Random")
   {
      bonusToGet = random(25) + 1;
      if(bonusToGet == 1)
      {
         _root.save.inventoryAbility[k] = "Attack";
      }
      if(bonusToGet == 2)
      {
         _root.save.inventoryAbility[k] = "Attack Speed";
      }
      if(bonusToGet == 3)
      {
         _root.save.inventoryAbility[k] = "Ignore Defense";
      }
      if(bonusToGet == 4)
      {
         _root.save.inventoryAbility[k] = "Mastery";
      }
      if(bonusToGet == 5)
      {
         _root.save.inventoryAbility[k] = "Critical Chance";
      }
      if(bonusToGet == 6)
      {
         _root.save.inventoryAbility[k] = "Critical Damage";
      }
      if(bonusToGet == 7)
      {
         _root.save.inventoryAbility[k] = "Defense";
      }
      if(bonusToGet == 8)
      {
         _root.save.inventoryAbility[k] = "Damage Taken";
      }
      if(bonusToGet == 9)
      {
         _root.save.inventoryAbility[k] = "Reflect";
      }
      if(bonusToGet == 10)
      {
         _root.save.inventoryAbility[k] = "Accuracy";
      }
      if(bonusToGet == 11)
      {
         _root.save.inventoryAbility[k] = "Hit Chance";
      }
      if(bonusToGet == 12)
      {
         _root.save.inventoryAbility[k] = "Evasion";
      }
      if(bonusToGet == 13)
      {
         _root.save.inventoryAbility[k] = "Dodge Chance";
      }
      if(bonusToGet == 14)
      {
         _root.save.inventoryAbility[k] = "Poison Chance";
      }
      if(bonusToGet == 15)
      {
         _root.save.inventoryAbility[k] = "Weaken Chance";
      }
      if(bonusToGet == 16)
      {
         _root.save.inventoryAbility[k] = "Blind Chance";
      }
      if(bonusToGet == 17)
      {
         _root.save.inventoryAbility[k] = "Stun Chance";
      }
      if(bonusToGet == 18)
      {
         _root.save.inventoryAbility[k] = "HP";
      }
      if(bonusToGet == 19)
      {
         _root.save.inventoryAbility[k] = "MP";
      }
      if(bonusToGet == 20)
      {
         _root.save.inventoryAbility[k] = "HP Regen";
      }
      if(bonusToGet == 21)
      {
         _root.save.inventoryAbility[k] = "MP Regen";
      }
      if(bonusToGet == 22)
      {
         _root.save.inventoryAbility[k] = "Rage Depletion";
      }
      if(bonusToGet == 23)
      {
         _root.save.inventoryAbility[k] = "Drain";
      }
      if(bonusToGet == 24)
      {
         _root.save.inventoryAbility[k] = "Mana Eater";
      }
      if(bonusToGet == 25)
      {
         _root.save.inventoryAbility[k] = "Autosteal";
      }
      if(_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.2)
      {
         _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
      }
      else if(_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.07)
      {
         _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
      }
   }
   if(_root.save.inventoryMoreBonus[k] == "Random")
   {
      bonusToGet = random(11) + 1;
      if(bonusToGet == 1)
      {
         _root.save.inventoryMoreBonus[k] = "Equipment Attack";
      }
      if(bonusToGet == 2)
      {
         _root.save.inventoryMoreBonus[k] = "Equipment Defense";
      }
      if(bonusToGet == 3)
      {
         _root.save.inventoryMoreBonus[k] = "Attack Power";
      }
      if(bonusToGet == 4)
      {
         _root.save.inventoryMoreBonus[k] = "Defense Power";
      }
      if(bonusToGet == 5)
      {
         _root.save.inventoryMoreBonus[k] = "MaxHP";
      }
      if(bonusToGet == 6)
      {
         _root.save.inventoryMoreBonus[k] = "MaxMP";
      }
      if(bonusToGet == 7)
      {
         _root.save.inventoryMoreBonus[k] = "Accuracy";
      }
      if(bonusToGet == 8)
      {
         _root.save.inventoryMoreBonus[k] = "Evasion";
      }
      if(bonusToGet == 9)
      {
         _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
      }
      if(bonusToGet == 10)
      {
         _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
      }
      if(bonusToGet == 11)
      {
         _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
      }
      if(_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
      {
         _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
      }
      else if(_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
      {
         _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
      }
   }
}
function previewFusedAccessory(reqRank, subtype, frame, attack, speed, defense, crit, dexterity, health, maxLevel, expTNL, level, exp, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noFuse, noUnique, spirit, unob, name, desc, guard)
{
   k = 1331;
   if(noBonus == undefined)
   {
      noBonus = false;
   }
   if(noLife == undefined)
   {
      noLife = true;
   }
   if(noFuse == undefined)
   {
      noFuse = false;
   }
   if(noUnique == undefined)
   {
      noUnique = false;
   }
   if(spirit == undefined)
   {
      spirit = false;
   }
   if(guard == undefined)
   {
      guard = false;
   }
   if(isNaN(level))
   {
      level = 1;
      _root.breakNews("[Error]","ERROR: " + name + " / [level] not defined.",16711680,9002);
   }
   if(isNaN(exp))
   {
      exp = 0;
      _root.breakNews("[Error]","ERROR: " + name + " / [exp] not defined.",16711680,9002);
   }
   if(isNaN(crit))
   {
      crit = 10;
      dexterity = 0;
      health = 0;
      _root.breakNews("[Error]","ERROR: " + name + " / [crit] not defined.",16711680,9002);
   }
   if(isNaN(unob))
   {
      unob = 0;
      _root.breakNews("[Error]","ERROR: " + name + " / [unob] not defined.",16711680,9002);
   }
   itemSet = _root.checkArenaSet(name);
   if(moreBonus == undefined)
   {
      moreBonus = "";
      _root.breakNews("[Error]","ERROR: " + name + " / [moreBonus] not defined.",16711680,9002);
   }
   if(desc == undefined)
   {
      desc = "";
      _root.breakNews("[Error]","ERROR: " + name + " / [desc] not defined.",16711680,9002);
   }
   _root.save.inventoryExist[k] = 1;
   _root.save.inventoryName[k] = name;
   _root.save.inventoryReqRank[k] = reqRank;
   _root.save.inventoryType[k] = "Armor";
   _root.save.inventorySubtype[k] = subtype;
   _root.save.inventoryFrame[k] = frame;
   _root.save.inventoryRange[k] = false;
   _root.save.inventoryAttack[k] = attack;
   _root.save.inventorySpeed[k] = speed;
   _root.save.inventoryDefense[k] = defense;
   _root.save.inventoryBonus[k] = bonus;
   _root.save.inventoryAbility[k] = ability;
   _root.save.inventoryMoreBonus[k] = moreBonus;
   _root.save.inventoryLevel[k] = level;
   _root.save.inventoryMaxLevel[k] = maxLevel;
   _root.save.inventoryExp[k] = exp;
   _root.save.inventoryExpTNL[k] = expTNL;
   _root.save.inventoryEnhance[k] = enhance;
   _root.save.inventoryBonusPow[k] = bonusPow;
   _root.save.inventorySell[k] = sell;
   _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
   if(noLife == false)
   {
      _root.save.inventoryExpiry[k] = Infinity;
   }
   _root.save.inventoryObtainTime[k] = _root.systemtimenow;
   _root.save.inventoryDesc[k] = desc;
   _root.save.inventoryCrit[k] = crit;
   _root.save.inventoryDexterity[k] = dexterity;
   _root.save.inventoryHealth[k] = health;
   _root.save.inventoryNoBonus[k] = noBonus;
   _root.save.inventoryNoFuse[k] = noFuse;
   _root.save.inventoryNoUnique[k] = noUnique;
   _root.save.inventorySpirit[k] = spirit;
   _root.save.inventoryGuard[k] = guard;
   _root.save.inventoryUnob[k] = unob;
   _root.save.inventorySet[k] = itemSet;
   if(_root.save.inventoryBonus[k] == "Random")
   {
      bonusToGet = random(15) + 1;
      if(Math.random() < 0.2)
      {
         bonusToGet = random(22) + 1;
      }
      if(bonusToGet == 1 || bonusToGet == 2)
      {
         _root.save.inventoryBonus[k] = "Reward";
      }
      if(bonusToGet == 3 || bonusToGet == 4)
      {
         _root.save.inventoryBonus[k] = "EXP";
      }
      if(bonusToGet == 5 || bonusToGet == 6)
      {
         _root.save.inventoryBonus[k] = "Coin";
      }
      if(bonusToGet == 7 || bonusToGet == 8)
      {
         _root.save.inventoryBonus[k] = "Pixel";
      }
      if(bonusToGet == 9 || bonusToGet == 10)
      {
         _root.save.inventoryBonus[k] = "Drop Rate";
      }
      if(bonusToGet == 11 || bonusToGet == 12)
      {
         _root.save.inventoryBonus[k] = "Spawn Rate";
      }
      if(bonusToGet == 13)
      {
         _root.save.inventoryBonus[k] = "Fire Element";
      }
      if(bonusToGet == 14)
      {
         _root.save.inventoryBonus[k] = "Ice Element";
      }
      if(bonusToGet == 15)
      {
         _root.save.inventoryBonus[k] = "Wind Element";
      }
      if(bonusToGet == 16)
      {
         _root.save.inventoryBonus[k] = "Earth Element";
      }
      if(bonusToGet == 17)
      {
         _root.save.inventoryBonus[k] = "Thunder Element";
      }
      if(bonusToGet == 18)
      {
         _root.save.inventoryBonus[k] = "Water Element";
      }
      if(bonusToGet == 19)
      {
         _root.save.inventoryBonus[k] = "Light Element";
      }
      if(bonusToGet == 20)
      {
         _root.save.inventoryBonus[k] = "Dark Element";
      }
      if(bonusToGet == 21)
      {
         _root.save.inventoryBonus[k] = "Rare Monster Rate";
      }
      if(bonusToGet == 22)
      {
         _root.save.inventoryBonus[k] = "Epic Monster Rate";
      }
      if(_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
      {
         _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
      }
      else if(_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
      {
         _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
      }
   }
   if(_root.save.inventoryAbility[k] == "Random")
   {
      bonusToGet = random(25) + 1;
      if(bonusToGet == 1)
      {
         _root.save.inventoryAbility[k] = "Attack";
      }
      if(bonusToGet == 2)
      {
         _root.save.inventoryAbility[k] = "Attack Speed";
      }
      if(bonusToGet == 3)
      {
         _root.save.inventoryAbility[k] = "Ignore Defense";
      }
      if(bonusToGet == 4)
      {
         _root.save.inventoryAbility[k] = "Mastery";
      }
      if(bonusToGet == 5)
      {
         _root.save.inventoryAbility[k] = "Critical Chance";
      }
      if(bonusToGet == 6)
      {
         _root.save.inventoryAbility[k] = "Critical Damage";
      }
      if(bonusToGet == 7)
      {
         _root.save.inventoryAbility[k] = "Defense";
      }
      if(bonusToGet == 8)
      {
         _root.save.inventoryAbility[k] = "Damage Taken";
      }
      if(bonusToGet == 9)
      {
         _root.save.inventoryAbility[k] = "Reflect";
      }
      if(bonusToGet == 10)
      {
         _root.save.inventoryAbility[k] = "Accuracy";
      }
      if(bonusToGet == 11)
      {
         _root.save.inventoryAbility[k] = "Hit Chance";
      }
      if(bonusToGet == 12)
      {
         _root.save.inventoryAbility[k] = "Evasion";
      }
      if(bonusToGet == 13)
      {
         _root.save.inventoryAbility[k] = "Dodge Chance";
      }
      if(bonusToGet == 14)
      {
         _root.save.inventoryAbility[k] = "Poison Chance";
      }
      if(bonusToGet == 15)
      {
         _root.save.inventoryAbility[k] = "Weaken Chance";
      }
      if(bonusToGet == 16)
      {
         _root.save.inventoryAbility[k] = "Blind Chance";
      }
      if(bonusToGet == 17)
      {
         _root.save.inventoryAbility[k] = "Stun Chance";
      }
      if(bonusToGet == 18)
      {
         _root.save.inventoryAbility[k] = "HP";
      }
      if(bonusToGet == 19)
      {
         _root.save.inventoryAbility[k] = "MP";
      }
      if(bonusToGet == 20)
      {
         _root.save.inventoryAbility[k] = "HP Regen";
      }
      if(bonusToGet == 21)
      {
         _root.save.inventoryAbility[k] = "MP Regen";
      }
      if(bonusToGet == 22)
      {
         _root.save.inventoryAbility[k] = "Rage Depletion";
      }
      if(bonusToGet == 23)
      {
         _root.save.inventoryAbility[k] = "Drain";
      }
      if(bonusToGet == 24)
      {
         _root.save.inventoryAbility[k] = "Mana Eater";
      }
      if(bonusToGet == 25)
      {
         _root.save.inventoryAbility[k] = "Autosteal";
      }
      if(_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.2)
      {
         _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
      }
      else if(_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.07)
      {
         _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
      }
   }
   if(_root.save.inventoryMoreBonus[k] == "Random")
   {
      bonusToGet = random(11) + 1;
      if(bonusToGet == 1)
      {
         _root.save.inventoryMoreBonus[k] = "Equipment Attack";
      }
      if(bonusToGet == 2)
      {
         _root.save.inventoryMoreBonus[k] = "Equipment Defense";
      }
      if(bonusToGet == 3)
      {
         _root.save.inventoryMoreBonus[k] = "Attack Power";
      }
      if(bonusToGet == 4)
      {
         _root.save.inventoryMoreBonus[k] = "Defense Power";
      }
      if(bonusToGet == 5)
      {
         _root.save.inventoryMoreBonus[k] = "MaxHP";
      }
      if(bonusToGet == 6)
      {
         _root.save.inventoryMoreBonus[k] = "MaxMP";
      }
      if(bonusToGet == 7)
      {
         _root.save.inventoryMoreBonus[k] = "Accuracy";
      }
      if(bonusToGet == 8)
      {
         _root.save.inventoryMoreBonus[k] = "Evasion";
      }
      if(bonusToGet == 9)
      {
         _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
      }
      if(bonusToGet == 10)
      {
         _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
      }
      if(bonusToGet == 11)
      {
         _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
      }
      if(_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
      {
         _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
      }
      else if(_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
      {
         _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
      }
   }
}
function getArenaWeapon(reqRank, subtype, frame, range, attack, speed, defense, crit, dexterity, health, maxLevel, expTNL, level, exp, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noFuse, noUnique, spirit, unob, name, desc, guard, filter)
{
   if(filter == true && _root.filterItem(name,sell) == true)
   {
      return undefined;
   }
   k = 9999;
   var _loc33_ = 1;
   while(_loc33_ <= 30)
   {
      if(_root.save.inventoryExist[_loc33_] != 1)
      {
         if(k > _loc33_)
         {
            k = _loc33_;
         }
      }
      _loc33_ += 1;
   }
   if(k == 9999)
   {
      k = _root.save.arenaDeletedSlot;
      _root.save.arenaDeletedSlot += 1;
      if(_root.save.arenaDeletedSlot > 830)
      {
         _root.save.arenaDeletedSlot = 801;
      }
      _root.deleteArenaItem(k);
   }
   if(name != undefined)
   {
      if(noBonus == undefined)
      {
         noBonus = false;
      }
      if(noLife == undefined)
      {
         noLife = true;
      }
      if(noFuse == undefined)
      {
         noFuse = false;
      }
      if(noUnique == undefined)
      {
         noUnique = false;
      }
      if(spirit == undefined)
      {
         spirit = false;
      }
      if(guard == undefined)
      {
         guard = false;
      }
      if(isNaN(level))
      {
         level = 1;
         _root.breakNews("[Error]","ERROR: " + name + " / [level] not defined.",16711680,9002);
      }
      if(isNaN(exp))
      {
         exp = 0;
         _root.breakNews("[Error]","ERROR: " + name + " / [exp] not defined.",16711680,9002);
      }
      if(isNaN(crit))
      {
         crit = 10;
         dexterity = 0;
         health = 0;
         _root.breakNews("[Error]","ERROR: " + name + " / [crit] not defined.",16711680,9002);
      }
      if(isNaN(unob))
      {
         unob = 0;
         _root.breakNews("[Error]","ERROR: " + name + " / [unob] not defined.",16711680,9002);
      }
      itemSet = _root.checkArenaSet(name);
      if(moreBonus == undefined)
      {
         moreBonus = "";
         _root.breakNews("[Error]","ERROR: " + name + " / [moreBonus] not defined.",16711680,9002);
      }
      if(desc == undefined)
      {
         desc = "";
         _root.breakNews("[Error]","ERROR: " + name + " / [desc] not defined.",16711680,9002);
      }
      _root.save.inventoryExist[k] = 1;
      _root.save.inventoryName[k] = name;
      _root.save.inventoryReqRank[k] = reqRank;
      _root.save.inventoryType[k] = "Weapon";
      _root.save.inventorySubtype[k] = subtype;
      _root.save.inventoryFrame[k] = frame;
      _root.save.inventoryRange[k] = range;
      _root.save.inventoryAttack[k] = attack;
      _root.save.inventorySpeed[k] = speed;
      _root.save.inventoryDefense[k] = defense;
      _root.save.inventoryBonus[k] = bonus;
      _root.save.inventoryAbility[k] = ability;
      _root.save.inventoryMoreBonus[k] = moreBonus;
      _root.save.inventoryLevel[k] = level;
      _root.save.inventoryMaxLevel[k] = maxLevel;
      _root.save.inventoryExp[k] = exp;
      _root.save.inventoryExpTNL[k] = expTNL;
      _root.save.inventoryEnhance[k] = enhance;
      _root.save.inventoryBonusPow[k] = bonusPow;
      _root.save.inventorySell[k] = sell;
      _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
      if(noLife == false)
      {
         _root.save.inventoryExpiry[k] = Infinity;
      }
      _root.save.inventoryObtainTime[k] = _root.systemtimenow;
      _root.save.inventoryDesc[k] = desc;
      _root.save.inventoryCrit[k] = crit;
      _root.save.inventoryDexterity[k] = dexterity;
      _root.save.inventoryHealth[k] = health;
      _root.save.inventoryNoBonus[k] = noBonus;
      _root.save.inventoryNoFuse[k] = noFuse;
      _root.save.inventoryNoUnique[k] = noUnique;
      _root.save.inventorySpirit[k] = spirit;
      _root.save.inventoryGuard[k] = guard;
      _root.save.inventoryUnob[k] = unob;
      _root.save.inventorySet[k] = itemSet;
      if(_root.save.inventoryBonus[k] == "Random")
      {
         bonusToGet = random(22) + 1;
         if(bonusToGet == 1 || bonusToGet == 2)
         {
            _root.save.inventoryBonus[k] = "Reward";
         }
         if(bonusToGet == 3 || bonusToGet == 4)
         {
            _root.save.inventoryBonus[k] = "EXP";
         }
         if(bonusToGet == 5 || bonusToGet == 6)
         {
            _root.save.inventoryBonus[k] = "Coin";
         }
         if(bonusToGet == 7 || bonusToGet == 8)
         {
            _root.save.inventoryBonus[k] = "Pixel";
         }
         if(bonusToGet == 9 || bonusToGet == 10)
         {
            _root.save.inventoryBonus[k] = "Drop Rate";
         }
         if(bonusToGet == 11 || bonusToGet == 12)
         {
            _root.save.inventoryBonus[k] = "Spawn Rate";
         }
         if(bonusToGet == 13)
         {
            _root.save.inventoryBonus[k] = "Fire Element";
         }
         if(bonusToGet == 14)
         {
            _root.save.inventoryBonus[k] = "Ice Element";
         }
         if(bonusToGet == 15)
         {
            _root.save.inventoryBonus[k] = "Wind Element";
         }
         if(bonusToGet == 16)
         {
            _root.save.inventoryBonus[k] = "Earth Element";
         }
         if(bonusToGet == 17)
         {
            _root.save.inventoryBonus[k] = "Thunder Element";
         }
         if(bonusToGet == 18)
         {
            _root.save.inventoryBonus[k] = "Water Element";
         }
         if(bonusToGet == 19)
         {
            _root.save.inventoryBonus[k] = "Light Element";
         }
         if(bonusToGet == 20)
         {
            _root.save.inventoryBonus[k] = "Dark Element";
         }
         if(bonusToGet == 21)
         {
            _root.save.inventoryBonus[k] = "Rare Monster Rate";
         }
         if(bonusToGet == 22)
         {
            _root.save.inventoryBonus[k] = "Epic Monster Rate";
         }
         if(_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
         {
            _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
         }
         else if(_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
         {
            _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
         }
      }
      if(_root.save.inventoryAbility[k] == "Random")
      {
         bonusToGet = random(47) + 1;
         if(bonusToGet == 1)
         {
            _root.save.inventoryAbility[k] = "Attack";
         }
         if(bonusToGet == 2)
         {
            _root.save.inventoryAbility[k] = "Attack Speed";
         }
         if(bonusToGet == 3)
         {
            _root.save.inventoryAbility[k] = "Ignore Defense";
         }
         if(bonusToGet == 4)
         {
            _root.save.inventoryAbility[k] = "Mastery";
         }
         if(bonusToGet == 5)
         {
            _root.save.inventoryAbility[k] = "Critical Chance";
         }
         if(bonusToGet == 6)
         {
            _root.save.inventoryAbility[k] = "Critical Damage";
         }
         if(bonusToGet == 7)
         {
            _root.save.inventoryAbility[k] = "Defense";
         }
         if(bonusToGet == 8)
         {
            _root.save.inventoryAbility[k] = "Damage Taken";
         }
         if(bonusToGet == 9)
         {
            _root.save.inventoryAbility[k] = "Reflect";
         }
         if(bonusToGet == 10)
         {
            _root.save.inventoryAbility[k] = "Accuracy";
         }
         if(bonusToGet == 11)
         {
            _root.save.inventoryAbility[k] = "Hit Chance";
         }
         if(bonusToGet == 12)
         {
            _root.save.inventoryAbility[k] = "Evasion";
         }
         if(bonusToGet == 13)
         {
            _root.save.inventoryAbility[k] = "Dodge Chance";
         }
         if(bonusToGet == 14)
         {
            _root.save.inventoryAbility[k] = "Poison Chance";
         }
         if(bonusToGet == 15)
         {
            _root.save.inventoryAbility[k] = "Weaken Chance";
         }
         if(bonusToGet == 16)
         {
            _root.save.inventoryAbility[k] = "Blind Chance";
         }
         if(bonusToGet == 17)
         {
            _root.save.inventoryAbility[k] = "Stun Chance";
         }
         if(bonusToGet == 18)
         {
            _root.save.inventoryAbility[k] = "HP";
         }
         if(bonusToGet == 19)
         {
            _root.save.inventoryAbility[k] = "MP";
         }
         if(bonusToGet == 20)
         {
            _root.save.inventoryAbility[k] = "HP Regen";
         }
         if(bonusToGet == 21)
         {
            _root.save.inventoryAbility[k] = "MP Regen";
         }
         if(bonusToGet == 22)
         {
            _root.save.inventoryAbility[k] = "Rage Depletion";
         }
         if(bonusToGet == 23)
         {
            _root.save.inventoryAbility[k] = "Drain";
         }
         if(bonusToGet == 24)
         {
            _root.save.inventoryAbility[k] = "Mana Eater";
         }
         if(bonusToGet == 25)
         {
            _root.save.inventoryAbility[k] = "Autosteal";
         }
         if(bonusToGet == 26)
         {
            _root.save.inventoryAbility[k] = "Double Hit Chance";
         }
         if(bonusToGet == 27)
         {
            _root.save.inventoryAbility[k] = "Rage Attack";
         }
         if(bonusToGet == 28)
         {
            _root.save.inventoryAbility[k] = "Rage Speed";
         }
         if(bonusToGet == 29)
         {
            _root.save.inventoryAbility[k] = "Poison Damage";
         }
         if(bonusToGet == 30)
         {
            _root.save.inventoryAbility[k] = "Poison Duration";
         }
         if(bonusToGet == 31)
         {
            _root.save.inventoryAbility[k] = "Weaken Effect";
         }
         if(bonusToGet == 32)
         {
            _root.save.inventoryAbility[k] = "Weaken Duration";
         }
         if(bonusToGet == 33)
         {
            _root.save.inventoryAbility[k] = "Blind Effect";
         }
         if(bonusToGet == 34)
         {
            _root.save.inventoryAbility[k] = "Blind Duration";
         }
         if(bonusToGet == 35)
         {
            _root.save.inventoryAbility[k] = "Potion Efficiency";
         }
         if(bonusToGet == 36)
         {
            _root.save.inventoryAbility[k] = "Boss Damage";
         }
         if(bonusToGet == 37)
         {
            _root.save.inventoryAbility[k] = "Magic Resist";
         }
         if(bonusToGet == 38)
         {
            _root.save.inventoryAbility[k] = "Instant Kill";
         }
         if(bonusToGet == 39)
         {
            _root.save.inventoryAbility[k] = "Negate Effect";
         }
         if(bonusToGet == 40)
         {
            _root.save.inventoryAbility[k] = "Non-Boss Damage";
         }
         if(bonusToGet == 41)
         {
            _root.save.inventoryAbility[k] = "Damage";
         }
         if(bonusToGet == 42)
         {
            _root.save.inventoryAbility[k] = "Extra Combo";
         }
         if(bonusToGet == 43)
         {
            _root.save.inventoryAbility[k] = "Magic Reflect";
         }
         if(bonusToGet == 44)
         {
            _root.save.inventoryAbility[k] = "Nullify Death Penalty";
         }
         if(bonusToGet == 45)
         {
            _root.save.inventoryAbility[k] = "Buff Effect";
         }
         if(bonusToGet == 46)
         {
            _root.save.inventoryAbility[k] = "All Elements";
         }
         if(bonusToGet == 47)
         {
            _root.save.inventoryAbility[k] = "Max Spirit";
         }
         if(_root.save.arenaAbilityPreference1 != "None" && Math.random() < 0.2)
         {
            _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference1;
         }
         else if(_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.1)
         {
            _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
         }
         else if(_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.05)
         {
            _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
         }
      }
      if(_root.save.inventoryMoreBonus[k] == "Random")
      {
         bonusToGet = random(11) + 1;
         if(bonusToGet == 1)
         {
            _root.save.inventoryMoreBonus[k] = "Equipment Attack";
         }
         if(bonusToGet == 2)
         {
            _root.save.inventoryMoreBonus[k] = "Equipment Defense";
         }
         if(bonusToGet == 3)
         {
            _root.save.inventoryMoreBonus[k] = "Attack Power";
         }
         if(bonusToGet == 4)
         {
            _root.save.inventoryMoreBonus[k] = "Defense Power";
         }
         if(bonusToGet == 5)
         {
            _root.save.inventoryMoreBonus[k] = "MaxHP";
         }
         if(bonusToGet == 6)
         {
            _root.save.inventoryMoreBonus[k] = "MaxMP";
         }
         if(bonusToGet == 7)
         {
            _root.save.inventoryMoreBonus[k] = "Accuracy";
         }
         if(bonusToGet == 8)
         {
            _root.save.inventoryMoreBonus[k] = "Evasion";
         }
         if(bonusToGet == 9)
         {
            _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
         }
         if(bonusToGet == 10)
         {
            _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
         }
         if(bonusToGet == 11)
         {
            _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
         }
         if(_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
         {
            _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
         }
         else if(_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
         {
            _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
         }
      }
      if(k <= 30)
      {
         _root.dispNews(49,"Weapon GET! [" + name + "]");
      }
      else
      {
         _root.dispNews(55,"Weapon inventory full! [" + name + "] moved to Recently Deleted tab.");
      }
   }
   else
   {
      _root.dispNews(55,"Weapon inventory full! [" + name + "] deleted :(");
   }
   checkFullInventory();
}
function getArenaArmor(reqRank, subtype, frame, attack, speed, defense, crit, dexterity, health, maxLevel, expTNL, level, exp, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noFuse, noUnique, spirit, unob, name, desc, guard, filter)
{
   if(filter == true && _root.filterItem(name,sell) == true)
   {
      return undefined;
   }
   k = 9999;
   var _loc32_ = 101;
   while(_loc32_ <= 130)
   {
      if(_root.save.inventoryExist[_loc32_] != 1)
      {
         if(k > _loc32_)
         {
            k = _loc32_;
         }
      }
      _loc32_ += 1;
   }
   if(k == 9999)
   {
      k = _root.save.arenaDeletedSlot;
      _root.save.arenaDeletedSlot += 1;
      if(_root.save.arenaDeletedSlot > 830)
      {
         _root.save.arenaDeletedSlot = 801;
      }
      _root.deleteArenaItem(k);
   }
   if(name != undefined)
   {
      if(noBonus == undefined)
      {
         noBonus = false;
      }
      if(noLife == undefined)
      {
         noLife = true;
      }
      if(noFuse == undefined)
      {
         noFuse = false;
      }
      if(noUnique == undefined)
      {
         noUnique = false;
      }
      if(spirit == undefined)
      {
         spirit = false;
      }
      if(guard == undefined)
      {
         guard = false;
      }
      if(isNaN(level))
      {
         level = 1;
         _root.breakNews("[Error]","ERROR: " + name + " / [level] not defined.",16711680,9002);
      }
      if(isNaN(exp))
      {
         exp = 0;
         _root.breakNews("[Error]","ERROR: " + name + " / [exp] not defined.",16711680,9002);
      }
      if(isNaN(crit))
      {
         crit = 10;
         dexterity = 0;
         health = 0;
         _root.breakNews("[Error]","ERROR: " + name + " / [crit] not defined.",16711680,9002);
      }
      if(isNaN(unob))
      {
         unob = 0;
         _root.breakNews("[Error]","ERROR: " + name + " / [unob] not defined.",16711680,9002);
      }
      itemSet = _root.checkArenaSet(name);
      if(moreBonus == undefined)
      {
         moreBonus = "";
         _root.breakNews("[Error]","ERROR: " + name + " / [moreBonus] not defined.",16711680,9002);
      }
      if(desc == undefined)
      {
         desc = "";
         _root.breakNews("[Error]","ERROR: " + name + " / [desc] not defined.",16711680,9002);
      }
      _root.save.inventoryExist[k] = 1;
      _root.save.inventoryName[k] = name;
      _root.save.inventoryReqRank[k] = reqRank;
      _root.save.inventoryType[k] = "Armor";
      _root.save.inventorySubtype[k] = subtype;
      _root.save.inventoryFrame[k] = frame;
      _root.save.inventoryRange[k] = false;
      _root.save.inventoryAttack[k] = attack;
      _root.save.inventorySpeed[k] = speed;
      _root.save.inventoryDefense[k] = defense;
      _root.save.inventoryBonus[k] = bonus;
      _root.save.inventoryAbility[k] = ability;
      _root.save.inventoryMoreBonus[k] = moreBonus;
      _root.save.inventoryLevel[k] = level;
      _root.save.inventoryMaxLevel[k] = maxLevel;
      _root.save.inventoryExp[k] = exp;
      _root.save.inventoryExpTNL[k] = expTNL;
      _root.save.inventoryEnhance[k] = enhance;
      _root.save.inventoryBonusPow[k] = bonusPow;
      _root.save.inventorySell[k] = sell;
      _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
      if(noLife == false)
      {
         _root.save.inventoryExpiry[k] = Infinity;
      }
      _root.save.inventoryObtainTime[k] = _root.systemtimenow;
      _root.save.inventoryDesc[k] = desc;
      _root.save.inventoryCrit[k] = crit;
      _root.save.inventoryDexterity[k] = dexterity;
      _root.save.inventoryHealth[k] = health;
      _root.save.inventoryNoBonus[k] = noBonus;
      _root.save.inventoryNoFuse[k] = noFuse;
      _root.save.inventoryNoUnique[k] = noUnique;
      _root.save.inventorySpirit[k] = spirit;
      _root.save.inventoryGuard[k] = guard;
      _root.save.inventoryUnob[k] = unob;
      _root.save.inventorySet[k] = itemSet;
      if(_root.save.inventoryBonus[k] == "Random")
      {
         bonusToGet = random(15) + 1;
         if(Math.random() < 0.2)
         {
            bonusToGet = random(22) + 1;
         }
         if(bonusToGet == 1 || bonusToGet == 2)
         {
            _root.save.inventoryBonus[k] = "Reward";
         }
         if(bonusToGet == 3 || bonusToGet == 4)
         {
            _root.save.inventoryBonus[k] = "EXP";
         }
         if(bonusToGet == 5 || bonusToGet == 6)
         {
            _root.save.inventoryBonus[k] = "Coin";
         }
         if(bonusToGet == 7 || bonusToGet == 8)
         {
            _root.save.inventoryBonus[k] = "Pixel";
         }
         if(bonusToGet == 9 || bonusToGet == 10)
         {
            _root.save.inventoryBonus[k] = "Drop Rate";
         }
         if(bonusToGet == 11 || bonusToGet == 12)
         {
            _root.save.inventoryBonus[k] = "Spawn Rate";
         }
         if(bonusToGet == 13)
         {
            _root.save.inventoryBonus[k] = "Fire Element";
         }
         if(bonusToGet == 14)
         {
            _root.save.inventoryBonus[k] = "Ice Element";
         }
         if(bonusToGet == 15)
         {
            _root.save.inventoryBonus[k] = "Wind Element";
         }
         if(bonusToGet == 16)
         {
            _root.save.inventoryBonus[k] = "Earth Element";
         }
         if(bonusToGet == 17)
         {
            _root.save.inventoryBonus[k] = "Thunder Element";
         }
         if(bonusToGet == 18)
         {
            _root.save.inventoryBonus[k] = "Water Element";
         }
         if(bonusToGet == 19)
         {
            _root.save.inventoryBonus[k] = "Light Element";
         }
         if(bonusToGet == 20)
         {
            _root.save.inventoryBonus[k] = "Dark Element";
         }
         if(bonusToGet == 21)
         {
            _root.save.inventoryBonus[k] = "Rare Monster Rate";
         }
         if(bonusToGet == 22)
         {
            _root.save.inventoryBonus[k] = "Epic Monster Rate";
         }
         if(_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
         {
            _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
         }
         else if(_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
         {
            _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
         }
      }
      if(_root.save.inventoryAbility[k] == "Random")
      {
         bonusToGet = random(25) + 1;
         if(bonusToGet == 1)
         {
            _root.save.inventoryAbility[k] = "Attack";
         }
         if(bonusToGet == 2)
         {
            _root.save.inventoryAbility[k] = "Attack Speed";
         }
         if(bonusToGet == 3)
         {
            _root.save.inventoryAbility[k] = "Ignore Defense";
         }
         if(bonusToGet == 4)
         {
            _root.save.inventoryAbility[k] = "Mastery";
         }
         if(bonusToGet == 5)
         {
            _root.save.inventoryAbility[k] = "Critical Chance";
         }
         if(bonusToGet == 6)
         {
            _root.save.inventoryAbility[k] = "Critical Damage";
         }
         if(bonusToGet == 7)
         {
            _root.save.inventoryAbility[k] = "Defense";
         }
         if(bonusToGet == 8)
         {
            _root.save.inventoryAbility[k] = "Damage Taken";
         }
         if(bonusToGet == 9)
         {
            _root.save.inventoryAbility[k] = "Reflect";
         }
         if(bonusToGet == 10)
         {
            _root.save.inventoryAbility[k] = "Accuracy";
         }
         if(bonusToGet == 11)
         {
            _root.save.inventoryAbility[k] = "Hit Chance";
         }
         if(bonusToGet == 12)
         {
            _root.save.inventoryAbility[k] = "Evasion";
         }
         if(bonusToGet == 13)
         {
            _root.save.inventoryAbility[k] = "Dodge Chance";
         }
         if(bonusToGet == 14)
         {
            _root.save.inventoryAbility[k] = "Poison Chance";
         }
         if(bonusToGet == 15)
         {
            _root.save.inventoryAbility[k] = "Weaken Chance";
         }
         if(bonusToGet == 16)
         {
            _root.save.inventoryAbility[k] = "Blind Chance";
         }
         if(bonusToGet == 17)
         {
            _root.save.inventoryAbility[k] = "Stun Chance";
         }
         if(bonusToGet == 18)
         {
            _root.save.inventoryAbility[k] = "HP";
         }
         if(bonusToGet == 19)
         {
            _root.save.inventoryAbility[k] = "MP";
         }
         if(bonusToGet == 20)
         {
            _root.save.inventoryAbility[k] = "HP Regen";
         }
         if(bonusToGet == 21)
         {
            _root.save.inventoryAbility[k] = "MP Regen";
         }
         if(bonusToGet == 22)
         {
            _root.save.inventoryAbility[k] = "Rage Depletion";
         }
         if(bonusToGet == 23)
         {
            _root.save.inventoryAbility[k] = "Drain";
         }
         if(bonusToGet == 24)
         {
            _root.save.inventoryAbility[k] = "Mana Eater";
         }
         if(bonusToGet == 25)
         {
            _root.save.inventoryAbility[k] = "Autosteal";
         }
         if(_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.2)
         {
            _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
         }
         else if(_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.07)
         {
            _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
         }
      }
      if(_root.save.inventoryMoreBonus[k] == "Random")
      {
         bonusToGet = random(11) + 1;
         if(bonusToGet == 1)
         {
            _root.save.inventoryMoreBonus[k] = "Equipment Attack";
         }
         if(bonusToGet == 2)
         {
            _root.save.inventoryMoreBonus[k] = "Equipment Defense";
         }
         if(bonusToGet == 3)
         {
            _root.save.inventoryMoreBonus[k] = "Attack Power";
         }
         if(bonusToGet == 4)
         {
            _root.save.inventoryMoreBonus[k] = "Defense Power";
         }
         if(bonusToGet == 5)
         {
            _root.save.inventoryMoreBonus[k] = "MaxHP";
         }
         if(bonusToGet == 6)
         {
            _root.save.inventoryMoreBonus[k] = "MaxMP";
         }
         if(bonusToGet == 7)
         {
            _root.save.inventoryMoreBonus[k] = "Accuracy";
         }
         if(bonusToGet == 8)
         {
            _root.save.inventoryMoreBonus[k] = "Evasion";
         }
         if(bonusToGet == 9)
         {
            _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
         }
         if(bonusToGet == 10)
         {
            _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
         }
         if(bonusToGet == 11)
         {
            _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
         }
         if(_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
         {
            _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
         }
         else if(_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
         {
            _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
         }
      }
      if(k <= 130)
      {
         _root.dispNews(50,"Armor GET! [" + name + "]");
      }
      else
      {
         _root.dispNews(56,"Armor inventory full! [" + name + "] moved to Recently Deleted tab.");
      }
   }
   else
   {
      _root.dispNews(56,"Armor inventory full! [" + name + "] deleted :(");
   }
   checkFullInventory();
}
function getArenaOutfit(reqRank, subtype, frame, bonusPow, sell, name, desc, filter)
{
   if(filter == true && _root.filterItem(name,sell) == true)
   {
      return undefined;
   }
   k = 9999;
   var _loc10_ = 601;
   while(_loc10_ <= 630)
   {
      if(_root.save.inventoryExist[_loc10_] != 1)
      {
         if(k > _loc10_)
         {
            k = _loc10_;
         }
      }
      _loc10_ += 1;
   }
   if(k == 9999)
   {
      k = _root.save.arenaDeletedSlot;
      _root.save.arenaDeletedSlot += 1;
      if(_root.save.arenaDeletedSlot > 830)
      {
         _root.save.arenaDeletedSlot = 801;
      }
      _root.deleteArenaItem(k);
   }
   if(name != undefined)
   {
      _root.save.inventoryExist[k] = 1;
      _root.save.inventoryName[k] = name;
      _root.save.inventoryReqRank[k] = reqRank;
      _root.save.inventoryType[k] = "Outfit";
      _root.save.inventorySubtype[k] = subtype;
      _root.save.inventoryFrame[k] = frame;
      _root.save.inventoryEnhance[k] = 0;
      _root.save.inventoryBonusPow[k] = bonusPow;
      _root.save.inventorySell[k] = sell;
      _root.save.inventoryExpiry[k] = Infinity;
      _root.save.inventoryObtainTime[k] = _root.systemtimenow;
      _root.save.inventoryDesc[k] = desc;
      if(k <= 630)
      {
         _root.dispNews(54,"Outfit GET! [" + name + "]");
      }
      else
      {
         _root.dispNews(60,"Outfit inventory full! [" + name + "] moved to Recently Deleted tab.");
      }
   }
   else
   {
      _root.dispNews(60,"Outfit inventory full! [" + name + "] deleted :(");
   }
   checkFullInventory();
}
function getArenaAccessory(reqRank, subtype, frame, attack, speed, defense, crit, dexterity, health, maxLevel, expTNL, level, exp, enhance, bonusPow, bonus, ability, moreBonus, sell, expiry, noBonus, noLife, noUnique, spirit, unob, name, desc, guard, filter)
{
   if(filter == true && _root.filterItem(name,sell) == true)
   {
      return undefined;
   }
   k = 9999;
   var _loc31_ = 501;
   while(_loc31_ <= 530)
   {
      if(_root.save.inventoryExist[_loc31_] != 1)
      {
         if(k > _loc31_)
         {
            k = _loc31_;
         }
      }
      _loc31_ += 1;
   }
   if(k == 9999)
   {
      k = _root.save.arenaDeletedSlot;
      _root.save.arenaDeletedSlot += 1;
      if(_root.save.arenaDeletedSlot > 830)
      {
         _root.save.arenaDeletedSlot = 801;
      }
      _root.deleteArenaItem(k);
   }
   if(name != undefined)
   {
      if(noBonus == undefined)
      {
         noBonus = false;
      }
      if(noLife == undefined)
      {
         noLife = true;
      }
      if(noFuse == undefined)
      {
         noFuse = false;
      }
      if(noUnique == undefined)
      {
         noUnique = false;
      }
      if(spirit == undefined)
      {
         spirit = false;
      }
      if(guard == undefined)
      {
         guard = false;
      }
      if(isNaN(level))
      {
         level = 1;
         _root.breakNews("[Error]","ERROR: " + name + " / [level] not defined.",16711680,9002);
      }
      if(isNaN(exp))
      {
         exp = 0;
         _root.breakNews("[Error]","ERROR: " + name + " / [exp] not defined.",16711680,9002);
      }
      if(isNaN(crit))
      {
         crit = 10;
         dexterity = 0;
         health = 0;
         _root.breakNews("[Error]","ERROR: " + name + " / [crit] not defined.",16711680,9002);
      }
      if(isNaN(unob))
      {
         unob = 0;
         _root.breakNews("[Error]","ERROR: " + name + " / [unob] not defined.",16711680,9002);
      }
      itemSet = _root.checkArenaSet(name);
      if(desc == "This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works.")
      {
         itemSet = 0;
      }
      if(desc == "Thank you for your donation and your continued support!")
      {
         itemSet = 0;
      }
      if(moreBonus == undefined)
      {
         moreBonus = "";
         _root.breakNews("[Error]","ERROR: " + name + " / [moreBonus] not defined.",16711680,9002);
      }
      if(desc == undefined)
      {
         desc = "";
         _root.breakNews("[Error]","ERROR: " + name + " / [desc] not defined.",16711680,9002);
      }
      _root.save.inventoryExist[k] = 1;
      _root.save.inventoryName[k] = name;
      _root.save.inventoryReqRank[k] = reqRank;
      _root.save.inventoryType[k] = "Accessory";
      _root.save.inventorySubtype[k] = subtype;
      _root.save.inventoryFrame[k] = frame;
      _root.save.inventoryRange[k] = false;
      _root.save.inventoryAttack[k] = attack;
      _root.save.inventorySpeed[k] = speed;
      _root.save.inventoryDefense[k] = defense;
      _root.save.inventoryBonus[k] = bonus;
      _root.save.inventoryAbility[k] = ability;
      if(moreBonus == undefined)
      {
         moreBonus = "";
      }
      _root.save.inventoryMoreBonus[k] = moreBonus;
      _root.save.inventoryLevel[k] = level;
      _root.save.inventoryMaxLevel[k] = maxLevel;
      _root.save.inventoryExp[k] = exp;
      if(isNaN(level))
      {
         _root.save.inventoryLevel[k] = 1;
      }
      if(isNaN(exp))
      {
         _root.save.inventoryExp[k] = 0;
      }
      _root.save.inventoryExpTNL[k] = expTNL;
      _root.save.inventoryEnhance[k] = enhance;
      _root.save.inventoryBonusPow[k] = bonusPow;
      _root.save.inventorySell[k] = sell;
      _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
      if(noLife == false)
      {
         _root.save.inventoryExpiry[k] = Infinity;
      }
      _root.save.inventoryObtainTime[k] = _root.systemtimenow;
      _root.save.inventoryDesc[k] = desc;
      _root.save.inventoryCrit[k] = crit;
      _root.save.inventoryDexterity[k] = dexterity;
      _root.save.inventoryHealth[k] = health;
      _root.save.inventoryNoBonus[k] = noBonus;
      _root.save.inventoryNoFuse[k] = false;
      _root.save.inventoryNoUnique[k] = noUnique;
      _root.save.inventorySpirit[k] = spirit;
      _root.save.inventoryGuard[k] = guard;
      _root.save.inventoryUnob[k] = unob;
      _root.save.inventorySet[k] = itemSet;
      if(_root.save.inventoryBonus[k] == "Random")
      {
         bonusToGet = random(22) + 1;
         if(bonusToGet == 1 || bonusToGet == 2)
         {
            _root.save.inventoryBonus[k] = "Reward";
         }
         if(bonusToGet == 3 || bonusToGet == 4)
         {
            _root.save.inventoryBonus[k] = "EXP";
         }
         if(bonusToGet == 5 || bonusToGet == 6)
         {
            _root.save.inventoryBonus[k] = "Coin";
         }
         if(bonusToGet == 7 || bonusToGet == 8)
         {
            _root.save.inventoryBonus[k] = "Pixel";
         }
         if(bonusToGet == 9 || bonusToGet == 10)
         {
            _root.save.inventoryBonus[k] = "Drop Rate";
         }
         if(bonusToGet == 11 || bonusToGet == 12)
         {
            _root.save.inventoryBonus[k] = "Spawn Rate";
         }
         if(bonusToGet == 13)
         {
            _root.save.inventoryBonus[k] = "Fire Element";
         }
         if(bonusToGet == 14)
         {
            _root.save.inventoryBonus[k] = "Ice Element";
         }
         if(bonusToGet == 15)
         {
            _root.save.inventoryBonus[k] = "Wind Element";
         }
         if(bonusToGet == 16)
         {
            _root.save.inventoryBonus[k] = "Earth Element";
         }
         if(bonusToGet == 17)
         {
            _root.save.inventoryBonus[k] = "Thunder Element";
         }
         if(bonusToGet == 18)
         {
            _root.save.inventoryBonus[k] = "Water Element";
         }
         if(bonusToGet == 19)
         {
            _root.save.inventoryBonus[k] = "Light Element";
         }
         if(bonusToGet == 20)
         {
            _root.save.inventoryBonus[k] = "Dark Element";
         }
         if(bonusToGet == 21)
         {
            _root.save.inventoryBonus[k] = "Rare Monster Rate";
         }
         if(bonusToGet == 22)
         {
            _root.save.inventoryBonus[k] = "Epic Monster Rate";
         }
         if(_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
         {
            _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
         }
         else if(_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
         {
            _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
         }
      }
      if(_root.save.inventoryAbility[k] == "Random")
      {
         bonusToGet = random(25) + 1;
         if(bonusToGet == 1)
         {
            _root.save.inventoryAbility[k] = "Attack";
         }
         if(bonusToGet == 2)
         {
            _root.save.inventoryAbility[k] = "Attack Speed";
         }
         if(bonusToGet == 3)
         {
            _root.save.inventoryAbility[k] = "Ignore Defense";
         }
         if(bonusToGet == 4)
         {
            _root.save.inventoryAbility[k] = "Mastery";
         }
         if(bonusToGet == 5)
         {
            _root.save.inventoryAbility[k] = "Critical Chance";
         }
         if(bonusToGet == 6)
         {
            _root.save.inventoryAbility[k] = "Critical Damage";
         }
         if(bonusToGet == 7)
         {
            _root.save.inventoryAbility[k] = "Defense";
         }
         if(bonusToGet == 8)
         {
            _root.save.inventoryAbility[k] = "Damage Taken";
         }
         if(bonusToGet == 9)
         {
            _root.save.inventoryAbility[k] = "Reflect";
         }
         if(bonusToGet == 10)
         {
            _root.save.inventoryAbility[k] = "Accuracy";
         }
         if(bonusToGet == 11)
         {
            _root.save.inventoryAbility[k] = "Hit Chance";
         }
         if(bonusToGet == 12)
         {
            _root.save.inventoryAbility[k] = "Evasion";
         }
         if(bonusToGet == 13)
         {
            _root.save.inventoryAbility[k] = "Dodge Chance";
         }
         if(bonusToGet == 14)
         {
            _root.save.inventoryAbility[k] = "Poison Chance";
         }
         if(bonusToGet == 15)
         {
            _root.save.inventoryAbility[k] = "Weaken Chance";
         }
         if(bonusToGet == 16)
         {
            _root.save.inventoryAbility[k] = "Blind Chance";
         }
         if(bonusToGet == 17)
         {
            _root.save.inventoryAbility[k] = "Stun Chance";
         }
         if(bonusToGet == 18)
         {
            _root.save.inventoryAbility[k] = "HP";
         }
         if(bonusToGet == 19)
         {
            _root.save.inventoryAbility[k] = "MP";
         }
         if(bonusToGet == 20)
         {
            _root.save.inventoryAbility[k] = "HP Regen";
         }
         if(bonusToGet == 21)
         {
            _root.save.inventoryAbility[k] = "MP Regen";
         }
         if(bonusToGet == 22)
         {
            _root.save.inventoryAbility[k] = "Rage Depletion";
         }
         if(bonusToGet == 23)
         {
            _root.save.inventoryAbility[k] = "Drain";
         }
         if(bonusToGet == 24)
         {
            _root.save.inventoryAbility[k] = "Mana Eater";
         }
         if(bonusToGet == 25)
         {
            _root.save.inventoryAbility[k] = "Autosteal";
         }
         if(_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.2)
         {
            _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
         }
         else if(_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.07)
         {
            _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
         }
      }
      if(_root.save.inventoryMoreBonus[k] == "Random")
      {
         bonusToGet = random(11) + 1;
         if(bonusToGet == 1)
         {
            _root.save.inventoryMoreBonus[k] = "Equipment Attack";
         }
         if(bonusToGet == 2)
         {
            _root.save.inventoryMoreBonus[k] = "Equipment Defense";
         }
         if(bonusToGet == 3)
         {
            _root.save.inventoryMoreBonus[k] = "Attack Power";
         }
         if(bonusToGet == 4)
         {
            _root.save.inventoryMoreBonus[k] = "Defense Power";
         }
         if(bonusToGet == 5)
         {
            _root.save.inventoryMoreBonus[k] = "MaxHP";
         }
         if(bonusToGet == 6)
         {
            _root.save.inventoryMoreBonus[k] = "MaxMP";
         }
         if(bonusToGet == 7)
         {
            _root.save.inventoryMoreBonus[k] = "Accuracy";
         }
         if(bonusToGet == 8)
         {
            _root.save.inventoryMoreBonus[k] = "Evasion";
         }
         if(bonusToGet == 9)
         {
            _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
         }
         if(bonusToGet == 10)
         {
            _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
         }
         if(bonusToGet == 11)
         {
            _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
         }
         if(_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
         {
            _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
         }
         else if(_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
         {
            _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
         }
      }
      if(k <= 530)
      {
         _root.dispNews(51,"Accessory GET! [" + name + "]");
      }
      else
      {
         _root.dispNews(57,"Accessory inventory full! [" + name + "] moved to Recently Deleted tab.");
      }
   }
   else
   {
      _root.dispNews(57,"Accessory inventory full! [" + name + "] deleted :(");
   }
   checkFullInventory();
}
function getArenaEnhancer(subtype, frame, power, curse, success, bonus, ability, moreBonus, enhance, bonusPow, sell, expiry, name, desc, guard, filter)
{
   if(filter == true && _root.filterItem(name,sell) == true)
   {
      return undefined;
   }
   k = 9999;
   var _loc18_ = 201;
   while(_loc18_ <= 230)
   {
      if(_root.save.inventoryExist[_loc18_] != 1)
      {
         if(k > _loc18_)
         {
            k = _loc18_;
         }
      }
      _loc18_ += 1;
   }
   if(k == 9999)
   {
      k = _root.save.arenaDeletedSlot;
      _root.save.arenaDeletedSlot += 1;
      if(_root.save.arenaDeletedSlot > 830)
      {
         _root.save.arenaDeletedSlot = 801;
      }
      _root.deleteArenaItem(k);
   }
   if(name != undefined)
   {
      if(guard == undefined)
      {
         guard = false;
      }
      if(moreBonus == undefined)
      {
         moreBonus = "";
         _root.breakNews("[Error]","ERROR: " + name + " / [moreBonus] not defined.",16711680,9002);
      }
      if(desc == undefined)
      {
         desc = "";
         _root.breakNews("[Error]","ERROR: " + name + " / [desc] not defined.",16711680,9002);
      }
      _root.save.inventoryExist[k] = 1;
      _root.save.inventoryName[k] = name;
      _root.save.inventoryReqRank[k] = 1;
      _root.save.inventoryType[k] = "Enhancer";
      _root.save.inventorySubtype[k] = subtype;
      _root.save.inventoryFrame[k] = frame;
      _root.save.inventoryRange[k] = false;
      _root.save.inventoryAttack[k] = power;
      _root.save.inventoryBonus[k] = bonus;
      _root.save.inventoryAbility[k] = ability;
      _root.save.inventoryMoreBonus[k] = moreBonus;
      _root.save.inventoryEnhance[k] = enhance;
      _root.save.inventoryBonusPow[k] = bonusPow;
      _root.save.inventorySell[k] = sell;
      _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
      _root.save.inventoryObtainTime[k] = _root.systemtimenow;
      _root.save.inventoryNoBonus[k] = false;
      _root.save.inventoryNoRecycle[k] = false;
      _root.save.inventoryNoFuse[k] = false;
      _root.save.inventoryNoUnique[k] = false;
      _root.save.inventorySpirit[k] = false;
      _root.save.inventoryGuard[k] = guard;
      _root.save.inventoryDesc[k] = desc;
      if(_root.save.inventoryBonus[k] == "Random")
      {
         bonusToGet = random(22) + 1;
         if(bonusToGet == 1 || bonusToGet == 2)
         {
            _root.save.inventoryBonus[k] = "Reward";
         }
         if(bonusToGet == 3 || bonusToGet == 4)
         {
            _root.save.inventoryBonus[k] = "EXP";
         }
         if(bonusToGet == 5 || bonusToGet == 6)
         {
            _root.save.inventoryBonus[k] = "Coin";
         }
         if(bonusToGet == 7 || bonusToGet == 8)
         {
            _root.save.inventoryBonus[k] = "Pixel";
         }
         if(bonusToGet == 9 || bonusToGet == 10)
         {
            _root.save.inventoryBonus[k] = "Drop Rate";
         }
         if(bonusToGet == 11 || bonusToGet == 12)
         {
            _root.save.inventoryBonus[k] = "Spawn Rate";
         }
         if(bonusToGet == 13)
         {
            _root.save.inventoryBonus[k] = "Fire Element";
         }
         if(bonusToGet == 14)
         {
            _root.save.inventoryBonus[k] = "Ice Element";
         }
         if(bonusToGet == 15)
         {
            _root.save.inventoryBonus[k] = "Wind Element";
         }
         if(bonusToGet == 16)
         {
            _root.save.inventoryBonus[k] = "Earth Element";
         }
         if(bonusToGet == 17)
         {
            _root.save.inventoryBonus[k] = "Thunder Element";
         }
         if(bonusToGet == 18)
         {
            _root.save.inventoryBonus[k] = "Water Element";
         }
         if(bonusToGet == 19)
         {
            _root.save.inventoryBonus[k] = "Light Element";
         }
         if(bonusToGet == 20)
         {
            _root.save.inventoryBonus[k] = "Dark Element";
         }
         if(bonusToGet == 21)
         {
            _root.save.inventoryBonus[k] = "Rare Monster Rate";
         }
         if(bonusToGet == 22)
         {
            _root.save.inventoryBonus[k] = "Epic Monster Rate";
         }
         if(_root.save.arenaBonusPreference1 != "None" && Math.random() < 0.2)
         {
            _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference1;
         }
         else if(_root.save.arenaBonusPreference2 != "None" && Math.random() < 0.07)
         {
            _root.save.inventoryBonus[k] = _root.save.arenaBonusPreference2;
         }
      }
      if(_root.save.inventoryAbility[k] == "Random")
      {
         bonusToGet = random(25) + 1;
         if(subtype == "Weapon Bonus Adder")
         {
            bonusToGet = random(47) + 1;
         }
         if(bonusToGet == 1)
         {
            _root.save.inventoryAbility[k] = "Attack";
         }
         if(bonusToGet == 2)
         {
            _root.save.inventoryAbility[k] = "Attack Speed";
         }
         if(bonusToGet == 3)
         {
            _root.save.inventoryAbility[k] = "Ignore Defense";
         }
         if(bonusToGet == 4)
         {
            _root.save.inventoryAbility[k] = "Mastery";
         }
         if(bonusToGet == 5)
         {
            _root.save.inventoryAbility[k] = "Critical Chance";
         }
         if(bonusToGet == 6)
         {
            _root.save.inventoryAbility[k] = "Critical Damage";
         }
         if(bonusToGet == 7)
         {
            _root.save.inventoryAbility[k] = "Defense";
         }
         if(bonusToGet == 8)
         {
            _root.save.inventoryAbility[k] = "Damage Taken";
         }
         if(bonusToGet == 9)
         {
            _root.save.inventoryAbility[k] = "Reflect";
         }
         if(bonusToGet == 10)
         {
            _root.save.inventoryAbility[k] = "Accuracy";
         }
         if(bonusToGet == 11)
         {
            _root.save.inventoryAbility[k] = "Hit Chance";
         }
         if(bonusToGet == 12)
         {
            _root.save.inventoryAbility[k] = "Evasion";
         }
         if(bonusToGet == 13)
         {
            _root.save.inventoryAbility[k] = "Dodge Chance";
         }
         if(bonusToGet == 14)
         {
            _root.save.inventoryAbility[k] = "Poison Chance";
         }
         if(bonusToGet == 15)
         {
            _root.save.inventoryAbility[k] = "Weaken Chance";
         }
         if(bonusToGet == 16)
         {
            _root.save.inventoryAbility[k] = "Blind Chance";
         }
         if(bonusToGet == 17)
         {
            _root.save.inventoryAbility[k] = "Stun Chance";
         }
         if(bonusToGet == 18)
         {
            _root.save.inventoryAbility[k] = "HP";
         }
         if(bonusToGet == 19)
         {
            _root.save.inventoryAbility[k] = "MP";
         }
         if(bonusToGet == 20)
         {
            _root.save.inventoryAbility[k] = "HP Regen";
         }
         if(bonusToGet == 21)
         {
            _root.save.inventoryAbility[k] = "MP Regen";
         }
         if(bonusToGet == 22)
         {
            _root.save.inventoryAbility[k] = "Rage Depletion";
         }
         if(bonusToGet == 23)
         {
            _root.save.inventoryAbility[k] = "Drain";
         }
         if(bonusToGet == 24)
         {
            _root.save.inventoryAbility[k] = "Mana Eater";
         }
         if(bonusToGet == 25)
         {
            _root.save.inventoryAbility[k] = "Autosteal";
         }
         if(bonusToGet == 26)
         {
            _root.save.inventoryAbility[k] = "Double Hit Chance";
         }
         if(bonusToGet == 27)
         {
            _root.save.inventoryAbility[k] = "Rage Attack";
         }
         if(bonusToGet == 28)
         {
            _root.save.inventoryAbility[k] = "Rage Speed";
         }
         if(bonusToGet == 29)
         {
            _root.save.inventoryAbility[k] = "Poison Damage";
         }
         if(bonusToGet == 30)
         {
            _root.save.inventoryAbility[k] = "Poison Duration";
         }
         if(bonusToGet == 31)
         {
            _root.save.inventoryAbility[k] = "Weaken Effect";
         }
         if(bonusToGet == 32)
         {
            _root.save.inventoryAbility[k] = "Weaken Duration";
         }
         if(bonusToGet == 33)
         {
            _root.save.inventoryAbility[k] = "Blind Effect";
         }
         if(bonusToGet == 34)
         {
            _root.save.inventoryAbility[k] = "Blind Duration";
         }
         if(bonusToGet == 35)
         {
            _root.save.inventoryAbility[k] = "Potion Efficiency";
         }
         if(bonusToGet == 36)
         {
            _root.save.inventoryAbility[k] = "Boss Damage";
         }
         if(bonusToGet == 37)
         {
            _root.save.inventoryAbility[k] = "Magic Resist";
         }
         if(bonusToGet == 38)
         {
            _root.save.inventoryAbility[k] = "Instant Kill";
         }
         if(bonusToGet == 39)
         {
            _root.save.inventoryAbility[k] = "Negate Effect";
         }
         if(bonusToGet == 40)
         {
            _root.save.inventoryAbility[k] = "Non-Boss Damage";
         }
         if(bonusToGet == 41)
         {
            _root.save.inventoryAbility[k] = "Damage";
         }
         if(bonusToGet == 42)
         {
            _root.save.inventoryAbility[k] = "Extra Combo";
         }
         if(bonusToGet == 43)
         {
            _root.save.inventoryAbility[k] = "Magic Reflect";
         }
         if(bonusToGet == 44)
         {
            _root.save.inventoryAbility[k] = "Nullify Death Penalty";
         }
         if(bonusToGet == 45)
         {
            _root.save.inventoryAbility[k] = "Buff Effect";
         }
         if(bonusToGet == 46)
         {
            _root.save.inventoryAbility[k] = "All Elements";
         }
         if(bonusToGet == 47)
         {
            _root.save.inventoryAbility[k] = "Max Spirit";
         }
         if(subtype == "Weapon Bonus Adder")
         {
            if(_root.save.arenaAbilityPreference1 != "None" && Math.random() < 0.2)
            {
               _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference1;
            }
            else if(_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.1)
            {
               _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
            }
            else if(_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.05)
            {
               _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
            }
         }
         else if(_root.save.arenaAbilityPreference2 != "None" && Math.random() < 0.2)
         {
            _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference2;
         }
         else if(_root.save.arenaAbilityPreference3 != "None" && Math.random() < 0.07)
         {
            _root.save.inventoryAbility[k] = _root.save.arenaAbilityPreference3;
         }
      }
      if(_root.save.inventoryMoreBonus[k] == "Random")
      {
         bonusToGet = random(11) + 1;
         if(bonusToGet == 1)
         {
            _root.save.inventoryMoreBonus[k] = "Equipment Attack";
         }
         if(bonusToGet == 2)
         {
            _root.save.inventoryMoreBonus[k] = "Equipment Defense";
         }
         if(bonusToGet == 3)
         {
            _root.save.inventoryMoreBonus[k] = "Attack Power";
         }
         if(bonusToGet == 4)
         {
            _root.save.inventoryMoreBonus[k] = "Defense Power";
         }
         if(bonusToGet == 5)
         {
            _root.save.inventoryMoreBonus[k] = "MaxHP";
         }
         if(bonusToGet == 6)
         {
            _root.save.inventoryMoreBonus[k] = "MaxMP";
         }
         if(bonusToGet == 7)
         {
            _root.save.inventoryMoreBonus[k] = "Accuracy";
         }
         if(bonusToGet == 8)
         {
            _root.save.inventoryMoreBonus[k] = "Evasion";
         }
         if(bonusToGet == 9)
         {
            _root.save.inventoryMoreBonus[k] = "EXP / Boss Kill";
         }
         if(bonusToGet == 10)
         {
            _root.save.inventoryMoreBonus[k] = "EXP / Rare Kill";
         }
         if(bonusToGet == 11)
         {
            _root.save.inventoryMoreBonus[k] = "EXP / Epic Kill";
         }
         if(_root.save.arenaMoreBonusPreference1 != "None" && Math.random() < 0.2)
         {
            _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference1;
         }
         else if(_root.save.arenaMoreBonusPreference2 != "None" && Math.random() < 0.07)
         {
            _root.save.inventoryMoreBonus[k] = _root.save.arenaMoreBonusPreference2;
         }
      }
      if(k <= 230)
      {
         _root.dispNews(52,"Enhancer GET! [" + name + "]");
      }
      else
      {
         _root.dispNews(58,"Enhancer inventory full! [" + name + "] moved to Recently Deleted tab.");
      }
   }
   else
   {
      _root.dispNews(58,"Enhancer inventory full! [" + name + "] deleted :(");
   }
   checkFullInventory();
}
function getArenaPotion(subtype, frame, attack, defense, enhance, bonusPow, sell, expiry, name, desc, filter)
{
   if(filter == true && _root.filterItem(name,sell) == true)
   {
      return undefined;
   }
   k = 9999;
   var _loc13_ = 401;
   while(_loc13_ <= 430)
   {
      if(_root.save.inventoryExist[_loc13_] != 1)
      {
         if(k > _loc13_)
         {
            k = _loc13_;
         }
      }
      _loc13_ += 1;
   }
   if(k == 9999)
   {
      k = _root.save.arenaDeletedSlot;
      _root.save.arenaDeletedSlot += 1;
      if(_root.save.arenaDeletedSlot > 830)
      {
         _root.save.arenaDeletedSlot = 801;
      }
      _root.deleteArenaItem(k);
   }
   if(name != undefined)
   {
      _root.save.inventoryExist[k] = 1;
      _root.save.inventoryName[k] = name;
      _root.save.inventoryReqRank[k] = 1;
      _root.save.inventoryType[k] = "Potion";
      _root.save.inventorySubtype[k] = subtype;
      _root.save.inventoryFrame[k] = frame;
      _root.save.inventoryAttack[k] = attack;
      _root.save.inventoryDefense[k] = defense;
      _root.save.inventoryEnhance[k] = enhance;
      _root.save.inventoryBonusPow[k] = bonusPow;
      _root.save.inventorySell[k] = sell;
      _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
      _root.save.inventoryObtainTime[k] = _root.systemtimenow;
      _root.save.inventoryDesc[k] = desc;
      if(k <= 430)
      {
         _root.dispNews(53,"Potion GET! [" + name + "]");
      }
      else
      {
         _root.dispNews(59,"Potion inventory full! [" + name + "] moved to Recently Deleted tab.");
      }
   }
   else
   {
      _root.dispNews(59,"Potion inventory full! [" + name + "] deleted :(");
   }
   checkFullInventory();
}
function getArenaChip(subtype, frame, attack, defense, enhance, bonusPow, sell, expiry, name, desc, filter)
{
   if(filter == true && _root.filterItem(name,sell) == true)
   {
      return undefined;
   }
   k = 9999;
   var _loc13_ = 701;
   while(_loc13_ <= 730)
   {
      if(_root.save.inventoryExist[_loc13_] != 1)
      {
         if(k > _loc13_)
         {
            k = _loc13_;
         }
      }
      _loc13_ += 1;
   }
   if(k == 9999)
   {
      k = _root.save.arenaDeletedSlot;
      _root.save.arenaDeletedSlot += 1;
      if(_root.save.arenaDeletedSlot > 830)
      {
         _root.save.arenaDeletedSlot = 801;
      }
      _root.deleteArenaItem(k);
   }
   if(name != undefined)
   {
      _root.save.inventoryExist[k] = 1;
      _root.save.inventoryName[k] = name;
      _root.save.inventoryReqRank[k] = 1;
      _root.save.inventoryType[k] = "Chip";
      _root.save.inventorySubtype[k] = subtype;
      _root.save.inventoryFrame[k] = frame;
      _root.save.inventoryAttack[k] = attack;
      _root.save.inventoryDefense[k] = defense;
      _root.save.inventoryEnhance[k] = enhance;
      _root.save.inventoryBonusPow[k] = bonusPow;
      _root.save.inventorySell[k] = sell;
      _root.save.inventoryExpiry[k] = expiry + _root.systemtimenow;
      _root.save.inventoryObtainTime[k] = _root.systemtimenow;
      _root.save.inventoryDesc[k] = desc;
      if(k <= 730)
      {
         _root.dispNews(170,"Chip GET! [" + name + "]");
      }
      else
      {
         _root.dispNews(171,"Chip inventory full! [" + name + "] moved to Recently Deleted tab.");
      }
   }
   else
   {
      _root.dispNews(171,"Chip inventory full! [" + name + "] deleted :(");
   }
   checkFullInventory();
}
function addArenaWeapon(name, reqRank, subtype, frame, range, attack, speed, defense, bonus, ability, maxLevel, expTNL, enhance, bonusPow, sell, expiry, noBonus, noLife, noRecycle, spirit, crit, dexterity, health, desc, noFuse, level, exp, noUnique, unob, moreBonus)
{
   getArenaWeapon(reqRank,subtype,frame,range,attack,speed,defense,crit,dexterity,health,maxLevel,expTNL,level,exp,enhance,bonusPow,bonus,ability,moreBonus,sell,expiry,noBonus,noLife,noFuse,noUnique,spirit,unob,name,desc);
}
function addArenaArmor(name, reqRank, subtype, frame, attack, speed, defense, bonus, ability, maxLevel, expTNL, enhance, bonusPow, sell, expiry, noBonus, noLife, noRecycle, spirit, crit, dexterity, health, desc, noFuse, level, exp, noUnique, unob, moreBonus)
{
   getArenaArmor(reqRank,subtype,frame,attack,speed,defense,crit,dexterity,health,maxLevel,expTNL,level,exp,enhance,bonusPow,bonus,ability,moreBonus,sell,expiry,noBonus,noLife,noFuse,noUnique,spirit,unob,name,desc);
}
function addArenaAccessory(name, reqRank, subtype, frame, attack, speed, defense, bonus, ability, maxLevel, expTNL, enhance, bonusPow, sell, expiry, noBonus, noLife, noRecycle, spirit, crit, dexterity, health, desc, noFuse, level, exp, noUnique, unob)
{
   getArenaAccessory(reqRank,subtype,frame,attack,speed,defense,crit,dexterity,health,maxLevel,expTNL,level,exp,enhance,bonusPow,bonus,ability,moreBonus,sell,expiry,noBonus,noLife,noUnique,spirit,unob,name,desc);
}
function addArenaEnhancer(name, subtype, frame, power, curse, success, bonus, ability, enhance, bonusPow, sell, expiry, desc, moreBonus)
{
   getArenaEnhancer(subtype,frame,power,curse,success,bonus,ability,moreBonus,enhance,bonusPow,sell,expiry,name,desc);
}
function addArenaPotion(name, subtype, frame, attack, defense, enhance, bonusPow, sell, expiry, desc)
{
   getArenaPotion(subtype,frame,attack,defense,enhance,bonusPow,sell,expiry,name,desc);
}
function swapArenaItem(item1, item2)
{
   j = item1;
   k = item2;
   _root.xSwapArenaItem(900,item1);
   _root.xSwapArenaItem(item1,item2);
   _root.xSwapArenaItem(item2,900);
   _root.deleteArenaItem(900);
   _root.arenaSwap1 = 0;
   checkFullInventory();
}
function xSwapArenaItem(xitem1, xitem2)
{
   j = xitem2;
   k = xitem1;
   _root.save.inventoryExist[k] = _root.save.inventoryExist[j];
   _root.save.inventoryName[k] = _root.save.inventoryName[j];
   _root.save.inventoryReqRank[k] = _root.save.inventoryReqRank[j];
   _root.save.inventoryType[k] = _root.save.inventoryType[j];
   _root.save.inventorySubtype[k] = _root.save.inventorySubtype[j];
   _root.save.inventoryFrame[k] = _root.save.inventoryFrame[j];
   _root.save.inventoryRange[k] = _root.save.inventoryRange[j];
   _root.save.inventoryAttack[k] = _root.save.inventoryAttack[j];
   _root.save.inventorySpeed[k] = _root.save.inventorySpeed[j];
   _root.save.inventoryDefense[k] = _root.save.inventoryDefense[j];
   _root.save.inventoryBonus[k] = _root.save.inventoryBonus[j];
   _root.save.inventoryAbility[k] = _root.save.inventoryAbility[j];
   _root.save.inventoryMoreBonus[k] = _root.save.inventoryMoreBonus[j];
   _root.save.inventoryLevel[k] = _root.save.inventoryLevel[j];
   _root.save.inventoryMaxLevel[k] = _root.save.inventoryMaxLevel[j];
   _root.save.inventoryExp[k] = _root.save.inventoryExp[j];
   _root.save.inventoryExpTNL[k] = _root.save.inventoryExpTNL[j];
   _root.save.inventoryEnhance[k] = _root.save.inventoryEnhance[j];
   _root.save.inventoryBonusPow[k] = _root.save.inventoryBonusPow[j];
   _root.save.inventorySell[k] = _root.save.inventorySell[j];
   _root.save.inventoryExpiry[k] = _root.save.inventoryExpiry[j];
   _root.save.inventoryObtainTime[k] = _root.save.inventoryObtainTime[j];
   _root.save.inventoryNoBonus[k] = _root.save.inventoryNoBonus[j];
   _root.save.inventoryNoRecycle[k] = _root.save.inventoryNoRecycle[j];
   _root.save.inventoryNoFuse[k] = _root.save.inventoryNoFuse[j];
   _root.save.inventoryNoUnique[k] = _root.save.inventoryNoUnique[j];
   _root.save.inventoryUnob[k] = _root.save.inventoryUnob[j];
   _root.save.inventorySpirit[k] = _root.save.inventorySpirit[j];
   _root.save.inventoryCrit[k] = _root.save.inventoryCrit[j];
   _root.save.inventoryDexterity[k] = _root.save.inventoryDexterity[j];
   _root.save.inventoryHealth[k] = _root.save.inventoryHealth[j];
   _root.save.inventoryDesc[k] = _root.save.inventoryDesc[j];
   _root.save.inventorySet[k] = _root.save.inventorySet[j];
   _root.save.inventoryGuard[k] = _root.save.inventoryGuard[j];
   checkFullInventory();
}
function deleteArenaItem(k)
{
   _root.save.inventoryExist[k] = 0;
   _root.save.inventoryName[k] = undefined;
   _root.save.inventoryReqRank[k] = undefined;
   _root.save.inventoryType[k] = undefined;
   _root.save.inventorySubtype[k] = undefined;
   _root.save.inventoryFrame[k] = undefined;
   _root.save.inventoryRange[k] = undefined;
   _root.save.inventoryAttack[k] = undefined;
   _root.save.inventorySpeed[k] = undefined;
   _root.save.inventoryDefense[k] = undefined;
   _root.save.inventoryBonus[k] = undefined;
   _root.save.inventoryAbility[k] = undefined;
   _root.save.inventoryMoreBonus[k] = undefined;
   _root.save.inventoryLevel[k] = undefined;
   _root.save.inventoryMaxLevel[k] = undefined;
   _root.save.inventoryExp[k] = undefined;
   _root.save.inventoryExpTNL[k] = undefined;
   _root.save.inventoryEnhance[k] = undefined;
   _root.save.inventoryBonusPow[k] = undefined;
   _root.save.inventorySell[k] = undefined;
   _root.save.inventoryExpiry[k] = undefined;
   _root.save.inventoryObtainTime[k] = undefined;
   _root.save.inventoryNoBonus[k] = undefined;
   _root.save.inventoryNoRecycle[k] = undefined;
   _root.save.inventoryNoFuse[k] = undefined;
   _root.save.inventoryNoUnique[k] = undefined;
   _root.save.inventoryUnob[k] = undefined;
   _root.save.inventorySpirit[k] = undefined;
   _root.save.inventoryCrit[k] = undefined;
   _root.save.inventoryDexterity[k] = undefined;
   _root.save.inventoryHealth[k] = undefined;
   _root.save.inventoryDesc[k] = undefined;
   _root.save.inventorySet[k] = undefined;
   _root.save.inventoryGuard[k] = undefined;
   checkFullInventory();
}
function sellArenaItem(k)
{
   _root.deleteArenaItem(_root.save.arenaDeletedSlot);
   if(_root.save.inventorySell[k] > 0 && !isNaN(_root.save.inventorySell[k]) && _root.save.inventorySell[k] != Infinity)
   {
      _root.save.arenaPixel += _root.save.inventorySell[k];
   }
   _root.swapArenaItem(k,_root.save.arenaDeletedSlot);
   _root.deleteArenaItem(k);
   _root.save.arenaDeletedSlot += 1;
   if(_root.save.arenaDeletedSlot > 830)
   {
      _root.save.arenaDeletedSlot = 801;
   }
}
function enhanceArenaItem(j, k)
{
   canEnhance = false;
   if(_root.save.inventoryEnhance[k] < 10 || _root.save.inventorySubtype[j] == "Weapon Bonus Adder" || _root.save.inventorySubtype[j] == "Armor Bonus Adder" || _root.save.inventorySubtype[j] == "Weapon Lifespan Extender" || _root.save.inventorySubtype[j] == "Armor Lifespan Extender" || _root.save.inventorySubtype[j] == "Weapon Recycler" || _root.save.inventorySubtype[j] == "Armor Recycler" || _root.save.inventorySubtype[j] == "Weapon Spirit Rock" || _root.save.inventorySubtype[j] == "Armor Spirit Rock" || _root.save.inventorySubtype[j] == "Accessory Spirit Rock" || _root.save.inventorySubtype[j] == "Weapon Unique Enhancer" || _root.save.inventorySubtype[j] == "Armor Unique Enhancer" || _root.save.inventorySubtype[j] == "Accessory Bonus Adder" || _root.save.inventorySubtype[j] == "Accessory Lifespan Extender" || _root.save.inventorySubtype[j] == "Accessory Growth Rock" || _root.save.inventorySubtype[j] == "Accessory Unique Enhancer" || _root.save.inventorySubtype[j] == "Mystery Enhancer Identifier" || _root.save.inventorySubtype[j] == "Weapon Unobtainium Enhancer" || _root.save.inventorySubtype[j] == "Armor Unobtainium Enhancer" || _root.save.inventorySubtype[j] == "Accessory Unobtainium Enhancer" || _root.save.inventorySubtype[j] == "Weapon Protector" || _root.save.inventorySubtype[j] == "Armor Protector" || _root.save.inventorySubtype[j] == "Accessory Protector" || _root.save.inventorySubtype[j] == "Enhancer Protector" || _root.save.inventorySubtype[j] == "Weapon Finalizer" || _root.save.inventorySubtype[j] == "Armor Finalizer" || _root.save.inventorySubtype[j] == "Accessory Finalizer" || _root.save.inventorySubtype[j] == "Weapon Cleansing Rock" || _root.save.inventorySubtype[j] == "Armor Cleansing Rock" || _root.save.inventorySubtype[j] == "Weapon Tukkonium Enhancer" || _root.save.inventorySubtype[j] == "Armor Tukkonium Enhancer" || _root.save.inventorySubtype[j] == "Accessory Tukkonium Enhancer")
   {
      canEnhance = true;
      if(j == k)
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Weapon Attack Enhancer" && _root.save.inventoryAttack[k] < 1)
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Weapon Unique Enhancer" && _root.save.inventoryAttack[k] < 1)
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Weapon Unique Enhancer" && _root.save.inventoryAttack[k] >= 3000)
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Armor Unique Enhancer" && _root.save.inventoryDefense[k] >= 1800)
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Accessory Unique Enhancer" && _root.save.inventoryDefense[k] >= 1800)
      {
         canEnhance = false;
      }
      if((_root.save.inventorySubtype[j] == "Weapon Unique Enhancer" || _root.save.inventorySubtype[j] == "Armor Unique Enhancer" || _root.save.inventorySubtype[j] == "Accessory Unique Enhancer") && _root.save.inventoryEnhance[k] < 10)
      {
         canEnhance = false;
      }
      if((_root.save.inventorySubtype[j] == "Weapon Unique Enhancer" || _root.save.inventorySubtype[j] == "Armor Unique Enhancer" || _root.save.inventorySubtype[j] == "Accessory Unique Enhancer") && _root.save.inventoryLevel[k] < _root.save.inventoryMaxLevel[k])
      {
         canEnhance = false;
      }
      if((_root.save.inventorySubtype[j] == "Weapon Unique Enhancer" || _root.save.inventorySubtype[j] == "Armor Unique Enhancer" || _root.save.inventorySubtype[j] == "Accessory Unique Enhancer") && _root.save.inventoryNoUnique[k] == true)
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Weapon Speed Enhancer" && _root.save.inventorySpeed[k] < 3)
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Weapon Growth Rock" && _root.save.inventoryAttack[k] < 1)
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Mystery Enhancer Identifier" && _root.save.inventorySubtype[k] != "Weapon Mystery Enhancer" && _root.save.inventorySubtype[k] != "Armor Mystery Enhancer")
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Weapon Lifespan Extender" || _root.save.inventorySubtype[j] == "Armor Lifespan Extender" || _root.save.inventorySubtype[j] == "Accessory Lifespan Extender")
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "GIGA LIFE ROCK" && (_root.save.inventoryName[k] == "GIGA PENDANT" || _root.save.inventoryName[k] == "GIGA EARRINGS") && _root.save.inventorySubtype[k] != "Medal")
      {
         canEnhance = true;
      }
      if(_root.save.inventoryName[j] == "GIGA LIFE ROCK EX" && (_root.save.inventoryName[k] == "GIGA PENDANT" || _root.save.inventoryName[k] == "GIGA EARRINGS") && _root.save.inventorySubtype[k] != "Medal")
      {
         canEnhance = true;
      }
      if(_root.save.inventoryName[j] == "GIGA ENHANCER" && _root.save.inventoryName[k] != "GIGA PENDANT" && _root.save.inventoryName[k] != "GIGA EARRINGS")
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "GIGA ENHANCER" && _root.save.inventorySubtype[k] != "Pendant" && _root.save.inventorySubtype[k] != "Earring")
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "GIGA ENHANCER EX" && _root.save.inventoryName[k] != "GIGA PENDANT" && _root.save.inventoryName[k] != "GIGA EARRINGS")
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "GIGA ENHANCER EX" && _root.save.inventorySubtype[k] != "Pendant" && _root.save.inventorySubtype[k] != "Earring")
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "TERA LIFE ROCK" && (_root.save.inventoryName[k] == "TERA PENDANT" || _root.save.inventoryName[k] == "TERA EARRINGS") && _root.save.inventorySubtype[k] != "Medal")
      {
         canEnhance = true;
      }
      if(_root.save.inventoryName[j] == "TERA LIFE ROCK EX" && (_root.save.inventoryName[k] == "TERA PENDANT" || _root.save.inventoryName[k] == "TERA EARRINGS") && _root.save.inventorySubtype[k] != "Medal")
      {
         canEnhance = true;
      }
      if(_root.save.inventoryName[j] == "TERA ENHANCER" && _root.save.inventoryName[k] != "TERA PENDANT" && _root.save.inventoryName[k] != "TERA EARRINGS")
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "TERA ENHANCER" && _root.save.inventorySubtype[k] != "Pendant" && _root.save.inventorySubtype[k] != "Earring")
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "TERA ENHANCER EX" && _root.save.inventoryName[k] != "TERA PENDANT" && _root.save.inventoryName[k] != "TERA EARRINGS")
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "TERA ENHANCER EX" && _root.save.inventorySubtype[k] != "Pendant" && _root.save.inventorySubtype[k] != "Earring")
      {
         canEnhance = false;
      }
      if((_root.save.inventorySubtype[j] == "Weapon Bonus Adder" || _root.save.inventorySubtype[j] == "Armor Bonus Adder" || _root.save.inventorySubtype[j] == "Accessory Bonus Adder") && _root.save.inventoryNoBonus[k] == true && _root.save.inventoryName[j].indexOf("[S]") == -1)
      {
         canEnhance = false;
      }
      if((_root.save.inventorySubtype[j] == "Weapon Bonus Adder" || _root.save.inventorySubtype[j] == "Armor Bonus Adder" || _root.save.inventorySubtype[j] == "Accessory Bonus Adder") && _root.save.inventoryNoBonus[k] == true && _root.save.inventorySubtype[k] == "Trinket")
      {
         canEnhance = false;
      }
      if((_root.save.inventorySubtype[j] == "Weapon Bonus Adder" || _root.save.inventorySubtype[j] == "Armor Bonus Adder" || _root.save.inventorySubtype[j] == "Accessory Bonus Adder") && _root.save.inventoryNoBonus[k] == true && _root.save.inventorySubtype[k] == "Medal")
      {
         canEnhance = false;
      }
      if((_root.save.inventorySubtype[j] == "Weapon Spirit Rock" || _root.save.inventorySubtype[j] == "Armor Spirit Rock" || _root.save.inventorySubtype[j] == "Accessory Spirit Rock") && _root.save.inventoryName[j].indexOf("[S]") == -1)
      {
         if(_root.save.inventoryEnhance[k] < 10 || _root.save.inventoryEnhance[k] > 1000)
         {
            canEnhance = false;
         }
      }
      if((_root.save.inventorySubtype[j] == "Weapon Spirit Rock" || _root.save.inventorySubtype[j] == "Armor Spirit Rock" || _root.save.inventorySubtype[j] == "Accessory Spirit Rock") && _root.save.inventoryName[k] == "Dark Ruler")
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Fairy Weapon Enhancer" && _root.save.inventoryName[k].indexOf("Fairy") == -1)
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Fairy Armor Enhancer" && _root.save.inventoryName[k].indexOf("Fairy") == -1)
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Dominator Gem Enhancer" && (_root.save.inventoryName[k] != "Dominator Gem" || _root.save.inventorySubtype[k] != "Trinket"))
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Mega Triangle Gem Enhancer" && (_root.save.inventoryName[k] != "Mega Triangle Gem" || _root.save.inventorySubtype[k] != "Trinket"))
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Crystal Unique Enhancer MAX" && _root.save.inventoryName[k].indexOf("Crystal") == -1)
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Alien Core" && _root.save.inventoryName[k].indexOf("Alien") == -1)
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Alien Core" && isNaN(_root.save.inventoryName[k].indexOf("Alien")))
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Weapon Cleansing Rock" && _root.save.inventoryName[k].indexOf("(Cursed)") == -1)
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Weapon Cleansing Rock" && isNaN(_root.save.inventoryName[k].indexOf("(Cursed)")))
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Armor Cleansing Rock" && _root.save.inventoryName[k].indexOf("(Cursed)") == -1)
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Armor Cleansing Rock" && isNaN(_root.save.inventoryName[k].indexOf("(Cursed)")))
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Anti-Nerfer" && _root.save.inventoryName[k] != "Nerf Accepted!")
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Awesome Enhancer" && (_root.save.inventoryName[k] != "Awesome Earrings" || _root.save.inventorySubtype[k] != "Earring"))
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] != "Humblebee Armor Upgrade" && _root.save.inventoryEnhance[k] == 8 && _root.save.inventoryMaxLevel[k] < 184 && _root.save.inventoryName[k].indexOf("Humblebee") != -1)
      {
         if(!(_root.save.inventorySubtype[j] == "Armor Bonus Adder" || _root.save.inventorySubtype[j] == "Armor Spirit Rock" || _root.save.inventorySubtype[j] == "Armor Unobtainium Enhancer" || _root.save.inventorySubtype[j] == "Armor Protector" || _root.save.inventorySubtype[j] == "Armor Finalizer"))
         {
            canEnhance = false;
         }
      }
      if(_root.save.inventoryName[j] != "Humblebee Armor Upgrade" && _root.save.inventoryEnhance[k] == 9 && _root.save.inventoryMaxLevel[k] < 284 && _root.save.inventoryName[k].indexOf("Humblebee") != -1)
      {
         if(!(_root.save.inventorySubtype[j] == "Armor Bonus Adder" || _root.save.inventorySubtype[j] == "Armor Spirit Rock" || _root.save.inventorySubtype[j] == "Armor Unobtainium Enhancer" || _root.save.inventorySubtype[j] == "Armor Protector" || _root.save.inventorySubtype[j] == "Armor Finalizer"))
         {
            canEnhance = false;
         }
      }
      if(_root.save.inventoryName[j] == "Humblebee Armor Upgrade")
      {
         if(_root.save.inventoryName[k].indexOf("Humblebee") == -1)
         {
            canEnhance = false;
         }
         if(_root.save.inventoryMaxLevel[k] >= 284)
         {
            canEnhance = false;
         }
      }
      if(_root.save.inventoryName[j] == "Corrupted Bonus Rock" && _root.save.inventoryName[k].indexOf("Elm") == -1)
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j] == "Corrupted Bonus Rock" && isNaN(_root.save.inventoryName[k].indexOf("Elm")))
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Weapon Unobtainium Enhancer" && _root.save.inventoryUnob[k] >= _root.save.inventoryAttack[j])
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Armor Unobtainium Enhancer" && _root.save.inventoryUnob[k] >= _root.save.inventoryAttack[j])
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Accessory Unobtainium Enhancer" && _root.save.inventoryUnob[k] >= _root.save.inventoryAttack[j])
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Weapon Finalizer" && _root.save.inventoryReqRank[k] > _root.save.inventoryAttack[j])
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Armor Finalizer" && _root.save.inventoryReqRank[k] > _root.save.inventoryAttack[j])
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Accessory Finalizer" && _root.save.inventoryReqRank[k] > _root.save.inventoryAttack[j])
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[j] == "Accessory Finalizer" && _root.save.inventorySubtype[k] == "Trinket")
      {
         canEnhance = false;
      }
      if(_root.save.inventorySubtype[k] == "Secondary Weapon" && _root.save.inventorySubtype[j].indexOf("Protector") == -1)
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[k] == "Eric\'s Shovel")
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[k] == "Eric\'s Gun-Shovel")
      {
         canEnhance = false;
      }
      if(_root.save.inventoryLevel[k] == 9999 && _root.save.inventorySubtype[j].indexOf("Protector") == -1 && _root.save.inventoryName[j].indexOf("[S]") == -1 && _root.save.inventoryName[j].indexOf("Tukkonium") == -1)
      {
         canEnhance = false;
      }
      if(_root.save.inventoryLevel[k] != 9999 && _root.save.inventoryName[j].indexOf("Tukkonium") != -1)
      {
         canEnhance = false;
      }
      if(_root.save.inventoryName[j].indexOf("Auto Buff") != -1 && (_root.save.inventoryName[k] != "Auto Buff Gem" || _root.save.inventorySubtype[k] != "Trinket"))
      {
         canEnhance = false;
      }
   }
   if(_root.save.inventoryName[j].indexOf("Auto Buff") != -1 && _root.save.inventoryName[k] == "Auto Buff Gem" && _root.save.inventorySubtype[k] == "Trinket")
   {
      canEnhance = true;
   }
   if(canEnhance == true)
   {
      pow = _root.save.inventoryAttack[j];
      if(_root.save.inventoryBonus[j] != "")
      {
         _root.save.inventoryBonus[k] = _root.save.inventoryBonus[j];
      }
      if(_root.save.inventoryAbility[j] != "")
      {
         _root.save.inventoryAbility[k] = _root.save.inventoryAbility[j];
      }
      if(_root.save.inventoryMoreBonus[j] != "")
      {
         _root.save.inventoryMoreBonus[k] = _root.save.inventoryMoreBonus[j];
      }
      if(_root.save.inventoryBonus[j] == "Random")
      {
         bonusToGet = random(20) + 1;
         if(bonusToGet == 1 || bonusToGet == 2)
         {
            _root.save.inventoryBonus[k] = "Reward";
         }
         if(bonusToGet == 3 || bonusToGet == 4)
         {
            _root.save.inventoryBonus[k] = "EXP";
         }
         if(bonusToGet == 5 || bonusToGet == 6)
         {
            _root.save.inventoryBonus[k] = "Coin";
         }
         if(bonusToGet == 7 || bonusToGet == 8)
         {
            _root.save.inventoryBonus[k] = "Pixel";
         }
         if(bonusToGet == 9 || bonusToGet == 10)
         {
            _root.save.inventoryBonus[k] = "Drop Rate";
         }
         if(bonusToGet == 11 || bonusToGet == 12)
         {
            _root.save.inventoryBonus[k] = "Spawn Rate";
         }
         if(bonusToGet == 13)
         {
            _root.save.inventoryBonus[k] = "Fire Element";
         }
         if(bonusToGet == 14)
         {
            _root.save.inventoryBonus[k] = "Ice Element";
         }
         if(bonusToGet == 15)
         {
            _root.save.inventoryBonus[k] = "Wind Element";
         }
         if(bonusToGet == 16)
         {
            _root.save.inventoryBonus[k] = "Earth Element";
         }
         if(bonusToGet == 17)
         {
            _root.save.inventoryBonus[k] = "Thunder Element";
         }
         if(bonusToGet == 18)
         {
            _root.save.inventoryBonus[k] = "Water Element";
         }
         if(bonusToGet == 19)
         {
            _root.save.inventoryBonus[k] = "Light Element";
         }
         if(bonusToGet == 20)
         {
            _root.save.inventoryBonus[k] = "Dark Element";
         }
      }
      if(_root.save.inventoryAbility[j] == "Random")
      {
         bonusToGet = random(25) + 1;
         if(bonusToGet == 1)
         {
            _root.save.inventoryAbility[k] = "Attack";
         }
         if(bonusToGet == 2)
         {
            _root.save.inventoryAbility[k] = "Attack Speed";
         }
         if(bonusToGet == 3)
         {
            _root.save.inventoryAbility[k] = "Ignore Defense";
         }
         if(bonusToGet == 4)
         {
            _root.save.inventoryAbility[k] = "Mastery";
         }
         if(bonusToGet == 5)
         {
            _root.save.inventoryAbility[k] = "Critical Chance";
         }
         if(bonusToGet == 6)
         {
            _root.save.inventoryAbility[k] = "Critical Damage";
         }
         if(bonusToGet == 7)
         {
            _root.save.inventoryAbility[k] = "Defense";
         }
         if(bonusToGet == 8)
         {
            _root.save.inventoryAbility[k] = "Damage Taken";
         }
         if(bonusToGet == 9)
         {
            _root.save.inventoryAbility[k] = "Reflect";
         }
         if(bonusToGet == 10)
         {
            _root.save.inventoryAbility[k] = "Accuracy";
         }
         if(bonusToGet == 11)
         {
            _root.save.inventoryAbility[k] = "Hit Chance";
         }
         if(bonusToGet == 12)
         {
            _root.save.inventoryAbility[k] = "Evasion";
         }
         if(bonusToGet == 13)
         {
            _root.save.inventoryAbility[k] = "Dodge Chance";
         }
         if(bonusToGet == 14)
         {
            _root.save.inventoryAbility[k] = "Poison Chance";
         }
         if(bonusToGet == 15)
         {
            _root.save.inventoryAbility[k] = "Weaken Chance";
         }
         if(bonusToGet == 16)
         {
            _root.save.inventoryAbility[k] = "Blind Chance";
         }
         if(bonusToGet == 17)
         {
            _root.save.inventoryAbility[k] = "Stun Chance";
         }
         if(bonusToGet == 18)
         {
            _root.save.inventoryAbility[k] = "HP";
         }
         if(bonusToGet == 19)
         {
            _root.save.inventoryAbility[k] = "MP";
         }
         if(bonusToGet == 20)
         {
            _root.save.inventoryAbility[k] = "HP Regen";
         }
         if(bonusToGet == 21)
         {
            _root.save.inventoryAbility[k] = "MP Regen";
         }
         if(bonusToGet == 22)
         {
            _root.save.inventoryAbility[k] = "Rage Depletion";
         }
         if(bonusToGet == 23)
         {
            _root.save.inventoryAbility[k] = "Drain";
         }
         if(bonusToGet == 24)
         {
            _root.save.inventoryAbility[k] = "Mana Eater";
         }
         if(bonusToGet == 25)
         {
            _root.save.inventoryAbility[k] = "Autosteal";
         }
      }
      if(_root.save.inventorySubtype[j] == "Weapon Attack Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventoryAttack[k] += pow;
         _root.save.inventoryBonusPow[k] += pow;
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Unique Enhancer")
      {
         _root.save.inventoryAttack[k] += pow;
         _root.save.inventoryBonusPow[k] += pow;
         if(_root.save.inventoryAttack[k] > 3000)
         {
            _root.save.inventoryAttack[k] = 3000;
         }
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Tukkonium Enhancer")
      {
         if(_root.save.inventoryBonusPow[k] < 100000)
         {
            tukkoniumPow = Math.ceil((5000 - _root.save.inventoryAttack[k]) / 5);
         }
         else
         {
            tukkoniumPow = Math.ceil((5000 - _root.save.inventoryAttack[k]) / 10);
         }
         if(_root.save.inventoryName[k] == "Glaive of Smiting")
         {
            tukkoniumPow = 1;
         }
         if(_root.save.inventoryName[k] == "Darkglaive of Smiting")
         {
            tukkoniumPow = 1;
         }
         if(_root.save.inventoryName[k] == "Fiend Glaive")
         {
            tukkoniumPow = 1;
         }
         if(_root.save.inventoryName[k] == "CHAOS AURA")
         {
            tukkoniumPow = 1;
         }
         if(_root.save.inventoryName[k] == "Dark Ruler")
         {
            tukkoniumPow = 1;
         }
         if(_root.save.inventoryName[k] == "Ultimate Weapon")
         {
            tukkoniumPow = 1;
         }
         if(_root.save.inventoryName[k] == "Reincarnation Weapon")
         {
            tukkoniumPow = 1;
         }
         if(_root.save.inventoryNoUnique[k] == true)
         {
            tukkoniumPow = 1;
         }
         if(tukkoniumPow < 1)
         {
            tukkoniumPow = 1;
         }
         _root.save.inventoryAttack[k] += tukkoniumPow;
         if(_root.save.inventoryBonusPow[k] < 100000)
         {
            _root.save.inventoryBonusPow[k] = 100000;
         }
         _root.save.inventoryBonusPow[k] += tukkoniumPow;
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Speed Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventorySpeed[k] += pow;
         _root.save.inventoryBonusPow[k] += pow * 20;
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Defense Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventoryDefense[k] += pow;
         _root.save.inventoryBonusPow[k] += Math.round(pow * 5 / 12);
      }
      else if(_root.save.inventorySubtype[j] == "Armor Attack Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventoryAttack[k] += pow;
         _root.save.inventoryBonusPow[k] += Math.round(pow * 5 / 2);
      }
      else if(_root.save.inventorySubtype[j] == "Accessory Attack Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventoryAttack[k] += pow;
         _root.save.inventoryBonusPow[k] += Math.round(pow * 5 / 2);
      }
      else if(_root.save.inventorySubtype[j] == "Armor Speed Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventorySpeed[k] += pow;
         _root.save.inventoryBonusPow[k] += pow * 20;
      }
      else if(_root.save.inventorySubtype[j] == "Armor Defense Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventoryDefense[k] += pow;
         _root.save.inventoryBonusPow[k] += pow;
      }
      else if(_root.save.inventorySubtype[j] == "Armor Unique Enhancer")
      {
         _root.save.inventoryDefense[k] += pow;
         _root.save.inventoryBonusPow[k] += pow;
         if(_root.save.inventoryDefense[k] > 1800)
         {
            _root.save.inventoryDefense[k] = 1800;
         }
      }
      else if(_root.save.inventorySubtype[j] == "Armor Tukkonium Enhancer")
      {
         if(_root.save.inventorySubtype[k] == "Skin")
         {
            if(_root.save.inventoryBonusPow[k] < 100000)
            {
               tukkoniumPow = Math.ceil((3000 - _root.save.inventoryDefense[k]) / 5);
            }
            else
            {
               tukkoniumPow = Math.ceil((3000 - _root.save.inventoryDefense[k]) / 10);
            }
         }
         else if(_root.save.inventoryBonusPow[k] < 100000)
         {
            tukkoniumPow = Math.ceil((30000 - _root.save.inventoryDefense[k]) / 5);
         }
         else
         {
            tukkoniumPow = Math.ceil((30000 - _root.save.inventoryDefense[k]) / 10);
         }
         if(_root.save.inventoryNoUnique[k] == true)
         {
            tukkoniumPow = 5;
         }
         if(tukkoniumPow < 5)
         {
            tukkoniumPow = 5;
         }
         if(_root.save.inventoryDefense[k] > 29990 && _root.save.inventoryDefense[k] < 30000)
         {
            tukkoniumPow = 30000 - _root.save.inventoryDefense[k];
         }
         _root.save.inventoryDefense[k] += tukkoniumPow;
         if(_root.save.inventoryBonusPow[k] < 100000)
         {
            _root.save.inventoryBonusPow[k] = 100000;
         }
         _root.save.inventoryBonusPow[k] += 1;
      }
      else if(_root.save.inventorySubtype[j] == "Accessory Unique Enhancer")
      {
         _root.save.inventoryDefense[k] += pow;
         _root.save.inventoryBonusPow[k] += pow;
         if(_root.save.inventoryDefense[k] > 1800)
         {
            _root.save.inventoryDefense[k] = 1800;
         }
      }
      else if(_root.save.inventorySubtype[j] == "Accessory Tukkonium Enhancer")
      {
         if(_root.save.inventoryBonusPow[k] < 100000)
         {
            tukkoniumPow = Math.ceil((30000 - _root.save.inventoryDefense[k]) / 5);
         }
         else
         {
            tukkoniumPow = Math.ceil((30000 - _root.save.inventoryDefense[k]) / 10);
         }
         if(_root.save.inventoryNoUnique[k] == true)
         {
            tukkoniumPow = 1;
         }
         if(tukkoniumPow < 1)
         {
            tukkoniumPow = 1;
         }
         _root.save.inventoryDefense[k] += tukkoniumPow;
         if(_root.save.inventoryBonusPow[k] < 100000)
         {
            _root.save.inventoryBonusPow[k] = 100000;
         }
         _root.save.inventoryBonusPow[k] += 1;
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Spirit Rock" || _root.save.inventorySubtype[j] == "Armor Spirit Rock" || _root.save.inventorySubtype[j] == "Accessory Spirit Rock")
      {
         if(_root.save.inventorySpirit[k] != true)
         {
            _root.save.inventorySpirit[k] = true;
         }
         else
         {
            _root.save.inventorySpirit[k] = false;
         }
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Growth Rock")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         if(_root.save.inventoryExpTNL[k] < 400)
         {
            _root.save.inventoryExpTNL[k] = 400 * _root.save.inventoryReqRank[k] * _root.save.inventoryReqRank[k];
         }
         if(_root.save.inventoryLevel[k] == _root.save.inventoryMaxLevel[k])
         {
            _root.save.inventoryExp[k] = 0;
         }
         _root.save.inventoryMaxLevel[k] += pow;
      }
      else if(_root.save.inventorySubtype[j] == "Armor Growth Rock")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         if(_root.save.inventoryExpTNL[k] < 400)
         {
            _root.save.inventoryExpTNL[k] = 400 * _root.save.inventoryReqRank[k] * _root.save.inventoryReqRank[k];
         }
         if(_root.save.inventoryLevel[k] == _root.save.inventoryMaxLevel[k])
         {
            _root.save.inventoryExp[k] = 0;
         }
         _root.save.inventoryMaxLevel[k] += pow;
      }
      else if(_root.save.inventorySubtype[j] == "Accessory Growth Rock")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         if(_root.save.inventoryExpTNL[k] < 400)
         {
            _root.save.inventoryExpTNL[k] = 400 * _root.save.inventoryReqRank[k] * _root.save.inventoryReqRank[k];
         }
         if(_root.save.inventoryLevel[k] == _root.save.inventoryMaxLevel[k])
         {
            _root.save.inventoryExp[k] = 0;
         }
         if(_root.save.inventoryEnhance[k] <= 10)
         {
            _root.save.inventoryMaxLevel[k] += pow;
         }
         else
         {
            _root.save.inventoryDefense[k] += 180;
            if(_root.save.inventoryDefense[k] > 1800)
            {
               _root.save.inventoryDefense[k] = 1800;
            }
         }
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Critical Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventoryCrit[k] += pow;
         _root.save.inventoryBonusPow[k] += pow * 5;
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Dexterity Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventoryDexterity[k] += pow;
         _root.save.inventoryBonusPow[k] += pow * 5;
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Health Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventoryHealth[k] += pow;
         _root.save.inventoryBonusPow[k] += pow * 5;
      }
      else if(_root.save.inventorySubtype[j] == "Armor Critical Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventoryCrit[k] += pow;
         _root.save.inventoryBonusPow[k] += pow * 5;
      }
      else if(_root.save.inventorySubtype[j] == "Armor Dexterity Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventoryDexterity[k] += pow;
         _root.save.inventoryBonusPow[k] += pow * 5;
      }
      else if(_root.save.inventorySubtype[j] == "Armor Health Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventoryHealth[k] += pow;
         _root.save.inventoryBonusPow[k] += pow * 5;
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Cleansing Rock")
      {
         _root.save.inventoryName[k] = _root.save.inventoryName[k].substr(0,_root.save.inventoryName[k].length - 9);
      }
      else if(_root.save.inventorySubtype[j] == "Armor Cleansing Rock")
      {
         _root.save.inventoryName[k] = _root.save.inventoryName[k].substr(0,_root.save.inventoryName[k].length - 9);
      }
      else if(_root.save.inventorySubtype[j] == "Accessory Lifespan Extender")
      {
         if(_root.save.inventoryExpiry[k] < _root.systemtimenow)
         {
            _root.save.inventoryExpiry[k] = _root.systemtimenow;
         }
         _root.save.inventoryExpiry[k] += pow * 86400000;
         if(pow >= 99999)
         {
            _root.save.inventoryExpiry[k] = Infinity;
         }
      }
      else if(_root.save.inventorySubtype[j] == "Mystery Enhancer Identifier")
      {
         if(_root.save.inventorySubtype[k] == "Weapon Mystery Enhancer")
         {
            _root.save.inventoryBonusPow[k] += 500;
            typeX = random(5) + 1;
            if(typeX == 1)
            {
               _root.save.inventorySubtype[k] = "Weapon Attack Enhancer";
               _root.save.inventoryAttack[k] *= 5;
            }
            if(typeX == 2)
            {
               _root.save.inventorySubtype[k] = "Weapon Defense Enhancer";
               _root.save.inventoryAttack[k] *= 12;
            }
            if(typeX == 3)
            {
               _root.save.inventorySubtype[k] = "Weapon Critical Enhancer";
            }
            if(typeX == 4)
            {
               _root.save.inventorySubtype[k] = "Weapon Dexterity Enhancer";
            }
            if(typeX == 5)
            {
               _root.save.inventorySubtype[k] = "Weapon Health Enhancer";
            }
         }
         if(_root.save.inventorySubtype[k] == "Armor Mystery Enhancer")
         {
            _root.save.inventoryBonusPow[k] += 500;
            typeX = random(5) + 1;
            if(typeX == 1)
            {
               _root.save.inventorySubtype[k] = "Armor Attack Enhancer";
               _root.save.inventoryAttack[k] *= 2;
            }
            if(typeX == 2)
            {
               _root.save.inventorySubtype[k] = "Armor Defense Enhancer";
               _root.save.inventoryAttack[k] *= 5;
            }
            if(typeX == 3)
            {
               _root.save.inventorySubtype[k] = "Armor Critical Enhancer";
            }
            if(typeX == 4)
            {
               _root.save.inventorySubtype[k] = "Armor Dexterity Enhancer";
            }
            if(typeX == 5)
            {
               _root.save.inventorySubtype[k] = "Armor Health Enhancer";
            }
         }
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Mystery Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         if(_root.save.inventoryAttack[k] != 0)
         {
            typeX = random(5) + 1;
         }
         else
         {
            typeX = random(4) + 2;
         }
         if(typeX == 1)
         {
            _root.save.inventoryAttack[k] += pow * 5;
            _root.save.inventoryBonusPow[k] += pow * 5;
         }
         if(typeX == 2)
         {
            _root.save.inventoryDefense[k] += pow * 12;
            _root.save.inventoryBonusPow[k] += pow * 5;
         }
         if(typeX == 3)
         {
            _root.save.inventoryCrit[k] += pow;
            _root.save.inventoryBonusPow[k] += pow * 5;
         }
         if(typeX == 4)
         {
            _root.save.inventoryDexterity[k] += pow;
            _root.save.inventoryBonusPow[k] += pow * 5;
         }
         if(typeX == 5)
         {
            _root.save.inventoryHealth[k] += pow;
            _root.save.inventoryBonusPow[k] += pow * 5;
         }
      }
      else if(_root.save.inventorySubtype[j] == "Armor Mystery Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         typeX = random(5) + 1;
         if(typeX == 1)
         {
            _root.save.inventoryAttack[k] += pow * 2;
            _root.save.inventoryBonusPow[k] += pow * 5;
         }
         if(typeX == 2)
         {
            _root.save.inventoryDefense[k] += pow * 5;
            _root.save.inventoryBonusPow[k] += pow * 5;
         }
         if(typeX == 3)
         {
            _root.save.inventoryCrit[k] += pow;
            _root.save.inventoryBonusPow[k] += pow * 5;
         }
         if(typeX == 4)
         {
            _root.save.inventoryDexterity[k] += pow;
            _root.save.inventoryBonusPow[k] += pow * 5;
         }
         if(typeX == 5)
         {
            _root.save.inventoryHealth[k] += pow;
            _root.save.inventoryBonusPow[k] += pow * 5;
         }
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Unobtainium Enhancer")
      {
         _root.save.inventoryUnob[k] = pow;
      }
      else if(_root.save.inventorySubtype[j] == "Armor Unobtainium Enhancer")
      {
         _root.save.inventoryUnob[k] = pow;
      }
      else if(_root.save.inventorySubtype[j] == "Accessory Unobtainium Enhancer")
      {
         _root.save.inventoryUnob[k] = pow;
      }
      else if(_root.save.inventorySubtype[j] == "Enhancer Success Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventoryDefense[k] = Math.ceil(_root.save.inventoryDefense[k] * pow / 100);
         _root.save.inventoryBonusPow[k] += pow - 100;
      }
      else if(_root.save.inventorySubtype[j] == "Enhancer Destruction Enhancer")
      {
         _root.save.inventoryEnhance[k] += 1;
         if(_root.save.inventoryEnhance[k] == 10)
         {
            _root.save.arenaMaxEnhance += 1;
         }
         _root.save.inventorySpeed[k] = Math.floor(_root.save.inventorySpeed[k] * pow / 100);
         _root.save.inventoryBonusPow[k] += Math.floor((100 - pow) / 2);
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Protector")
      {
         if(_root.save.inventoryGuard[k] != true)
         {
            _root.save.inventoryGuard[k] = true;
         }
         else
         {
            _root.save.inventoryGuard[k] = false;
         }
      }
      else if(_root.save.inventorySubtype[j] == "Armor Protector")
      {
         if(_root.save.inventoryGuard[k] != true)
         {
            _root.save.inventoryGuard[k] = true;
         }
         else
         {
            _root.save.inventoryGuard[k] = false;
         }
      }
      else if(_root.save.inventorySubtype[j] == "Accessory Protector")
      {
         if(_root.save.inventoryGuard[k] != true)
         {
            _root.save.inventoryGuard[k] = true;
         }
         else
         {
            _root.save.inventoryGuard[k] = false;
         }
      }
      else if(_root.save.inventorySubtype[j] == "Enhancer Protector")
      {
         if(_root.save.inventoryGuard[k] != true)
         {
            _root.save.inventoryGuard[k] = true;
         }
         else
         {
            _root.save.inventoryGuard[k] = false;
         }
      }
      else if(_root.save.inventorySubtype[j] == "Weapon Finalizer")
      {
         _root.save.inventoryAttack[k] = Math.ceil(_root.save.inventoryAttack[k] * 1.2);
         _root.save.inventorySpeed[k] = Math.ceil(_root.save.inventorySpeed[k] * 1.2);
         _root.save.inventoryDefense[k] = Math.ceil(_root.save.inventoryDefense[k] * 1.2);
         _root.save.inventoryCrit[k] = Math.ceil(_root.save.inventoryCrit[k] * 1.2);
         _root.save.inventoryDexterity[k] = Math.ceil(_root.save.inventoryDexterity[k] * 1.2);
         _root.save.inventoryHealth[k] = Math.ceil(_root.save.inventoryHealth[k] * 1.2);
         _root.save.inventoryLevel[k] = 9999;
         _root.save.inventoryMaxLevel[k] = 9999;
         _root.save.inventoryExp[k] = 0;
         _root.save.inventoryExpTNL[k] = 0;
         _root.save.inventoryNoBonus[k] = true;
         _root.save.inventoryNoFuse[k] = true;
         _root.save.inventoryNoUnique[k] = false;
      }
      else if(_root.save.inventorySubtype[j] == "Armor Finalizer")
      {
         _root.save.inventoryAttack[k] = Math.ceil(_root.save.inventoryAttack[k] * 1.2);
         _root.save.inventorySpeed[k] = Math.ceil(_root.save.inventorySpeed[k] * 1.2);
         _root.save.inventoryDefense[k] = Math.ceil(_root.save.inventoryDefense[k] * 1.2);
         _root.save.inventoryCrit[k] = Math.ceil(_root.save.inventoryCrit[k] * 1.2);
         _root.save.inventoryDexterity[k] = Math.ceil(_root.save.inventoryDexterity[k] * 1.2);
         _root.save.inventoryHealth[k] = Math.ceil(_root.save.inventoryHealth[k] * 1.2);
         _root.save.inventoryLevel[k] = 9999;
         _root.save.inventoryMaxLevel[k] = 9999;
         _root.save.inventoryExp[k] = 0;
         _root.save.inventoryExpTNL[k] = 0;
         _root.save.inventoryNoBonus[k] = true;
         _root.save.inventoryNoFuse[k] = true;
         _root.save.inventoryNoUnique[k] = false;
      }
      else if(_root.save.inventorySubtype[j] == "Accessory Finalizer")
      {
         _root.save.inventoryAttack[k] = Math.ceil(_root.save.inventoryAttack[k] * 1.2);
         _root.save.inventorySpeed[k] = Math.ceil(_root.save.inventorySpeed[k] * 1.2);
         _root.save.inventoryDefense[k] = Math.ceil(_root.save.inventoryDefense[k] * 1.2);
         _root.save.inventoryCrit[k] = Math.ceil(_root.save.inventoryCrit[k] * 1.2);
         _root.save.inventoryDexterity[k] = Math.ceil(_root.save.inventoryDexterity[k] * 1.2);
         _root.save.inventoryHealth[k] = Math.ceil(_root.save.inventoryHealth[k] * 1.2);
         _root.save.inventoryLevel[k] = 9999;
         _root.save.inventoryMaxLevel[k] = 9999;
         _root.save.inventoryExp[k] = 0;
         _root.save.inventoryExpTNL[k] = 0;
         _root.save.inventoryNoBonus[k] = true;
         _root.save.inventoryNoFuse[k] = true;
         _root.save.inventoryNoUnique[k] = false;
      }
      _root.dispNews(61,"[" + _root.save.inventoryName[k] + "] enhanced with [" + _root.save.inventoryName[j] + "]!");
      if(_root.save.inventorySubtype[j].indexOf("Protector") == -1 && _root.save.inventoryName[j].indexOf("[I]") == -1)
      {
         if(_root.save.questType == "Enhance")
         {
            if(_root.save.questSubtype == "Success")
            {
               _root.save.questCount += 1;
            }
         }
         if(_root.save.inventorySell[j] > 0)
         {
            _root.gainCareerEXP(4,Math.ceil(_root.save.inventorySell[j] / 1000000),true);
         }
         deleteArenaItem(j);
      }
   }
   else if(_root.save.inventorySubtype[k] == "Secondary Weapon")
   {
      _root.showPopup("Cannot Enhance","Secondary Weapons cannot be enhanced.");
   }
   else
   {
      _root.showPopup("Cannot Enhance","You cannot use this enhancer on this item!");
   }
   _root.enhancerToUse = 0;
}
function checkFullInventory()
{
   _root.emptyWeaponSlot = 0;
   _root.emptyArmorSlot = 0;
   _root.emptyAccessorySlot = 0;
   _root.emptyEnhancerSlot = 0;
   _root.emptyPotionSlot = 0;
   _root.emptyOutfitSlot = 0;
   _root.emptyChipSlot = 0;
   var _loc2_ = 1;
   while(_loc2_ <= 30)
   {
      if(_root.save.inventoryExist[_loc2_] != 1)
      {x
         _root.emptyWeaponSlot += 1;
      }
      _loc2_ += 1;
   }
   _loc2_ = 101;
   while(_loc2_ <= 130)
   {
      if(_root.save.inventoryExist[_loc2_] != 1)
      {
         _root.emptyArmorSlot += 1;
      }
      _loc2_ += 1;
   }
   _loc2_ = 201;
   while(_loc2_ <= 230)
   {
      if(_root.save.inventoryExist[_loc2_] != 1)
      {
         _root.emptyEnhancerSlot += 1;
      }
      _loc2_ += 1;
   }
   _loc2_ = 401;
   while(_loc2_ <= 430)
   {
      if(_root.save.inventoryExist[_loc2_] != 1)
      {
         _root.emptyPotionSlot += 1;
      }
      _loc2_ += 1;
   }
   _loc2_ = 501;
   while(_loc2_ <= 530)
   {
      if(_root.save.inventoryExist[_loc2_] != 1)
      {
         _root.emptyAccessorySlot += 1;
      }
      _loc2_ += 1;
   }
   _loc2_ = 601;
   while(_loc2_ <= 630)
   {
      if(_root.save.inventoryExist[_loc2_] != 1)
      {
         _root.emptyOutfitSlot += 1;
      }
      _loc2_ += 1;
   }
   _loc2_ = 701;
   while(_loc2_ <= 730)
   {
      if(_root.save.inventoryExist[_loc2_] != 1)
      {
         _root.emptyChipSlot += 1;
      }
      _loc2_ += 1;
   }
}
function addArenaEnemy(level, speed, attack, defense, accuracy, evasion, hp, exp, coin, pixel, name, element, boss, evolve, heal, zombie, rangeDamage, explode, explodeDamage, rampagePct, skill, skillLevel, art, loc, allyPassive1, allyPassive1X, allyPassive2, allyPassive2X, allyPassive3, allyPassive3X, allyActive1, allyActive1X, allyActive1Y, allyActive1Z, allyActive2, allyActive2X, allyActive2Y, allyActive2Z, allyActive3, allyActive3X, allyActive3Y, allyActive3Z)
{
   var _loc43_ = new Object();
   _loc43_.level = level;
   _loc43_.speed = speed;
   _loc43_.attack = attack;
   _loc43_.defense = defense;
   _loc43_.accuracy = accuracy;
   _loc43_.evasion = evasion;
   _loc43_.hp = hp;
   _loc43_.exp = exp;
   _loc43_.coin = coin;
   _loc43_.pixel = pixel;
   _loc43_.name = name;
   _loc43_.element = element;
   _loc43_.boss = boss;
   _loc43_.evolve = evolve;
   _loc43_.heal = heal;
   _loc43_.zombie = zombie;
   _loc43_.rangeDamage = rangeDamage;
   _loc43_.explode = explode;
   _loc43_.explodeDamage = explodeDamage;
   _loc43_.rampagePct = rampagePct;
   _loc43_.skill = skill;
   _loc43_.skillLevel = skillLevel;
   _loc43_.art = art;
   _loc43_.loc = loc;
   _loc43_.allyPassive1 = allyPassive1;
   _loc43_.allyPassive1X = allyPassive1X;
   _loc43_.allyPassive2 = allyPassive2;
   _loc43_.allyPassive2X = allyPassive2X;
   _loc43_.allyPassive3 = allyPassive3;
   _loc43_.allyPassive3X = allyPassive3X;
   _loc43_.allyActive1 = allyActive1;
   _loc43_.allyActive1X = allyActive1X;
   _loc43_.allyActive1Y = allyActive1Y;
   _loc43_.allyActive1Z = allyActive1Z;
   _loc43_.allyActive2 = allyActive2;
   _loc43_.allyActive2X = allyActive2X;
   _loc43_.allyActive2Y = allyActive2Y;
   _loc43_.allyActive2Z = allyActive2Z;
   _loc43_.allyActive3 = allyActive3;
   _loc43_.allyActive3X = allyActive3X;
   _loc43_.allyActive3Y = allyActive3Y;
   _loc43_.allyActive3Z = allyActive3Z;
   enemyList.push(_loc43_);
}
function obtainAlly(ID)
{
   if(isNaN(_root.save.arenaAllyEXP[ID]))
   {
      _root.save.arenaAllyEXP[ID] = 0;
      _root.save.arenaAllyUpgrade[ID] = 0;
      _root.dispNews(35,"Invisible Ally GET! [" + _root.enemyList[ID].name + "]!");
   }
}
function addKommanderMission(monID, minDiff, monCount)
{
   _root.komDiff[monID] = minDiff;
   _root.komCount[monID] = monCount;
}
function addMuseumItem(mSlotID, mValue, mName)
{
   _root.museumItem[mSlotID] = mName;
   _root.museumValue[mSlotID] = mValue;
   _root.museumMaxItem += 1;
   _root.museumMaxValue += mValue;
}
function addMuseumArmorSet(mSlotID, mValue, mName)
{
   _root.museumItem[mSlotID] = mName + " Hat";
   _root.museumValue[mSlotID] = mValue;
   _root.museumItem[mSlotID + 1] = mName + " Shirt";
   _root.museumValue[mSlotID + 1] = mValue;
   _root.museumItem[mSlotID + 2] = mName + " Gloves";
   _root.museumValue[mSlotID + 2] = mValue;
   _root.museumItem[mSlotID + 3] = mName + " Pants";
   _root.museumValue[mSlotID + 3] = mValue;
   _root.museumItem[mSlotID + 4] = mName + " Shoes";
   _root.museumValue[mSlotID + 4] = mValue;
   _root.museumMaxItem += 5;
   _root.museumMaxValue += mValue * 5;
}
function recalcMuseumScore()
{
   _root.save.collectionPoint = 0;
   _root.save.collectionPointTrophy = 0;
   var _loc2_ = 1401;
   while(_loc2_ <= 3000)
   {
      if(_root.save.inventoryExist[_loc2_] == 1 && !isNaN(_root.museumValue[_loc2_]))
      {
         _root.save.collectionPoint += _root.museumValue[_loc2_];
         if(_root.save.inventorySubtype[_loc2_] == "Trophy")
         {
            _root.save.collectionPointTrophy += 1;
         }
      }
      _loc2_ += 1;
   }
   if(_root.save.collectionPointMax < _root.save.collectionPoint)
   {
      _root.save.collectionPointMax = _root.save.collectionPoint;
   }
}
_root.arenaSkillNameF = ["","Quick Attack","Power Attack","Specialized Skill","Combo Strike","Heal","Quick Attack Improve","Power Attack Improve","Specialized Skill Improve","Strength Enhancement","Dexterity Enhancement","Invisible Armor","Invisible Weapon","Artful Dodger","Accuracy Boost","Weapon Mastery","Weapon Booster","","Critical Force","Critical Chance","Keen Eyes","HP Recovery","HP Boost","Overpowered Tanker","MP Recovery","MP Boost","\'potion [PROFANITY] 1/5\'","Combo Power","Combo Protection","Combo Precision","Combo Reward","Rage Mastery","Rage Power","Panic","Learner","Money UP","Drain","Mana Eater","Coup de Grace","Poison Ability","Poison Power","Weaken Ability","Weaken Power","Blind Ability","Blind Power","Explosive Attacks","","","","Mana Power","Five-Leaf Clover","Reflect","Magic Reflect","Autosteal","Basic Attack","Double Hit","Elemental Bonus","Master Hunter","Spirit Shield","Legendary Weapon","Adrenaline","Protection","Buff Boost","Crescendo","Revive","Charge","Absorb"];
_root.arenaSkillMaxF = [0,30,30,30,30,10,1,1,1,50,50,40,40,50,50,50,40,0,50,30,50,30,50,50,30,50,1,30,30,40,50,30,50,50,50,50,50,30,50,30,40,30,40,30,40,50,0,0,0,1,50,30,30,50,20,30,50,50,50,50,50,50,50,50,50,50,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
_root.arenaSkillRankF = [999,10,30,70,120,10,250,350,500,10,10,30,40,50,60,70,80,999,90,100,110,15,25,130,45,55,120,35,75,115,155,65,85,95,30,30,70,70,70,105,145,135,175,125,165,140,999,999,999,180,170,150,160,120,1,120,500,500,500,500,500,120,120,180,180,180,180];
craftWeapon = [zeroItem];
craftArmor = [zeroItem];
craftAccessory = [zeroItem];
craftEnhancer = [zeroItem];
craftPotion = [zeroItem];
craftChip = [zeroItem];
stickName = _root.kongregate_username + "\'s Tree Stick";
if(_root.kongregate_username == undefined || _root.kongregate_username == "Guest")
{
   stickName = "????\'s Tree Stick";
}
addArenaCraftWeapon("Title","Newbie Items");
addArenaCraftWeapon(1,1,1,1,"Stick",false,101,30,13,0,10,0,0,1,0,0,0,"","","",0,Infinity,false,false,false,false,false,0,0,0,0,0,"Newbie Stick","");
addArenaCraftWeapon(1,1,1,1,"Stick",false,102,50,13,0,10,0,0,1,0,0,0,"Pixel","Mastery","",0,Infinity,false,false,false,false,false,0,100,0,0,0,"Tree Stick","");
addArenaCraftWeapon(1,1,1,10,"Stick",false,103,150,13,0,10,25,0,1,0,0,0,"Pixel","Mastery","",0,Infinity,false,false,false,false,false,0,1000,0,0,0,"Enchanted Tree Stick","");
addArenaCraftWeapon(1,1,1,20,"Stick",false,104,250,13,0,10,50,0,10,30000,0,0,"Pixel","Mastery","",0,Infinity,false,false,false,false,true,0,50000,0,0,0,stickName,"");
addArenaCraftWeapon("Title","Basic");
addArenaCraftWeapon("Title 2","Melee Weapons");
addArenaCraftWeapon(3,1,2,10,"Dagger",false,105,190,16,40,10,10,0,1,0,0,0,"EXP","Attack","",250,Infinity,false,false,false,false,false,0,2500,0,0,0,"Wooden Dagger","");
addArenaCraftWeapon(3,1,2,15,"Sword",false,110,210,15,40,15,0,0,1,0,0,0,"EXP","Attack","",500,Infinity,false,false,false,false,false,0,5000,0,0,0,"Wooden Sword","");
addArenaCraftWeapon(3,1,2,20,"Sword",false,115,230,14,40,15,0,0,1,0,0,0,"EXP","Attack","",1000,Infinity,false,false,false,false,false,0,10000,0,0,0,"Wooden Longsword","");
addArenaCraftWeapon(3,1,2,25,"Spear",false,120,250,13,40,15,10,0,1,0,0,0,"EXP","Attack","",2500,Infinity,false,false,false,false,false,0,25000,0,0,0,"Wooden Spear","");
addArenaCraftWeapon(3,1,2,30,"Axe",false,125,290,12,70,20,0,0,1,0,0,0,"EXP","Attack","",5000,Infinity,false,false,false,false,false,0,50000,0,0,0,"Small Axe","");
addArenaCraftWeapon(3,1,2,35,"Axe",false,130,310,11,100,20,0,0,1,0,0,0,"EXP","Attack","",10000,Infinity,false,false,false,false,false,0,100000,0,0,0,"Doubleaxe","");
addArenaCraftWeapon(3,1,3,40,"Dagger",false,106,320,17,40,15,10,0,1,0,0,0,"EXP","Attack","",15000,Infinity,false,false,false,false,false,0,150000,0,0,0,"Silver Dagger","");
addArenaCraftWeapon(3,1,3,45,"Sword",false,111,345,16,40,20,0,0,1,0,0,0,"EXP","Attack","",25000,Infinity,false,false,false,false,false,0,250000,0,0,1,"Silver Sword","");
addArenaCraftWeapon(3,1,3,50,"Sword",false,116,370,15,40,20,0,0,1,0,0,0,"EXP","Attack","",40000,Infinity,false,false,false,false,false,0,400000,0,0,2,"Blue Longsword","");
addArenaCraftWeapon(3,1,3,55,"Spear",false,121,395,14,40,20,10,0,1,0,0,0,"EXP","Attack","",60000,Infinity,false,false,false,false,false,0,600000,0,0,3,"Silver Spear","");
addArenaCraftWeapon(3,1,3,60,"Axe",false,126,445,13,70,25,0,0,1,0,0,0,"EXP","Attack","",100000,Infinity,false,false,false,false,false,0,1000000,0,0,5,"Medium Axe","");
addArenaCraftWeapon(3,1,3,65,"Axe",false,131,470,12,100,25,0,0,1,0,0,0,"EXP","Attack","",150000,Infinity,false,false,false,false,false,0,1500000,0,0,7,"Dark Doubleaxe","");
addArenaCraftWeapon(3,1,4,70,"Dagger",false,107,490,18,40,20,10,0,1,0,0,0,"EXP","Attack","",250000,Infinity,false,false,false,false,false,0,2500000,0,0,12,"Golden Dagger","");
addArenaCraftWeapon(3,1,4,75,"Sword",false,112,520,17,40,25,0,0,1,0,0,0,"EXP","Attack","",400000,Infinity,false,false,false,false,false,0,4000000,0,0,20,"Golden Sword","");
addArenaCraftWeapon(3,1,4,80,"Sword",false,117,550,16,40,25,0,0,1,0,0,0,"EXP","Attack","",600000,Infinity,false,false,false,false,false,0,6000000,0,0,30,"Golden Longsword","");
addArenaCraftWeapon(3,1,4,85,"Spear",false,122,580,15,40,25,10,0,1,0,0,0,"EXP","Attack","",1000000,Infinity,false,false,false,false,false,0,10000000,0,0,50,"Golden Spear","");
addArenaCraftWeapon(3,1,4,90,"Axe",false,127,640,14,70,30,0,0,1,0,0,0,"EXP","Attack","",1500000,Infinity,false,false,false,false,false,0,15000000,0,0,75,"Large Axe","");
addArenaCraftWeapon(3,1,4,95,"Hammer",false,132,670,13,100,30,0,0,1,0,0,0,"EXP","Attack","",2000000,Infinity,false,false,false,false,false,0,20000000,0,0,100,"Darkhammer","");
addArenaCraftWeapon(3,2,5,100,"Dagger",false,108,690,19,40,25,10,0,1,0,0,0,"EXP","Attack","",3000000,Infinity,false,false,false,false,false,0,30000000,0,0,150,"Diamond Dagger","");
addArenaCraftWeapon(3,2,5,105,"Sword",false,113,725,18,40,30,0,0,1,0,0,0,"EXP","Attack","",4000000,Infinity,false,false,false,false,false,0,40000000,0,0,200,"Diamond Sword","");
addArenaCraftWeapon(3,2,5,110,"Sword",false,118,750,17,40,30,0,0,1,0,0,0,"EXP","Attack","",5000000,Infinity,false,false,false,false,false,0,50000000,0,0,250,"Blood Longsword","");
addArenaCraftWeapon(3,2,5,115,"Spear",false,123,785,16,40,30,10,0,1,0,0,0,"EXP","Attack","",6000000,Infinity,false,false,false,false,false,0,60000000,0,0,300,"Diamond Spear","");
addArenaCraftWeapon(3,2,5,120,"Axe",false,128,855,15,70,35,0,0,1,0,0,0,"EXP","Attack","",7000000,Infinity,false,false,false,false,false,0,70000000,0,0,350,"Golden Axe","");
addArenaCraftWeapon(3,2,5,125,"Sword",false,133,825,20,100,35,0,0,1,0,0,0,"EXP","Attack","",8000000,Infinity,false,false,false,false,false,0,80000000,0,0,400,"Hero Sword","");
addArenaCraftWeapon(3,2,5,130,"Sword",false,135,875,21,100,40,30,0,1,0,0,0,"EXP","Attack","",9000000,Infinity,false,false,false,false,false,0,90000000,0,0,450,"Legendary Sword","");
addArenaCraftWeapon(3,2,5,135,"Sword",false,134,925,22,100,40,30,12,1,0,0,0,"EXP","Attack","",10000000,Infinity,false,false,false,false,false,0,100000000,0,0,500,"Triangle Sword","");
addArenaCraftWeapon(3,2,5,140,"Sword",false,302,1250,17,100,40,0,0,1,0,0,0,"EXP","Attack","",15000000,Infinity,false,false,false,false,true,0,150000000,0,0,750,"Spirit Sword","");
addArenaCraftWeapon("Title 2","Ranged Weapons");
addArenaCraftWeapon(3,1,2,10,"Gun",true,146,50,13,0,10,0,0,1,0,0,0,"Water Element","Critical Damage","",250,Infinity,false,false,false,false,false,0,2500,0,0,0,"Water Gun","");
addArenaCraftWeapon(3,1,2,15,"Bow",true,136,120,8,0,5,10,0,1,0,0,0,"EXP","Accuracy","",500,Infinity,false,false,false,false,false,0,5000,0,0,0,"Weak Bow","");
addArenaCraftWeapon(3,1,2,20,"Crossbow",true,141,150,7,0,10,10,0,1,0,0,0,"Coin","Accuracy","",1000,Infinity,false,false,false,false,false,0,10000,0,0,0,"Weak Crossbow","");
addArenaCraftWeapon(3,1,2,25,"Wand",true,155,180,6,0,10,0,10,1,0,0,0,"Reward","MP Regen","",2500,Infinity,false,false,false,false,false,0,25000,0,0,0,"Basic Wand","");
addArenaCraftWeapon(3,1,2,30,"Claw",true,171,170,11,5,5,5,10,1,0,0,0,"Pixel","Autosteal","",5000,Infinity,false,false,false,false,false,0,50000,0,0,0,"Basic Claw","");
addArenaCraftWeapon(3,1,3,40,"Gun",true,147,160,13,0,10,0,0,1,0,0,0,"Fire Element","Critical Damage","",15000,Infinity,false,false,false,false,false,0,150000,0,0,0,"Fire Gun","");
addArenaCraftWeapon(3,1,3,45,"Bow",true,137,265,8,0,5,10,0,1,0,0,0,"EXP","Accuracy","",25000,Infinity,false,false,false,false,false,0,250000,0,0,1,"Advanced Bow","");
addArenaCraftWeapon(3,1,3,50,"Crossbow",true,142,300,7,0,10,10,0,1,0,0,0,"Coin","Accuracy","",40000,Infinity,false,false,false,false,false,0,400000,0,0,2,"Advanced Crossbow","");
addArenaCraftWeapon(3,1,3,55,"Wand",true,156,335,6,0,10,0,10,1,0,0,0,"Fire Element","MP Regen","",60000,Infinity,false,false,false,false,false,0,600000,0,0,3,"Fire Wand","");
addArenaCraftWeapon(3,1,3,55,"Wand",true,157,335,6,0,10,0,10,1,0,0,0,"Ice Element","MP Regen","",60000,Infinity,false,false,false,false,false,0,600000,0,0,3,"Ice Wand","");
addArenaCraftWeapon(3,1,3,55,"Wand",true,158,335,6,0,10,0,10,1,0,0,0,"Wind Element","MP Regen","",60000,Infinity,false,false,false,false,false,0,600000,0,0,3,"Wind Wand","");
addArenaCraftWeapon(3,1,3,55,"Wand",true,159,335,6,0,10,0,10,1,0,0,0,"Earth Element","MP Regen","",60000,Infinity,false,false,false,false,false,0,600000,0,0,3,"Earth Wand","");
addArenaCraftWeapon(3,1,3,55,"Wand",true,160,335,6,0,10,0,10,1,0,0,0,"Thunder Element","MP Regen","",60000,Infinity,false,false,false,false,false,0,600000,0,0,3,"Thunder Wand","");
addArenaCraftWeapon(3,1,3,55,"Wand",true,161,335,6,0,10,0,10,1,0,0,0,"Water Element","MP Regen","",60000,Infinity,false,false,false,false,false,0,600000,0,0,3,"Water Wand","");
addArenaCraftWeapon(3,1,3,60,"Claw",true,172,325,11,10,5,5,10,1,0,0,0,"Pixel","Autosteal","",100000,Infinity,false,false,false,false,false,0,1000000,0,0,5,"Steel Claw","");
addArenaCraftWeapon(3,1,4,70,"Gun",true,148,325,13,0,10,0,0,1,0,0,0,"Dark Element","Critical Damage","",250000,Infinity,false,false,false,false,false,0,2500000,0,0,12,"Dark Gun","");
addArenaCraftWeapon(3,1,4,75,"Bow",true,138,445,8,0,5,10,0,1,0,0,0,"EXP","Accuracy","",400000,Infinity,false,false,false,false,false,0,4000000,0,0,20,"Diamond Bow","");
addArenaCraftWeapon(3,1,4,80,"Crossbow",true,143,485,7,0,10,10,0,1,0,0,0,"Coin","Accuracy","",600000,Infinity,false,false,false,false,false,0,6000000,0,0,30,"Diamond Crossbow","");
addArenaCraftWeapon(3,1,4,85,"Wand",true,162,525,6,0,10,0,10,1,0,0,0,"Light Element","MP Regen","",1000000,Infinity,false,false,false,false,false,0,10000000,0,0,50,"Light Wand","");
addArenaCraftWeapon(3,1,4,85,"Wand",true,163,525,6,0,10,0,10,1,0,0,0,"Dark Element","MP Regen","",1000000,Infinity,false,false,false,false,false,0,10000000,0,0,50,"Dark Wand","");
addArenaCraftWeapon(3,1,4,85,"Wand",true,164,525,6,0,10,0,10,1,0,0,0,"Reward","Drain","",1000000,Infinity,false,false,false,false,false,0,10000000,0,0,50,"Life Drain Wand","");
addArenaCraftWeapon(3,1,4,85,"Wand",true,165,525,6,0,10,0,10,1,0,0,0,"Reward","Mana Eater","",1000000,Infinity,false,false,false,false,false,0,10000000,0,0,50,"Mana Eater Wand","");
addArenaCraftWeapon(3,1,4,90,"Claw",true,173,515,11,15,5,5,10,1,0,0,0,"Pixel","Autosteal","",1500000,Infinity,false,false,false,false,false,0,15000000,0,0,75,"Venomous Claw","");
addArenaCraftWeapon(3,2,5,100,"Gun",true,149,505,13,0,10,0,0,1,0,0,0,"Coin","Critical Damage","",3000000,Infinity,false,false,false,false,false,0,30000000,0,0,150,"Golden Gun","");
addArenaCraftWeapon(3,2,5,105,"Bow",true,139,640,8,0,5,10,0,1,0,0,0,"Light Element","Accuracy","",4000000,Infinity,false,false,false,false,false,0,40000000,0,0,200,"Holy Bow","");
addArenaCraftWeapon(3,2,5,110,"Crossbow",true,144,685,7,0,10,10,0,1,0,0,0,"Light Element","Accuracy","",5000000,Infinity,false,false,false,false,false,0,50000000,0,0,250,"Holy Crossbow","");
addArenaCraftWeapon(3,2,5,115,"Wand",true,166,730,6,0,10,0,10,1,0,0,0,"Reward","HP","",6000000,Infinity,false,false,false,false,false,0,60000000,0,0,300,"Life Wand","");
addArenaCraftWeapon(3,2,5,115,"Wand",true,167,730,6,0,10,0,10,1,0,0,0,"Reward","MP","",6000000,Infinity,false,false,false,false,false,0,60000000,0,0,300,"Mana Wand","");
addArenaCraftWeapon(3,2,5,115,"Wand",true,168,730,6,0,10,0,10,1,0,0,0,"Reward","Poison Chance","",6000000,Infinity,false,false,false,false,false,0,60000000,0,0,300,"Poison Wand","");
addArenaCraftWeapon(3,2,5,115,"Wand",true,169,730,6,0,10,0,10,1,0,0,0,"Reward","Weaken Chance","",6000000,Infinity,false,false,false,false,false,0,60000000,0,0,300,"Weaken Wand","");
addArenaCraftWeapon(3,2,5,120,"Claw",true,174,720,11,20,5,5,10,1,0,0,0,"Pixel","Autosteal","",7000000,Infinity,false,false,false,false,false,0,70000000,0,0,350,"Blood Claw","");
addArenaCraftWeapon(3,2,5,130,"Gun",true,150,720,13,0,10,0,0,1,0,0,0,"Water Element","Critical Damage","",9000000,Infinity,false,false,false,false,false,0,90000000,0,0,450,"Advanced Water Gun","");
addArenaCraftWeapon(3,2,5,130,"Gun",true,151,720,13,0,10,0,0,1,0,0,0,"Fire Element","Critical Damage","",9000000,Infinity,false,false,false,false,false,0,90000000,0,0,450,"Advanced Fire Gun","");
addArenaCraftWeapon("Title","\'lrn2craft\'");
addArenaCraftWeapon("Title 2","Melee Weapons");
addArenaCraftWeapon(4,1,2,8,"Sword",false,201,125,14,5,15,0,0,10,5000,0,0,"Reward","","",500,Infinity,false,false,false,false,false,0,2500,500,0,0,"Broken Greatsword","");
addArenaCraftWeapon(4,1,2,18,"Polearm (Stab)",false,202,145,12,15,16,0,0,10,10000,0,0,"Reward","Mastery","",2500,Infinity,false,false,false,false,false,0,12500,2500,0,0,"Ranseur","");
addArenaCraftWeapon(4,1,2,28,"Polearm",false,203,180,13,25,17,0,0,10,25000,0,0,"Reward","Mastery","",10000,Infinity,false,false,false,false,false,0,50000,10000,0,1,"Halberd","");
addArenaCraftWeapon(4,1,2,38,"Polearm (Stab)",false,204,230,12,35,18,0,0,10,50000,0,0,"Reward","Mastery","",50000,Infinity,false,false,false,false,false,0,250000,50000,0,5,"Trident","");
addArenaCraftWeapon(4,1,2,48,"Polearm (Stab)",false,205,250,12,45,19,0,0,10,100000,0,0,"Reward","Mastery","",100000,Infinity,false,false,false,false,false,0,500000,100000,1,10,"Partisan","");
addArenaCraftWeapon(4,1,2,58,"Polearm (Stab)",false,206,260,15,55,20,0,0,10,250000,0,0,"Reward","Mastery","",300000,Infinity,false,false,false,false,false,0,1500000,300000,2,30,"Awl Pike","");
addArenaCraftWeapon(4,1,3,68,"Polearm",false,207,270,18,65,21,0,0,10,500000,0,0,"Reward","Mastery","",600000,Infinity,false,false,false,false,false,0,3000000,600000,5,60,"Bill Hook","");
addArenaCraftWeapon(4,1,3,78,"Polearm (Stab)",false,208,350,12,75,22,0,0,10,1000000,0,0,"Reward","Mastery","",1000000,Infinity,false,false,false,false,false,0,5000000,1000000,10,100,"Bat-Wing Corseque","");
addArenaCraftWeapon(4,1,3,88,"Polearm (Stab)",false,209,380,12,85,23,0,0,10,1500000,0,0,"Reward","Mastery","",1500000,Infinity,false,false,false,false,false,0,7500000,1500000,15,150,"Corseque","");
addArenaCraftWeapon(4,2,3,98,"Polearm",false,210,375,12,95,24,0,0,10,1500000,0,0,"Reward","Mastery","",2000000,Infinity,false,false,false,false,false,0,10000000,2000000,20,200,"Fauchard","");
addArenaCraftWeapon(4,2,3,108,"Polearm (Stab)",false,211,410,12,105,25,0,0,10,3000000,0,0,"Reward","Mastery","",3000000,Infinity,false,false,false,false,false,0,15000000,3000000,30,300,"Military Fork","");
addArenaCraftWeapon(4,2,3,118,"Polearm",false,212,405,12,115,26,0,0,10,3000000,0,0,"Reward","Mastery","",4000000,Infinity,false,false,false,false,false,0,20000000,4000000,40,400,"Fauchard-Fork","");
addArenaCraftWeapon(4,2,3,128,"Polearm",false,213,385,13,125,27,0,0,20,4500000,0,0,"Reward","Mastery","",6000000,Infinity,false,false,false,false,false,0,30000000,6000000,60,600,"Naginata","");
addArenaCraftWeapon(4,2,4,133,"Polearm",false,214,410,12,135,28,0,0,20,4500000,0,0,"Reward","Mastery","",8000000,Infinity,false,false,false,false,false,0,40000000,8000000,80,800,"Nagimaki","");
addArenaCraftWeapon(4,2,4,138,"Polearm",false,215,410,14,145,29,0,0,20,6000000,0,0,"Reward","Mastery","",10000000,Infinity,false,false,false,false,false,0,50000000,10000000,100,1000,"Fukuro Yari","");
addArenaCraftWeapon(4,2,4,143,"Polearm",false,216,440,12,155,30,0,0,20,6000000,0,0,"Reward","Mastery","",15000000,Infinity,false,false,false,false,false,0,75000000,15000000,150,1500,"Voulge","");
addArenaCraftWeapon(4,3,4,148,"Polearm",false,217,510,10,165,31,0,0,20,6000000,0,0,"Reward","Mastery","",20000000,Infinity,false,false,false,false,false,0,100000000,20000000,200,2000,"Scythe","");
addArenaCraftWeapon(4,3,4,153,"Polearm",false,218,485,10,175,32,0,0,30,9000000,0,0,"Reward","Mastery","",25000000,Infinity,false,false,false,false,false,0,125000000,25000000,250,2500,"Bardiche","");
addArenaCraftWeapon(4,3,4,158,"Polearm",false,219,510,12,185,33,0,0,30,9000000,0,0,"Reward","Mastery","",30000000,Infinity,false,false,false,false,false,0,150000000,30000000,300,3000,"Poleaxe","");
addArenaCraftWeapon(4,3,4,163,"Polearm",false,220,535,10,195,34,0,0,30,9000000,0,0,"Reward","Mastery","",35000000,Infinity,false,false,false,false,false,0,175000000,35000000,350,3500,"Lochaber Axe","");
addArenaCraftWeapon(4,3,4,168,"Polearm",false,221,560,10,205,35,0,0,30,12000000,0,0,"Reward","Mastery","",40000000,Infinity,false,false,false,false,false,0,200000000,40000000,400,4000,"Bohemian Earspoon","");
addArenaCraftWeapon(4,3,4,173,"Hammer",false,222,570,10,215,36,0,0,30,12000000,0,0,"Reward","Mastery","",45000000,Infinity,false,false,false,false,false,0,225000000,45000000,450,4500,"Bec de Corbin","");
addArenaCraftWeapon(4,3,4,178,"Polearm",false,223,625,10,225,37,0,0,30,15000000,0,0,"Reward","Mastery","",50000000,Infinity,false,false,false,false,false,0,250000000,50000000,500,5000,"Ox Tongue","");
addArenaCraftWeapon(4,3,4,183,"Polearm (Stab)",false,224,640,10,235,38,0,0,30,15000000,0,0,"Reward","Mastery","",60000000,Infinity,false,false,false,false,false,0,300000000,60000000,600,6000,"Spetum","");
addArenaCraftWeapon(4,3,5,188,"Polearm",false,225,645,10,245,39,5,0,40,18000000,0,0,"Reward","Mastery","",70000000,Infinity,false,false,false,false,false,0,350000000,70000000,700,7000,"Glaive","");
addArenaCraftWeapon(4,3,5,193,"Polearm",false,226,650,12,255,40,10,0,40,18000000,0,0,"Reward","Mastery","",80000000,Infinity,false,false,false,false,false,0,400000000,80000000,800,8000,"Guisarme","");
addArenaCraftWeapon(4,3,5,198,"Polearm (Stab)",false,231,695,11,265,41,10,0,40,21000000,0,0,"Reward","Mastery","",90000000,Infinity,false,false,false,false,false,0,450000000,90000000,900,9000,"Longspear","");
addArenaCraftWeapon(4,4,5,203,"Hammer",false,232,745,9,275,42,10,0,40,21000000,0,0,"Reward","Mastery","",100000000,Infinity,false,false,false,false,false,0,500000000,100000000,1000,10000,"Lucerne Hammer","");
addArenaCraftWeapon(4,4,5,208,"Polearm",false,227,750,9,285,43,15,0,40,24000000,0,0,"Reward","Mastery","",150000000,Infinity,false,false,false,false,false,0,750000000,150000000,1500,15000,"Glaive-Guisarme","");
addArenaCraftWeapon(4,4,5,213,"Polearm",false,228,775,11,295,44,15,0,40,24000000,0,0,"Reward","Mastery","",200000000,Infinity,false,false,false,false,false,0,1000000000,200000000,2000,20000,"Guisarme-Glaive","");
addArenaCraftWeapon(4,4,5,218,"Polearm",false,229,825,9,320,45,20,0,40,27000000,0,0,"Reward","Mastery","",250000000,Infinity,false,false,false,false,false,0,1250000000,250000000,2500,25000,"Glaive-Guisarme-Glaive","");
addArenaCraftWeapon(4,4,5,228,"Polearm",false,230,850,7,360,50,25,0,50,30000000,0,0,"Reward","Mastery","Attack Power",400000000,Infinity,false,false,false,false,false,0,2000000000,400000000,4000,40000,"Glaive-Glaive-Glaive-Guisarme-Glaive","");
addArenaCraftWeapon(4,5,5,238,"Sword",false,233,1225,15,400,60,30,10,50,30000000,0,0,"Reward","Boss Damage","Attack Power",600000000,Infinity,false,false,false,false,false,0,3000000000,600000000,6000,60000,"Greatsword","");
addArenaCraftWeapon(4,5,5,248,"Sword",false,234,1300,15,500,70,35,10,50,30000000,0,0,"Reward","Boss Damage","Attack Power",800000000,Infinity,false,false,false,false,false,0,4000000000,800000000,8000,80000,"Greatersword","");
addArenaCraftWeapon(4,5,1,298,"Polearm",false,264,0,11,0,45,0,20,1,0,-5,0,"Dark Element","Boss Damage","",1000000000,Infinity,false,false,true,false,false,0,0,1000000000,5000,50000,"Fiend Glaive","Cannot be enhanced with Attack enhancers.");
addArenaCraftWeapon("Title 2","Ranged Weapons");
addArenaCraftWeapon(4,2,3,108,"Gun",true,153,125,25,25,35,25,0,1,0,0,0,"EXP","Stun Chance","",3000000,Infinity,false,false,false,false,false,0,15000000,3000000,30,300,"Laser Gun","");
addArenaCraftWeapon(4,3,4,128,"Bow",true,249,650,12,0,25,35,0,1,0,0,0,"Epic Monster Rate","Instant Kill","Accuracy",6000000,Infinity,false,false,false,false,false,0,30000000,6000000,60,600,"Mystic Bow","");
addArenaCraftWeapon(4,3,4,148,"Gun",true,154,175,30,30,40,30,0,1,0,0,0,"EXP","Stun Chance","",20000000,Infinity,false,false,false,false,false,0,100000000,20000000,200,2000,"Strong Machine Gun","");
addArenaCraftWeapon(4,4,5,168,"Crossbow",true,250,725,11,0,40,25,0,1,0,0,0,"Epic Monster Rate","Instant Kill","Accuracy",40000000,Infinity,false,false,false,false,false,0,200000000,40000000,400,4000,"Mystic Crossbow","");
addArenaCraftWeapon(4,4,5,188,"Claw",true,277,775,16,60,25,15,30,1,0,0,0,"Dark Element","Autosteal","Accuracy",70000000,Infinity,false,false,false,false,false,0,350000000,70000000,700,7000,"Pure Darkness Claw","");
addArenaCraftWeapon(4,5,5,198,"Slingshot",true,236,925,7,0,30,100,0,1,0,0,0,"Epic Monster Rate","Instant Kill","Accuracy",90000000,Infinity,false,false,false,false,false,0,450000000,90000000,900,9000,"Slingshot","");
addArenaCraftWeapon(4,5,5,208,"Bow",true,278,850,12,0,30,40,20,1,0,0,0,"Epic Monster Rate","Poison Damage","Equipment Attack",150000000,Infinity,false,false,false,false,false,0,750000000,150000000,1500,15000,"Crimson Bow","");
addArenaCraftWeapon(4,5,5,218,"Slingshot",true,237,1050,5,0,40,120,0,1,0,0,0,"Epic Monster Rate","Instant Kill","Accuracy",250000000,Infinity,false,false,false,false,false,0,1250000000,250000000,2500,25000,"Oversized Slingshot","");
addArenaCraftWeapon(4,5,5,228,"Cannon",true,238,1175,3,200,40,0,0,1,0,0,0,"Epic Monster Rate","Instant Kill","Defense Power",300000000,Infinity,false,false,false,false,false,0,1500000000,300000000,3000,30000,"Cannon","");
addArenaCraftWeapon(4,5,5,238,"Cannon",true,239,1250,3,300,50,0,0,1,0,0,0,"Epic Monster Rate","Instant Kill","Defense Power",400000000,Infinity,false,false,false,false,false,0,2000000000,400000000,4000,40000,"Gold Cannon","");
addArenaCraftWeapon(4,5,1,258,"Staff",true,261,0,9,0,25,0,10,1,0,-5,0,"Light Element","Boss Damage","",600000000,Infinity,false,false,true,false,false,0,0,600000000,3000,30000,"Glaive of Smiting","Shoots invisible projectiles!\nCannot be enhanced with Attack enhancers.");
addArenaCraftWeapon(4,5,1,278,"Staff",true,263,0,10,0,35,0,10,1,0,-5,0,"Dark Element","Boss Damage","",800000000,Infinity,false,false,true,false,false,0,0,800000000,4000,40000,"Darkglaive of Smiting","Shoots invisible projectiles!\nCannot be enhanced with Attack enhancers.");
addArenaCraftWeapon("Title","Career");
addArenaCraftWeapon(6,2,3,135,"Sword",false,301,666,8,60,20,10,10,66,600000,-6,0,"","Random","",0,Infinity,true,false,true,false,false,0,5000000,250000,10,10,"Cursed Sword (1)","");
addArenaCraftWeapon(6,3,4,165,"Sword",false,301,666,9,90,30,20,20,66,600000,-6,0,"","Random","",0,Infinity,true,false,true,false,false,0,50000000,2500000,100,100,"Cursed Sword (2)","");
addArenaCraftWeapon(6,4,5,195,"Sword",false,301,666,10,120,40,30,30,66,600000,-6,0,"","Random","",0,Infinity,true,false,true,false,false,0,500000000,25000000,1000,1000,"Cursed Sword (3)","");
addArenaCraftWeapon(6,5,1,500,"Sword",false,300,2005,10,0,20,0,0,1,0,2005,300,"EXP","Silence Chance","",0,Infinity,true,false,true,false,false,0,5000000000,0,0,0,"Dark Ruler","It\'s a ruler with Darkruler2005\'s contributions written on it. Unfortunately, there\'s so much text on it that it turned dark, and no matter how hard you try, you can\'t read anything.");
addArenaCraftWeapon("Title","Mission Kommander");
addArenaCraftWeapon(7,1,1,30,"Mining Tool",false,311,0,5,0,3,0,0,2,500000,10,1,"Drop Rate","","",0,Infinity,true,false,true,false,false,0,10000,1000,0,0,"Bronze Pickaxe","A pickaxe used for mining. You can only mine in some areas.");
addArenaCraftWeapon(7,2,1,70,"Mining Tool",false,312,0,6,0,6,0,0,2,800000,9,16,"Drop Rate","Critical Damage","",0,Infinity,true,false,true,false,false,0,100000,10000,0,1,"Silver Pickaxe","A pickaxe used for mining. You can only mine in some areas.");
addArenaCraftWeapon(7,3,1,120,"Mining Tool",false,313,0,6,0,9,0,0,3,1100000,9,36,"Drop Rate","Critical Damage","",0,Infinity,true,false,true,false,false,0,1000000,100000,1,10,"Golden Pickaxe","A pickaxe used for mining. You can only mine in some areas.");
addArenaCraftWeapon(7,4,1,180,"Mining Tool",false,314,0,7,0,12,0,0,3,1500000,9,66,"Drop Rate","Critical Damage","",0,Infinity,true,false,true,false,false,0,10000000,1000000,5,100,"Diamond Pickaxe","A pickaxe used for mining. You can only mine in some areas.");
addArenaCraftWeapon(7,5,1,250,"Mining Tool",false,315,0,7,0,15,0,0,4,2000000,9,106,"Drop Rate","Critical Damage","",0,Infinity,true,false,true,false,false,0,100000000,10000000,25,1000,"Master\'s Pickaxe","A pickaxe used for mining. You can only mine in some areas.");
addArenaCraftWeapon(7,5,1,350,"Mining Tool",false,316,0,8,0,18,0,0,4,3000000,9,156,"Drop Rate","Critical Damage","",0,Infinity,true,false,true,false,false,0,1000000000,100000000,100,10000,"Legendary Pickaxe","A pickaxe used for mining. You can only mine in some areas.");
addArenaCraftWeapon(7,2,1,1,"Sword",false,177,0,1,0,10,0,0,2,100000,0,0,"Fire Element","","",0,Infinity,false,false,true,false,false,0,200000,0,1,0,"Burned Rope","");
addArenaCraftWeapon(7,3,1,1,"Wand",true,178,0,8,0,10,0,0,3,4000000,0,0,"","","",9001,Infinity,false,false,true,false,false,0,2000000,0,10,0,"Special Wand","");
addArenaCraftWeapon("Title","The Special Arena");
addArenaCraftWeapon(8,3,3,120,"Trophy",false,193,937,25,100,20,20,0,60,25000000,10,100,"Random","Random","",0,30,false,true,true,false,false,5,0,0,100,100,"Bronze Endurance Trophy","");
addArenaCraftWeapon(8,4,4,180,"Trophy",false,194,1037,25,200,30,30,0,90,25000000,9,200,"Random","Random","",0,45,false,true,true,false,false,10,0,0,300,300,"Silver Endurance Trophy","");
addArenaCraftWeapon(8,5,5,250,"Trophy",false,195,1137,25,300,40,40,0,120,25000000,8,300,"Random","Random","",0,60,false,true,true,false,false,15,0,0,900,900,"Gold Endurance Trophy","");
addArenaCraftWeapon(8,5,5,350,"Trophy",false,298,1237,25,400,50,50,0,150,25000000,7,400,"Random","Random","",0,75,false,true,true,false,false,20,0,0,8100,8100,"Platinum Endurance Trophy","");
addArenaCraftWeapon(8,5,5,500,"Trophy",false,299,1337,25,500,60,60,0,180,25000000,6,500,"Random","Random","",0,90,false,true,true,false,false,25,0,0,72900,72900,"Unobtainium Endurance Trophy","");
addArenaCraftWeapon("Title","Alien");
addArenaCraftWeapon(12,2,5,70,"Sword",false,303,900,16,100,30,30,0,30,5000000,0,0,"Random","Boss Damage","",5000000,14,false,true,false,false,false,0,50000000,5000000,5,250,"Alien Sword #1","");
addArenaCraftWeapon(12,2,5,70,"Claw",true,304,600,16,20,30,30,0,30,5000000,0,0,"Random","Boss Damage","",5000000,14,false,true,false,false,false,0,50000000,5000000,5,250,"Alien Claw #1","");
addArenaCraftWeapon(12,2,5,70,"Wand",true,305,600,16,20,30,30,0,30,5000000,0,0,"Random","Boss Damage","",5000000,14,false,true,false,false,false,0,50000000,5000000,5,250,"Alien Wand #1","");
addArenaCraftWeapon(12,2,5,70,"Bow",true,306,600,16,20,30,30,0,30,5000000,0,0,"Random","Boss Damage","",5000000,14,false,true,false,false,false,0,50000000,5000000,5,250,"Alien Bow #1","");
addArenaCraftWeapon(12,3,5,110,"Sword",false,307,1200,16,100,30,30,0,30,10000000,0,0,"Random","Boss Damage","",15000000,14,false,true,false,false,false,0,150000000,15000000,10,750,"Alien Sword #2","");
addArenaCraftWeapon(12,3,5,110,"Claw",true,308,900,16,20,30,30,0,30,10000000,0,0,"Random","Boss Damage","",15000000,14,false,true,false,false,false,0,150000000,15000000,10,750,"Alien Claw #2","");
addArenaCraftWeapon(12,3,5,110,"Wand",true,309,900,16,20,30,30,0,30,10000000,0,0,"Random","Boss Damage","",15000000,14,false,true,false,false,false,0,150000000,15000000,10,750,"Alien Wand #2","");
addArenaCraftWeapon(12,3,5,110,"Bow",true,310,900,16,20,30,30,0,30,10000000,0,0,"Random","Boss Damage","",15000000,14,false,true,false,false,false,0,150000000,15000000,10,750,"Alien Bow #2","");
addArenaCraftWeapon("Title","Elite Alien");
addArenaCraftWeapon(14,2,5,90,"Sword",false,303,1000,19,100,30,40,10,40,10000000,0,0,"Random","Boss Damage","",10000000,30,false,true,false,false,false,0,100000000,10000000,25,500,"Elite Alien Sword #1","");
addArenaCraftWeapon(14,2,5,90,"Claw",true,304,700,19,20,30,40,10,40,10000000,0,0,"Random","Boss Damage","",10000000,30,false,true,false,false,false,0,100000000,10000000,25,500,"Elite Alien Claw #1","");
addArenaCraftWeapon(14,2,5,90,"Wand",true,305,700,19,20,30,40,10,40,10000000,0,0,"Random","Boss Damage","",10000000,30,false,true,false,false,false,0,100000000,10000000,25,500,"Elite Alien Wand #1","");
addArenaCraftWeapon(14,2,5,90,"Bow",true,306,700,19,20,30,40,10,40,10000000,0,0,"Random","Boss Damage","",10000000,30,false,true,false,false,false,0,100000000,10000000,25,500,"Elite Alien Bow #1","");
addArenaCraftWeapon(14,3,5,130,"Sword",false,307,1300,19,100,30,40,10,40,20000000,0,0,"Random","Boss Damage","",30000000,30,false,true,false,false,false,0,300000000,30000000,50,1500,"Elite Alien Sword #2","");
addArenaCraftWeapon(14,3,5,130,"Claw",true,308,1000,19,20,30,40,10,40,20000000,0,0,"Random","Boss Damage","",30000000,30,false,true,false,false,false,0,300000000,30000000,50,1500,"Elite Alien Claw #2","");
addArenaCraftWeapon(14,3,5,130,"Wand",true,309,1000,19,20,30,40,10,40,20000000,0,0,"Random","Boss Damage","",30000000,30,false,true,false,false,false,0,300000000,30000000,50,1500,"Elite Alien Wand #2","");
addArenaCraftWeapon(14,3,5,130,"Bow",true,310,1000,19,20,30,40,10,40,20000000,0,0,"Random","Boss Damage","",30000000,30,false,true,false,false,false,0,300000000,30000000,50,1500,"Elite Alien Bow #2","");
addArenaCraftWeapon("Title","Chaotic Items");
addArenaCraftWeapon(15,1,5,268,"Polearm",false,235,725,10,600,30,30,12,60,60000000,0,0,"Reward","Mastery","Attack Power",100000000,Infinity,false,false,false,false,false,0,1000000000,500000000,100,10000,"Badly Recolored Weapon","");
addArenaCraftWeapon(15,1,5,288,"Sword",false,251,975,18,800,50,50,12,60,60000000,0,0,"Drop Rate","Instant Kill","Attack Power",150000000,Infinity,false,false,false,false,false,0,1500000000,750000000,150,15000,"Scimitar","");
addArenaCraftWeapon(15,1,5,308,"Sword",false,252,1000,21,1000,50,50,40,60,60000000,0,0,"Drop Rate","Instant Kill","Attack Power",250000000,Infinity,false,false,false,false,false,0,2500000000,1250000000,250,25000,"Blood Scimitar","");
addArenaCraftWeapon(15,1,2,500,"Axe",false,266,300,8,0,30,10,10,6,70000000,6,500,"EXP","Boss Damage","Equipment Attack",8000000000,Infinity,false,false,true,true,false,20,80000000000,40000000000,16000,1600000,"Meteoric Battleaxe","");
addArenaCraftWeapon(15,1,2,500,"Sword",false,267,275,7,0,20,20,10,6,70000000,6,500,"EXP","Boss Damage","Equipment Attack",8000000000,Infinity,false,false,true,true,false,20,80000000000,40000000000,16000,1600000,"Meteoric Sword","");
addArenaCraftWeapon(15,1,2,500,"Dagger",false,268,325,11,0,20,30,10,6,70000000,6,500,"EXP","Boss Damage","Equipment Attack",8000000000,Infinity,false,false,true,true,false,20,80000000000,40000000000,16000,1600000,"Meteoric Cleaver","");
addArenaCraftWeapon(15,1,2,500,"Polearm",false,269,275,5,0,20,10,10,6,70000000,6,500,"EXP","Boss Damage","Equipment Attack",8000000000,Infinity,false,false,true,true,false,20,80000000000,40000000000,16000,1600000,"Meteoric Glaive","");
addArenaCraftWeapon(15,1,2,500,"Polearm",false,270,325,7,0,10,10,40,6,70000000,6,500,"EXP","Boss Damage","Equipment Attack",8000000000,Infinity,false,false,true,true,false,20,80000000000,40000000000,16000,1600000,"Meteoric Scythe","");
addArenaCraftWeapon(15,1,2,500,"Polearm",false,271,175,6,0,20,10,10,6,70000000,6,500,"EXP","Boss Damage","Equipment Attack",8000000000,Infinity,false,false,true,true,false,20,80000000000,40000000000,16000,1600000,"Meteoric Voulge","");
addArenaCraftWeapon(15,4,1,388,"Dagger",false,81,1250,9,200,10,10,0,44,70000000,4,500,"Spawn Rate","Boss Damage","Attack Power",444444444,Infinity,false,false,false,false,false,0,4444444444,444444444,444,44444,"Dragon Slayer Dagger","");
addArenaCraftWeapon(15,4,1,388,"Sword",false,71,1300,8,200,10,10,0,44,70000000,4,500,"Spawn Rate","Boss Damage","Attack Power",444444444,Infinity,false,false,false,false,false,0,4444444444,444444444,444,44444,"Dragon Slayer Sword","");
addArenaCraftWeapon(15,4,1,388,"Spear",false,72,1150,4,200,10,10,0,44,70000000,4,500,"Spawn Rate","Boss Damage","Attack Power",444444444,Infinity,false,false,false,false,false,0,4444444444,444444444,444,44444,"Dragon Slayer Spear","");
addArenaCraftWeapon(15,4,1,388,"Axe",false,73,1200,6,200,10,10,0,44,70000000,4,500,"Spawn Rate","Boss Damage","Attack Power",444444444,Infinity,false,false,false,false,false,0,4444444444,444444444,444,44444,"Dragon Slayer Axe","");
addArenaCraftWeapon(15,4,1,388,"Bow",true,74,950,8,200,10,20,0,44,70000000,4,500,"Spawn Rate","Boss Damage","Attack Power",444444444,Infinity,false,false,false,false,false,0,4444444444,444444444,444,44444,"Dragon Slayer Bow","");
addArenaCraftWeapon(15,4,1,388,"Gun",true,75,1000,10,200,10,10,0,44,70000000,4,500,"Spawn Rate","Boss Damage","Attack Power",444444444,Infinity,false,false,false,false,false,0,4444444444,444444444,444,44444,"Dragon Slayer Gun","");
addArenaCraftWeapon(15,4,1,388,"Staff",true,82,1100,5,200,10,10,20,44,70000000,4,500,"Spawn Rate","Boss Damage","Attack Power",444444444,Infinity,false,false,false,false,false,0,4444444444,444444444,444,44444,"Dragon Slayer Staff","");
addArenaCraftWeapon(15,4,1,388,"Claw",true,83,950,10,200,10,10,10,44,70000000,4,500,"Spawn Rate","Boss Damage","Attack Power",444444444,Infinity,false,false,false,false,false,0,4444444444,444444444,444,44444,"Dragon Slayer Claw","");
addArenaCraftWeapon(15,5,1,438,"Dagger",false,84,2500,10,300,15,15,0,66,2700000000,6,500,"Spawn Rate","Boss Damage","Attack Power",66666666666,Infinity,false,false,false,false,false,0,666666666666,66666666666,66666,6666666,"Demon Slayer Dagger","");
addArenaCraftWeapon(15,5,1,438,"Sword",false,76,2600,9,300,15,15,0,66,2700000000,6,500,"Spawn Rate","Boss Damage","Attack Power",66666666666,Infinity,false,false,false,false,false,0,666666666666,66666666666,66666,6666666,"Demon Slayer Sword","");
addArenaCraftWeapon(15,5,1,438,"Spear",false,77,2300,5,300,15,15,0,66,2700000000,6,500,"Spawn Rate","Boss Damage","Attack Power",66666666666,Infinity,false,false,false,false,false,0,666666666666,66666666666,66666,6666666,"Demon Slayer Spear","");
addArenaCraftWeapon(15,5,1,438,"Axe",false,78,2400,7,300,15,15,0,66,2700000000,6,500,"Spawn Rate","Boss Damage","Attack Power",66666666666,Infinity,false,false,false,false,false,0,666666666666,66666666666,66666,6666666,"Demon Slayer Axe","");
addArenaCraftWeapon(15,5,1,438,"Bow",true,79,1900,9,300,15,25,0,66,2700000000,6,500,"Spawn Rate","Boss Damage","Attack Power",66666666666,Infinity,false,false,false,false,false,0,666666666666,66666666666,66666,6666666,"Demon Slayer Bow","");
addArenaCraftWeapon(15,5,1,438,"Gun",true,80,2000,11,300,15,15,0,66,2700000000,6,500,"Spawn Rate","Boss Damage","Attack Power",66666666666,Infinity,false,false,false,false,false,0,666666666666,66666666666,66666,6666666,"Demon Slayer Gun","");
addArenaCraftWeapon(15,5,1,438,"Staff",true,85,2200,6,300,15,15,20,66,2700000000,6,500,"Spawn Rate","Boss Damage","Attack Power",66666666666,Infinity,false,false,false,false,false,0,666666666666,66666666666,66666,6666666,"Demon Slayer Staff","");
addArenaCraftWeapon(15,5,1,438,"Claw",true,86,1900,11,300,15,15,10,66,2700000000,6,500,"Spawn Rate","Boss Damage","Attack Power",66666666666,Infinity,false,false,false,false,false,0,666666666666,66666666666,66666,6666666,"Demon Slayer Claw","");
addArenaCraftWeapon(15,5,1,438,"Stick",false,87,30,13,0,10,0,0,1,2700000000,6,500,"Spawn Rate","Boss Damage","Attack Power",66666666666,Infinity,false,false,false,false,false,0,666666666666,66666666666,66666,6666666,"Demon Slayer Stick","");
addArenaCraftWeapon("Title","Unobtainium");
addArenaCraftWeapon(16,1,1,300,"Wand",true,272,350,25,0,5,0,0,10,600000000,-7,0,"Light Element","Potion Efficiency","",50000000,Infinity,false,false,true,false,false,10,0,2500000000,7500,125000,"Fairy Godmother Wand","When equipped: Magic Resist +15%, Negate Effect Chance +15%");
addArenaCraftWeapon(16,1,1,500,"Mining Tool",false,317,0,7,0,21,0,0,6,400000000,8,510,"Drop Rate","Boss Damage","",0,7,true,true,true,false,false,10,1000000000,50000000,1337,10000,"Unobtainium Pickaxe","A pickaxe used for mining. You can only mine in some areas.");
addArenaCraftWeapon(16,1,1,500,"Mining Tool",false,317,0,7,0,20,0,0,5,400000000,8,500,"Drop Rate","Boss Damage","",0,Infinity,true,false,true,false,false,10,1000000000,50000000,9001,25000,"Unobtainium Pickaxe","A pickaxe used for mining. You can only mine in some areas.");
addArenaCraftWeapon("Title","Robotic");
addArenaCraftWeapon(18,5,5,120,"Sword",false,197,175,7,0,10,0,0,10,300000000,0,100,"Random","Random","",0,Infinity,false,false,false,false,false,0,20000000000,0,10000,100000,"Bacon Sword","3rd Edition");
addArenaCraftWeapon("Title","Tukkonium");
addArenaCraftWeapon(21,1,1,488,"Dagger",false,94,4166,20,833,33,125,20,1,7700000000,9,100000,"Spawn Rate","Boss Damage","Attack Power",0,Infinity,false,false,true,false,false,16,0,0,35,6250000,"Tukkonium Dagger","");
addArenaCraftWeapon(21,1,1,488,"Sword",false,89,4166,19,833,33,125,20,1,7700000000,9,100000,"Spawn Rate","Boss Damage","Attack Power",0,Infinity,false,false,true,false,false,16,0,0,35,6250000,"Tukkonium Sword","");
addArenaCraftWeapon(21,1,1,488,"Spear",false,90,4166,16,833,33,125,20,1,7700000000,9,100000,"Spawn Rate","Boss Damage","Attack Power",0,Infinity,false,false,true,false,false,16,0,0,35,6250000,"Tukkonium Spear","");
addArenaCraftWeapon(21,1,1,488,"Axe",false,91,4166,18,833,33,125,20,1,7700000000,9,100000,"Spawn Rate","Boss Damage","Attack Power",0,Infinity,false,false,true,false,false,16,0,0,35,6250000,"Tukkonium Axe","");
addArenaCraftWeapon(21,1,1,488,"Bow",true,92,4166,19,833,33,150,20,1,7700000000,9,100000,"Spawn Rate","Boss Damage","Attack Power",0,Infinity,false,false,true,false,false,16,0,0,35,6250000,"Tukkonium Bow","");
addArenaCraftWeapon(21,1,1,488,"Gun",true,93,4166,21,833,33,125,20,1,7700000000,9,100000,"Spawn Rate","Boss Damage","Attack Power",0,Infinity,false,false,true,false,false,16,0,0,35,6250000,"Tukkonium Gun","");
addArenaCraftWeapon(21,1,1,488,"Staff",true,95,4166,16,833,33,125,40,1,7700000000,9,100000,"Spawn Rate","Boss Damage","Attack Power",0,Infinity,false,false,true,false,false,16,0,0,35,6250000,"Tukkonium Staff","");
addArenaCraftWeapon(21,1,1,488,"Claw",true,96,4166,21,833,33,125,30,1,7700000000,9,100000,"Spawn Rate","Boss Damage","Attack Power",0,Infinity,false,false,true,false,false,16,0,0,35,6250000,"Tukkonium Claw","");
addArenaCraftWeapon(21,1,1,488,"Stick",false,97,30,13,0,10,0,0,1,7700000000,9,100000,"Spawn Rate","Boss Damage","Attack Power",0,Infinity,false,false,true,false,false,16,0,0,35,6250000,"Tukkonium Stick","");
addArenaCraftWeapon("Title","?????????????");
addArenaCraftWeapon(19,1,1,50,"Sword",false,330,2500,50,0,50,250,0,1,0,10,4200,"Random","Random","Random",0,Infinity,true,false,true,true,false,60,0,0,0,0,"Reincarnation Weapon","Also shoots projectiles at monsters from a far distance!");
addArenaCraftWeapon("Title","Secondary Weapons");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,280,0,0,0,0,0,0,-1,100000,0,706,"","Poison Chance","Equipment Attack",50000000,Infinity,true,false,true,false,false,45,500000000,100000000,250,10000,"Poison Arrows","<font color=\'#FFFF00\'>Can only be equipped with a Bow or Crossbow.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,281,0,0,0,0,0,0,-1,100000,0,706,"","Stun Chance","Equipment Attack",50000000,Infinity,true,false,true,false,false,45,500000000,100000000,250,10000,"Explosive Arrows","<font color=\'#FFFF00\'>Can only be equipped with a Bow or Crossbow.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,282,0,0,0,0,0,0,-1,100000,0,706,"","Double Hit Chance","Attack Power",50000000,Infinity,true,false,true,false,false,45,500000000,100000000,250,10000,"Mega Bullets","<font color=\'#FFFF00\'>Can only be equipped with a Gun.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,283,0,0,0,0,0,0,-1,100000,0,706,"","Mastery","Attack Power",50000000,Infinity,true,false,true,false,false,45,500000000,100000000,250,10000,"Master Shurikens","<font color=\'#FFFF00\'>Can only be equipped with a Claw.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,351,0,0,0,0,0,0,-1,100000,0,706,"Fire Element","MP","Equipment Attack",50000000,Infinity,true,false,true,false,false,15,500000000,100000000,250,10000,"Spell Scroll - Fire","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,352,0,0,0,0,0,0,-1,100000,0,706,"Ice Element","MP","Equipment Attack",50000000,Infinity,true,false,true,false,false,15,500000000,100000000,250,10000,"Spell Scroll - Ice","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,353,0,0,0,0,0,0,-1,100000,0,706,"Wind Element","MP","Equipment Attack",50000000,Infinity,true,false,true,false,false,15,500000000,100000000,250,10000,"Spell Scroll - Wind","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,354,0,0,0,0,0,0,-1,100000,0,706,"Earth Element","MP","Equipment Attack",50000000,Infinity,true,false,true,false,false,15,500000000,100000000,250,10000,"Spell Scroll - Earth","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,355,0,0,0,0,0,0,-1,100000,0,706,"Thunder Element","MP","Equipment Attack",50000000,Infinity,true,false,true,false,false,15,500000000,100000000,250,10000,"Spell Scroll - Thunder","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,356,0,0,0,0,0,0,-1,100000,0,706,"Water Element","MP","Equipment Attack",50000000,Infinity,true,false,true,false,false,15,500000000,100000000,250,10000,"Spell Scroll - Water","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,357,0,0,0,0,0,0,-1,100000,0,706,"Light Element","MP","Equipment Attack",50000000,Infinity,true,false,true,false,false,15,500000000,100000000,250,10000,"Spell Scroll - Light","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,358,0,0,0,0,0,0,-1,100000,0,706,"Dark Element","MP","Equipment Attack",50000000,Infinity,true,false,true,false,false,15,500000000,100000000,250,10000,"Spell Scroll - Dark","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,284,0,0,0,0,0,0,-1,100000,0,706,"Fire Element","Poison Chance","",500000000,Infinity,true,false,true,false,false,15,5000000000,1000000000,2500,100000,"Fire Card","Adds a special FIRE effect (rapidly deal 300% damage and knock the monster back a 10% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,285,0,0,0,0,0,0,-1,100000,0,706,"Ice Element","Stun Chance","",500000000,Infinity,true,false,true,false,false,15,5000000000,1000000000,2500,100000,"Ice Card","Adds a special ICE effect (rapidly deal 200% damage and knock the monster back a 20% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,286,0,0,0,0,0,0,-1,100000,0,706,"Wind Element","Weaken Chance","",500000000,Infinity,true,false,true,false,false,15,5000000000,1000000000,2500,100000,"Wind Card","Adds a special WIND effect (rapidly deal 200% damage and knock the monster back a 30% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,287,0,0,0,0,0,0,-1,100000,0,706,"Earth Element","Weaken Chance","",500000000,Infinity,true,false,true,false,false,15,5000000000,1000000000,2500,100000,"Earth Card","Adds a special EARTH effect (rapidly deal 300% damage and knock the monster back a 10% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,288,0,0,0,0,0,0,-1,100000,0,706,"Thunder Element","Stun Chance","",500000000,Infinity,true,false,true,false,false,15,5000000000,1000000000,2500,100000,"Thunder Card","Adds a special THUNDER effect (rapidly deal 150% damage and knock the monster back a 10% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,289,0,0,0,0,0,0,-1,100000,0,706,"Water Element","Poison Chance","",500000000,Infinity,true,false,true,false,false,15,5000000000,1000000000,2500,100000,"Water Card","Adds a special WATER effect (rapidly deal 300% damage and knock the monster back a 10% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,290,0,0,0,0,0,0,-1,100000,0,706,"Light Element","Blind Chance","",500000000,Infinity,true,false,true,false,false,15,5000000000,1000000000,2500,100000,"Light Card","Adds a special LIGHT effect (rapidly deal 150% damage and knock the monster back a 20% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,291,0,0,0,0,0,0,-1,100000,0,706,"Dark Element","Blind Chance","",500000000,Infinity,true,false,true,false,false,15,5000000000,1000000000,2500,100000,"Dark Card","Adds a special DARK effect (rapidly deal 200% damage and knock the monster back a 10% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon("Title","Secondary Weapons [+]");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,280,0,0,0,0,0,0,-1,2500000,0,706,"","Poison Chance","Equipment Attack",2000000000,Infinity,true,false,true,false,false,45,20000000000,4000000000,9999,400000,"Poison Arrows [+]","<font color=\'#FFFF00\'>Can only be equipped with a Bow or Crossbow.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,281,0,0,0,0,0,0,-1,2500000,0,706,"","Stun Chance","Equipment Attack",2000000000,Infinity,true,false,true,false,false,45,20000000000,4000000000,9999,400000,"Explosive Arrows [+]","<font color=\'#FFFF00\'>Can only be equipped with a Bow or Crossbow.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,282,0,0,0,0,0,0,-1,2500000,0,706,"","Double Hit Chance","Attack Power",2000000000,Infinity,true,false,true,false,false,45,20000000000,4000000000,9999,400000,"Mega Bullets [+]","<font color=\'#FFFF00\'>Can only be equipped with a Gun.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,283,0,0,0,0,0,0,-1,2500000,0,706,"","Mastery","Attack Power",2000000000,Infinity,true,false,true,false,false,45,20000000000,4000000000,9999,400000,"Master Shurikens [+]","<font color=\'#FFFF00\'>Can only be equipped with a Claw.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,351,0,0,0,0,0,0,-1,2500000,0,706,"Fire Element","MP","Equipment Attack",2000000000,Infinity,true,false,true,false,false,15,20000000000,4000000000,9999,400000,"Spell Scroll - Fire [+]","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,352,0,0,0,0,0,0,-1,2500000,0,706,"Ice Element","MP","Equipment Attack",2000000000,Infinity,true,false,true,false,false,15,20000000000,4000000000,9999,400000,"Spell Scroll - Ice [+]","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,353,0,0,0,0,0,0,-1,2500000,0,706,"Wind Element","MP","Equipment Attack",2000000000,Infinity,true,false,true,false,false,15,20000000000,4000000000,9999,400000,"Spell Scroll - Wind [+]","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,354,0,0,0,0,0,0,-1,2500000,0,706,"Earth Element","MP","Equipment Attack",2000000000,Infinity,true,false,true,false,false,15,20000000000,4000000000,9999,400000,"Spell Scroll - Earth [+]","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,355,0,0,0,0,0,0,-1,2500000,0,706,"Thunder Element","MP","Equipment Attack",2000000000,Infinity,true,false,true,false,false,15,20000000000,4000000000,9999,400000,"Spell Scroll - Thunder [+]","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,356,0,0,0,0,0,0,-1,2500000,0,706,"Water Element","MP","Equipment Attack",2000000000,Infinity,true,false,true,false,false,15,20000000000,4000000000,9999,400000,"Spell Scroll - Water [+]","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,357,0,0,0,0,0,0,-1,2500000,0,706,"Light Element","MP","Equipment Attack",2000000000,Infinity,true,false,true,false,false,15,20000000000,4000000000,9999,400000,"Spell Scroll - Light [+]","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,200,"Secondary Weapon",false,358,0,0,0,0,0,0,-1,2500000,0,706,"Dark Element","MP","Equipment Attack",2000000000,Infinity,true,false,true,false,false,15,20000000000,4000000000,9999,400000,"Spell Scroll - Dark [+]","<font color=\'#FFFF00\'>Can only be equipped with a Wand or Staff.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,284,0,0,0,0,0,0,-1,2500000,0,706,"Fire Element","Poison Chance","",20000000000,Infinity,true,false,true,false,false,15,200000000000,40000000000,99999,4000000,"Fire Card [+]","Adds a special FIRE effect (rapidly deal 300% damage and knock the monster back a 10% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,285,0,0,0,0,0,0,-1,2500000,0,706,"Ice Element","Stun Chance","",20000000000,Infinity,true,false,true,false,false,15,200000000000,40000000000,99999,4000000,"Ice Card [+]","Adds a special ICE effect (rapidly deal 200% damage and knock the monster back a 20% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,286,0,0,0,0,0,0,-1,2500000,0,706,"Wind Element","Weaken Chance","",20000000000,Infinity,true,false,true,false,false,15,200000000000,40000000000,99999,4000000,"Wind Card [+]","Adds a special WIND effect (rapidly deal 200% damage and knock the monster back a 30% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,287,0,0,0,0,0,0,-1,2500000,0,706,"Earth Element","Weaken Chance","",20000000000,Infinity,true,false,true,false,false,15,200000000000,40000000000,99999,4000000,"Earth Card [+]","Adds a special EARTH effect (rapidly deal 300% damage and knock the monster back a 10% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,288,0,0,0,0,0,0,-1,2500000,0,706,"Thunder Element","Stun Chance","",20000000000,Infinity,true,false,true,false,false,15,200000000000,40000000000,99999,4000000,"Thunder Card [+]","Adds a special THUNDER effect (rapidly deal 150% damage and knock the monster back a 10% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,289,0,0,0,0,0,0,-1,2500000,0,706,"Water Element","Poison Chance","",20000000000,Infinity,true,false,true,false,false,15,200000000000,40000000000,99999,4000000,"Water Card [+]","Adds a special WATER effect (rapidly deal 300% damage and knock the monster back a 10% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,290,0,0,0,0,0,0,-1,2500000,0,706,"Light Element","Blind Chance","",20000000000,Infinity,true,false,true,false,false,15,200000000000,40000000000,99999,4000000,"Light Card [+]","Adds a special LIGHT effect (rapidly deal 150% damage and knock the monster back a 20% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftWeapon(16,1,1,500,"Secondary Weapon",false,291,0,0,0,0,0,0,-1,2500000,0,706,"Dark Element","Blind Chance","",20000000000,Infinity,true,false,true,false,false,15,200000000000,40000000000,99999,4000000,"Dark Card [+]","Adds a special DARK effect (rapidly deal 200% damage and knock the monster back a 10% distance) when you use Limit Break, Combo Strike or Overkill, allowing you to deal increased damage. Effect also has a 1% chance to activate with any other attack.\n\n<font color=\'#FFFF00\'>Can be equipped with any melee weapon, except Ultimate Weapon and Reincarnation Weapon.</font>\n\nThis item cannot be enhanced.");
addArenaCraftArmor("Title","Newbie Items");
addArenaCraftArmor(1,1,1,1,"Hat",101,0,0,10,10,0,0,1,0,0,0,"","","",0,Infinity,false,false,false,false,false,0,0,0,0,0,"Newbie Hat","");
addArenaCraftArmor(1,1,1,1,"Shirt",101,0,0,10,10,0,0,1,0,0,0,"","","",0,Infinity,false,false,false,false,false,0,0,0,0,0,"Newbie Shirt","");
addArenaCraftArmor(1,1,1,1,"Gloves",101,0,0,10,10,0,0,1,0,0,0,"","","",0,Infinity,false,false,false,false,false,0,0,0,0,0,"Newbie Gloves","");
addArenaCraftArmor(1,1,1,1,"Pants",101,0,0,10,10,0,0,1,0,0,0,"","","",0,Infinity,false,false,false,false,false,0,0,0,0,0,"Newbie Pants","");
addArenaCraftArmor(1,1,1,1,"Shoes",101,0,0,10,10,0,0,1,0,0,0,"","","",0,Infinity,false,false,false,false,false,0,0,0,0,0,"Newbie Shoes","");
addArenaCraftArmor("Title","Basic");
addArenaCraftArmor("Title 2","Skin");
addArenaCraftArmor(3,1,1,50,"Skin",2,0,0,25,0,0,0,1,0,7,0,"Random","Random","Random",750000,Infinity,false,false,true,false,false,0,5000000,0,0,25,"Pink Skin","");
addArenaCraftArmor(3,1,1,50,"Skin",3,0,0,25,0,0,0,1,0,7,0,"Random","Random","Random",750000,Infinity,false,false,true,false,false,0,5000000,0,0,25,"Teal Skin","");
addArenaCraftArmor(3,1,1,50,"Skin",4,0,0,25,0,0,0,1,0,7,0,"Random","Random","Random",750000,Infinity,false,false,true,false,false,0,5000000,0,0,25,"Green Skin","");
addArenaCraftArmor(3,1,1,50,"Skin",5,0,0,25,0,0,0,1,0,7,0,"Random","Random","Random",750000,Infinity,false,false,true,false,false,0,5000000,0,0,25,"Red Skin","");
addArenaCraftArmor(3,1,1,50,"Skin",6,0,0,25,0,0,0,1,0,7,0,"Random","Random","Random",750000,Infinity,false,false,true,false,false,0,5000000,0,0,25,"Black Skin","");
addArenaCraftArmor(3,1,1,50,"Skin",7,0,0,25,0,0,0,1,0,7,0,"Random","Random","Random",750000,Infinity,false,false,true,false,false,0,5000000,0,0,25,"White Skin","");
addArenaCraftArmor(3,1,1,50,"Skin",10,0,0,25,0,0,0,1,0,7,0,"Random","Random","Random",750000,Infinity,false,false,true,false,false,0,5000000,0,0,25,"Purple Skin","");
addArenaCraftArmor(3,1,1,50,"Skin",11,0,0,25,0,0,0,1,0,7,0,"Random","Random","Random",750000,Infinity,false,false,true,false,false,0,5000000,0,0,25,"Blue Skin","");
addArenaCraftArmor("Title 2","Armor Sets");
addArenaCraftArmor(3,1,2,10,"Hat",102,2,0,20,11,0,0,1,0,0,0,"","","",50,Infinity,false,false,false,false,false,0,500,0,0,0,"Leather Hat","");
addArenaCraftArmor(3,1,2,10,"Shirt",102,2,0,30,10,0,0,1,0,0,0,"","","",50,Infinity,false,false,false,false,false,0,500,0,0,0,"Leather Shirt","");
addArenaCraftArmor(3,1,2,10,"Gloves",102,5,0,10,11,0,0,1,0,0,0,"","","",50,Infinity,false,false,false,false,false,0,500,0,0,0,"Leather Gloves","");
addArenaCraftArmor(3,1,2,10,"Pants",102,2,0,30,10,0,0,1,0,0,0,"","","",50,Infinity,false,false,false,false,false,0,500,0,0,0,"Leather Pants","");
addArenaCraftArmor(3,1,2,10,"Shoes",102,2,1,10,10,1,0,1,0,0,0,"","","",50,Infinity,false,false,false,false,false,0,500,0,0,0,"Leather Shoes","");
addArenaCraftArmor(3,1,2,20,"Hat",103,4,0,30,12,0,0,1,0,0,0,"","","",200,Infinity,false,false,false,false,false,0,2000,0,0,0,"Kongregate Hat","");
addArenaCraftArmor(3,1,2,20,"Shirt",103,4,0,45,10,0,0,1,0,0,0,"","","",200,Infinity,false,false,false,false,false,0,2000,0,0,0,"Kongregate Shirt","");
addArenaCraftArmor(3,1,2,20,"Gloves",103,10,0,15,12,0,0,1,0,0,0,"","","",200,Infinity,false,false,false,false,false,0,2000,0,0,0,"Kongregate Gloves","");
addArenaCraftArmor(3,1,2,20,"Pants",103,4,0,45,10,0,0,1,0,0,0,"","","",200,Infinity,false,false,false,false,false,0,2000,0,0,0,"Kongregate Pants","");
addArenaCraftArmor(3,1,2,20,"Shoes",103,4,1,15,10,2,0,1,0,0,0,"","","",200,Infinity,false,false,false,false,false,0,2000,0,0,0,"Kongregate Shoes","");
addArenaCraftArmor(3,1,2,30,"Hat",104,6,0,40,13,0,0,1,0,0,0,"","","",1000,Infinity,false,false,false,false,false,0,10000,0,0,0,"Lovely Hat","");
addArenaCraftArmor(3,1,2,30,"Shirt",104,6,0,60,10,0,0,1,0,0,0,"","","",1000,Infinity,false,false,false,false,false,0,10000,0,0,0,"Lovely Shirt","");
addArenaCraftArmor(3,1,2,30,"Gloves",104,15,0,20,13,0,0,1,0,0,0,"","","",1000,Infinity,false,false,false,false,false,0,10000,0,0,0,"Lovely Gloves","");
addArenaCraftArmor(3,1,2,30,"Pants",104,6,0,60,10,0,0,1,0,0,0,"","","",1000,Infinity,false,false,false,false,false,0,10000,0,0,0,"Lovely Pants","");
addArenaCraftArmor(3,1,2,30,"Shoes",104,6,1,20,10,3,0,1,0,0,0,"","","",1000,Infinity,false,false,false,false,false,0,10000,0,0,0,"Lovely Shoes","");
addArenaCraftArmor(3,1,3,40,"Hat",105,8,0,50,14,0,0,1,0,0,0,"","","",3000,Infinity,false,false,false,false,false,0,30000,0,0,0,"Red Hat","");
addArenaCraftArmor(3,1,3,40,"Shirt",105,8,0,75,10,0,0,1,0,0,0,"","","",3000,Infinity,false,false,false,false,false,0,30000,0,0,0,"Red Shirt","");
addArenaCraftArmor(3,1,3,40,"Gloves",105,20,0,25,14,0,0,1,0,0,0,"","","",3000,Infinity,false,false,false,false,false,0,30000,0,0,0,"Red Gloves","");
addArenaCraftArmor(3,1,3,40,"Pants",105,8,0,75,10,0,0,1,0,0,0,"","","",3000,Infinity,false,false,false,false,false,0,30000,0,0,0,"Red Pants","");
addArenaCraftArmor(3,1,3,40,"Shoes",105,8,1,25,10,4,0,1,0,0,0,"","","",3000,Infinity,false,false,false,false,false,0,30000,0,0,0,"Red Shoes","");
addArenaCraftArmor(3,1,3,50,"Hat",106,10,0,60,15,0,0,1,0,0,0,"","","",8000,Infinity,false,false,false,false,false,0,80000,0,0,0,"Knight Hat","");
addArenaCraftArmor(3,1,3,50,"Shirt",106,10,0,90,10,0,0,1,0,0,0,"","","",8000,Infinity,false,false,false,false,false,0,80000,0,0,0,"Knight Shirt","");
addArenaCraftArmor(3,1,3,50,"Gloves",106,25,0,30,15,0,0,1,0,0,0,"","","",8000,Infinity,false,false,false,false,false,0,80000,0,0,0,"Knight Gloves","");
addArenaCraftArmor(3,1,3,50,"Pants",106,10,0,90,10,0,0,1,0,0,0,"","","",8000,Infinity,false,false,false,false,false,0,80000,0,0,0,"Knight Pants","");
addArenaCraftArmor(3,1,3,50,"Shoes",106,10,2,30,10,5,0,1,0,0,0,"","","",8000,Infinity,false,false,false,false,false,0,80000,0,0,0,"Knight Shoes","");
addArenaCraftArmor(3,1,4,60,"Hat",107,12,0,70,16,0,0,1,0,0,0,"","","",20000,Infinity,false,false,false,false,false,0,200000,0,0,1,"Paladin Hat","");
addArenaCraftArmor(3,1,4,60,"Shirt",107,12,0,105,10,0,0,1,0,0,0,"","","",20000,Infinity,false,false,false,false,false,0,200000,0,0,1,"Paladin Shirt","");
addArenaCraftArmor(3,1,4,60,"Gloves",107,30,0,35,16,0,0,1,0,0,0,"","","",20000,Infinity,false,false,false,false,false,0,200000,0,0,1,"Paladin Gloves","");
addArenaCraftArmor(3,1,4,60,"Pants",107,12,0,105,10,0,0,1,0,0,0,"","","",20000,Infinity,false,false,false,false,false,0,200000,0,0,1,"Paladin Pants","");
addArenaCraftArmor(3,1,4,60,"Shoes",107,12,2,35,10,6,0,1,0,0,0,"","","",20000,Infinity,false,false,false,false,false,0,200000,0,0,1,"Paladin Shoes","");
addArenaCraftArmor(3,1,4,70,"Hat",108,14,0,80,17,0,0,1,0,0,0,"","","",50000,Infinity,false,false,false,false,false,0,500000,0,0,2,"Executioner Hat","");
addArenaCraftArmor(3,1,4,70,"Shirt",108,14,0,120,10,0,0,1,0,0,0,"","","",50000,Infinity,false,false,false,false,false,0,500000,0,0,2,"Executioner Shirt","");
addArenaCraftArmor(3,1,4,70,"Gloves",108,35,0,40,17,0,0,1,0,0,0,"","","",50000,Infinity,false,false,false,false,false,0,500000,0,0,2,"Executioner Gloves","");
addArenaCraftArmor(3,1,4,70,"Pants",108,14,0,120,10,0,0,1,0,0,0,"","","",50000,Infinity,false,false,false,false,false,0,500000,0,0,2,"Executioner Pants","");
addArenaCraftArmor(3,1,4,70,"Shoes",108,14,2,40,10,7,0,1,0,0,0,"","","",50000,Infinity,false,false,false,false,false,0,500000,0,0,2,"Executioner Shoes","");
addArenaCraftArmor(3,1,5,80,"Hat",109,16,0,100,18,0,0,1,0,0,0,"","","",120000,Infinity,false,false,false,false,false,0,1200000,0,0,6,"Dragonewyn Hat","");
addArenaCraftArmor(3,1,5,80,"Shirt",109,16,0,150,10,0,0,1,0,0,0,"","","",120000,Infinity,false,false,false,false,false,0,1200000,0,0,6,"Dragonewyn Shirt","");
addArenaCraftArmor(3,1,5,80,"Gloves",109,40,0,50,18,0,0,1,0,0,0,"","","",120000,Infinity,false,false,false,false,false,0,1200000,0,0,6,"Dragonewyn Gloves","");
addArenaCraftArmor(3,1,5,80,"Pants",109,16,0,150,10,0,0,1,0,0,0,"","","",120000,Infinity,false,false,false,false,false,0,1200000,0,0,6,"Dragonewyn Pants","");
addArenaCraftArmor(3,1,5,80,"Shoes",109,16,2,50,10,8,0,1,0,0,0,"","","",120000,Infinity,false,false,false,false,false,0,1200000,0,0,6,"Dragonewyn Shoes","");
addArenaCraftArmor(3,1,5,90,"Hat",127,18,0,150,19,0,0,3,600000,0,0,"","","",300000,Infinity,false,false,false,false,true,0,3000000,0,0,15,"Spirit Hat","");
addArenaCraftArmor(3,1,5,90,"Shirt",127,18,0,225,10,0,0,3,600000,0,0,"","","",300000,Infinity,false,false,false,false,true,0,3000000,0,0,15,"Spirit Shirt","");
addArenaCraftArmor(3,1,5,90,"Gloves",127,45,0,75,19,0,0,3,600000,0,0,"","","",300000,Infinity,false,false,false,false,true,0,3000000,0,0,15,"Spirit Gloves","");
addArenaCraftArmor(3,1,5,90,"Pants",127,18,0,225,10,0,0,3,600000,0,0,"","","",300000,Infinity,false,false,false,false,true,0,3000000,0,0,15,"Spirit Pants","");
addArenaCraftArmor(3,1,5,90,"Shoes",127,18,2,75,10,9,0,3,600000,0,0,"","","",300000,Infinity,false,false,false,false,true,0,3000000,0,0,15,"Spirit Shoes","");
addArenaCraftArmor(3,2,5,100,"Hat",131,20,0,200,20,0,0,9,1337000,0,0,"","","",600000,Infinity,false,false,false,false,false,0,6000000,0,0,30,"Elite Hat","");
addArenaCraftArmor(3,2,5,100,"Shirt",131,20,0,300,10,0,0,9,1337000,0,0,"","","",600000,Infinity,false,false,false,false,false,0,6000000,0,0,30,"Elite Shirt","");
addArenaCraftArmor(3,2,5,100,"Gloves",131,50,0,100,20,0,0,9,1337000,0,0,"","","",600000,Infinity,false,false,false,false,false,0,6000000,0,0,30,"Elite Gloves","");
addArenaCraftArmor(3,2,5,100,"Pants",131,20,0,300,10,0,0,9,1337000,0,0,"","","",600000,Infinity,false,false,false,false,false,0,6000000,0,0,30,"Elite Pants","");
addArenaCraftArmor(3,2,5,100,"Shoes",131,20,3,100,10,10,0,9,1337000,0,0,"","","",600000,Infinity,false,false,false,false,false,0,6000000,0,0,30,"Elite Shoes","");
addArenaCraftArmor("Title","\'lrn2craft\'");
addArenaCraftArmor(4,1,2,8,"Hat",116,3,0,20,10,0,6,1,0,0,0,"Reward","Mastery","",100,Infinity,false,false,false,false,false,0,500,100,0,0,"Training Hat","");
addArenaCraftArmor(4,1,2,8,"Shirt",116,3,0,20,11,0,0,1,0,0,0,"Reward","Mastery","",100,Infinity,false,false,false,false,false,0,500,100,0,0,"Training Shirt","");
addArenaCraftArmor(4,1,2,8,"Gloves",116,4,0,20,11,6,0,1,0,0,0,"Reward","Mastery","",100,Infinity,false,false,false,false,false,0,500,100,0,0,"Training Gloves","");
addArenaCraftArmor(4,1,2,8,"Pants",116,3,0,20,11,0,0,1,0,0,0,"Reward","Mastery","",100,Infinity,false,false,false,false,false,0,500,100,0,0,"Training Pants","");
addArenaCraftArmor(4,1,2,8,"Shoes",116,3,1,20,10,6,0,1,0,0,0,"Reward","Mastery","",100,Infinity,false,false,false,false,false,0,500,100,0,0,"Training Shoes","");
addArenaCraftArmor(4,1,2,38,"Hat",117,5,0,50,10,0,7,1,0,0,0,"Reward","Accuracy","",10000,Infinity,false,false,false,false,false,0,50000,10000,0,1,"Soldier Hat","");
addArenaCraftArmor(4,1,2,38,"Shirt",117,5,0,50,12,0,0,1,0,0,0,"Reward","Accuracy","",10000,Infinity,false,false,false,false,false,0,50000,10000,0,1,"Soldier Shirt","");
addArenaCraftArmor(4,1,2,38,"Gloves",117,7,0,50,12,7,0,1,0,0,0,"Reward","Accuracy","",10000,Infinity,false,false,false,false,false,0,50000,10000,0,1,"Soldier Gloves","");
addArenaCraftArmor(4,1,2,38,"Pants",117,5,0,50,12,0,0,1,0,0,0,"Reward","Accuracy","",10000,Infinity,false,false,false,false,false,0,50000,10000,0,1,"Soldier Pants","");
addArenaCraftArmor(4,1,2,38,"Shoes",117,5,1,50,10,7,0,1,0,0,0,"Reward","Accuracy","",10000,Infinity,false,false,false,false,false,0,50000,10000,0,1,"Soldier Shoes","");
addArenaCraftArmor(4,1,3,68,"Hat",118,7,0,80,10,0,8,1,0,0,0,"Reward","HP Regen","",60000,Infinity,false,false,false,false,false,0,300000,60000,0,6,"Stripper Nurse Hat","");
addArenaCraftArmor(4,1,3,68,"Shirt",118,7,0,80,13,0,0,1,0,0,0,"Reward","HP Regen","",60000,Infinity,false,false,false,false,false,0,300000,60000,0,6,"Stripper Nurse Shirt","");
addArenaCraftArmor(4,1,3,68,"Gloves",118,10,0,80,13,8,0,1,0,0,0,"Reward","HP Regen","",60000,Infinity,false,false,false,false,false,0,300000,60000,0,6,"Stripper Nurse Gloves","");
addArenaCraftArmor(4,1,3,68,"Pants",118,7,0,80,13,0,0,1,0,0,0,"Reward","HP Regen","",60000,Infinity,false,false,false,false,false,0,300000,60000,0,6,"Stripper Nurse Pants","");
addArenaCraftArmor(4,1,3,68,"Shoes",118,7,1,80,10,8,0,1,0,0,0,"Reward","HP Regen","",60000,Infinity,false,false,false,false,false,0,300000,60000,0,6,"Stripper Nurse Shoes","");
addArenaCraftArmor(4,2,3,88,"Hat",110,9,0,110,10,0,9,1,0,0,0,"Reward","Evasion","",150000,Infinity,false,false,false,false,false,0,750000,150000,1,15,"Enchanted Leather Hat","");
addArenaCraftArmor(4,2,3,88,"Shirt",110,9,0,110,14,0,0,1,0,0,0,"Reward","Evasion","",150000,Infinity,false,false,false,false,false,0,750000,150000,1,15,"Enchanted Leather Shirt","");
addArenaCraftArmor(4,2,3,88,"Gloves",110,13,0,110,14,9,0,1,0,0,0,"Reward","Evasion","",150000,Infinity,false,false,false,false,false,0,750000,150000,1,15,"Enchanted Leather Gloves","");
addArenaCraftArmor(4,2,3,88,"Pants",110,9,0,110,14,0,0,1,0,0,0,"Reward","Evasion","",150000,Infinity,false,false,false,false,false,0,750000,150000,1,15,"Enchanted Leather Pants","");
addArenaCraftArmor(4,2,3,88,"Shoes",110,9,2,110,10,9,0,1,0,0,0,"Reward","Evasion","",150000,Infinity,false,false,false,false,false,0,750000,150000,1,15,"Enchanted Leather Shoes","");
addArenaCraftArmor(4,2,4,108,"Hat",111,11,0,140,10,0,10,1,0,0,0,"Reward","Blind Chance","",300000,Infinity,false,false,false,false,false,0,1500000,300000,2,30,"Golden Hat","");
addArenaCraftArmor(4,2,4,108,"Shirt",111,11,0,140,15,0,0,1,0,0,0,"Reward","Blind Chance","",300000,Infinity,false,false,false,false,false,0,1500000,300000,2,30,"Golden Shirt","");
addArenaCraftArmor(4,2,4,108,"Gloves",111,16,0,140,15,10,0,1,0,0,0,"Reward","Blind Chance","",300000,Infinity,false,false,false,false,false,0,1500000,300000,2,30,"Golden Gloves","");
addArenaCraftArmor(4,2,4,108,"Pants",111,11,0,140,15,0,0,1,0,0,0,"Reward","Blind Chance","",300000,Infinity,false,false,false,false,false,0,1500000,300000,2,30,"Golden Pants","");
addArenaCraftArmor(4,2,4,108,"Shoes",111,11,2,140,10,10,0,1,0,0,0,"Reward","Blind Chance","",300000,Infinity,false,false,false,false,false,0,1500000,300000,2,30,"Golden Shoes","");
addArenaCraftArmor(4,3,4,128,"Hat",112,13,0,170,10,0,11,1,0,0,0,"Reward","MP Regen","",600000,Infinity,false,false,false,false,false,0,3000000,600000,5,60,"Regeneration Hat","");
addArenaCraftArmor(4,3,4,128,"Shirt",112,13,0,170,16,0,0,1,0,0,0,"Reward","MP Regen","",600000,Infinity,false,false,false,false,false,0,3000000,600000,5,60,"Regeneration Shirt","");
addArenaCraftArmor(4,3,4,128,"Gloves",112,19,0,170,16,11,0,1,0,0,0,"Reward","MP Regen","",600000,Infinity,false,false,false,false,false,0,3000000,600000,5,60,"Regeneration Gloves","");
addArenaCraftArmor(4,3,4,128,"Pants",112,13,0,170,16,0,0,1,0,0,0,"Reward","MP Regen","",600000,Infinity,false,false,false,false,false,0,3000000,600000,5,60,"Regeneration Pants","");
addArenaCraftArmor(4,3,4,128,"Shoes",112,13,2,170,10,11,0,1,0,0,0,"Reward","MP Regen","",600000,Infinity,false,false,false,false,false,0,3000000,600000,5,60,"Regeneration Shoes","");
addArenaCraftArmor(4,3,5,148,"Hat",113,15,0,200,10,0,12,1,0,0,0,"Reward","Critical Chance","",4000000,Infinity,false,false,false,false,false,0,20000000,4000000,40,400,"Berserker Hat","");
addArenaCraftArmor(4,3,5,148,"Shirt",113,15,0,200,17,0,0,1,0,0,0,"Reward","Critical Chance","",4000000,Infinity,false,false,false,false,false,0,20000000,4000000,40,400,"Berserker Shirt","");
addArenaCraftArmor(4,3,5,148,"Gloves",113,22,0,200,17,12,0,1,0,0,0,"Reward","Critical Chance","",4000000,Infinity,false,false,false,false,false,0,20000000,4000000,40,400,"Berserker Gloves","");
addArenaCraftArmor(4,3,5,148,"Pants",113,15,0,200,17,0,0,1,0,0,0,"Reward","Critical Chance","",4000000,Infinity,false,false,false,false,false,0,20000000,4000000,40,400,"Berserker Pants","");
addArenaCraftArmor(4,3,5,148,"Shoes",113,15,2,200,10,12,0,1,0,0,0,"Reward","Critical Chance","",4000000,Infinity,false,false,false,false,false,0,20000000,4000000,40,400,"Berserker Shoes","");
addArenaCraftArmor(4,4,5,168,"Hat",114,17,0,250,10,0,15,5,1000000,0,0,"Reward","Defense","",8000000,Infinity,false,false,false,false,false,0,40000000,8000000,80,800,"Defensive Hat","");
addArenaCraftArmor(4,4,5,168,"Shirt",114,17,0,250,20,0,0,5,1000000,0,0,"Reward","Defense","",8000000,Infinity,false,false,false,false,false,0,40000000,8000000,80,800,"Defensive Shirt","");
addArenaCraftArmor(4,4,5,168,"Gloves",114,25,0,250,20,13,0,5,1000000,0,0,"Reward","Defense","",8000000,Infinity,false,false,false,false,false,0,40000000,8000000,80,800,"Defensive Gloves","");
addArenaCraftArmor(4,4,5,168,"Pants",114,17,0,250,20,0,0,5,1000000,0,0,"Reward","Defense","",8000000,Infinity,false,false,false,false,false,0,40000000,8000000,80,800,"Defensive Pants","");
addArenaCraftArmor(4,4,5,168,"Shoes",114,17,2,250,10,15,0,5,1000000,0,0,"Reward","Defense","",8000000,Infinity,false,false,false,false,false,0,40000000,8000000,80,800,"Defensive Shoes","");
addArenaCraftArmor(4,4,5,188,"Hat",119,19,0,300,10,0,20,10,3000000,0,0,"Dark Element","Autosteal","",14000000,Infinity,false,false,false,false,false,0,70000000,14000000,140,1400,"Pure Darkness Hat","");
addArenaCraftArmor(4,4,5,188,"Shirt",119,19,0,300,25,0,0,10,3000000,0,0,"Dark Element","Autosteal","",14000000,Infinity,false,false,false,false,false,0,70000000,14000000,140,1400,"Pure Darkness Shirt","");
addArenaCraftArmor(4,4,5,188,"Gloves",119,28,0,300,25,14,0,10,3000000,0,0,"Dark Element","Autosteal","",14000000,Infinity,false,false,false,false,false,0,70000000,14000000,140,1400,"Pure Darkness Gloves","");
addArenaCraftArmor(4,4,5,188,"Pants",119,19,0,300,25,0,0,10,3000000,0,0,"Dark Element","Autosteal","",14000000,Infinity,false,false,false,false,false,0,70000000,14000000,140,1400,"Pure Darkness Pants","");
addArenaCraftArmor(4,4,5,188,"Shoes",119,19,3,300,10,20,0,10,3000000,0,0,"Dark Element","Autosteal","",14000000,Infinity,false,false,false,false,false,0,70000000,14000000,140,1400,"Pure Darkness Shoes","");
addArenaCraftArmor(4,5,5,208,"Hat",132,21,1,400,10,0,30,21,10000000,0,0,"Rare Monster Rate","Poison Damage","Equipment Attack",30000000,Infinity,false,false,false,false,false,0,150000000,30000000,300,3000,"Crimson Hat","");
addArenaCraftArmor(4,5,5,208,"Shirt",132,21,1,400,35,0,0,21,10000000,0,0,"Rare Monster Rate","Poison Damage","Equipment Attack",30000000,Infinity,false,false,false,false,false,0,150000000,30000000,300,3000,"Crimson Shirt","");
addArenaCraftArmor(4,5,5,208,"Gloves",132,31,1,400,35,15,0,21,10000000,0,0,"Rare Monster Rate","Poison Damage","Equipment Attack",30000000,Infinity,false,false,false,false,false,0,150000000,30000000,300,3000,"Crimson Gloves","");
addArenaCraftArmor(4,5,5,208,"Pants",132,21,1,400,35,0,0,21,10000000,0,0,"Rare Monster Rate","Poison Damage","Equipment Attack",30000000,Infinity,false,false,false,false,false,0,150000000,30000000,300,3000,"Crimson Pants","");
addArenaCraftArmor(4,5,5,208,"Shoes",132,21,4,400,10,30,0,21,10000000,0,0,"Rare Monster Rate","Poison Damage","Equipment Attack",30000000,Infinity,false,false,false,false,false,0,150000000,30000000,300,3000,"Crimson Shoes","");
addArenaCraftArmor(4,5,5,218,"Hat",150,23,2,550,10,0,50,42,30000000,0,0,"Rare Monster Rate","Weaken Effect","Attack Power",50000000,Infinity,false,false,false,false,false,0,250000000,50000000,500,5000,"Knightmare Hat","");
addArenaCraftArmor(4,5,5,218,"Shirt",150,23,2,550,50,0,0,42,30000000,0,0,"Rare Monster Rate","Weaken Effect","Attack Power",50000000,Infinity,false,false,false,false,false,0,250000000,50000000,500,5000,"Knightmare Shirt","");
addArenaCraftArmor(4,5,5,218,"Gloves",150,34,2,550,50,16,0,42,30000000,0,0,"Rare Monster Rate","Weaken Effect","Attack Power",50000000,Infinity,false,false,false,false,false,0,250000000,50000000,500,5000,"Knightmare Gloves","");
addArenaCraftArmor(4,5,5,218,"Pants",150,23,2,550,50,0,0,42,30000000,0,0,"Rare Monster Rate","Weaken Effect","Attack Power",50000000,Infinity,false,false,false,false,false,0,250000000,50000000,500,5000,"Knightmare Pants","");
addArenaCraftArmor(4,5,5,218,"Shoes",150,23,5,550,10,50,0,42,30000000,0,0,"Rare Monster Rate","Weaken Effect","Attack Power",50000000,Infinity,false,false,false,false,false,0,250000000,50000000,500,5000,"Knightmare Shoes","");
addArenaCraftArmor(4,5,1,238,"Hat",164,25,3,750,10,0,70,84,60000000,-2,0,"Epic Monster Rate","Blind Effect","MaxHP",100000000,Infinity,false,false,true,false,false,0,500000000,100000000,1000,10000,"Humblebee Hat","");
addArenaCraftArmor(4,5,1,238,"Shirt",164,25,3,750,70,0,0,84,60000000,-2,0,"Epic Monster Rate","Blind Effect","MaxHP",100000000,Infinity,false,false,true,false,false,0,500000000,100000000,1000,10000,"Humblebee Shirt","");
addArenaCraftArmor(4,5,1,238,"Gloves",164,37,3,750,70,17,0,84,60000000,-2,0,"Epic Monster Rate","Blind Effect","MaxHP",100000000,Infinity,false,false,true,false,false,0,500000000,100000000,1000,10000,"Humblebee Gloves","");
addArenaCraftArmor(4,5,1,238,"Pants",164,25,3,750,70,0,0,84,60000000,-2,0,"Epic Monster Rate","Blind Effect","MaxHP",100000000,Infinity,false,false,true,false,false,0,500000000,100000000,1000,10000,"Humblebee Pants","");
addArenaCraftArmor(4,5,1,238,"Shoes",164,25,6,750,10,70,0,84,60000000,-2,0,"Epic Monster Rate","Blind Effect","MaxHP",100000000,Infinity,false,false,true,false,false,0,500000000,100000000,1000,10000,"Humblebee Shoes","");
addArenaCraftArmor(4,5,1,248,"Hat",165,157,7,1500,70,60,160,1,0,10,0,"Epic Monster Rate","Max Spirit","MaxHP",200000000,Infinity,false,false,true,false,true,0,2000000000,400000000,5000,20000,"Ghost Hat","");
addArenaCraftArmor(4,5,1,248,"Shirt",165,157,7,1500,160,60,60,1,0,10,0,"Epic Monster Rate","Max Spirit","MaxHP",200000000,Infinity,false,false,true,false,true,0,2000000000,400000000,5000,20000,"Ghost Shirt","");
addArenaCraftArmor(4,5,1,248,"Gloves",165,170,7,1500,160,78,60,1,0,10,0,"Epic Monster Rate","Max Spirit","MaxHP",200000000,Infinity,false,false,true,false,true,0,2000000000,400000000,5000,20000,"Ghost Gloves","");
addArenaCraftArmor(4,5,1,248,"Pants",165,157,7,1500,160,60,60,1,0,10,0,"Epic Monster Rate","Max Spirit","MaxHP",200000000,Infinity,false,false,true,false,true,0,2000000000,400000000,5000,20000,"Ghost Pants","");
addArenaCraftArmor(4,5,1,248,"Shoes",165,157,10,1500,70,160,60,1,0,10,0,"Epic Monster Rate","Max Spirit","MaxHP",200000000,Infinity,false,false,true,false,true,0,2000000000,400000000,5000,20000,"Ghost Shoes","");
addArenaCraftArmor("Title","Secret");
addArenaCraftArmor(5,4,2,70,"Hat",136,0,0,0,0,0,100,1,0,-4,100,"","","Random",0,Infinity,false,false,true,false,false,10,0,0,500,500,"Elm Hat","");
addArenaCraftArmor(5,4,2,70,"Shirt",136,0,0,0,0,100,0,1,0,-4,100,"","","Random",0,Infinity,false,false,true,false,false,10,0,0,500,500,"Elm Shirt","");
addArenaCraftArmor(5,4,2,70,"Gloves",136,0,0,0,100,0,0,1,0,-4,100,"","","Random",0,Infinity,false,false,true,false,false,10,0,0,500,500,"Elm Gloves","");
addArenaCraftArmor(5,4,2,70,"Pants",136,0,0,0,0,100,0,1,0,-4,100,"","","Random",0,Infinity,false,false,true,false,false,10,0,0,500,500,"Elm Pants","");
addArenaCraftArmor(5,4,2,70,"Shoes",136,0,10,0,0,50,0,1,0,-4,100,"","","Random",0,Infinity,false,false,true,false,false,10,0,0,500,500,"Elm Shoes","");
addArenaCraftArmor(5,5,5,500,"Hat",126,0,0,0,0,0,0,1,0,5,100,"","","",0,Infinity,false,false,false,false,false,0,0,0,5000,5000,"Emperor\'s Hat","");
addArenaCraftArmor(5,5,5,500,"Shirt",126,0,0,0,0,0,0,1,0,5,100,"","","",0,Infinity,false,false,false,false,false,0,0,0,5000,5000,"Emperor\'s Shirt","");
addArenaCraftArmor(5,5,5,500,"Gloves",126,0,0,0,0,0,0,1,0,5,100,"","","",0,Infinity,false,false,false,false,false,0,0,0,5000,5000,"Emperor\'s Gloves","");
addArenaCraftArmor(5,5,5,500,"Pants",126,0,0,0,0,0,0,1,0,5,100,"","","",0,Infinity,false,false,false,false,false,0,0,0,5000,5000,"Emperor\'s Pants","");
addArenaCraftArmor(5,5,5,500,"Shoes",126,0,0,0,0,0,0,1,0,5,100,"","","",0,Infinity,false,false,false,false,false,0,0,0,5000,5000,"Emperor\'s Shoes","");
addArenaCraftArmor("Title","Mission Kommander");
addArenaCraftArmor(7,5,1,400,"Gloves",130,225,15,7500,75,75,75,75,75000000,0,0,"Random","Random","Random",75000000,Infinity,true,false,true,false,false,35,75000000000,0,7500,750000,"MEGA WINGS","");
addArenaCraftArmor("Title","Chuck Norris");
addArenaCraftArmor(10,2,5,222,"Hat",120,150,1,75,30,0,60,22,22000000,0,100,"Random","Random","",60000000,60,false,true,false,false,false,0,600000000,60000000,600,6000,"Chuck Norris Hat","");
addArenaCraftArmor(10,2,5,222,"Shirt",120,150,1,50,45,30,30,22,22000000,0,100,"Random","Random","",60000000,60,false,true,false,false,false,0,600000000,60000000,600,6000,"Chuck Norris Shirt","");
addArenaCraftArmor(10,2,5,222,"Gloves",120,200,1,30,75,0,30,22,22000000,0,100,"Random","Random","",60000000,60,false,true,false,false,false,0,600000000,60000000,600,6000,"Chuck Norris Gloves","");
addArenaCraftArmor(10,2,5,222,"Pants",120,150,1,50,45,30,30,22,22000000,0,100,"Random","Random","",60000000,60,false,true,false,false,false,0,600000000,60000000,600,6000,"Chuck Norris Pants","");
addArenaCraftArmor(10,2,5,222,"Shoes",120,150,4,30,30,75,30,22,22000000,0,100,"Random","Random","",60000000,60,false,true,false,false,false,0,600000000,60000000,600,6000,"Chuck Norris Shoes","");
addArenaCraftArmor("Title","Alien");
addArenaCraftArmor("Title 2","Set #1");
addArenaCraftArmor(12,2,5,70,"Hat",121,20,1,200,10,5,0,10,5000000,0,100,"Random","Attack","",5000000,14,false,true,false,false,false,0,50000000,5000000,5,250,"Alien Hat #1","");
addArenaCraftArmor(12,2,5,70,"Shirt",121,20,1,200,10,5,0,10,5000000,0,100,"Random","Attack","",5000000,14,false,true,false,false,false,0,50000000,5000000,5,250,"Alien Shirt #1","");
addArenaCraftArmor(12,2,5,70,"Gloves",121,70,1,150,10,5,0,10,5000000,0,100,"Random","Attack","",5000000,14,false,true,false,false,false,0,50000000,5000000,5,250,"Alien Gloves #1","");
addArenaCraftArmor(12,2,5,70,"Pants",121,20,1,200,10,5,0,10,5000000,0,100,"Random","Attack","",5000000,14,false,true,false,false,false,0,50000000,5000000,5,250,"Alien Pants #1","");
addArenaCraftArmor(12,2,5,70,"Shoes",121,20,4,150,10,5,0,10,5000000,0,100,"Random","Attack","",5000000,14,false,true,false,false,false,0,50000000,5000000,5,250,"Alien Shoes #1","");
addArenaCraftArmor("Title 2","Set #2");
addArenaCraftArmor(12,3,5,110,"Hat",122,30,1,250,10,10,0,10,10000000,0,100,"Random","Attack","",15000000,14,false,true,false,false,false,0,150000000,15000000,10,750,"Alien Hat #2","");
addArenaCraftArmor(12,3,5,110,"Shirt",122,30,1,250,10,10,0,10,10000000,0,100,"Random","Attack","",15000000,14,false,true,false,false,false,0,150000000,15000000,10,750,"Alien Shirt #2","");
addArenaCraftArmor(12,3,5,110,"Gloves",122,80,1,200,10,10,0,10,10000000,0,100,"Random","Attack","",15000000,14,false,true,false,false,false,0,150000000,15000000,10,750,"Alien Gloves #2","");
addArenaCraftArmor(12,3,5,110,"Pants",122,30,1,250,10,10,0,10,10000000,0,100,"Random","Attack","",15000000,14,false,true,false,false,false,0,150000000,15000000,10,750,"Alien Pants #2","");
addArenaCraftArmor(12,3,5,110,"Shoes",122,30,4,200,10,10,0,10,10000000,0,100,"Random","Attack","",15000000,14,false,true,false,false,false,0,150000000,15000000,10,750,"Alien Shoes #2","");
addArenaCraftArmor("Title 2","Set #3");
addArenaCraftArmor(12,4,5,150,"Hat",123,40,1,300,10,15,0,10,15000000,0,100,"Random","Attack","",35000000,14,false,true,false,false,false,0,350000000,35000000,20,1750,"Alien Hat #3","");
addArenaCraftArmor(12,4,5,150,"Shirt",123,40,1,300,10,15,0,10,15000000,0,100,"Random","Attack","",35000000,14,false,true,false,false,false,0,350000000,35000000,20,1750,"Alien Shirt #3","");
addArenaCraftArmor(12,4,5,150,"Gloves",123,90,1,250,10,15,0,10,15000000,0,100,"Random","Attack","",35000000,14,false,true,false,false,false,0,350000000,35000000,20,1750,"Alien Gloves #3","");
addArenaCraftArmor(12,4,5,150,"Pants",123,40,1,300,10,15,0,10,15000000,0,100,"Random","Attack","",35000000,14,false,true,false,false,false,0,350000000,35000000,20,1750,"Alien Pants #3","");
addArenaCraftArmor(12,4,5,150,"Shoes",123,40,4,250,10,15,0,10,15000000,0,100,"Random","Attack","",35000000,14,false,true,false,false,false,0,350000000,35000000,20,1750,"Alien Shoes #3","");
addArenaCraftArmor("Title 2","Set #4");
addArenaCraftArmor(12,5,5,190,"Hat",124,50,1,350,10,20,0,10,20000000,0,100,"Random","Attack","",75000000,14,false,true,false,false,false,0,750000000,75000000,40,3500,"Alien Hat #4","");
addArenaCraftArmor(12,5,5,190,"Shirt",124,50,1,350,10,20,0,10,20000000,0,100,"Random","Attack","",75000000,14,false,true,false,false,false,0,750000000,75000000,40,3500,"Alien Shirt #4","");
addArenaCraftArmor(12,5,5,190,"Gloves",124,100,1,300,10,20,0,10,20000000,0,100,"Random","Attack","",75000000,14,false,true,false,false,false,0,750000000,75000000,40,3500,"Alien Gloves #4","");
addArenaCraftArmor(12,5,5,190,"Pants",124,50,1,350,10,20,0,10,20000000,0,100,"Random","Attack","",75000000,14,false,true,false,false,false,0,750000000,75000000,40,3500,"Alien Pants #4","");
addArenaCraftArmor(12,5,5,190,"Shoes",124,50,4,300,10,20,0,10,20000000,0,100,"Random","Attack","",75000000,14,false,true,false,false,false,0,750000000,75000000,40,3500,"Alien Shoes #4","");
addArenaCraftArmor("Title","Elite Alien");
addArenaCraftArmor("Title 2","Set #1");
addArenaCraftArmor(14,2,5,90,"Hat",121,40,2,300,15,5,5,20,10000000,0,100,"Random","Boss Damage","",10000000,30,false,true,false,false,false,0,100000000,10000000,25,500,"Elite Alien Hat #1","");
addArenaCraftArmor(14,2,5,90,"Shirt",121,40,2,300,15,5,5,20,10000000,0,100,"Random","Magic Resist","",10000000,30,false,true,false,false,false,0,100000000,10000000,25,500,"Elite Alien Shirt #1","");
addArenaCraftArmor(14,2,5,90,"Gloves",121,90,2,250,15,5,5,20,10000000,0,100,"Random","Rage Attack","",10000000,30,false,true,false,false,false,0,100000000,10000000,25,500,"Elite Alien Gloves #1","");
addArenaCraftArmor(14,2,5,90,"Pants",121,40,2,300,15,5,5,20,10000000,0,100,"Random","Potion Efficiency","",10000000,30,false,true,false,false,false,0,100000000,10000000,25,500,"Elite Alien Pants #1","");
addArenaCraftArmor(14,2,5,90,"Shoes",121,40,5,250,15,5,5,20,10000000,0,100,"Random","Negate Effect","",10000000,30,false,true,false,false,false,0,100000000,10000000,25,500,"Elite Alien Shoes #1","");
addArenaCraftArmor("Title 2","Set #2");
addArenaCraftArmor(14,2,5,130,"Hat",122,50,2,350,15,10,10,20,20000000,0,100,"Random","Boss Damage","",30000000,30,false,true,false,false,false,0,300000000,30000000,50,1500,"Elite Alien Hat #2","");
addArenaCraftArmor(14,2,5,130,"Shirt",122,50,2,350,15,10,10,20,20000000,0,100,"Random","Magic Resist","",30000000,30,false,true,false,false,false,0,300000000,30000000,50,1500,"Elite Alien Shirt #2","");
addArenaCraftArmor(14,2,5,130,"Gloves",122,100,2,300,15,10,10,20,20000000,0,100,"Random","Rage Attack","",30000000,30,false,true,false,false,false,0,300000000,30000000,50,1500,"Elite Alien Gloves #2","");
addArenaCraftArmor(14,2,5,130,"Pants",122,50,2,350,15,10,10,20,20000000,0,100,"Random","Potion Efficiency","",30000000,30,false,true,false,false,false,0,300000000,30000000,50,1500,"Elite Alien Pants #2","");
addArenaCraftArmor(14,2,5,130,"Shoes",122,50,5,300,15,10,10,20,20000000,0,100,"Random","Negate Effect","",30000000,30,false,true,false,false,false,0,300000000,30000000,50,1500,"Elite Alien Shoes #2","");
addArenaCraftArmor("Title 2","Set #3");
addArenaCraftArmor(14,2,5,170,"Hat",123,60,2,400,15,15,15,20,30000000,0,100,"Random","Boss Damage","",70000000,30,false,true,false,false,false,0,700000000,70000000,100,3500,"Elite Alien Hat #3","");
addArenaCraftArmor(14,2,5,170,"Shirt",123,60,2,400,15,15,15,20,30000000,0,100,"Random","Magic Resist","",70000000,30,false,true,false,false,false,0,700000000,70000000,100,3500,"Elite Alien Shirt #3","");
addArenaCraftArmor(14,2,5,170,"Gloves",123,110,2,350,15,15,15,20,30000000,0,100,"Random","Rage Attack","",70000000,30,false,true,false,false,false,0,700000000,70000000,100,3500,"Elite Alien Gloves #3","");
addArenaCraftArmor(14,2,5,170,"Pants",123,60,2,400,15,15,15,20,30000000,0,100,"Random","Potion Efficiency","",70000000,30,false,true,false,false,false,0,700000000,70000000,100,3500,"Elite Alien Pants #3","");
addArenaCraftArmor(14,2,5,170,"Shoes",123,60,5,350,15,15,15,20,30000000,0,100,"Random","Negate Effect","",70000000,30,false,true,false,false,false,0,700000000,70000000,100,3500,"Elite Alien Shoes #3","");
addArenaCraftArmor("Title 2","Set #4");
addArenaCraftArmor(14,2,5,210,"Hat",124,70,2,450,15,20,20,20,40000000,0,100,"Random","Boss Damage","",150000000,30,false,true,false,false,false,0,1500000000,150000000,200,7500,"Elite Alien Hat #4","");
addArenaCraftArmor(14,2,5,210,"Shirt",124,70,2,450,15,20,20,20,40000000,0,100,"Random","Magic Resist","",150000000,30,false,true,false,false,false,0,1500000000,150000000,200,7500,"Elite Alien Shirt #4","");
addArenaCraftArmor(14,2,5,210,"Gloves",124,120,2,400,15,20,20,20,40000000,0,100,"Random","Rage Attack","",150000000,30,false,true,false,false,false,0,1500000000,150000000,200,7500,"Elite Alien Gloves #4","");
addArenaCraftArmor(14,2,5,210,"Pants",124,70,2,450,15,20,20,20,40000000,0,100,"Random","Potion Efficiency","",150000000,30,false,true,false,false,false,0,1500000000,150000000,200,7500,"Elite Alien Pants #4","");
addArenaCraftArmor(14,2,5,210,"Shoes",124,70,5,400,15,20,20,20,40000000,0,100,"Random","Negate Effect","",150000000,30,false,true,false,false,false,0,1500000000,150000000,200,7500,"Elite Alien Shoes #4","");
addArenaCraftArmor("Title","Chaotic Items");
addArenaCraftArmor(15,1,2,500,"Hat",138,0,0,0,0,0,50,6,70000000,6,0,"Epic Monster Rate","Poison Damage","Equipment Defense",4000000000,Infinity,false,false,true,true,false,20,40000000000,4000000000,4000,400000,"Meteoric Hat","");
addArenaCraftArmor(15,1,2,500,"Shirt",138,0,0,50,0,0,0,6,70000000,6,0,"Epic Monster Rate","Poison Damage","Equipment Defense",4000000000,Infinity,false,false,true,true,false,20,40000000000,4000000000,4000,400000,"Meteoric Shirt","");
addArenaCraftArmor(15,1,2,500,"Gloves",138,0,2,0,10,0,0,6,70000000,6,0,"Epic Monster Rate","Poison Damage","Equipment Defense",4000000000,Infinity,false,false,true,true,false,20,40000000000,4000000000,4000,400000,"Meteoric Gloves","");
addArenaCraftArmor(15,1,2,500,"Pants",138,0,0,50,0,0,0,6,70000000,6,0,"Epic Monster Rate","Poison Damage","Equipment Defense",4000000000,Infinity,false,false,true,true,false,20,40000000000,4000000000,4000,400000,"Meteoric Pants","");
addArenaCraftArmor(15,1,2,500,"Shoes",138,0,2,0,0,10,0,6,70000000,6,0,"Epic Monster Rate","Poison Damage","Equipment Defense",4000000000,Infinity,false,false,true,true,false,20,40000000000,4000000000,4000,400000,"Meteoric Shoes","");
addArenaCraftArmor("Title","Robotic");
addArenaCraftArmor(18,3,3,275,"Hat",168,0,0,6300,0,0,0,1,0,0,100,"Spawn Rate","Damage Taken","Defense Power",0,Infinity,false,false,true,false,false,0,0,1000000000,5000,10000,"Companion Cube Hat","");
addArenaCraftArmor(18,3,3,275,"Shirt",168,0,0,7650,0,0,0,1,0,0,100,"Spawn Rate","Damage Taken","Defense Power",0,Infinity,false,false,true,false,false,0,0,1000000000,5000,10000,"Companion Cube Shirt","");
addArenaCraftArmor(18,3,3,275,"Gloves",168,0,0,4950,0,0,0,1,0,0,100,"Spawn Rate","Damage Taken","Defense Power",0,Infinity,false,false,true,false,false,0,0,1000000000,5000,10000,"Companion Cube Gloves","");
addArenaCraftArmor(18,3,3,275,"Pants",168,0,0,7650,0,0,0,1,0,0,100,"Spawn Rate","Damage Taken","Defense Power",0,Infinity,false,false,true,false,false,0,0,1000000000,5000,10000,"Companion Cube Pants","");
addArenaCraftArmor(18,3,3,275,"Shoes",168,0,0,4950,0,0,0,1,0,0,100,"Spawn Rate","Damage Taken","Defense Power",0,Infinity,false,false,true,false,false,0,0,1000000000,5000,10000,"Companion Cube Shoes","");
addArenaCraftArmor("Title","Tukkonium");
addArenaCraftArmor(21,1,1,463,"Hat",190,1333,5,25000,833,500,500,1,7700000000,9,100000,"Spawn Rate","Defense","Defense Power",0,Infinity,false,false,true,false,false,18,0,0,7,1250000,"Tukkonium Hat","");
addArenaCraftArmor(21,1,1,463,"Shirt",190,1333,5,25000,833,500,500,1,7700000000,9,100000,"Spawn Rate","Defense","Defense Power",0,Infinity,false,false,true,false,false,18,0,0,7,1250000,"Tukkonium Shirt","");
addArenaCraftArmor(21,1,1,463,"Gloves",190,1333,5,25000,833,500,500,1,7700000000,9,100000,"Spawn Rate","Defense","Defense Power",0,Infinity,false,false,true,false,false,18,0,0,7,1250000,"Tukkonium Gloves","");
addArenaCraftArmor(21,1,1,463,"Pants",190,1333,5,25000,833,500,500,1,7700000000,9,100000,"Spawn Rate","Defense","Defense Power",0,Infinity,false,false,true,false,false,18,0,0,7,1250000,"Tukkonium Pants","");
addArenaCraftArmor(21,1,1,463,"Shoes",190,1333,5,25000,833,500,500,1,7700000000,9,100000,"Spawn Rate","Defense","Defense Power",0,Infinity,false,false,true,false,false,18,0,0,7,1250000,"Tukkonium Shoes","");
addArenaCraftArmor(21,1,1,50,"Skin",41,0,0,2500,0,0,0,1,7700000000,9,100000,"Spawn Rate","Defense","Defense Power",0,Infinity,false,false,true,false,false,60,0,0,35,6250000,"Tukkonium Skin","");
addArenaCraftArmor("Title","?????????????");
addArenaCraftArmor(19,1,1,50,"Hat",141,200,5,2500,0,0,250,1,0,10,4200,"Random","Random","Random",0,Infinity,false,false,true,true,false,20,0,0,0,0,"Reincarnation Hat","");
addArenaCraftArmor(19,1,1,50,"Shirt",141,200,5,2500,0,125,0,1,0,10,4200,"Random","Random","Random",0,Infinity,false,false,true,true,false,20,0,0,0,0,"Reincarnation Shirt","");
addArenaCraftArmor(19,1,1,50,"Gloves",147,200,5,2500,250,0,0,1,0,10,4200,"Random","Random","Random",0,Infinity,false,false,true,true,false,20,0,0,0,0,"Reincarnation Gloves","");
addArenaCraftArmor(19,1,1,50,"Pants",141,200,5,2500,0,125,0,1,0,10,4200,"Random","Random","Random",0,Infinity,false,false,true,true,false,20,0,0,0,0,"Reincarnation Pants","");
addArenaCraftArmor(19,1,1,50,"Shoes",141,200,20,2500,0,0,0,1,0,10,4200,"Random","Random","Random",0,Infinity,false,false,true,true,false,20,0,0,0,0,"Reincarnation Shoes","");
addArenaCraftAccessory("Title","\'lrn2craft\'");
addArenaCraftAccessory("Title 2","Pendant");
addArenaCraftAccessory(4,1,1,30,"Pendant",20,0,0,0,0,0,0,1,0,10,706,"","","",25000,Infinity,true,false,false,false,0,0,400000000,0,10000,"Collector\'s Pendant","Equip this pendant, and you will be able to find special equipment items from monsters!");
addArenaCraftAccessory(4,1,1,120,"Pendant",1,40,2,0,5,5,5,26,360000,10,1,"Random","Random","",100000,Infinity,false,false,false,false,0,0,200000,100,100,"Bronze Pendant","A pendant crafted with skill. Unlike looted pendants, this one has improved stats, lasts permanently and levels up three times as fast.");
addArenaCraftAccessory(4,2,1,180,"Pendant",2,90,3,0,15,15,15,34,1960000,10,1,"Random","Random","",250000,Infinity,false,false,false,false,0,0,1000000,500,500,"Silver Pendant","A pendant crafted with skill. Unlike looted pendants, this one has improved stats, lasts permanently and levels up three times as fast.");
addArenaCraftAccessory(4,3,1,250,"Pendant",3,140,4,0,25,25,25,42,5760000,10,1,"Random","Random","",500000,Infinity,false,false,false,false,0,0,5000000,2500,2500,"Gold Pendant","A pendant crafted with skill. Unlike looted pendants, this one has improved stats, lasts permanently and levels up three times as fast.");
addArenaCraftAccessory(4,4,1,350,"Pendant",4,190,5,0,35,35,35,50,12960000,10,1,"Random","Random","",1000000,Infinity,false,false,false,false,0,0,25000000,10000,10000,"Platinum Pendant","A pendant crafted with skill. Unlike looted pendants, this one has improved stats, lasts permanently and levels up three times as fast.");
addArenaCraftAccessory(4,2,5,500,"Pendant",9,0,2,0,0,0,0,1,0,10,456,"Fire Element","Poison Chance","",5000000,Infinity,true,false,false,false,0,0,200000000,1000,10000,"Pendant of Fire","");
addArenaCraftAccessory(4,2,5,500,"Pendant",10,0,2,0,0,0,0,1,0,10,456,"Ice Element","Stun Chance","",5000000,Infinity,true,false,false,false,0,0,200000000,1000,10000,"Pendant of Ice","");
addArenaCraftAccessory(4,2,5,500,"Pendant",11,0,2,0,0,0,0,1,0,10,456,"Wind Element","Weaken Chance","",5000000,Infinity,true,false,false,false,0,0,200000000,1000,10000,"Pendant of Wind","");
addArenaCraftAccessory(4,2,5,500,"Pendant",12,0,2,0,0,0,0,1,0,10,456,"Earth Element","Weaken Effect","",5000000,Infinity,true,false,false,false,0,0,200000000,1000,10000,"Pendant of Earth","");
addArenaCraftAccessory(4,2,5,500,"Pendant",13,0,2,0,0,0,0,1,0,10,456,"Thunder Element","Stun Chance","",5000000,Infinity,true,false,false,false,0,0,200000000,1000,10000,"Pendant of Thunder","");
addArenaCraftAccessory(4,2,5,500,"Pendant",14,0,2,0,0,0,0,1,0,10,456,"Water Element","Poison Damage","",5000000,Infinity,true,false,false,false,0,0,200000000,1000,10000,"Pendant of Water","");
addArenaCraftAccessory(4,2,5,500,"Pendant",15,0,2,0,0,0,0,1,0,10,456,"Light Element","Blind Effect","",5000000,Infinity,true,false,false,false,0,0,200000000,1000,10000,"Pendant of Light","");
addArenaCraftAccessory(4,2,5,500,"Pendant",16,0,2,0,0,0,0,1,0,10,456,"Dark Element","Blind Chance","",5000000,Infinity,true,false,false,false,0,0,200000000,1000,10000,"Pendant of Darkness","");
addArenaCraftAccessory(4,5,5,1,"Pendant",8,0,0,0,0,0,0,1,0,10,706,"","","",0,Infinity,true,false,false,false,0,0,400000000,0,10000,"Cursed Pendant","");
addArenaCraftAccessory(4,5,5,250,"Pendant",8,0,0,0,0,0,0,1,0,10,706,"","","",0,Infinity,true,false,false,false,0,0,400000000,0,10000,"Anti-Checkpoint Pendant","This pendant allows you to ignore checkpoints in Spooky Crypt.");
addArenaCraftAccessory("Title 2","Earring");
addArenaCraftAccessory(4,1,1,30,"Earring",3,0,0,0,0,0,0,15,1000000,10,150,"","Potion Efficiency","",200000,Infinity,false,false,false,false,0,0,2000000,100,500,"Crappy Earrings","");
addArenaCraftAccessory(4,5,5,70,"Earring",10,0,0,0,0,0,0,30,10000000,0,0,"","Potion Efficiency","",20000000,14,false,true,false,false,0,0,200000000,10000,50000,"Awesome Earrings","");
addArenaCraftAccessory("Title 2","Trinket");
addArenaCraftAccessory(4,1,1,400,"Trinket",7,0,0,0,0,0,0,500,25000,0,1,"Random","Random","Random",25000000,Infinity,false,false,false,false,10,0,1000000000,75000,100000,"Gem of Constancy","This gem gets more and more powerful as you fight with it equipped, but whenever you unequip it, it goes back to its original state. Also, you cannot change equipment when Gem of Constancy is equipped!");
addArenaCraftAccessory(4,1,1,400,"Trinket",10,0,0,0,0,0,0,500,250000,0,1,"","Damage","Attack Power",500000000,Infinity,true,false,false,false,10,5000000000,500000000,50000,100000,"Empowering Gem","This gem allows you to deal extra damage to monsters. The more you use it, the better it becomes!");
addArenaCraftAccessory(4,1,1,400,"Trinket",13,0,0,0,0,0,0,500,1000000,0,1,"Spawn Rate","","",500000000,Infinity,true,false,false,false,10,5000000000,500000000,50000,100000,"Worst Moon Gem","This gem allows you to enter Worst Moon state. The gem does not look like what you expect it to, but it still does the job. Combine with Invisible X ally to enter Apocalypse mode!");
addArenaCraftAccessory(4,1,1,400,"Trinket",15,0,0,0,0,0,0,500,250000,0,1,"","Buff Effect","MaxHP",500000000,Infinity,true,false,false,false,10,5000000000,500000000,50000,100000,"Auto Buff Gem","When you equip this gem, you will receive random buffs if you don\'t already have one! You can also cancel your current buff to receive a new one.\n\nPossible buffs: Power, Master, Reward, Enrage, Elemental Boost\n\nAlso, you will get +0.5% Boost whenever you kill a monster and 1 Insta-Progress whenever you kill a boss.");
addArenaCraftAccessory("Title","Mission Kommander");
addArenaCraftAccessory(7,1,1,40,"Trinket",17,0,0,0,0,0,0,1,0,0,1,"","","",250000,Infinity,true,false,false,false,0,0,1000000,25,100,"Mission Kommander\'s Gem","When you equip this gem, each monster you kill for Mission Kommander\'s Mission will count as two.");
addArenaCraftAccessory("Title","Unobtainium");
addArenaCraftAccessory("Title 2","Pendant");
addArenaCraftAccessory(16,1,1,500,"Pendant",17,240,6,0,45,45,45,58,25000000,10,1,"Random","Random","",5000000,Infinity,false,false,false,false,5,0,100000000,5000,100000,"Unobtainium Pendant","A pendant crafted with skill. Unlike looted pendants, this one has improved stats, lasts permanently and levels up three times as fast.");
addArenaCraftAccessory("Title 2","Trinket");
addArenaCraftAccessory(16,1,1,400,"Trinket",6,0,0,0,0,0,0,500,250000,0,1,"Drop Rate","","",250000000,Infinity,true,false,false,false,10,0,10000000000,75000,1000000,"Gem of Good Luck","Every perfectionist\'s dream. With this, you are much more likely to get perfect stats on looted items!");
addArenaCraftAccessory(16,1,1,400,"Trinket",11,0,0,0,0,0,0,500,250000,0,1,"EXP","","EXP / Rare Kill",5000000000,Infinity,true,false,false,false,10,50000000000,5000000000,50000,1000000,"Yellow Madness Gem","With this, you will no longer suffer a 10% EXP penalty when fighting yellow-named monsters! It also increases your EXP gain rate and makes rare monsters more likely to appear! Also, Coins will fall from the sky! Isn\'t it awesome?");
addArenaCraftAccessory(16,1,1,400,"Trinket",12,0,0,0,0,0,0,500,250000,0,1,"","Rage Speed","",5000000000,Infinity,true,false,false,false,10,50000000000,5000000000,50000,1000000,"Gem of Eternal Rage","With this, you will gain 0.5% Rage every second and ignore all forms of rage depletion! It also multiplies your Rage Attack by 1.2x.");
addArenaCraftAccessory("Title","?????????????");
addArenaCraftAccessory(19,1,1,50,"Pendant",21,250,0,0,0,0,0,1,0,0,4200,"Random","Random","Random",0,Infinity,true,false,true,false,60,0,0,0,0,"Reincarnation Pendant","");
addArenaCraftAccessory(19,1,1,50,"Earring",11,250,0,0,0,0,0,1,0,0,4200,"","","",0,Infinity,true,false,true,false,0,0,0,0,0,"Reincarnation Earrings","");
addArenaCraftAccessory(19,1,1,50,"Trinket",16,500,0,0,0,0,0,1,0,0,4200,"","","",0,Infinity,true,false,true,false,0,0,0,0,0,"Reincarnation Trinket","");
addArenaCraftPotion("Title","Secret");
addArenaCraftPotion("Title 2","Power Buff");
addArenaCraftPotion(5,1,1,"Power Buff Potion",1,600,1,0,36,20000,Infinity,200000,20000,1,2,"Small Power Potion","");
addArenaCraftPotion(5,2,2,"Power Buff Potion",2,1800,1,0,66,150000,Infinity,1500000,150000,5,15,"Medium Power Potion","");
addArenaCraftPotion(5,3,3,"Power Buff Potion",3,5400,1,0,106,1000000,Infinity,10000000,1000000,25,100,"Large Power Potion","");
addArenaCraftPotion(5,5,5,"Power Buff Potion",4,1800,50,0,156,0,Infinity,500000000,50000000,1000,5000,"Power Crystal","A rare Power Crystal. Unlike Buff Potions, this can be used 50 times before it vanishes.");
addArenaCraftPotion("Title 2","Master Buff");
addArenaCraftPotion(5,1,1,"Master Buff Potion",6,600,1,0,36,20000,Infinity,200000,20000,1,2,"Small Master Potion","");
addArenaCraftPotion(5,2,2,"Master Buff Potion",7,1800,1,0,66,150000,Infinity,1500000,150000,5,15,"Medium Master Potion","");
addArenaCraftPotion(5,3,3,"Master Buff Potion",8,5400,1,0,106,1000000,Infinity,10000000,1000000,25,100,"Large Master Potion","");
addArenaCraftPotion(5,5,5,"Master Buff Potion",9,1800,50,0,156,0,Infinity,500000000,50000000,1000,5000,"Master Crystal","A rare Master Crystal. Unlike Buff Potions, this can be used 50 times before it vanishes.");
addArenaCraftPotion("Title 2","Reward Buff");
addArenaCraftPotion(5,1,1,"Reward Buff Potion",11,600,1,0,36,20000,Infinity,200000,20000,1,2,"Small Reward Potion","");
addArenaCraftPotion(5,2,2,"Reward Buff Potion",12,1800,1,0,66,150000,Infinity,1500000,150000,5,15,"Medium Reward Potion","");
addArenaCraftPotion(5,3,3,"Reward Buff Potion",13,5400,1,0,106,1000000,Infinity,10000000,1000000,25,100,"Large Reward Potion","");
addArenaCraftPotion(5,5,5,"Reward Buff Potion",14,1800,50,0,156,0,Infinity,500000000,50000000,1000,5000,"Reward Crystal","A rare Reward Crystal. Unlike Buff Potions, this can be used 50 times before it vanishes.");
addArenaCraftPotion("Title 2","???");
addArenaCraftPotion(5,5,5,"Nightmare Potion",16,200,1,0,-1,0,Infinity,1000000,0,0,10,"???","");
addArenaCraftPotion("Title","Unobtainium");
addArenaCraftPotion(16,1,1,"Rebirth Potion",23,120,1,0,706,0,Infinity,1000000000,1000000000,250,0,"Rebirth Potion","This potion allows you to Rebirth - which means, starting over from Rank 50 with bonuses.\n\n<font color=\'#FFFF00\'>Rank 500 required. Must be used in Ye Olde Pub.</font>");
addArenaCraftPotion(16,1,1,"Potion of Regrets",24,1,1,0,706,0,Infinity,5000000000,5000000000,1250,0,"Potion of Regrets","This potion contains all of your regrets after making the worst life decision ever (don\'t ask how that works). Drink this potion to gain 10,000,000,000 Arena EXP and 10,000,000,000 Robacon EXP. Does not affect Item EXP. Cannot be used if you haven\'t performed a Rebirth. Can only be used once per real life month.");
addArenaCraftPotion(16,1,1,"Loot Magnet",17,3600,100,0,706,0,Infinity,0,0,2500,50000,"Loot Magnet","This thing seems overpowered. It\'s like, NEVER WORRY ABOUT LOOTING AGAIN!!!\n... until the effect wears off, of course.");
addArenaCraftPotion(16,1,1,"Monster Magnet",18,3600,100,0,706,0,Infinity,0,0,50000,1000000,"Monster Magnet","This thing speeds monsters up when they are farther away from you, and slows them down when they are closer to you. One can argue that it is not exactly a magnet.");
addArenaCraftPotion("Title","Tukkonium");
addArenaCraftPotion(21,1,1,"Power Buff Potion",4,5400,1000000000,0,100000,0,Infinity,0,0,7,1250000,"Infinite Power Crystal","An extremely rare Power Crystal. Unlike Buff Potions, this can be used a billion times before it vanishes.");
addArenaCraftPotion(21,1,1,"Master Buff Potion",9,5400,1000000000,0,100000,0,Infinity,0,0,7,1250000,"Infinite Master Crystal","An extremely rare Master Crystal. Unlike Buff Potions, this can be used a billion times before it vanishes.");
addArenaCraftPotion(21,1,1,"Reward Buff Potion",14,5400,1000000000,0,100000,0,Infinity,0,0,7,1250000,"Infinite Reward Crystal","An extremely rare Reward Crystal. Unlike Buff Potions, this can be used a billion times before it vanishes.");
addArenaCraftPotion(21,1,1,"Loot Magnet",17,5400,1000000000,0,100000,0,Infinity,0,0,35,6250000,"Infinite Loot Magnet","This thing seems overpowered. It\'s like, NEVER WORRY ABOUT LOOTING AGAIN!!!\n... until the effect wears off, of course.");
addArenaCraftPotion(21,1,1,"Monster Magnet",18,5400,1000000000,0,100000,0,Infinity,0,0,142,25000000,"Infinite Monster Magnet","This thing speeds monsters up when they are farther away from you, and slows them down when they are closer to you. One can argue that it is not exactly a magnet.");
addArenaCraftChip("Title","Monster Chips");
addArenaCraftChip(1,1,1,"Monster Chip (Rare)",3,178,0,0,16,0,Infinity,99999999,99999999,999,2999,"Monster Chip R-178","");
addArenaCraftChip(1,1,1,"Monster Chip (Rare)",3,179,0,0,16,0,Infinity,99999999,99999999,999,2999,"Monster Chip R-179","");
addArenaCraftChip(1,1,1,"Monster Chip (Rare)",3,180,0,0,16,0,Infinity,99999999,99999999,999,2999,"Monster Chip R-180","");
addArenaCraftChip(1,1,1,"Monster Chip (Rare)",3,181,0,0,16,0,Infinity,99999999,99999999,999,2999,"Monster Chip R-181","");
addArenaCraftChip(1,1,1,"Monster Chip (Rare)",3,182,0,0,16,0,Infinity,99999999,99999999,999,2999,"Monster Chip R-182","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,331,0,0,16,0,Infinity,9999999999,9999999999,9999,299999,"Monster Chip R-331","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,433,0,0,16,0,Infinity,999999999,999999999,999,29999,"Monster Chip R-433","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,434,0,0,16,0,Infinity,999999999,999999999,999,29999,"Monster Chip R-434","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,437,0,0,16,0,Infinity,999999999,999999999,999,29999,"Monster Chip R-437","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,486,0,0,16,0,Infinity,9999999999,9999999999,9999,299999,"Monster Chip R-486","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,488,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-488","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,489,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-489","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,490,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-490","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,491,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-491","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,492,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-492","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,493,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-493","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,494,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-494","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,495,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-495","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,496,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-496","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,497,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-497","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,498,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-498","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,499,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-499","");
addArenaCraftChip(16,1,1,"Monster Chip (Rare)",3,500,0,0,16,0,Infinity,99999999,99999999,99,2999,"Monster Chip R-500","");
addArenaCraftEnhancer("Title","Item Protection");
addArenaCraftEnhancer(17,1,1,"Weapon Protector",421,0,0,100,0,1,"","","",0,Infinity,0,0,0,0,"Weapon Protector","Protects a weapon from being accidentally sold. Use this on a protected item to remove the protected status.");
addArenaCraftEnhancer(17,1,1,"Armor Protector",422,0,0,100,0,1,"","","",0,Infinity,0,0,0,0,"Armor Protector","Protects an armor piece from being accidentally sold. Use this on a protected item to remove the protected status.");
addArenaCraftEnhancer(17,1,1,"Accessory Protector",423,0,0,100,0,1,"","","",0,Infinity,0,0,0,0,"Accessory Protector","Protects an accessory from being accidentally sold. Use this on a protected item to remove the protected status.");
addArenaCraftEnhancer(17,1,1,"Enhancer Protector",426,0,0,100,0,1,"","","",0,Infinity,0,0,0,0,"Enhancer Protector","Protects an enhancer from being accidentally sold. The item may still be used. Use this on a protected item to remove the protected status.");
addArenaCraftEnhancer("Title","Weapon Enhancer");
addArenaCraftEnhancer(17,1,1,"Weapon Attack Enhancer",1,5,20,100,0,0,"","","",1000,Infinity,10000,2000,1,0,"Weapon Attack Rock Lv. 1","");
addArenaCraftEnhancer(17,1,1,"Weapon Attack Enhancer",2,10,20,90,0,0,"","","",3500,Infinity,35000,7000,2,0,"Weapon Attack Rock Lv. 2","");
addArenaCraftEnhancer(17,1,1,"Weapon Attack Enhancer",3,15,20,80,0,0,"","","",10000,Infinity,100000,20000,5,1,"Weapon Attack Rock Lv. 3","");
addArenaCraftEnhancer(17,1,1,"Weapon Attack Enhancer",4,20,20,70,0,0,"","","",35000,Infinity,350000,70000,10,3,"Weapon Attack Rock Lv. 4","");
addArenaCraftEnhancer(17,1,1,"Weapon Attack Enhancer",5,25,20,60,0,0,"","","",100000,Infinity,1000000,200000,35,10,"Weapon Attack Rock Lv. 5","");
addArenaCraftEnhancer(17,1,1,"Weapon Attack Enhancer",6,30,20,50,0,0,"","","",350000,Infinity,3500000,700000,100,35,"Weapon Attack Rock Lv. 6","");
addArenaCraftEnhancer(17,1,1,"Weapon Attack Enhancer",7,35,20,40,0,0,"","","",1000000,Infinity,10000000,2000000,350,100,"Weapon Attack Rock Lv. 7","");
addArenaCraftEnhancer(17,1,1,"Weapon Attack Enhancer",8,40,20,30,0,0,"","","",3500000,Infinity,35000000,7000000,1000,350,"Weapon Attack Rock Lv. 8","");
addArenaCraftEnhancer(17,1,1,"Weapon Attack Enhancer",9,45,20,20,0,0,"","","",10000000,Infinity,100000000,20000000,3500,1000,"Weapon Attack Rock Lv. 9","");
addArenaCraftEnhancer(17,1,1,"Weapon Attack Enhancer",10,50,20,10,0,0,"","","",35000000,Infinity,350000000,70000000,10000,3500,"Weapon Attack Rock Lv. 10","");
addArenaCraftEnhancer(17,1,1,"Weapon Defense Enhancer",11,12,20,100,0,0,"","","",1000,Infinity,10000,2000,1,0,"Weapon Defense Rock Lv. 1","");
addArenaCraftEnhancer(17,1,1,"Weapon Defense Enhancer",12,24,20,90,0,0,"","","",3500,Infinity,35000,7000,2,0,"Weapon Defense Rock Lv. 2","");
addArenaCraftEnhancer(17,1,1,"Weapon Defense Enhancer",13,36,20,80,0,0,"","","",10000,Infinity,100000,20000,5,1,"Weapon Defense Rock Lv. 3","");
addArenaCraftEnhancer(17,1,1,"Weapon Defense Enhancer",14,48,20,70,0,0,"","","",35000,Infinity,350000,70000,10,3,"Weapon Defense Rock Lv. 4","");
addArenaCraftEnhancer(17,1,1,"Weapon Defense Enhancer",15,60,20,60,0,0,"","","",100000,Infinity,1000000,200000,35,10,"Weapon Defense Rock Lv. 5","");
addArenaCraftEnhancer(17,1,1,"Weapon Defense Enhancer",16,72,20,50,0,0,"","","",350000,Infinity,3500000,700000,100,35,"Weapon Defense Rock Lv. 6","");
addArenaCraftEnhancer(17,1,1,"Weapon Defense Enhancer",17,84,20,40,0,0,"","","",1000000,Infinity,10000000,2000000,350,100,"Weapon Defense Rock Lv. 7","");
addArenaCraftEnhancer(17,1,1,"Weapon Defense Enhancer",18,96,20,30,0,0,"","","",3500000,Infinity,35000000,7000000,1000,350,"Weapon Defense Rock Lv. 8","");
addArenaCraftEnhancer(17,1,1,"Weapon Defense Enhancer",19,108,20,20,0,0,"","","",10000000,Infinity,100000000,20000000,3500,1000,"Weapon Defense Rock Lv. 9","");
addArenaCraftEnhancer(17,1,1,"Weapon Defense Enhancer",20,120,20,10,0,0,"","","",35000000,Infinity,350000000,70000000,10000,3500,"Weapon Defense Rock Lv. 10","");
addArenaCraftEnhancer(17,1,1,"Weapon Critical Enhancer",61,1,120,100,0,0,"","","",1000,Infinity,10000,2000,1,0,"Weapon Critical Rock Lv. 1","");
addArenaCraftEnhancer(17,1,1,"Weapon Critical Enhancer",62,2,120,90,0,0,"","","",3500,Infinity,35000,7000,2,0,"Weapon Critical Rock Lv. 2","");
addArenaCraftEnhancer(17,1,1,"Weapon Critical Enhancer",63,3,120,80,0,0,"","","",10000,Infinity,100000,20000,5,1,"Weapon Critical Rock Lv. 3","");
addArenaCraftEnhancer(17,1,1,"Weapon Critical Enhancer",64,4,120,70,0,0,"","","",35000,Infinity,350000,70000,10,3,"Weapon Critical Rock Lv. 4","");
addArenaCraftEnhancer(17,1,1,"Weapon Critical Enhancer",65,5,120,60,0,0,"","","",100000,Infinity,1000000,200000,35,10,"Weapon Critical Rock Lv. 5","");
addArenaCraftEnhancer(17,1,1,"Weapon Critical Enhancer",66,6,120,50,0,0,"","","",350000,Infinity,3500000,700000,100,35,"Weapon Critical Rock Lv. 6","");
addArenaCraftEnhancer(17,1,1,"Weapon Critical Enhancer",67,7,120,40,0,0,"","","",1000000,Infinity,10000000,2000000,350,100,"Weapon Critical Rock Lv. 7","");
addArenaCraftEnhancer(17,1,1,"Weapon Critical Enhancer",68,8,120,30,0,0,"","","",3500000,Infinity,35000000,7000000,1000,350,"Weapon Critical Rock Lv. 8","");
addArenaCraftEnhancer(17,1,1,"Weapon Critical Enhancer",69,9,120,20,0,0,"","","",10000000,Infinity,100000000,20000000,3500,1000,"Weapon Critical Rock Lv. 9","");
addArenaCraftEnhancer(17,1,1,"Weapon Critical Enhancer",70,10,120,10,0,0,"","","",35000000,Infinity,350000000,70000000,10000,3500,"Weapon Critical Rock Lv. 10","");
addArenaCraftEnhancer(17,1,1,"Weapon Dexterity Enhancer",71,1,120,100,0,0,"","","",1000,Infinity,10000,2000,1,0,"Weapon Dexterity Rock Lv. 1","");
addArenaCraftEnhancer(17,1,1,"Weapon Dexterity Enhancer",72,2,120,90,0,0,"","","",3500,Infinity,35000,7000,2,0,"Weapon Dexterity Rock Lv. 2","");
addArenaCraftEnhancer(17,1,1,"Weapon Dexterity Enhancer",73,3,120,80,0,0,"","","",10000,Infinity,100000,20000,5,1,"Weapon Dexterity Rock Lv. 3","");
addArenaCraftEnhancer(17,1,1,"Weapon Dexterity Enhancer",74,4,120,70,0,0,"","","",35000,Infinity,350000,70000,10,3,"Weapon Dexterity Rock Lv. 4","");
addArenaCraftEnhancer(17,1,1,"Weapon Dexterity Enhancer",75,5,120,60,0,0,"","","",100000,Infinity,1000000,200000,35,10,"Weapon Dexterity Rock Lv. 5","");
addArenaCraftEnhancer(17,1,1,"Weapon Dexterity Enhancer",76,6,120,50,0,0,"","","",350000,Infinity,3500000,700000,100,35,"Weapon Dexterity Rock Lv. 6","");
addArenaCraftEnhancer(17,1,1,"Weapon Dexterity Enhancer",77,7,120,40,0,0,"","","",1000000,Infinity,10000000,2000000,350,100,"Weapon Dexterity Rock Lv. 7","");
addArenaCraftEnhancer(17,1,1,"Weapon Dexterity Enhancer",78,8,120,30,0,0,"","","",3500000,Infinity,35000000,7000000,1000,350,"Weapon Dexterity Rock Lv. 8","");
addArenaCraftEnhancer(17,1,1,"Weapon Dexterity Enhancer",79,9,120,20,0,0,"","","",10000000,Infinity,100000000,20000000,3500,1000,"Weapon Dexterity Rock Lv. 9","");
addArenaCraftEnhancer(17,1,1,"Weapon Dexterity Enhancer",80,10,120,10,0,0,"","","",35000000,Infinity,350000000,70000000,10000,3500,"Weapon Dexterity Rock Lv. 10","");
addArenaCraftEnhancer(17,1,1,"Weapon Health Enhancer",81,1,120,100,0,0,"","","",1000,Infinity,10000,2000,1,0,"Weapon Health Rock Lv. 1","");
addArenaCraftEnhancer(17,1,1,"Weapon Health Enhancer",82,2,120,90,0,0,"","","",3500,Infinity,35000,7000,2,0,"Weapon Health Rock Lv. 2","");
addArenaCraftEnhancer(17,1,1,"Weapon Health Enhancer",83,3,120,80,0,0,"","","",10000,Infinity,100000,20000,5,1,"Weapon Health Rock Lv. 3","");
addArenaCraftEnhancer(17,1,1,"Weapon Health Enhancer",84,4,120,70,0,0,"","","",35000,Infinity,350000,70000,10,3,"Weapon Health Rock Lv. 4","");
addArenaCraftEnhancer(17,1,1,"Weapon Health Enhancer",85,5,120,60,0,0,"","","",100000,Infinity,1000000,200000,35,10,"Weapon Health Rock Lv. 5","");
addArenaCraftEnhancer(17,1,1,"Weapon Health Enhancer",86,6,120,50,0,0,"","","",350000,Infinity,3500000,700000,100,35,"Weapon Health Rock Lv. 6","");
addArenaCraftEnhancer(17,1,1,"Weapon Health Enhancer",87,7,120,40,0,0,"","","",1000000,Infinity,10000000,2000000,350,100,"Weapon Health Rock Lv. 7","");
addArenaCraftEnhancer(17,1,1,"Weapon Health Enhancer",88,8,120,30,0,0,"","","",3500000,Infinity,35000000,7000000,1000,350,"Weapon Health Rock Lv. 8","");
addArenaCraftEnhancer(17,1,1,"Weapon Health Enhancer",89,9,120,20,0,0,"","","",10000000,Infinity,100000000,20000000,3500,1000,"Weapon Health Rock Lv. 9","");
addArenaCraftEnhancer(17,1,1,"Weapon Health Enhancer",90,10,120,10,0,0,"","","",35000000,Infinity,350000000,70000000,10000,3500,"Weapon Health Rock Lv. 10","");
addArenaCraftEnhancer(17,1,1,"Weapon Speed Enhancer",51,1,70,50,0,0,"","","",1000,Infinity,10000,2000,1,0,"Weapon Speed Rock Lv. 1","");
addArenaCraftEnhancer(17,1,1,"Weapon Speed Enhancer",52,2,70,30,0,0,"","","",100000,Infinity,1000000,200000,35,10,"Weapon Speed Rock Lv. 2","");
addArenaCraftEnhancer(17,1,1,"Weapon Speed Enhancer",53,3,70,10,0,0,"","","",10000000,Infinity,100000000,20000000,3500,1000,"Weapon Speed Rock Lv. 3","");
addArenaCraftEnhancer(17,1,1,"Weapon Mystery Enhancer",91,3,0,1000,0,0,"","","",1000,Infinity,20000,4000,2,0,"Weapon Mystery Rock Lv. 1","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Weapon Mystery Enhancer",92,4,0,1000,0,0,"","","",3500,Infinity,70000,14000,7,0,"Weapon Mystery Rock Lv. 2","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Weapon Mystery Enhancer",93,5,0,1000,0,0,"","","",10000,Infinity,200000,40000,20,2,"Weapon Mystery Rock Lv. 3","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Weapon Mystery Enhancer",94,6,0,1000,0,0,"","","",35000,Infinity,700000,140000,70,7,"Weapon Mystery Rock Lv. 4","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Weapon Mystery Enhancer",95,7,0,1000,0,0,"","","",100000,Infinity,2000000,400000,200,20,"Weapon Mystery Rock Lv. 5","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Weapon Mystery Enhancer",96,8,0,1000,0,0,"","","",350000,Infinity,7000000,1400000,700,70,"Weapon Mystery Rock Lv. 6","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Weapon Mystery Enhancer",97,9,0,1000,0,0,"","","",1000000,Infinity,20000000,4000000,2000,200,"Weapon Mystery Rock Lv. 7","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Weapon Mystery Enhancer",98,10,0,1000,0,0,"","","",3500000,Infinity,70000000,14000000,7000,700,"Weapon Mystery Rock Lv. 8","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Weapon Mystery Enhancer",99,11,0,1000,0,0,"","","",10000000,Infinity,200000000,40000000,20000,2000,"Weapon Mystery Rock Lv. 9","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Weapon Mystery Enhancer",100,12,0,1000,0,0,"","","",35000000,Infinity,700000000,140000000,70000,7000,"Weapon Mystery Rock Lv. 10","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(21,1,1,"Weapon Bonus Adder",321,0,0,100,0,36,"Random","","",0,Infinity,0,0,1,250000,"[S] [I] Weapon Bonus: Type A","");
addArenaCraftEnhancer(21,1,1,"Weapon Bonus Adder",322,0,0,100,0,16,"","Random","",0,Infinity,0,0,1,250000,"[S] [I] Weapon Bonus: Type B","");
addArenaCraftEnhancer(21,1,1,"Weapon Bonus Adder",323,0,0,100,0,406,"","","Random",0,Infinity,0,0,1,250000,"[S] [I] Weapon Bonus: Type C","");
addArenaCraftEnhancer(21,1,1,"Weapon Bonus Adder",335,0,0,100,0,100000,"Random","Random","",0,Infinity,0,0,13,2500000,"[S] [I] Weapon Bonus: Type X","");
addArenaCraftEnhancer(21,1,1,"Weapon Bonus Adder",336,0,0,100,0,100000,"","Random","Random",0,Infinity,0,0,13,2500000,"[S] [I] Weapon Bonus: Type Y","");
addArenaCraftEnhancer(21,1,1,"Weapon Bonus Adder",337,0,0,100,0,100000,"Random","","Random",0,Infinity,0,0,13,2500000,"[S] [I] Weapon Bonus: Type Z","");
addArenaCraftEnhancer(21,1,1,"Weapon Bonus Adder",338,0,0,100,0,100000,"Random","Random","Random",0,Infinity,0,0,21,3750000,"[S] [I] Weapon Bonus: Type T","");
addArenaCraftEnhancer(17,1,1,"Weapon Bonus Adder",321,0,0,100,0,26,"Ignore Epic Weapons","","",0,Infinity,50000,0,0,0,"[S] [I] Weapon Bonus: Ignore Epic Weapons","");
addArenaCraftEnhancer(17,1,1,"Weapon Bonus Adder",321,0,0,100,0,26,"Ignore Bonus Rocks","","",0,Infinity,50000,0,0,0,"[S] [I] Weapon Bonus: Ignore Bonus Rocks","");
addArenaCraftEnhancer(17,1,1,"Weapon Bonus Adder",321,0,0,100,0,26,"Ignore Pendants","","",0,Infinity,50000,0,0,0,"[S] [I] Weapon Bonus: Ignore Pendants","");
addArenaCraftEnhancer(17,1,1,"Weapon Bonus Adder",321,0,0,100,0,26,"Ignore Finalizers","","",0,Infinity,50000,0,0,0,"[S] [I] Weapon Bonus: Ignore Finalizers","");
addArenaCraftEnhancer(17,1,1,"Weapon Bonus Adder",321,0,0,100,0,26,"Ignore Outfit Items","","",0,Infinity,50000,0,0,0,"[S] [I] Weapon Bonus: Ignore Outfit Items","");
addArenaCraftEnhancer(17,1,1,"Weapon Spirit Rock",301,10,0,100,0,100,"","","",7000000,Infinity,70000000,7000000,500,700,"Weapon Spirit Rock","");
addArenaCraftEnhancer(17,1,1,"Weapon Spirit Rock",301,10,0,100,0,100,"","","",7000000000,Infinity,70000000000,7000000000,99999,500000,"[S] Weapon Spirit Rock","");
addArenaCraftEnhancer(17,1,1,"Weapon Growth Rock",302,5,0,1000,0,100,"","","",200000,Infinity,2000000,200000,250,20,"Basic Weapon Growth Rock","");
addArenaCraftEnhancer(15,1,1,"Weapon Growth Rock",302,8,0,1000,0,300,"","","",7000000,Infinity,70000000,7000000,50,700,"Chaotic Weapon Growth Rock","");
addArenaCraftEnhancer(4,1,1,"Weapon Unique Enhancer",391,1,0,100,0,106,"","","",200000000,Infinity,2000000000,400000000,400,20000,"Weapon Unique Enhancer Lv. 1","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(4,1,1,"Weapon Unique Enhancer",392,2,0,100,0,156,"","","",350000000,Infinity,3500000000,700000000,700,35000,"Weapon Unique Enhancer Lv. 2","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(4,1,1,"Weapon Unique Enhancer",393,3,0,100,0,256,"","","",500000000,Infinity,5000000000,1000000000,1000,50000,"Weapon Unique Enhancer Lv. 3","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(4,1,1,"Weapon Unique Enhancer",394,4,0,100,0,406,"","","",600000000,Infinity,6000000000,1200000000,1200,60000,"Weapon Unique Enhancer Lv. 4","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(4,1,1,"Weapon Unique Enhancer",395,5,0,100,0,706,"","","",700000000,Infinity,7000000000,1400000000,1400,70000,"Weapon Unique Enhancer Lv. 5","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(21,1,1,"Weapon Unique Enhancer",400,3000,0,100,0,100000,"","","",0,Infinity,0,0,2,500000,"Weapon Unique Enhancer MAX","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(21,1,1,"Weapon Unique Enhancer",400,3000,0,100,0,100000,"","","",0,Infinity,0,0,13,2500000,"[I] Weapon Unique Enhancer MAX","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(16,1,1,"Weapon Unobtainium Enhancer",351,1,0,100,0,106,"","","",0,Infinity,10000000,2000000,10,100,"Weapon Unobtainium Enhancer Lv. 1","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Weapon Unobtainium Enhancer",352,2,0,100,0,156,"","","",0,Infinity,50000000,10000000,50,500,"Weapon Unobtainium Enhancer Lv. 2","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Weapon Unobtainium Enhancer",353,3,0,100,0,256,"","","",0,Infinity,250000000,50000000,250,2500,"Weapon Unobtainium Enhancer Lv. 3","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Weapon Unobtainium Enhancer",354,4,0,100,0,406,"","","",0,Infinity,1000000000,200000000,1000,10000,"Weapon Unobtainium Enhancer Lv. 4","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Weapon Unobtainium Enhancer",355,5,0,100,0,706,"","","",0,Infinity,5000000000,1000000000,5000,50000,"Weapon Unobtainium Enhancer Lv. 5","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(21,1,1,"Weapon Unobtainium Enhancer",355,5,0,100,0,100000,"","","",0,Infinity,0,0,7,1250000,"[I] Weapon Unobtainium Enhancer Lv. 5","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Weapon Finalizer",424,90,0,100,0,296,"","","",0,Infinity,1000000,200000,25,10,"[I] Weapon Finalizer (Rank 90)","");
addArenaCraftEnhancer(21,1,1,"Weapon Finalizer",424,500,0,100,0,100000,"","","",0,Infinity,0,0,2,500000,"[I] Weapon Finalizer (Rank 500)","");
addArenaCraftEnhancer(21,1,1,"Weapon Tukkonium Enhancer",456,0,0,100,0,100000,"","","",0,Infinity,0,0,35,6250000,"Weapon Tukkonium Enhancer","Can be used on a finalized weapon to increase its Attack. There is no limit to the number of Tukkonium Enhancers that can be applied to an item.");
addArenaCraftEnhancer("Title","Armor Enhancer");
addArenaCraftEnhancer(17,1,1,"Armor Attack Enhancer",101,2,20,100,0,0,"","","",1000,Infinity,10000,2000,1,0,"Armor Attack Rock Lv. 1","");
addArenaCraftEnhancer(17,1,1,"Armor Attack Enhancer",102,4,20,90,0,0,"","","",3500,Infinity,35000,7000,2,0,"Armor Attack Rock Lv. 2","");
addArenaCraftEnhancer(17,1,1,"Armor Attack Enhancer",103,6,20,80,0,0,"","","",10000,Infinity,100000,20000,5,1,"Armor Attack Rock Lv. 3","");
addArenaCraftEnhancer(17,1,1,"Armor Attack Enhancer",104,8,20,70,0,0,"","","",35000,Infinity,350000,70000,10,3,"Armor Attack Rock Lv. 4","");
addArenaCraftEnhancer(17,1,1,"Armor Attack Enhancer",105,10,20,60,0,0,"","","",100000,Infinity,1000000,200000,35,10,"Armor Attack Rock Lv. 5","");
addArenaCraftEnhancer(17,1,1,"Armor Attack Enhancer",106,12,20,50,0,0,"","","",350000,Infinity,3500000,700000,100,35,"Armor Attack Rock Lv. 6","");
addArenaCraftEnhancer(17,1,1,"Armor Attack Enhancer",107,14,20,40,0,0,"","","",1000000,Infinity,10000000,2000000,350,100,"Armor Attack Rock Lv. 7","");
addArenaCraftEnhancer(17,1,1,"Armor Attack Enhancer",108,16,20,30,0,0,"","","",3500000,Infinity,35000000,7000000,1000,350,"Armor Attack Rock Lv. 8","");
addArenaCraftEnhancer(17,1,1,"Armor Attack Enhancer",109,18,20,20,0,0,"","","",10000000,Infinity,100000000,20000000,3500,1000,"Armor Attack Rock Lv. 9","");
addArenaCraftEnhancer(17,1,1,"Armor Attack Enhancer",110,20,20,10,0,0,"","","",35000000,Infinity,350000000,70000000,10000,3500,"Armor Attack Rock Lv. 10","");
addArenaCraftEnhancer(17,1,1,"Armor Defense Enhancer",111,5,20,100,0,0,"","","",1000,Infinity,10000,2000,1,0,"Armor Defense Rock Lv. 1","");
addArenaCraftEnhancer(17,1,1,"Armor Defense Enhancer",112,10,20,90,0,0,"","","",3500,Infinity,35000,7000,2,0,"Armor Defense Rock Lv. 2","");
addArenaCraftEnhancer(17,1,1,"Armor Defense Enhancer",113,15,20,80,0,0,"","","",10000,Infinity,100000,20000,5,1,"Armor Defense Rock Lv. 3","");
addArenaCraftEnhancer(17,1,1,"Armor Defense Enhancer",114,20,20,70,0,0,"","","",35000,Infinity,350000,70000,10,3,"Armor Defense Rock Lv. 4","");
addArenaCraftEnhancer(17,1,1,"Armor Defense Enhancer",115,25,20,60,0,0,"","","",100000,Infinity,1000000,200000,35,10,"Armor Defense Rock Lv. 5","");
addArenaCraftEnhancer(17,1,1,"Armor Defense Enhancer",116,30,20,50,0,0,"","","",350000,Infinity,3500000,700000,100,35,"Armor Defense Rock Lv. 6","");
addArenaCraftEnhancer(17,1,1,"Armor Defense Enhancer",117,35,20,40,0,0,"","","",1000000,Infinity,10000000,2000000,350,100,"Armor Defense Rock Lv. 7","");
addArenaCraftEnhancer(17,1,1,"Armor Defense Enhancer",118,40,20,30,0,0,"","","",3500000,Infinity,35000000,7000000,1000,350,"Armor Defense Rock Lv. 8","");
addArenaCraftEnhancer(17,1,1,"Armor Defense Enhancer",119,45,20,20,0,0,"","","",10000000,Infinity,100000000,20000000,3500,1000,"Armor Defense Rock Lv. 9","");
addArenaCraftEnhancer(17,1,1,"Armor Defense Enhancer",120,50,20,10,0,0,"","","",35000000,Infinity,350000000,70000000,10000,3500,"Armor Defense Rock Lv. 10","");
addArenaCraftEnhancer(17,1,1,"Armor Critical Enhancer",161,1,120,100,0,0,"","","",1000,Infinity,10000,2000,1,0,"Armor Critical Rock Lv. 1","");
addArenaCraftEnhancer(17,1,1,"Armor Critical Enhancer",162,2,120,90,0,0,"","","",3500,Infinity,35000,7000,2,0,"Armor Critical Rock Lv. 2","");
addArenaCraftEnhancer(17,1,1,"Armor Critical Enhancer",163,3,120,80,0,0,"","","",10000,Infinity,100000,20000,5,1,"Armor Critical Rock Lv. 3","");
addArenaCraftEnhancer(17,1,1,"Armor Critical Enhancer",164,4,120,70,0,0,"","","",35000,Infinity,350000,70000,10,3,"Armor Critical Rock Lv. 4","");
addArenaCraftEnhancer(17,1,1,"Armor Critical Enhancer",165,5,120,60,0,0,"","","",100000,Infinity,1000000,200000,35,10,"Armor Critical Rock Lv. 5","");
addArenaCraftEnhancer(17,1,1,"Armor Critical Enhancer",166,6,120,50,0,0,"","","",350000,Infinity,3500000,700000,100,35,"Armor Critical Rock Lv. 6","");
addArenaCraftEnhancer(17,1,1,"Armor Critical Enhancer",167,7,120,40,0,0,"","","",1000000,Infinity,10000000,2000000,350,100,"Armor Critical Rock Lv. 7","");
addArenaCraftEnhancer(17,1,1,"Armor Critical Enhancer",168,8,120,30,0,0,"","","",3500000,Infinity,35000000,7000000,1000,350,"Armor Critical Rock Lv. 8","");
addArenaCraftEnhancer(17,1,1,"Armor Critical Enhancer",169,9,120,20,0,0,"","","",10000000,Infinity,100000000,20000000,3500,1000,"Armor Critical Rock Lv. 9","");
addArenaCraftEnhancer(17,1,1,"Armor Critical Enhancer",170,10,120,10,0,0,"","","",35000000,Infinity,350000000,70000000,10000,3500,"Armor Critical Rock Lv. 10","");
addArenaCraftEnhancer(17,1,1,"Armor Dexterity Enhancer",171,1,120,100,0,0,"","","",1000,Infinity,10000,2000,1,0,"Armor Dexterity Rock Lv. 1","");
addArenaCraftEnhancer(17,1,1,"Armor Dexterity Enhancer",172,2,120,90,0,0,"","","",3500,Infinity,35000,7000,2,0,"Armor Dexterity Rock Lv. 2","");
addArenaCraftEnhancer(17,1,1,"Armor Dexterity Enhancer",173,3,120,80,0,0,"","","",10000,Infinity,100000,20000,5,1,"Armor Dexterity Rock Lv. 3","");
addArenaCraftEnhancer(17,1,1,"Armor Dexterity Enhancer",174,4,120,70,0,0,"","","",35000,Infinity,350000,70000,10,3,"Armor Dexterity Rock Lv. 4","");
addArenaCraftEnhancer(17,1,1,"Armor Dexterity Enhancer",175,5,120,60,0,0,"","","",100000,Infinity,1000000,200000,35,10,"Armor Dexterity Rock Lv. 5","");
addArenaCraftEnhancer(17,1,1,"Armor Dexterity Enhancer",176,6,120,50,0,0,"","","",350000,Infinity,3500000,700000,100,35,"Armor Dexterity Rock Lv. 6","");
addArenaCraftEnhancer(17,1,1,"Armor Dexterity Enhancer",177,7,120,40,0,0,"","","",1000000,Infinity,10000000,2000000,350,100,"Armor Dexterity Rock Lv. 7","");
addArenaCraftEnhancer(17,1,1,"Armor Dexterity Enhancer",178,8,120,30,0,0,"","","",3500000,Infinity,35000000,7000000,1000,350,"Armor Dexterity Rock Lv. 8","");
addArenaCraftEnhancer(17,1,1,"Armor Dexterity Enhancer",179,9,120,20,0,0,"","","",10000000,Infinity,100000000,20000000,3500,1000,"Armor Dexterity Rock Lv. 9","");
addArenaCraftEnhancer(17,1,1,"Armor Dexterity Enhancer",180,10,120,10,0,0,"","","",35000000,Infinity,350000000,70000000,10000,3500,"Armor Dexterity Rock Lv. 10","");
addArenaCraftEnhancer(17,1,1,"Armor Health Enhancer",181,1,120,100,0,0,"","","",1000,Infinity,10000,2000,1,0,"Armor Health Rock Lv. 1","");
addArenaCraftEnhancer(17,1,1,"Armor Health Enhancer",182,2,120,90,0,0,"","","",3500,Infinity,35000,7000,2,0,"Armor Health Rock Lv. 2","");
addArenaCraftEnhancer(17,1,1,"Armor Health Enhancer",183,3,120,80,0,0,"","","",10000,Infinity,100000,20000,5,1,"Armor Health Rock Lv. 3","");
addArenaCraftEnhancer(17,1,1,"Armor Health Enhancer",184,4,120,70,0,0,"","","",35000,Infinity,350000,70000,10,3,"Armor Health Rock Lv. 4","");
addArenaCraftEnhancer(17,1,1,"Armor Health Enhancer",185,5,120,60,0,0,"","","",100000,Infinity,1000000,200000,35,10,"Armor Health Rock Lv. 5","");
addArenaCraftEnhancer(17,1,1,"Armor Health Enhancer",186,6,120,50,0,0,"","","",350000,Infinity,3500000,700000,100,35,"Armor Health Rock Lv. 6","");
addArenaCraftEnhancer(17,1,1,"Armor Health Enhancer",187,7,120,40,0,0,"","","",1000000,Infinity,10000000,2000000,350,100,"Armor Health Rock Lv. 7","");
addArenaCraftEnhancer(17,1,1,"Armor Health Enhancer",188,8,120,30,0,0,"","","",3500000,Infinity,35000000,7000000,1000,350,"Armor Health Rock Lv. 8","");
addArenaCraftEnhancer(17,1,1,"Armor Health Enhancer",189,9,120,20,0,0,"","","",10000000,Infinity,100000000,20000000,3500,1000,"Armor Health Rock Lv. 9","");
addArenaCraftEnhancer(17,1,1,"Armor Health Enhancer",190,10,120,10,0,0,"","","",35000000,Infinity,350000000,70000000,10000,3500,"Armor Health Rock Lv. 10","");
addArenaCraftEnhancer(17,1,1,"Armor Speed Enhancer",151,1,70,50,0,0,"","","",1000,Infinity,10000,2000,1,0,"Armor Speed Rock Lv. 1","");
addArenaCraftEnhancer(17,1,1,"Armor Speed Enhancer",152,2,70,30,0,0,"","","",100000,Infinity,1000000,200000,35,10,"Armor Speed Rock Lv. 2","");
addArenaCraftEnhancer(17,1,1,"Armor Speed Enhancer",153,3,70,10,0,0,"","","",10000000,Infinity,100000000,20000000,3500,1000,"Armor Speed Rock Lv. 3","");
addArenaCraftEnhancer(17,1,1,"Armor Mystery Enhancer",191,3,0,1000,0,0,"","","",1000,Infinity,20000,4000,2,0,"Armor Mystery Rock Lv. 1","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Armor Mystery Enhancer",192,4,0,1000,0,0,"","","",3500,Infinity,70000,14000,7,0,"Armor Mystery Rock Lv. 2","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Armor Mystery Enhancer",193,5,0,1000,0,0,"","","",10000,Infinity,200000,40000,20,2,"Armor Mystery Rock Lv. 3","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Armor Mystery Enhancer",194,6,0,1000,0,0,"","","",35000,Infinity,700000,140000,70,7,"Armor Mystery Rock Lv. 4","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Armor Mystery Enhancer",195,7,0,1000,0,0,"","","",100000,Infinity,2000000,400000,200,20,"Armor Mystery Rock Lv. 5","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Armor Mystery Enhancer",196,8,0,1000,0,0,"","","",350000,Infinity,7000000,1400000,700,70,"Armor Mystery Rock Lv. 6","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Armor Mystery Enhancer",197,9,0,1000,0,0,"","","",1000000,Infinity,20000000,4000000,2000,200,"Armor Mystery Rock Lv. 7","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Armor Mystery Enhancer",198,10,0,1000,0,0,"","","",3500000,Infinity,70000000,14000000,7000,700,"Armor Mystery Rock Lv. 8","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Armor Mystery Enhancer",199,11,0,1000,0,0,"","","",10000000,Infinity,200000000,40000000,20000,2000,"Armor Mystery Rock Lv. 9","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(17,1,1,"Armor Mystery Enhancer",200,12,0,1000,0,0,"","","",35000000,Infinity,700000000,140000000,70000,7000,"Armor Mystery Rock Lv. 10","What this enhancer does remains a mystery.");
addArenaCraftEnhancer(21,1,1,"Armor Bonus Adder",324,0,0,100,0,36,"Random","","",0,Infinity,0,0,1,250000,"[S] [I] Armor Bonus: Type A","");
addArenaCraftEnhancer(21,1,1,"Armor Bonus Adder",325,0,0,100,0,16,"","Random","",0,Infinity,0,0,1,250000,"[S] [I] Armor Bonus: Type B","");
addArenaCraftEnhancer(21,1,1,"Armor Bonus Adder",326,0,0,100,0,406,"","","Random",0,Infinity,0,0,1,250000,"[S] [I] Armor Bonus: Type C","");
addArenaCraftEnhancer(21,1,1,"Armor Bonus Adder",339,0,0,100,0,100000,"Random","Random","",0,Infinity,0,0,13,2500000,"[S] [I] Armor Bonus: Type X","");
addArenaCraftEnhancer(21,1,1,"Armor Bonus Adder",340,0,0,100,0,100000,"","Random","Random",0,Infinity,0,0,13,2500000,"[S] [I] Armor Bonus: Type Y","");
addArenaCraftEnhancer(21,1,1,"Armor Bonus Adder",341,0,0,100,0,100000,"Random","","Random",0,Infinity,0,0,13,2500000,"[S] [I] Armor Bonus: Type Z","");
addArenaCraftEnhancer(21,1,1,"Armor Bonus Adder",342,0,0,100,0,100000,"Random","Random","Random",0,Infinity,0,0,21,3750000,"[S] [I] Armor Bonus: Type T","");
addArenaCraftEnhancer(17,1,1,"Armor Bonus Adder",324,0,0,100,0,26,"Ignore Epic Weapons","","",0,Infinity,50000,0,0,0,"[S] [I] Armor Bonus: Ignore Epic Weapons","");
addArenaCraftEnhancer(17,1,1,"Armor Bonus Adder",324,0,0,100,0,26,"Ignore Bonus Rocks","","",0,Infinity,50000,0,0,0,"[S] [I] Armor Bonus: Ignore Bonus Rocks","");
addArenaCraftEnhancer(17,1,1,"Armor Bonus Adder",324,0,0,100,0,26,"Ignore Pendants","","",0,Infinity,50000,0,0,0,"[S] [I] Armor Bonus: Ignore Pendants","");
addArenaCraftEnhancer(17,1,1,"Armor Bonus Adder",324,0,0,100,0,26,"Ignore Finalizers","","",0,Infinity,50000,0,0,0,"[S] [I] Armor Bonus: Ignore Finalizers","");
addArenaCraftEnhancer(17,1,1,"Armor Bonus Adder",324,0,0,100,0,26,"Ignore Outfit Items","","",0,Infinity,50000,0,0,0,"[S] [I] Armor Bonus: Ignore Outfit Items","");
addArenaCraftEnhancer(17,1,1,"Armor Spirit Rock",304,10,0,100,0,100,"","","",3500000,Infinity,35000000,3500000,250,350,"Armor Spirit Rock","");
addArenaCraftEnhancer(17,1,1,"Armor Spirit Rock",304,10,0,100,0,100,"","","",3500000000,Infinity,35000000000,3500000000,99999,250000,"[S] Armor Spirit Rock","");
addArenaCraftEnhancer(17,1,1,"Armor Growth Rock",305,5,0,1000,0,100,"","","",100000,Infinity,1000000,100000,125,10,"Basic Armor Growth Rock","");
addArenaCraftEnhancer(15,1,1,"Armor Growth Rock",305,8,0,1000,0,300,"","","",3500000,Infinity,35000000,3500000,25,350,"Chaotic Armor Growth Rock","");
addArenaCraftEnhancer(4,1,1,"Armor Unique Enhancer",401,1,0,100,0,106,"","","",100000000,Infinity,1000000000,200000000,200,10000,"Armor Unique Enhancer Lv. 1","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(4,1,1,"Armor Unique Enhancer",402,2,0,100,0,156,"","","",175000000,Infinity,1750000000,350000000,350,17500,"Armor Unique Enhancer Lv. 2","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(4,1,1,"Armor Unique Enhancer",403,3,0,100,0,256,"","","",250000000,Infinity,2500000000,500000000,500,25000,"Armor Unique Enhancer Lv. 3","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(4,1,1,"Armor Unique Enhancer",404,4,0,100,0,406,"","","",300000000,Infinity,3000000000,600000000,600,30000,"Armor Unique Enhancer Lv. 4","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(4,1,1,"Armor Unique Enhancer",405,5,0,100,0,706,"","","",350000000,Infinity,3500000000,700000000,700,35000,"Armor Unique Enhancer Lv. 5","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(21,1,1,"Armor Unique Enhancer",410,1800,0,100,0,100000,"","","",0,Infinity,0,0,1,250000,"Armor Unique Enhancer MAX","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(21,1,1,"Armor Unique Enhancer",410,1800,0,100,0,100000,"","","",0,Infinity,0,0,7,1250000,"[I] Armor Unique Enhancer MAX","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(16,1,1,"Armor Unobtainium Enhancer",361,1,0,100,0,106,"","","",0,Infinity,10000000,1000000,10,100,"Armor Unobtainium Enhancer Lv. 1","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Armor Unobtainium Enhancer",362,2,0,100,0,156,"","","",0,Infinity,50000000,5000000,50,500,"Armor Unobtainium Enhancer Lv. 2","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Armor Unobtainium Enhancer",363,3,0,100,0,256,"","","",0,Infinity,250000000,25000000,250,2500,"Armor Unobtainium Enhancer Lv. 3","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Armor Unobtainium Enhancer",364,4,0,100,0,406,"","","",0,Infinity,1000000000,100000000,1000,10000,"Armor Unobtainium Enhancer Lv. 4","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Armor Unobtainium Enhancer",365,5,0,100,0,706,"","","",0,Infinity,5000000000,500000000,5000,50000,"Armor Unobtainium Enhancer Lv. 5","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(21,1,1,"Armor Unobtainium Enhancer",365,5,0,100,0,100000,"","","",0,Infinity,0,0,7,1250000,"[I] Armor Unobtainium Enhancer Lv. 5","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Armor Finalizer",425,90,0,100,0,296,"","","",0,Infinity,1000000,200000,25,10,"[I] Armor Finalizer (Rank 90)","");
addArenaCraftEnhancer(21,1,1,"Armor Finalizer",425,500,0,100,0,100000,"","","",0,Infinity,0,0,2,500000,"[I] Armor Finalizer (Rank 500)","");
addArenaCraftEnhancer(21,1,1,"Armor Tukkonium Enhancer",457,0,0,100,0,100000,"","","",0,Infinity,0,0,7,1250000,"Armor Tukkonium Enhancer","Can be used on a finalized armor piece to increase its Defense. There is no limit to the number of Tukkonium Enhancers that can be applied to an item.");
addArenaCraftEnhancer(17,1,1,"Armor Growth Rock",451,100,0,100,0,706,"","","",0,Infinity,250000000,50000000,5000,2500,"Humblebee Armor Upgrade","Raises the Max Level of Humblebee Armor by 100. Adds 1 to the enhancement count. Cannot be used if the item\'s Max Level is already 284 or higher.");
addArenaCraftEnhancer("Title","Accessory Enhancer");
addArenaCraftEnhancer(21,1,1,"Accessory Bonus Adder",327,0,0,100,0,36,"Random","","",0,Infinity,0,0,1,250000,"[S] [I] Accessory Bonus: Type A","");
addArenaCraftEnhancer(21,1,1,"Accessory Bonus Adder",328,0,0,100,0,16,"","Random","",0,Infinity,0,0,1,250000,"[S] [I] Accessory Bonus: Type B","");
addArenaCraftEnhancer(21,1,1,"Accessory Bonus Adder",329,0,0,100,0,406,"","","Random",0,Infinity,0,0,1,250000,"[S] [I] Accessory Bonus: Type C","");
addArenaCraftEnhancer(21,1,1,"Accessory Bonus Adder",343,0,0,100,0,100000,"Random","Random","",0,Infinity,0,0,13,2500000,"[S] [I] Accessory Bonus: Type X","");
addArenaCraftEnhancer(21,1,1,"Accessory Bonus Adder",344,0,0,100,0,100000,"","Random","Random",0,Infinity,0,0,13,2500000,"[S] [I] Accessory Bonus: Type Y","");
addArenaCraftEnhancer(21,1,1,"Accessory Bonus Adder",345,0,0,100,0,100000,"Random","","Random",0,Infinity,0,0,13,2500000,"[S] [I] Accessory Bonus: Type Z","");
addArenaCraftEnhancer(21,1,1,"Accessory Bonus Adder",346,0,0,100,0,100000,"Random","Random","Random",0,Infinity,0,0,21,3750000,"[S] [I] Accessory Bonus: Type T","");
addArenaCraftEnhancer(17,1,1,"Accessory Bonus Adder",327,0,0,100,0,36,"Ignore Epic Weapons","","",0,Infinity,50000,0,0,0,"[S] [I] Accessory Bonus: Ignore Epic Weapons","");
addArenaCraftEnhancer(17,1,1,"Accessory Bonus Adder",327,0,0,100,0,26,"Ignore Bonus Rocks","","",0,Infinity,50000,0,0,0,"[S] [I] Accessory Bonus: Ignore Bonus Rocks","");
addArenaCraftEnhancer(17,1,1,"Accessory Bonus Adder",327,0,0,100,0,26,"Ignore Pendants","","",0,Infinity,50000,0,0,0,"[S] [I] Accessory Bonus: Ignore Pendants","");
addArenaCraftEnhancer(17,1,1,"Accessory Bonus Adder",327,0,0,100,0,26,"Ignore Finalizers","","",0,Infinity,50000,0,0,0,"[S] [I] Accessory Bonus: Ignore Finalizers","");
addArenaCraftEnhancer(17,1,1,"Accessory Bonus Adder",327,0,0,100,0,26,"Ignore Outfit Items","","",0,Infinity,50000,0,0,0,"[S] [I] Accessory Bonus: Ignore Outfit Items","");
addArenaCraftEnhancer(17,1,1,"Accessory Spirit Rock",313,10,0,100,0,100,"","","",7000000,Infinity,70000000,7000000,500,700,"Accessory Spirit Rock","");
addArenaCraftEnhancer(17,1,1,"Accessory Spirit Rock",313,10,0,100,0,100,"","","",70000000000,Infinity,700000000000,70000000000,99999,2000000,"[S] Accessory Spirit Rock","");
addArenaCraftEnhancer(21,1,1,"Accessory Unique Enhancer",420,1800,0,100,0,100000,"","","",0,Infinity,0,0,2,1000000,"Accessory Unique Enhancer MAX","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(21,1,1,"Accessory Unique Enhancer",420,1800,0,100,0,100000,"","","",0,Infinity,0,0,35,12500000,"[I] Accessory Unique Enhancer MAX","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.");
addArenaCraftEnhancer(17,1,1,"Accessory Attack Enhancer",331,300,0,100,0,706,"","","",30000000000,2,300000000000,15000000000,99999,750000,"Awesome Enhancer","The worst resource sink that has ever existed.\n\nCan only be used on Awesome Earrings.");
addArenaCraftEnhancer(15,1,1,"Accessory Attack Enhancer",332,150,0,100,0,706,"","","",75000000000,Infinity,750000000000,75000000000,75000,7500000,"GIGA ENHANCER EX","Can only be used on GIGA PENDANT and GIGA EARRINGS.");
addArenaCraftEnhancer(15,1,1,"Accessory Lifespan Extender",333,15,0,100,0,706,"","","",75000000000,Infinity,750000000000,75000000000,75000,7500000,"GIGA LIFE ROCK EX","Can only be used on GIGA PENDANT and GIGA EARRINGS.");
addArenaCraftEnhancer(21,1,1,"Accessory Attack Enhancer",332,150,0,100,0,100000,"","","",0,Infinity,0,0,2,500000,"TERA ENHANCER","Can only be used on TERA PENDANT and TERA EARRINGS.");
addArenaCraftEnhancer(21,1,1,"Accessory Attack Enhancer",332,175,0,100,0,100000,"","","",0,Infinity,0,0,35,6250000,"TERA ENHANCER EX","Can only be used on TERA PENDANT and TERA EARRINGS.");
addArenaCraftEnhancer(21,1,1,"Accessory Lifespan Extender",333,15,0,100,0,100000,"","","",0,Infinity,0,0,7,1250000,"TERA LIFE ROCK","Can only be used on TERA PENDANT and TERA EARRINGS.");
addArenaCraftEnhancer(21,1,1,"Accessory Lifespan Extender",333,99999,0,100,0,100000,"","","",0,Infinity,0,0,142,25000000,"TERA LIFE ROCK EX","Can only be used on TERA PENDANT and TERA EARRINGS.");
addArenaCraftEnhancer(16,1,1,"Accessory Unobtainium Enhancer",371,1,0,100,0,106,"","","",0,Infinity,10000000,1000000,10,100,"Accessory Unobtainium Enhancer Lv. 1","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Accessory Unobtainium Enhancer",372,2,0,100,0,156,"","","",0,Infinity,50000000,5000000,50,500,"Accessory Unobtainium Enhancer Lv. 2","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Accessory Unobtainium Enhancer",373,3,0,100,0,256,"","","",0,Infinity,250000000,25000000,250,2500,"Accessory Unobtainium Enhancer Lv. 3","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Accessory Unobtainium Enhancer",374,4,0,100,0,406,"","","",0,Infinity,1000000000,100000000,1000,10000,"Accessory Unobtainium Enhancer Lv. 4","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Accessory Unobtainium Enhancer",375,5,0,100,0,706,"","","",0,Infinity,5000000000,500000000,5000,50000,"Accessory Unobtainium Enhancer Lv. 5","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Accessory Unobtainium Enhancer",380,10,0,100,0,2506,"","","",0,Infinity,50000000000,5000000000,50000,500000,"Accessory Unobtainium Enhancer Lv. 10","Increases the bonus tier of an item. If the item already has an Unobtainium Enhancement count, it will be replaced.");
addArenaCraftEnhancer(16,1,1,"Accessory Bonus Adder",222,0,0,100,0,26,"Auto Buff - Random","","",0,Infinity,0,0,999,999,"[I] Auto Buff - RANDOM","Apply this to Auto Buff Gem to make it give you random buffs.");
addArenaCraftEnhancer(16,1,1,"Accessory Bonus Adder",222,0,0,100,0,26,"Auto Buff - Power","","",0,Infinity,0,0,9999,9999,"[I] Auto Buff - POWER","Apply this to Auto Buff Gem to make it give you Power buff.");
addArenaCraftEnhancer(16,1,1,"Accessory Bonus Adder",222,0,0,100,0,26,"Auto Buff - Master","","",0,Infinity,0,0,9999,9999,"[I] Auto Buff - MASTER","Apply this to Auto Buff Gem to make it give you Master buff.");
addArenaCraftEnhancer(16,1,1,"Accessory Bonus Adder",222,0,0,100,0,26,"Auto Buff - Reward","","",0,Infinity,0,0,9999,9999,"[I] Auto Buff - REWARD","Apply this to Auto Buff Gem to make it give you Reward buff.");
addArenaCraftEnhancer(16,1,1,"Accessory Bonus Adder",222,0,0,100,0,26,"Auto Buff - Enrage","","",0,Infinity,0,0,99999,99999,"[I] Auto Buff - ENRAGE","Apply this to Auto Buff Gem to make it give you Enrage buff.");
addArenaCraftEnhancer(16,1,1,"Accessory Bonus Adder",222,0,0,100,0,26,"Auto Buff - Boost","","",0,Infinity,0,0,99999,99999,"[I] Auto Buff - BOOST","Apply this to Auto Buff Gem to make it give you Elemental Boost buff.");
addArenaCraftEnhancer("Title","Enhancer Enhancer");
addArenaCraftEnhancer(16,1,1,"Mystery Enhancer Identifier",221,0,0,100,0,300,"","","",100000000,Infinity,1000000000,150000000,100,10000,"Mystery Enhancer Identifier","");
addArenaCraftEnhancer(16,1,1,"Mystery Enhancer Identifier",221,0,0,100,0,300,"","","",5000000000,7,50000000000,7500000000,5000,500000,"[I] Mystery Enhancer Identifier","");
addArenaCraftEnhancer(21,1,1,"Mystery Enhancer Identifier",221,0,0,100,0,100000,"","","",0,Infinity,0,0,13,5000000,"[I] Mystery Enhancer Identifier","");
setArray = [zeroItem];
addArenaSet("Gem of Constancy\n(Gem of Constancy must be equipped)",[2,3,4,5,6,7,8],["Spawn Rate","Spawn Rate","Spawn Rate","Spawn Rate","Spawn Rate","Spawn Rate","Spawn Rate"],[5,5,5,5,5,5,10],["Gem of Constancy","Any Finalized Weapon","Any Finalized Hat","Any Finalized Shirt","Any Finalized Gloves","Any Finalized Pants","Any Finalized Shoes","Any Finalized Skin"]);
addArenaSet("Empowering Gem\n(Empowering Gem must be equipped)",[2,3,4],["Damage","Damage","Damage"],[5,5,10],["Empowering Gem","Any Rank 200+ Weapon","Any Rank 300+ Weapon","Any Rank 400+ Weapon"]);
addArenaSet("Mining\n(Pickaxe must be equipped)",[2,3,4,5,6,6,6],["Drop Rate","Drop Rate","Drop Rate","Drop Rate","Drop Rate","Spawn Rate","Attack Speed"],[50,50,50,100,250,50,50],["Any Pickaxe","Any Crystal Hat","Any Crystal Shirt","Any Crystal Gloves","Any Crystal Pants","Any Crystal Shoes"]);
addArenaSet("Leather Set",[5],["Damage"],[5],["Leather Hat","Leather Shirt","Leather Gloves","Leather Pants","Leather Shoes"]);
addArenaSet("Kongregate Set",[5],["Damage"],[10],["Kongregate Hat","Kongregate Shirt","Kongregate Gloves","Kongregate Pants","Kongregate Shoes"]);
addArenaSet("Lovely Set",[5],["Damage"],[15],["Lovely Hat","Lovely Shirt","Lovely Gloves","Lovely Pants","Lovely Shoes"]);
addArenaSet("Red Set",[5],["Damage"],[20],["Red Hat","Red Shirt","Red Gloves","Red Pants","Red Shoes"]);
addArenaSet("Knight Set",[5],["Damage"],[25],["Knight Hat","Knight Shirt","Knight Gloves","Knight Pants","Knight Shoes"]);
addArenaSet("Paladin Set",[5],["Damage"],[30],["Paladin Hat","Paladin Shirt","Paladin Gloves","Paladin Pants","Paladin Shoes"]);
addArenaSet("Executioner Set",[5],["Damage"],[35],["Executioner Hat","Executioner Shirt","Executioner Gloves","Executioner Pants","Executioner Shoes"]);
addArenaSet("Dragonewyn Set",[5],["Damage"],[40],["Dragonewyn Hat","Dragonewyn Shirt","Dragonewyn Gloves","Dragonewyn Pants","Dragonewyn Shoes"]);
addArenaSet("Spirit Set",[5,6],["Damage","Spawn Rate"],[45,15],["Spirit Sword","Spirit Hat","Spirit Shirt","Spirit Gloves","Spirit Pants","Spirit Shoes"]);
addArenaSet("Elite Set",[5],["Damage"],[50],["Elite Hat","Elite Shirt","Elite Gloves","Elite Pants","Elite Shoes"]);
addArenaSet("Training Set",[4,5],["Damage","EXP"],[5,5],["Training Hat","Training Shirt","Training Gloves","Training Pants","Training Shoes"]);
addArenaSet("Soldier Set",[4,5],["Damage","EXP"],[10,10],["Soldier Hat","Soldier Shirt","Soldier Gloves","Soldier Pants","Soldier Shoes"]);
addArenaSet("Stripper Nurse Set",[4,5],["Damage","EXP"],[15,15],["Stripper Nurse Hat","Stripper Nurse Shirt","Stripper Nurse Gloves","Stripper Nurse Pants","Stripper Nurse Shoes"]);
addArenaSet("Enchanted Leather Set",[4,5,5],["Damage","EXP","Attack Speed"],[20,20,20],["Enchanted Leather Hat","Enchanted Leather Shirt","Enchanted Leather Gloves","Enchanted Leather Pants","Enchanted Leather Shoes"]);
addArenaSet("Golden Set",[4,5,5],["Damage","EXP","Coin"],[25,25,25],["Golden Hat","Golden Shirt","Golden Gloves","Golden Pants","Golden Shoes"]);
addArenaSet("Regeneration Set",[4,5,5,5,5],["Damage","EXP","Spawn Rate","MaxHP","MaxMP"],[30,30,5,75,75],["Regeneration Hat","Regeneration Shirt","Regeneration Gloves","Regeneration Pants","Regeneration Shoes"]);
addArenaSet("Berserker Set",[4,5,5,5],["Damage","EXP","Spawn Rate","MaxHP"],[35,35,10,175],["Berserker Hat","Berserker Shirt","Berserker Gloves","Berserker Pants","Berserker Shoes"]);
addArenaSet("Defensive Set",[4,5,5,5,5],["Damage","Defense","EXP","Spawn Rate","MaxHP"],[40,40,40,15,200],["Defensive Hat","Defensive Shirt","Defensive Gloves","Defensive Pants","Defensive Shoes"]);
addArenaSet("Pure Darkness Set",[4,5,5,5,5,6,6],["Damage","Evasion","EXP","Spawn Rate","MaxHP","Spawn Rate","Damage"],[45,45,45,20,225,20,40],["Pure Darkness Claw","Pure Darkness Hat","Pure Darkness Shirt","Pure Darkness Gloves","Pure Darkness Pants","Pure Darkness Shoes"]);
addArenaSet("Crimson Set",[4,5,5,5,5,6,6],["Damage","Accuracy","EXP","Spawn Rate","MaxHP","Spawn Rate","Damage"],[50,50,50,25,250,25,50],["Crimson Bow","Crimson Hat","Crimson Shirt","Crimson Gloves","Crimson Pants","Crimson Shoes"]);
addArenaSet("Knightmare Set",[4,5,5,5,5,5,5,5],["Damage","Damage","Defense","EXP","Spawn Rate","MaxHP","Drop Rate","Rare Monster Rate"],[60,10,60,60,30,300,60,60],["Knightmare Hat","Knightmare Shirt","Knightmare Gloves","Knightmare Pants","Knightmare Shoes"]);
addArenaSet("Humblebee Set",[4,5,5,5,5,5,5,5,5,5,5],["Damage","Damage","EXP","Coin","Spawn Rate","Attack Speed","Accuracy","Evasion","Drop Rate","Rare Monster Rate","Epic Monster Rate"],[70,15,70,35,35,140,70,70,70,140,140],["Humblebee Hat","Humblebee Shirt","Humblebee Gloves","Humblebee Pants","Humblebee Shoes"]);
addArenaSet("Ghost Set",[4,5,5,5,5,5,5],["Damage","Damage","Evasion","EXP","Spawn Rate","MaxHP","Drop Rate"],[80,20,160,80,40,400,80],["Ghost Hat","Ghost Shirt","Ghost Gloves","Ghost Pants","Ghost Shoes"]);
addArenaSet("Samurai Set",[4,5,5,5,5,5],["Damage","Damage","EXP","Spawn Rate","MaxHP","Rare Monster Rate"],[100,50,100,50,1000,500],["Samurai Hat","Samurai Shirt","Samurai Gloves","Samurai Pants","Samurai Shoes"]);
addArenaSet("Dress Set",[4,5,5,5,5,5,5],["Damage","Damage","Coin","Spawn Rate","MaxHP","MaxMP","Epic Monster Rate"],[120,60,120,60,250,500,500],["Dress Hat","Dress Shirt","Dress Gloves","Dress Pants","Dress Shoes"]);
addArenaSet("Elm Set",[3,4,5,5,5,5,5,5],["Drop Rate","Damage","Spawn Rate","Attack Speed","MaxHP","MaxMP","Rare Monster Rate","Epic Monster Rate"],[50,50,50,100,100,100,100,100],["Elm Hat","Elm Shirt","Elm Gloves","Elm Pants","Elm Shoes"]);
addArenaSet("Corrupted Elm Set",[3,4,5,5,5,5,5,5],["Drop Rate","Damage","Spawn Rate","Attack Speed","MaxHP","MaxMP","Rare Monster Rate","Epic Monster Rate"],[75,75,75,150,150,150,150,150],["Corrupted Elm Hat","Corrupted Elm Shirt","Corrupted Elm Gloves","Corrupted Elm Pants","Corrupted Elm Shoes"]);
addArenaSet("Emperor\'s Clothing",[4,5,5,5],["Coin","Coin","Pixel","Spawn Rate"],[125,125,250,50],["Emperor\'s Hat","Emperor\'s Shirt","Emperor\'s Gloves","Emperor\'s Pants","Emperor\'s Shoes"]);
addArenaSet("Set of DOOOOOOM",[5,6,6,6,6],["Spawn Rate","Spawn Rate","Damage","MaxHP","Damage dealt in Tower of DOOOOOOM is multiplied by <b>1.2</b>"],[5,5,10,60,-1],["Any Weapon of DOOOOOOM","Hat of DOOOOOOM","Shirt of DOOOOOOM","Gloves of DOOOOOOM","Pants of DOOOOOOM","Shoes of DOOOOOOM"]);
addArenaSet("Chuck Norris Set",[5],["Damage"],[200],["Chuck Norris Hat","Chuck Norris Shirt","Chuck Norris Gloves","Chuck Norris Pants","Chuck Norris Shoes"]);
addArenaSet("Alien Set",[5,6,6,6,7,7,7,7],["EXP","Spawn Rate","MaxHP","MaxMP","Drop Rate","Rare Monster Rate","Epic Monster Rate","Damage"],[50,50,50,50,50,50,50,50],["Any Alien Weapon","Any Alien Hat","Any Alien Shirt","Any Alien Gloves","Any Alien Pants","Any Alien Shoes","Alien Earrings"]);
addArenaSet("Meteoric Set",[5,5,6,6,6],["EXP","Spawn Rate","EXP","Spawn Rate","Damage"],[90,60,60,90,150],["Any Meteoric Weapon","Meteoric Hat","Meteoric Shirt","Meteoric Gloves","Meteoric Pants","Meteoric Shoes"]);
addArenaSet("Companion Cube Set",[5,5,5,5,5],["Drop Rate","Spawn Rate","Rare Monster Rate","Epic Monster Rate","The amount of damage dealt by Robacon/Robroccoli is tripled"],[150,50,150,150,-1],["Companion Cube Hat","Companion Cube Shirt","Companion Cube Gloves","Companion Cube Pants","Companion Cube Shoes"]);
addArenaSet("Fairy Godfather Set",[4,5,5,5],["Damage","Damage","Spawn Rate","Fairy Power Bar fills twice as fast"],[25,25,100,-1],["Fairy Godfather Hat","Fairy Godfather Shirt","Fairy Godfather Gloves","Fairy Godfather Pants","Fairy Godfather Shoes"]);
addArenaSet("Fairy Godmother Set",[4,5,5,5,6,6,6,6],["Damage","Damage","Spawn Rate","Fairy Power Bar fills twice as fast","Damage","MaxMP","Spawn Rate","Potion Efficiency <b>+500%</b>"],[20,20,100,-1,60,600,20,-1],["Fairy Godmother Wand","Fairy Godmother Hat","Fairy Godmother Shirt","Fairy Godmother Gloves","Fairy Godmother Pants","Fairy Godmother Shoes"]);
addArenaSet("Censor Set",[5,5,5,6,6,6],["Damage","EXP","Spawn Rate","EXP","Damage","You become invulnerable to SOAP and completely ignore monster DEF when otherwise affected by SOAP"],[50,50,50,50,100,-1],["Censor Sword","Censor Hat","Censor Shirt","Censor Gloves","Censor Pants","Censor Shoes"]);
addArenaSet("Wizard Set",[4,5,5,5],["Damage","Damage","EXP","MaxMP"],[20,30,50,1000],["Wizard Hat","Wizard Shirt","Wizard Gloves","Wizard Pants","Wizard Shoes"]);
addArenaSet("Holy Glory Set",[5,5,5,6,6],["Spawn Rate","Damage","Defense","Spawn Rate","Damage"],[35,55,110,45,345],["Glaive of Smiting","Holy Glory Hat","Holy Glory Shirt","Holy Glory Gloves","Holy Glory Pants","Holy Glory Shoes"]);
addArenaSet("Dark Angel Set",[5,5,5,6,6],["Spawn Rate","Damage","Defense","Spawn Rate","Damage"],[40,65,130,50,385],["Darkglaive of Smiting","Dark Angel Hat","Dark Angel Shirt","Dark Angel Gloves","Dark Angel Pants","Dark Angel Shoes"]);
addArenaSet("Chaos Set",[5,5,5,6,6],["Spawn Rate","Damage","Defense","Spawn Rate","Damage"],[45,75,150,55,425],["Fiend Glaive","Chaos Hat","Chaos Shirt","Chaos Gloves","Chaos Pants","Chaos Shoes"]);
addArenaSet("CHAOS SET",[5,5,5,6,6,6],["Spawn Rate","Damage","Evasion","Spawn Rate","Damage","Accuracy"],[50,50,50,10,250,100],["CHAOS AURA","CHAOS HAT","CHAOS SHIRT","CHAOS GLOVES","CHAOS PANTS","CHAOS SHOES"]);
addArenaSet("Green Armor of Loot",[5,5,5,5,5],["Coin","Drop Rate","Spawn Rate","Rare Monster Rate","Epic Monster Rate"],[30,600,15,120,60],["Green Hat of Loot","Green Shirt of Loot","Green Gloves of Loot","Green Pants of Loot","Green Shoes of Loot"]);
addArenaSet("Blue Armor of Loot",[5,5,5,5,5],["Coin","Drop Rate","Spawn Rate","Rare Monster Rate","Epic Monster Rate"],[40,800,20,160,80],["Blue Hat of Loot","Blue Shirt of Loot","Blue Gloves of Loot","Blue Pants of Loot","Blue Shoes of Loot"]);
addArenaSet("Purple Armor of Loot",[5,5,5,5,5],["Coin","Drop Rate","Spawn Rate","Rare Monster Rate","Epic Monster Rate"],[50,1000,25,200,100],["Purple Hat of Loot","Purple Shirt of Loot","Purple Gloves of Loot","Purple Pants of Loot","Purple Shoes of Loot"]);
addArenaSet("Ultimate Set",[2,3,4,5,6,6,7,8,9,9,9,9],["Spawn Rate","Spawn Rate","Spawn Rate","Spawn Rate","Spawn Rate","Damage","Spawn Rate","Spawn Rate","Drop Rate","Damage","Most loot drops are magnetized","Recover some MP whenever you deal damage. Effect is improved as you finish more Ascensions."],[5,5,10,10,20,75,20,30,50,125,-1,-1],["Ultimate Weapon","Ultimate Hat","Ultimate Shirt","Ultimate Gloves","Ultimate Pants","Ultimate Shoes","Ultimate Pendant","Ultimate Earrings","Ultimate Trinket","Apocalypse Mode"]);
addArenaSet("Halloween Set",[5,6],["Coin","Candy Drop Rate <b>+50%</font>"],[30,-1],["Ghostslayer","Halloween Hat","Halloween Shirt","Halloween Gloves","Halloween Pants","Halloween Shoes"]);
addArenaSet("Elite Lovely Set",[5],["Coin"],[30],["Elite Lovely Hat","Elite Lovely Shirt","Elite Lovely Gloves","Elite Lovely Pants","Elite Lovely Shoes"]);
addArenaSet("Pre-Explosion Set",[5,6],["Nostalgia <b>+50%</b>","Nostalgia <b>+150%</b>"],[-1,-1],["Pre-Explosion Trophy","Pre-Explosion Hat","Pre-Explosion Shirt","Pre-Explosion Gloves","Pre-Explosion Pants","Pre-Explosion Shoes"]);
addArenaSet("2nd Anniversary Set",[5,6],["Nostalgia <b>+25%</b>","Nostalgia <b>+50%</b>"],[-1,-1],["2nd Anniversary Hat","2nd Anniversary Shirt","2nd Anniversary Gloves","2nd Anniversary Pants","2nd Anniversary Shoes","2nd Anniversary Medal"]);
addArenaSet("Dragon Slayer Set",[5,5,5,6,6,6,6,6,6],["Spawn Rate","MaxHP","Evasion","EXP","Damage","MaxMP","Attack Speed","Accuracy","Damage dealt in Endless Dungeon is multiplied by <b>1.2</b>"],[25,100,100,50,75,150,50,300,-1],["Any Dragon Slayer Weapon","Dragon Slayer Hat","Dragon Slayer Shirt","Dragon Slayer Gloves","Dragon Slayer Pants","Dragon Slayer Shoes"]);
addArenaSet("Demon Slayer Set",[5,5,5,6,6,6,6,6,6],["Spawn Rate","MaxHP","Evasion","EXP","Damage","MaxMP","Attack Speed","Accuracy","Damage dealt in Endless Dungeon is multiplied by <b>1.2</b>"],[25,100,100,50,75,150,50,300,-1],["Any Demon Slayer Weapon","Demon Slayer Hat","Demon Slayer Shirt","Demon Slayer Gloves","Demon Slayer Pants","Demon Slayer Shoes"]);
addArenaSet("Fire Elemental Set",[2,3,3],["Damage","Damage","EXP"],[20,30,50],["Epic Fire Staff","Pendant of Fire","Fire Card","Fire Card [+]","Spell Scroll - Fire","Spell Scroll - Fire [+]"]);
addArenaSet("Ice Elemental Set",[2,3,3],["Damage","Damage","EXP"],[20,30,50],["Epic Ice Staff","Pendant of Ice","Ice Card","Ice Card [+]","Spell Scroll - Ice","Spell Scroll - Ice [+]"]);
addArenaSet("Wind Elemental Set",[2,3,3],["Damage","Damage","EXP"],[20,30,50],["Epic Wind Staff","Pendant of Wind","Wind Card","Wind Card [+]","Spell Scroll - Wind","Spell Scroll - Wind [+]"]);
addArenaSet("Earth Elemental Set",[2,3,3],["Damage","Damage","EXP"],[20,30,50],["Epic Earth Staff","Pendant of Earth","Earth Card","Earth Card [+]","Spell Scroll - Earth","Spell Scroll - Earth [+]"]);
addArenaSet("Thunder Elemental Set",[2,3,3],["Damage","Damage","EXP"],[20,30,50],["Epic Thunder Staff","Pendant of Thunder","Thunder Card","Thunder Card [+]","Spell Scroll - Thunder","Spell Scroll - Thunder [+]"]);
addArenaSet("Water Elemental Set",[2,3,3],["Damage","Damage","EXP"],[20,30,50],["Epic Water Staff","Pendant of Water","Water Card","Water Card [+]","Spell Scroll - Water","Spell Scroll - Water [+]"]);
addArenaSet("Light Elemental Set",[2,3,3],["Damage","Damage","EXP"],[15,30,50],["Light Glaive","Pendant of Light","Light Card","Light Card [+]","Spell Scroll - Light","Spell Scroll - Light [+]"]);
addArenaSet("Dark Elemental Set",[2,3,3],["Damage","Damage","EXP"],[15,30,50],["Dark Glaive","Pendant of Darkness","Dark Card","Dark Card [+]","Spell Scroll - Dark","Spell Scroll - Dark [+]"]);
addArenaSet("Set of Good Luck",[2],["Drop Rate"],[500],["Four-Leaf Clover","Gem of Good Luck"]);
addArenaSet("Reincarnation Set",[2,3,4,5,6,6,7,8,9,9,9,9],["Spawn Rate","Spawn Rate","Spawn Rate","Spawn Rate","Spawn Rate","EXP","Spawn Rate","Spawn Rate","Coin","EXP","Most loot drops are magnetized","Automatically gain some Arena EXP and A: TG EXP every second. Effect is multiplied by the number of Rebirths."],[5,5,5,5,10,40,15,15,20,80,-1,-1],["Reincarnation Weapon","Reincarnation Hat","Reincarnation Shirt","Reincarnation Gloves","Reincarnation Pants","Reincarnation Shoes","Reincarnation Pendant","Reincarnation Earrings","Reincarnation Trinket","Apocalypse Mode"]);
addArenaSet("ULTRA SET",[2,3,4,5],["Damage","Damage","Damage","Damage"],[10,20,30,40],["ULTRA HAT","ULTRA SHIRT","ULTRA GLOVES","ULTRA PANTS","ULTRA SHOES"]);
addArenaSet("Kana Warrior Set",[2],["EXP"],[39],["Kana Warrior","Kana King"]);
addArenaSet("Epic Pyramid Set",[2,2,3,3,3,3],["Coin","Damage dealt in Dark Pyramid is multiplied by <b>1.2</b>","Damage","EXP","Spawn Rate","Damage dealt in Dark Pyramid is multiplied by <b>1.25</b>"],[5,-1,10,10,10,-1],["Revolution Pyrabow","Revolution Earrings","Revolution Pendant"]);
addArenaSet("Festive Set",[5,5,5,6,6],["EXP","Damage","MaxMP","EXP","Damage"],[40,40,100,160,160],["Festive Hat","Festive Shirt","Festive Gloves","Festive Pants","Festive Shoes","Technical Trophy #1"]);
addArenaSet("Choco Set",[5,5,5,6,6],["EXP","Damage","MaxHP","EXP","Damage"],[40,40,100,160,160],["Choco Hat","Choco Shirt","Choco Gloves","Choco Pants","Choco Shoes","Technical Trophy #2"]);
addArenaSet("Apocalypse",[2,2],["Spawn Rate","<b>Apocalypse Mode</b>"],[25,-1],["Worst Moon Gem","Invisible X"]);
addArenaSet("Lantern Set",[5,5,5,6,6],["EXP","Damage","Spawn Rate","EXP","Damage"],[40,40,5,160,160],["Lantern Hat","Lantern Shirt","Lantern Gloves","Lantern Pants","Lantern Shoes","Technical Trophy #3"]);
addArenaSet("GIGA SET",[1,2,2,2,2,2,2,2],["Damage","Damage","Spawn Rate","Drop Rate","Rare Monster Rate","Epic Monster Rate","Most loot drops are magnetized","Damage dealt in Final Chamber is multiplied by <b>1.2</b>"],[25,50,50,150,150,150,-1,-1],["GIGA PENDANT","GIGA EARRINGS"]);
addArenaSet("MEGA SET",[1,2,2,3,3,3,3,3,3],["Damage","Damage","Spawn Rate","Damage","Spawn Rate","Drop Rate","Rare Monster Rate","Epic Monster Rate","Most loot drops are magnetized"],[25,25,25,25,25,150,150,150,-1],["MEGA PENDANT","MEGA EARRINGS","MEGA WINGS"]);
addArenaSet("Tukkonium Set",[5,6,6,6,6,7,7,7,7,7,7,7,7],["Damage","Spawn Rate","Damage","MaxHP","Evasion","Spawn Rate","EXP","Coin","Damage","MaxMP","Attack Speed","Accuracy","Damage dealt in all areas is multiplied by <b>1.2</b>"],[25,25,25,150,150,25,75,25,75,300,75,600,-1],["Any Tukkonium Weapon","Tukkonium Hat","Tukkonium Shirt","Tukkonium Gloves","Tukkonium Pants","Tukkonium Shoes","Tukkonium Skin"]);
addArenaSet("Gem of Eternal Rage",[2,2,2],["Spawn Rate","Damage","Attack Speed"],[10,25,50],["Gem of Eternal Rage","Rune of Rage"]);
addArenaSet("TERA SET",[1,2,2,2,2,2,2,2],["Damage","Damage","Spawn Rate","Drop Rate","Rare Monster Rate","Epic Monster Rate","Most loot drops are magnetized","Damage dealt in Final Chamber and Endless Dungeon is multiplied by <b>1.5</b>"],[25,50,50,300,300,300,-1,-1],["TERA PENDANT","TERA EARRINGS"]);
addArenaSet("Elite Grenades",[1,1],["EXP","Damage"],[25,25],["Elite Grenades"]);
_root.setCount = new Array();
_root.setHighest = 0;
checkFullInventory();
var enemyList = [zeroItem];
_root.totalMonster = 500;
addArenaEnemy(1,1,25,-999999999,100000,1,30,2000,1000,1000,"Invisible X","All",true,0,3,false,30,0,0,0,"None",0,"Tukkun","2012: Ye Olde Pub","Spawn Rate",30,"",0,"",0,"Spirit Recovery",-1,0,1,"",0,0,0,"",0,0,0);
addArenaEnemy(15,0,100,0,70,30,40,280,28,100,"Idle Dummy","Earth",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Beginner Training Zone","Instant Kill",25,"Hit Chance",25,"Mastery",25,"",0,0,0,"",0,0,0,"",0,0,0);
addArenaEnemy(17,1,100,0,70,30,60,290,29,100,"Jr. Dummy","Earth",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Beginner Training Zone","Accuracy %",5,"",0,"Mastery",5,"Attack: Regular",105,0,23,"",0,0,0,"",0,0,0);
addArenaEnemy(18,1,100,0,70,30,80,300,30,100,"Dark Jr. Dummy","Dark",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Beginner Training Zone","Accuracy %",5,"",0,"Mastery",5,"Attack: Regular",105,0,23,"",0,0,0,"",0,0,0);
addArenaEnemy(20,2,100,0,80,30,100,310,31,100,"Wooden Dummy","Earth",false,0,0,false,0,0,0,0,"None",0,"ChioreanTudor","Beginner Training Zone","Accuracy %",5,"",0,"Mastery",5,"Attack: Regular",105,0,21,"",0,0,0,"",0,0,0);
addArenaEnemy(21,3,100,0,80,30,120,320,32,100,"Wind Dummy","Wind",false,0,0,false,0,0,0,0,"None",0,"ChioreanTudor","Beginner Training Zone","Accuracy %",5,"",0,"Mastery",5,"Attack: Regular",105,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(22,2,100,0,80,30,140,330,33,100,"Ice Dummy","Ice",false,0,0,false,0,0,0,0,"None",0,"ChioreanTudor","Beginner Training Zone","Accuracy %",5,"",0,"Mastery",5,"Attack: Regular",105,0,21,"",0,0,0,"",0,0,0);
addArenaEnemy(23,2,100,0,80,30,160,340,34,100,"Fire Dummy","Fire",false,0,0,false,0,5,100,50,"None",0,"ChioreanTudor","Beginner Training Zone","Accuracy %",5,"",0,"Mastery",5,"Attack: Knockback",50,5,16,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(24,2,100,0,140,30,180,250,25,100,"Water Dummy","Water",false,5,0,false,0,0,0,0,"None",0,"ChioreanTudor","Beginner Training Zone","Accuracy %",5,"Hit Chance",2,"Mastery",5,"Attack: Regular",105,0,21,"",0,0,0,"",0,0,0);
addArenaEnemy(25,2,100,0,90,40,200,360,30,100,"Thunder Dummy","Thunder",false,0,0,false,50,0,0,0,"None",0,"ChioreanTudor","Beginner Training Zone","Accuracy %",5,"EXP",2,"Mastery",5,"Attack: Regular",105,0,21,"",0,0,0,"",0,0,0);
addArenaEnemy(34,3,250,2,110,50,250,420,42,100,"Living Dummy","Earth",false,0,0,false,0,0,0,0,"None",0,"ChioreanTudor","Advanced Training Zone","Accuracy %",8,"EXP",4,"Mastery",8,"Attack: Regular",105,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(36,3,250,2,110,50,300,430,43,100,"Healer Dummy","Light",false,0,30,false,0,0,0,0,"None",0,"ChioreanTudor","Advanced Training Zone","Accuracy %",8,"EXP",4,"Mastery",8,"Attack: Regular",105,0,19,"Heal",50,210,24,"",0,0,0);
addArenaEnemy(38,3,250,2,110,60,350,440,44,100,"Dark Dummy","Dark",false,0,0,false,0,5,960,50,"None",0,"ChioreanTudor","Advanced Training Zone","Accuracy %",8,"EXP",4,"Mastery",8,"Attack: Knockback",50,5,14,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(40,3,250,4,130,60,350,450,45,100,"Ghost Dummy","Dark",false,0,0,true,0,0,0,0,"None",0,"ChioreanTudor","Advanced Training Zone","Accuracy %",8,"Resist",4,"Mastery",8,"Attack: Regular",105,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(45,3,500,5,110,80,700,2000,400,500,"Master Dummy","Earth",true,0,50,false,300,0,0,50,"None",0,"ChioreanTudor","Advanced Training Zone","Reward",4,"Mastery",4,"Mastery",12,"Attack: Regular",105,0,19,"Heal",50,210,24,"Buff: Master",10,0,80);
addArenaEnemy(52,1,700,6,310,90,520,550,55,100,"Green Snail","Water",false,0,0,false,0,0,0,25,"None",0,"Tukkun","Mystic Forest","Defense %",10,"",0,"Resist",5,"Attack: Regular",150,0,23,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(54,1,750,8,315,90,600,560,56,100,"Blue Snail","Water",false,0,0,false,0,0,0,25,"None",0,"Tukkun","Mystic Forest","Defense %",10,"",0,"Resist",5,"Attack: Regular",150,0,23,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(65,1.5,1350,17,515,130,1700,2250,450,500,"Old Snail","Fire",true,0,50,false,1900,0,0,25,"Slow",3,"Tukkun","Mystic Forest","Reward",5,"Resist",5,"Resist",7,"Attack: Regular",150,0,22,"Heal",50,300,27,"Buff: Enrage",10,0,90);
addArenaEnemy(56,1.5,1000,7,355,90,720,570,57,100,"Dry Snail","Earth",false,0,0,false,0,0,0,0,"None",0,"Toudou1620","Mystic Forest","Equipment Defense",40,"",0,"Defense %",10,"Attack: Regular",150,0,22,"",0,0,0,"",0,0,0);
addArenaEnemy(58,5,950,4,325,90,680,580,58,100,"Rabbit","Ice",false,0,0,false,0,0,0,100,"None",0,"dragonewyn","Mystic Forest","Attack Speed",1,"",0,"Attack Speed %",10,"Attack: Regular",150,0,15,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(70,5,1250,10,540,140,2000,2500,500,500,"Carabbit","Ice",true,0,0,false,2550,0,0,100,"None",0,"Tukkun","Mystic Forest","Reward",5,"Attack Speed",1,"Attack Speed %",15,"Attack: Regular",150,0,15,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(60,4,1000,5,520,100,720,590,59,100,"Jr. Blob","Water",false,0,20,false,0,0,0,0,"None",0,"dragonewyn","Mystic Forest","MaxMP %",20,"",0,"Critical Chance",5,"Attack: Regular",150,0,17,"Heal",50,300,22,"",0,0,0);
addArenaEnemy(62,4,1050,5,530,100,800,600,60,100,"Blob","Water",false,0,25,false,0,0,0,0,"None",0,"dragonewyn","Mystic Forest","MaxMP %",20,"",0,"Critical Chance",5,"Attack: Regular",150,0,17,"Heal",50,300,22,"",0,0,0);
addArenaEnemy(64,4,1100,5,540,100,880,610,61,100,"Glob","Water",false,0,30,false,0,0,0,0,"None",0,"Tukkun","Mystic Forest","MaxMP %",20,"",0,"Critical Chance",5,"Attack: Regular",150,0,17,"Heal",50,300,22,"",0,0,0);
addArenaEnemy(80,4,1300,12,820,150,2500,2750,550,500,"BlobBB","Water",true,0,60,false,3000,0,0,50,"None",0,"dragonewyn","Mystic Forest","Reward",5,"MaxMP %",20,"Critical Chance",7,"Attack: Regular",150,0,17,"Heal",50,300,22,"Buff: Enrage",10,0,90);
addArenaEnemy(65,3.5,1100,6,430,100,1000,620,62,100,"Jelly","Water",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Mystic Forest","MaxHP %",20,"",0,"Critical Damage",20,"Attack: Regular",150,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(67,3.5,1150,7,430,100,1080,630,63,100,"Blue Jelly","Water",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Mystic Forest","MaxHP %",20,"",0,"Critical Damage",20,"Attack: Regular",150,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(68,3.5,1200,7,430,100,1120,640,64,100,"Slime","Water",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Mystic Forest","MaxHP %",20,"",0,"Critical Damage",20,"Attack: Regular",150,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(70,3.5,1250,7,440,100,1200,650,65,100,"Blue Slime","Water",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Mystic Forest","MaxHP %",20,"",0,"Critical Damage",20,"Attack: Regular",150,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(71,3.5,1300,8,400,100,1040,440,44,100,"Jr. Goop","Water",false,32,0,false,0,0,0,0,"None",0,"Tukkun","Mystic Forest","Equipment Attack",40,"",0,"Attack %",10,"Attack: Regular",150,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(73,3.5,1350,8,410,100,1320,450,45,100,"Blue Jr. Goop","Water",false,33,0,false,0,0,0,0,"None",0,"Tukkun","Mystic Forest","Equipment Attack",40,"",0,"Attack %",10,"Attack: Regular",150,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(74,3.5,1400,8,410,100,1360,680,68,100,"Goop","Water",false,0,0,false,1700,0,0,0,"None",0,"Randomthought31","Mystic Forest","Equipment Attack",40,"",0,"Attack %",10,"Attack: Regular",150,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(76,3.5,1450,9,415,100,1440,690,69,100,"Blue Goop","Water",false,0,0,false,1750,0,0,0,"None",0,"Randomthought31","Mystic Forest","Equipment Attack",40,"",0,"Attack %",10,"Attack: Regular",150,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(77,4.5,1250,8,375,100,1400,700,70,100,"Octopus","Water",false,0,0,false,2150,0,0,50,"None",0,"Tukkun","Mystic Forest","Attack Speed",1,"",0,"Ignore Defense",5,"Attack: Regular",150,0,16,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(90,1,1800,30,505,200,2000,800,80,200,"Dark Snail","Dark",false,0,0,false,0,0,0,25,"None",0,"Tukkun","Night Forest","Defense %",15,"",0,"Resist",7,"Attack: Regular",175,0,23,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(92,5,2050,16,510,200,2100,810,81,200,"Dark Rabbit","Dark",false,0,0,false,0,0,0,100,"None",0,"dragonewyn","Night Forest","Attack Speed",1,"",0,"Attack Speed %",15,"Attack: Regular",175,0,15,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(95,4,2100,17,820,210,2200,820,82,200,"Dark Blob","Dark",false,0,40,false,0,0,0,0,"None",0,"dragonewyn","Night Forest","MaxMP %",30,"",0,"Critical Chance",7,"Attack: Regular",175,0,25,"",0,0,0,"",0,0,0);
addArenaEnemy(97,3.5,2850,20,650,210,2300,830,83,200,"Dark Jelly","Dark",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Night Forest","MaxHP %",30,"",0,"Critical Damage",30,"Attack: Regular",175,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(100,3.5,2950,22,660,220,2400,840,84,200,"Dark Slime","Dark",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Night Forest","MaxHP %",30,"",0,"Critical Damage",30,"Attack: Regular",175,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(102,3.5,3350,23,600,220,2500,550,55,200,"Dark Jr. Goop","Dark",false,41,0,false,0,0,0,0,"None",0,"Tukkun","Night Forest","Equipment Attack",60,"",0,"Attack %",15,"Attack: Regular",175,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(105,3.5,3100,24,610,230,2700,560,56,200,"Dark Goop","Dark",false,0,0,false,2400,0,0,0,"None",0,"Randomthought31","Night Forest","Equipment Attack",60,"",0,"Attack %",15,"Attack: Regular",175,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(107,1.5,2350,30,620,230,2900,870,87,200,"Tree Stump","Earth",false,0,50,false,0,0,0,0,"None",0,"Tukkun","Night Forest","Defense %",15,"",0,"MaxHP %",30,"Attack: Regular",175,0,22,"Heal",50,350,27,"",0,0,0);
addArenaEnemy(110,1.5,2450,32,630,240,3000,880,88,200,"Dark Stump","Dark",false,0,60,false,0,0,0,0,"None",0,"Tukkun","Night Forest","Defense %",15,"",0,"MaxHP %",30,"Attack: Regular",175,0,22,"Heal",50,350,27,"",0,0,0);
addArenaEnemy(112,1.5,2500,56,635,240,3200,890,89,200,"Zombie Stump","Dark",false,0,0,true,0,0,0,0,"None",0,"Tukkun","Night Forest","Defense %",15,"Resist",7,"MaxHP %",30,"Attack: Regular",175,0,22,"",0,0,0,"",0,0,0);
addArenaEnemy(115,2,2550,35,645,250,3300,900,90,200,"Green Tree","Earth",false,0,80,false,0,0,0,0,"None",0,"Tukkun","Night Forest","Defense %",15,"",0,"MaxMP %",30,"Attack: Regular",175,0,21,"Heal",50,350,26,"",0,0,0);
addArenaEnemy(120,2,2650,39,660,250,3500,910,91,200,"Red Tree","Earth",false,0,90,false,0,0,0,0,"None",0,"Tukkun","Night Forest","Defense %",15,"",0,"MaxMP %",30,"Attack: Regular",175,0,21,"Heal",50,350,26,"",0,0,0);
addArenaEnemy(135,2,4500,87,1070,400,9000,4000,800,1000,"Treeman","Earth",true,0,200,false,0,0,0,0,"None",0,"Tukkun","Night Forest","Reward",7,"Resist",7,"MaxMP %",45,"Attack: Regular",175,0,21,"Heal",50,350,26,"",0,0,0);
addArenaEnemy(122,2.5,2450,31,600,250,3400,920,92,200,"Moose","Light",false,0,0,false,0,0,0,50,"None",0,"Randomthought31","Night Forest","Negate Effect",7,"",0,"Potion Efficiency",15,"Attack: Regular",175,0,20,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(125,2.5,2500,32,610,250,3600,930,93,200,"Orange Moose","Light",false,0,0,false,0,0,0,50,"None",0,"Randomthought31","Night Forest","Negate Effect",7,"",0,"Potion Efficiency",15,"Attack: Regular",175,0,20,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(127,0,2800,45,960,275,3800,940,94,200,"Mushouse","Earth",false,51,0,false,3050,7,3800,0,"None",0,"Tukkun","Night Forest","Critical Chance",7,"",0,"Equipment Defense",60,"Attack: Knockback",85,5,20,"",0,0,0,"",0,0,0);
addArenaEnemy(130,3.5,3450,48,770,275,3900,950,95,200,"Mushroom","Earth",false,0,0,false,2950,0,0,0,"None",0,"Tukkun","Night Forest","Critical Damage",30,"",0,"Equipment Defense",60,"Attack: Regular",175,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(145,0,4800,92,1570,450,11000,3000,600,1000,"Giant Mushouse","Earth",true,53,0,false,5200,7,6500,0,"None",0,"Guille","Night Forest","Reward",7,"Critical Chance",7,"Equipment Defense",90,"Attack: Knockback",85,5,20,"",0,0,0,"",0,0,0);
addArenaEnemy(160,3.5,6350,120,1310,450,12500,4500,900,1000,"Giant Mushroom","Earth",true,0,0,false,5450,0,0,0,"None",0,"Guille","Night Forest","Reward",7,"Critical Damage",30,"Equipment Defense",90,"Attack: Regular",175,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(175,4,6100,120,1270,450,20000,5000,1000,1000,"Forest Spirit","Earth",true,0,0,false,7350,0,0,0,"None",0,"PartyzantPL","Night Forest","Reward",7,"Boss Damage",7,"Potion Efficiency",30,"Attack: Regular",175,0,17,"Heal",50,350,22,"Spirit Recovery",2,0,5);
addArenaEnemy(200,4.5,4400,130,1030,1050,9000,1100,110,300,"Bird","Wind",false,0,0,false,0,0,0,0,"None",0,"Ryo_Sangnoir","The Sky","Attack Speed",2,"",0,"Dodge Chance",10,"Attack: Regular",200,0,16,"",0,0,0,"",0,0,0);
addArenaEnemy(210,4.5,4600,145,1070,1050,10000,1150,115,300,"Blue Bird","Wind",false,0,0,false,0,0,0,0,"None",0,"Ryo_Sangnoir","The Sky","Attack Speed",2,"",0,"Dodge Chance",10,"Attack: Regular",200,0,16,"",0,0,0,"",0,0,0);
addArenaEnemy(220,4.5,4850,145,1100,1050,11000,1200,120,300,"Healer Bird","Light",false,0,300,false,0,0,0,0,"None",0,"Ryo_Sangnoir","The Sky","Attack Speed",2,"",0,"Dodge Chance",10,"Attack: Regular",200,0,16,"Heal",50,400,21,"",0,0,0);
addArenaEnemy(230,4.5,4550,160,1020,1050,12000,1250,125,300,"Dark Bird","Dark",false,0,0,false,0,0,0,50,"None",0,"Ryo_Sangnoir","The Sky","Attack Speed",2,"",0,"Dodge Chance",10,"Attack: Regular",200,0,16,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(240,4.5,4250,180,1060,1050,13000,1300,130,300,"Thunderbird","Thunder",false,0,0,false,5100,0,0,50,"None",0,"Ryo_Sangnoir","The Sky","Attack Speed",2,"",0,"Dodge Chance",10,"Attack: Regular",200,0,16,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(250,4.5,4950,295,1090,1050,14000,1350,135,300,"Zombie Bird","Dark",false,0,0,true,0,0,0,50,"None",0,"Ryo_Sangnoir","The Sky","Attack Speed",2,"Resist",10,"Dodge Chance",10,"Attack: Regular",200,0,16,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(260,4.5,5650,240,1760,1300,15000,1400,140,300,"Seagull","Wind",false,0,0,false,0,0,0,0,"Weaken",3,"Toudou1620","The Sky","Attack Speed",2,"Critical Chance",10,"Evasion %",20,"Attack: Weaken",100,5,21,"Attack: Regular",200,0,26,"",0,0,0);
addArenaEnemy(275,4.5,10500,365,1760,1000,55000,6500,1300,1500,"Feonix","Fire",true,0,0,false,9600,0,0,50,"None",0,"Tukkun","The Sky","Reward",10,"Attack Speed %",20,"Attack %",30,"Attack: Regular",200,0,16,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(300,5.5,8950,450,1880,1880,70000,7000,1400,1500,"Air Spirit","Wind",true,0,0,false,11000,0,0,50,"None",0,"PartyzantPL","Polluted Sky","Reward",10,"Boss Damage",10,"Potion Efficiency",40,"Attack: Regular",200,0,14,"Buff: Enrage",10,0,80,"Spirit Recovery",3,0,5);
addArenaEnemy(280,4,6500,255,2840,1320,20000,1600,160,300,"Beeterfly","Wind",false,0,400,false,5450,0,0,0,"Poison",3,"Toudou1620","Polluted Sky","Hit Chance",10,"Critical Damage",40,"Accuracy %",20,"Attack: Poison",100,5,22,"Attack: Regular",200,0,27,"Heal",50,400,32);
addArenaEnemy(330,3,11000,470,1600,1600,24000,1900,190,400,"Bunnyhead","Thunder",false,0,0,false,13000,0,0,0,"None",0,"Tukkun","Deadlands","Attack Speed",2,"Non-Boss Damage",12,"Damage",12,"Attack: Regular",225,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(340,3,11500,505,1640,1640,26000,1950,195,400,"Dark Bunnyhead","Dark",false,0,0,false,13500,0,0,0,"None",0,"Tukkun","Deadlands","Attack Speed",2,"Non-Boss Damage",12,"Damage",12,"Attack: Regular",225,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(350,2,7000,485,1510,2960,28000,2000,200,400,"Earth Worm","Earth",false,0,0,false,7600,0,0,50,"None",0,"Tukkun","Deadlands","Dodge Chance",12,"",0,"Evasion %",25,"Attack: Regular",225,0,21,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(360,2,8000,575,1710,2230,30000,2050,205,400,"Spyder","Earth",false,0,0,false,7800,0,0,0,"Poison",2,"Tukkun","Deadlands","Equipment Attack",100,"",0,"Evasion %",25,"Attack: Poison",110,5,26,"Attack: Regular",225,0,31,"",0,0,0);
addArenaEnemy(370,5,7000,615,1750,2630,32000,2100,210,400,"Stinky Rat","Earth",false,0,0,false,7500,0,0,0,"Poison",2,"ChioreanTudor","Deadlands","Attack Speed",2,"",0,"Dodge Chance",12,"Attack: Poison",110,5,20,"Attack: Regular",225,0,25,"",0,0,0);
addArenaEnemy(380,5,7500,655,1790,2690,35000,2150,215,400,"Rat","Earth",false,0,0,false,7750,0,0,0,"Poison",2,"Tukkun","Deadlands","Attack Speed",2,"",0,"Dodge Chance",12,"Attack: Poison",110,5,20,"Attack: Regular",225,0,25,"",0,0,0);
addArenaEnemy(400,5,10000,995,2520,3780,200000,8000,1600,2000,"Giant Rat","Earth",true,0,0,false,12000,0,0,25,"Poison",3,"Tukkun","Deadlands","Reward",12,"Attack Speed %",25,"Dodge Chance",18,"Attack: Poison",110,5,20,"Attack: Regular",225,0,25,"Buff: Enrage",10,0,90);
addArenaEnemy(450,3,13000,1200,2260,3390,75000,2350,235,600,"Desert Slime","Earth",false,0,0,false,0,0,0,0,"None",0,"Tukkun","The Desert","Attack %",30,"",0,"Dodge Chance",15,"Attack: Stun",275,2,34,"",0,0,0,"",0,0,0);
addArenaEnemy(465,3,12000,1300,2310,3470,80000,2400,240,600,"Mud Slime","Earth",false,0,0,false,0,0,0,0,"Slow",5,"Tukkun","The Desert","Attack %",30,"",0,"Dodge Chance",15,"Attack: Stun",275,2,34,"",0,0,0,"",0,0,0);
addArenaEnemy(480,2.5,11500,1400,2370,2370,85000,2450,245,600,"Cactus","Earth",false,0,0,false,11000,0,0,0,"Slow",2,"Darkranboria","The Desert","Attack %",30,"",0,"MaxHP %",60,"Attack: Regular",275,0,20,"",0,0,0,"",0,0,0);
addArenaEnemy(495,2.5,12000,1500,2430,2430,90000,2500,250,600,"Flame Cactus","Fire",false,0,0,false,11000,0,0,0,"Poison",2,"Darkranboria","The Desert","Attack %",30,"",0,"MaxHP %",60,"Attack: Poison",135,5,25,"Attack: Regular",275,0,30,"",0,0,0);
addArenaEnemy(510,5,8750,1600,3740,2490,95000,2550,255,600,"Green Snake","Earth",false,0,0,false,10500,0,0,0,"Poison",2,"Tukkun","The Desert","Attack Speed",3,"",0,"Hit Chance",15,"Attack: Poison",135,5,20,"Attack: Regular",275,0,25,"",0,0,0);
addArenaEnemy(525,5,9000,1700,3810,2540,100000,2600,260,600,"Red Snake","Fire",false,0,0,false,11000,0,0,0,"Poison",2,"Tukkun","The Desert","Attack Speed",3,"",0,"Hit Chance",15,"Attack: Poison",135,5,20,"Attack: Regular",275,0,25,"",0,0,0);
addArenaEnemy(540,5,9300,1850,3900,2600,105000,2650,265,600,"Dark Snake","Dark",false,0,0,false,11500,0,0,0,"Poison",2,"Tukkun","The Desert","Attack Speed",3,"",0,"Hit Chance",15,"Attack: Poison",135,5,20,"Attack: Regular",275,0,25,"",0,0,0);
addArenaEnemy(555,2,11500,1950,2660,6750,110000,2700,270,600,"Sand Abuser","Earth",false,0,0,false,0,0,0,0,"Blind",6,"Tukkun","The Desert","Evasion %",30,"Dodge Chance",15,"Evasion %",30,"Attack: Blind",135,5,26,"Attack: Regular",275,0,31,"",0,0,0);
addArenaEnemy(570,2,12000,1850,2440,2440,130000,2750,275,600,"Desert Dwarf","Earth",false,0,0,false,0,0,0,25,"None",0,"Tukkun","The Desert","Drop Rate",15,"",0,"EXP",15,"Attack: Regular",275,0,21,"Buff: Enrage",10,0,80,"Produce Loot: Pixel",1000,0,20);
addArenaEnemy(585,2,12000,1950,2500,2500,150000,2800,280,600,"Dark Dwarf","Earth",false,0,0,false,0,0,0,25,"None",0,"Tukkun","The Desert","Drop Rate",15,"",0,"EXP",15,"Attack: Regular",275,0,21,"Buff: Enrage",10,0,80,"Produce Loot: Material",500,0,20);
addArenaEnemy(650,2,16500,5100,4090,6140,800000,12000,2400,3000,"Sand Giant","Earth",true,0,15000,false,19500,0,0,75,"Blind",4,"Tukkun","The Desert","Reward",15,"Dodge Chance",15,"Resist",22,"Attack: Blind",135,5,26,"Attack: Regular",275,0,31,"Heal",50,550,36);
addArenaEnemy(720,1.5,15000,7750,3240,3240,250000,3100,310,800,"Green Turtle","Water",false,0,0,false,17000,0,0,75,"None",0,"HeroicHero","The Beach","Defense %",35,"",0,"Resist",17,"Attack: Regular",325,0,22,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(740,1.5,15500,8250,3310,3310,275000,3150,315,800,"Blue Turtle","Water",false,0,0,false,17500,0,0,75,"None",0,"HeroicHero","The Beach","Defense %",35,"",0,"Resist",17,"Attack: Regular",325,0,22,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(760,1.5,19500,8950,3760,3760,300000,3200,320,800,"Bonefish","Dark",false,0,0,true,0,15,27500,0,"None",0,"CTSG","The Beach","Resist",17,"",0,"Equipment Defense",140,"Attack: Knockback",160,5,17,"Produce Loot: Coin",2000,0,20,"",0,0,0);
addArenaEnemy(780,3,19000,6900,3840,3840,325000,3250,325,800,"Floating Fish","Water",false,0,0,false,0,0,0,0,"None",0,"Tukkun","The Beach","Magic Resist",17,"",0,"MaxMP %",70,"Attack: Regular",325,0,19,"Buff Extension",2,0,10,"",0,0,0);
addArenaEnemy(800,4,26000,5600,3920,3920,350000,3300,330,800,"White Duck","Water",false,0,0,false,0,0,0,0,"None",0,"dragonewyn","The Beach","Spawn Rate",10,"Attack Speed",3,"Attack %",35,"Attack: Regular",325,0,17,"",0,0,0,"",0,0,0);
addArenaEnemy(820,4,26500,5900,4000,4000,375000,3350,335,800,"Dark Duck","Dark",false,0,0,false,0,0,0,0,"None",0,"dragonewyn","The Beach","Spawn Rate",10,"Attack Speed",3,"Attack %",35,"Attack: Regular",325,0,17,"",0,0,0,"",0,0,0);
addArenaEnemy(840,5,27500,5600,3670,3670,400000,3400,340,800,"Mad Duck","Water",false,0,0,false,0,0,0,75,"None",0,"Toudou1620","The Beach","Attack Speed",3,"Non-Boss Damage",17,"Attack %",35,"Attack: Regular",325,0,15,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(860,5,32000,5900,4160,4160,425000,3450,345,800,"Mallard","Water",false,0,14000,false,0,0,0,0,"None",0,"?","The Beach","Attack Speed",3,"Non-Boss Damage",17,"Damage",17,"Attack: Regular",325,0,15,"Heal",50,650,20,"",0,0,0);
addArenaEnemy(880,5,33000,6250,4240,4240,450000,3500,350,800,"Dark Mallard","Dark",false,0,15000,false,0,0,0,0,"None",0,"?","The Beach","Attack Speed",3,"Non-Boss Damage",17,"Damage",17,"Attack: Regular",325,0,15,"Heal",50,650,20,"",0,0,0);
addArenaEnemy(900,1.5,22500,6550,3890,3890,500000,3550,355,800,"Thunder Lizard","Thunder",false,0,0,false,21500,0,0,50,"None",0,"Toudou1620","The Beach","Equipment Attack",140,"",0,"MaxHP %",70,"Attack: Regular",325,0,22,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(920,1.5,23000,6900,3960,3960,550000,3600,360,800,"Wind Lizard","Wind",false,0,0,false,22000,0,0,50,"None",0,"Toudou1620","The Beach","Equipment Attack",140,"",0,"MaxHP %",70,"Attack: Regular",325,0,22,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(940,1.5,23500,7200,4030,4030,600000,3650,365,800,"Water Lizard","Water",false,0,0,false,22500,0,0,50,"None",0,"Toudou1620","The Beach","Equipment Attack",140,"",0,"MaxHP %",70,"Attack: Regular",325,0,22,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(960,2,20500,9850,4110,5350,650000,3700,370,800,"Blue Crab","Water",false,0,0,false,23000,0,0,50,"None",0,"Toudou1620","The Beach","Evasion %",35,"",0,"Defense %",35,"Attack: Regular",325,0,21,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(980,2,21000,10500,4180,5440,700000,3750,375,800,"Red Crab","Fire",false,0,0,false,23500,0,0,50,"None",0,"Toudou1620","The Beach","Evasion %",35,"",0,"Defense %",35,"Attack: Regular",325,0,21,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(1050,2,27500,25000,5320,7980,3500000,15000,3000,4000,"King Crab","Dark",true,0,0,false,30000,0,0,50,"None",0,"Toudou1620","The Beach","Reward",17,"",0,"Defense %",35,"Attack: Regular",325,0,21,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(1100,5,35500,15000,6830,6830,4200000,16000,3200,4000,"Water Spirit","Water",true,0,0,false,42500,0,0,50,"None",0,"PartyzantPL","Secret Beach","Reward",17,"Boss Damage",17,"Potion Efficiency",70,"Attack: Regular",325,0,15,"Buff: Enrage",10,0,80,"Spirit Recovery",4,0,5);
addArenaEnemy(1200,4,51000,30500,8210,8210,4000000,18000,3600,4000,"Zombie Duck","Dark",true,0,0,true,0,0,0,0,"None",0,"dragonewyn","Secret Beach","Reward",17,"Resist",17,"Attack %",52,"Attack: Regular",325,0,17,"Attack: Silence",290,18,23,"Attack: Defense Down",290,3,13);
addArenaEnemy(1100,0,27000,22000,5270,5270,1000000,4300,430,1200,"Rocky","Earth",false,0,31000,false,0,7,40000,0,"None",0,"Randomthought31","Binary Battlefield","Defense %",40,"",0,"Resist",20,"Attack: Knockback",185,5,20,"Heal",50,750,30,"",0,0,0);
addArenaEnemy(1125,3,36500,23500,5920,5380,1100000,4350,435,1200,"Moving Rocky","Earth",false,0,33000,false,0,7,39000,0,"None",0,"Randomthought31","Binary Battlefield","Defense %",40,"Double Hit Chance",20,"Resist",20,"Attack: Knockback",185,5,14,"Heal",50,750,24,"",0,0,0);
addArenaEnemy(1150,3,38500,30500,5480,5480,1200000,4400,440,1200,"RM-04","Thunder",false,0,0,false,0,10,40000,0,"None",0,"Tukkun","Binary Battlefield","Defense %",40,"Reflect",600,"Reflect",600,"Attack: Knockback",185,5,14,"",0,0,0,"",0,0,0);
addArenaEnemy(1175,3,26500,19000,5580,7260,1300000,4450,445,1200,"Robo Spyder","Thunder",false,0,0,false,26500,10,33000,0,"Poison",4,"Tukkun","Binary Battlefield","Defense %",40,"Equipment Attack",160,"Evasion %",40,"Attack: Poison",185,5,24,"Attack: Knockback",185,5,24,"",0,0,0);
addArenaEnemy(1200,2.5,24000,39000,5690,5690,1200000,4500,450,1200,"Robospook","Dark",false,0,0,true,29000,10,36000,0,"Slow",4,"Tukkun","Binary Battlefield","Resist",20,"Defense %",40,"Defense %",40,"Attack: Knockback",185,5,15,"",0,0,0,"",0,0,0);
addArenaEnemy(1225,0,35500,21000,5790,5790,1400000,4550,455,1200,"Crappy Cannon","Thunder",false,0,0,false,32500,10,40500,0,"None",0,"ChioreanTudor","Binary Battlefield","Defense %",40,"",0,"Attack %",40,"Attack: Knockback",185,5,20,"",0,0,0,"",0,0,0);
addArenaEnemy(1250,0,36000,22000,5900,5900,1500000,4600,460,1200,"Defense Cannon","Thunder",false,0,0,false,33500,10,41500,0,"None",0,"ChioreanTudor","Binary Battlefield","Defense %",40,"",0,"Attack %",40,"Attack: Knockback",185,5,20,"",0,0,0,"",0,0,0);
addArenaEnemy(1275,3,42000,23000,6000,6000,1600000,4650,465,1200,"Walking Cannon","Thunder",false,0,0,false,39000,10,40500,0,"None",0,"ChioreanTudor","Binary Battlefield","Defense %",40,"Attack Speed %",40,"Attack %",40,"Attack: Knockback",185,5,14,"",0,0,0,"",0,0,0);
addArenaEnemy(1300,3,37000,21500,6110,6110,1700000,4700,470,1200,"Computer","Light",false,0,48000,false,0,10,46000,0,"None",0,"ChioreanTudor","Binary Battlefield","Defense %",40,"",0,"Attack Speed %",40,"Attack: Knockback",185,5,14,"Heal",50,750,24,"",0,0,0);
addArenaEnemy(1325,3,37500,22500,6210,6210,1800000,4750,475,1200,"Lolputer","Light",false,0,51000,false,0,10,47000,0,"None",0,"ChioreanTudor","Binary Battlefield","Defense %",40,"",0,"Attack Speed %",40,"Attack: Knockback",185,5,14,"Heal",50,750,24,"",0,0,0);
addArenaEnemy(1350,3,38500,23500,6320,6320,1900000,4800,480,1200,"Computetris","Light",false,0,54000,false,0,10,48000,0,"None",0,"ChioreanTudor","Binary Battlefield","Defense %",40,"",0,"Attack Speed %",40,"Attack: Knockback",185,5,14,"Heal",50,750,24,"",0,0,0);
addArenaEnemy(1375,3,55000,27500,7070,6420,2000000,4850,485,1200,"Compbroken","Light",false,0,0,false,0,10,49000,0,"None",0,"ChioreanTudor","Binary Battlefield","Defense %",40,"Critical Damage",80,"Attack Speed %",40,"Attack: Knockback",185,5,14,"",0,0,0,"",0,0,0);
addArenaEnemy(1400,3,40000,28500,9150,6530,2100000,4900,490,1200,"BSOD","Water",false,0,0,false,43500,10,45000,0,"None",0,"ChioreanTudor","Binary Battlefield","Defense %",40,"Critical Chance",20,"Attack Speed %",40,"Attack: Knockback",185,5,14,"",0,0,0,"",0,0,0);
addArenaEnemy(1425,5,45500,20500,6570,5970,2200000,4950,495,1200,"Blue Robo","Water",false,0,0,false,39000,15,37000,50,"None",0,"ChioreanTudor","Binary Battlefield","Attack Speed",4,"Non-Boss Damage",20,"Critical Damage",80,"Attack: Knockback",185,5,10,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(1450,5,47000,21500,6680,6070,2300000,5000,500,1200,"Green Robo","Wind",false,0,0,false,40000,15,38000,50,"None",0,"ChioreanTudor","Binary Battlefield","Attack Speed",4,"Non-Boss Damage",20,"Critical Damage",80,"Attack: Knockback",185,5,10,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(1475,5,47500,22000,6780,6160,2400000,5050,505,1200,"Red Robo","Fire",false,0,0,false,41000,15,38500,50,"None",0,"ChioreanTudor","Binary Battlefield","Attack Speed",4,"Non-Boss Damage",20,"Critical Damage",80,"Attack: Knockback",185,5,10,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(1500,0,53500,25500,6960,6960,2250000,5100,510,1200,"Bomb","Fire",false,0,0,false,0,1,51500,0,"Self-Destruct",1,"Dragonayzer","Binary Battlefield","Damage",20,"",0,"Equipment Attack",160,"Attack: Knockback",185,5,20,"",0,0,0,"",0,0,0);
addArenaEnemy(1525,0,54500,26500,7060,7060,2500000,5150,515,1200,"Enraged Bomb","Fire",false,0,0,false,0,1,52500,0,"Self-Destruct",1,"Dragonayzer","Binary Battlefield","Damage",20,"",0,"Equipment Attack",160,"Attack: Knockback",185,5,20,"",0,0,0,"",0,0,0);
addArenaEnemy(1550,6,37500,36000,7170,7170,2750000,5200,520,1200,"Clawbot","Thunder",false,0,0,false,0,10,43000,0,"Poison",5,"meshwire","Binary Battlefield","Defense %",40,"Attack Speed",4,"Equipment Attack",160,"Attack: Poison",185,5,18,"Attack: Knockback",185,5,18,"Buff: Power",10,0,80);
addArenaEnemy(1700,5,41000,90000,10500,10500,15000000,22500,4500,6000,"Robosaurus","Thunder",true,0,0,false,49500,20,61500,75,"Slow",5,"meshwire","Binary Battlefield","Reward",20,"Defense %",40,"Resist",20,"Attack: Knockback",185,5,10,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(1575,0,40500,28500,7280,7280,3000000,5250,525,1200,"Weird Box","Thunder",false,0,0,false,0,10,60500,0,"None",0,"Darkranboria","Binary Battlefield","Reward",20,"",0,"Drop Rate",40,"Attack: Knockback",185,5,20,"Produce Loot: Pixel",3000,0,20,"Produce Loot: Rare Item",0,0,150);
addArenaEnemy(1600,0,41000,38500,7380,7380,3250000,5300,530,1200,"Metal Box","Thunder",false,0,0,false,0,10,61500,0,"None",0,"Darkranboria","Binary Battlefield","Reward",20,"Defense %",40,"Drop Rate",40,"Attack: Knockback",185,5,20,"Produce Loot: Material",1500,0,20,"Produce Loot: Rare Item",0,0,150);
addArenaEnemy(1625,5,41500,27500,6740,6740,3500000,5350,535,1200,"Octoroc","Fire",false,0,0,false,38500,15,43500,50,"None",0,"ChioreanTudor","Binary Battlefield","Attack Speed",4,"",0,"Attack %",40,"Attack: Knockback",185,5,10,"Buff: Enrage",10,0,80,"Produce Loot: Stat",0,0,90);
addArenaEnemy(1650,5,42000,28500,6840,6840,2750000,5400,540,1200,"Evil Eye","Thunder",false,0,0,false,39000,15,44000,50,"None",0,"ChioreanTudor","Binary Battlefield","Attack Speed",4,"",0,"Attack %",40,"Attack: Knockback",185,5,10,"Buff: Enrage",10,0,80,"Attack: Defense Down",125,5,30);
addArenaEnemy(1800,3,71000,52500,11100,11100,20000000,25000,5000,6000,"Robo Spirit","Thunder",true,0,0,false,85500,0,0,50,"None",0,"PartyzantPL","Binary Battlefield","Reward",20,"Boss Damage",20,"Potion Efficiency",80,"Attack: Power Down",240,5,29,"Buff: Enrage",10,0,80,"Spirit Recovery",5,0,5);
addArenaEnemy(1900,4,53000,39500,8010,8010,5000000,6100,610,1800,"Chagon","Fire",false,0,150000,false,49000,0,0,50,"Poison",4,"Randomthought31","Dragon Cave","Pixel",22,"Non-Boss Damage",22,"Attack %",45,"Attack: Poison",210,5,22,"Attack: Regular",425,0,27,"Heal",50,850,32);
addArenaEnemy(1950,4,54500,42000,8210,8210,5250000,6150,615,1800,"Gragon","Earth",false,0,160000,false,50500,0,0,50,"Poison",4,"Randomthought31","Dragon Cave","Pixel",22,"Non-Boss Damage",22,"Attack %",45,"Attack: Poison",210,5,22,"Attack: Regular",425,0,27,"Heal",50,850,32);
addArenaEnemy(2000,4,56500,44500,8410,8410,5500000,6200,620,1800,"Wragon","Water",false,0,180000,false,52000,0,0,50,"Slow",4,"Randomthought31","Dragon Cave","Pixel",22,"Non-Boss Damage",22,"Attack %",45,"Attack: Regular",425,0,17,"Heal",50,850,22,"Buff: Enrage",10,0,90);
addArenaEnemy(2050,4,58500,47500,8600,8600,5750000,6250,625,1800,"Dagon","Dark",false,0,190000,false,54000,0,0,50,"Blind",4,"Randomthought31","Dragon Cave","Pixel",22,"Non-Boss Damage",22,"Attack %",45,"Attack: Blind",210,5,22,"Attack: Regular",425,0,27,"Heal",50,850,32);
addArenaEnemy(2100,4,50000,55500,8800,8800,6000000,6300,630,1800,"Gryph","Dark",false,0,0,false,60000,0,0,75,"Weaken",4,"CTSG","Dragon Cave","Negate Effect",22,"",0,"Ignore Defense",22,"Attack: Weaken",210,5,22,"Attack: Regular",425,0,27,"Buff: Enrage",10,0,90);
addArenaEnemy(2150,4.5,73500,58500,9000,9000,6500000,6350,635,1800,"Fire Dragon","Fire",false,0,0,false,88000,0,0,75,"Poison",5,"HeroicHero","Dragon Cave","Attack Speed",4,"Damage",22,"Damage",22,"Attack: Poison",210,5,21,"Attack: Regular",425,0,26,"Buff: Enrage",10,0,90);
addArenaEnemy(2200,4.5,75500,62000,9200,9200,7000000,6400,640,1800,"Frost Dragon","Ice",false,0,0,false,91000,0,0,75,"Slow",5,"HeroicHero","Dragon Cave","Attack Speed",4,"Damage",22,"Damage",22,"Attack: Regular",425,0,16,"Buff: Enrage",10,0,80,"HP Recovery",11,0,15);
addArenaEnemy(2250,4.5,78000,65000,9400,9400,7500000,6450,645,1800,"Nature Dragon","Earth",false,0,0,false,93500,0,0,75,"Blind",5,"HeroicHero","Dragon Cave","Attack Speed",4,"Damage",22,"Damage",22,"Attack: Blind",210,5,21,"Attack: Regular",425,0,26,"Buff: Enrage",10,0,90);
addArenaEnemy(2300,6,80000,76000,10600,10600,8000000,6500,650,1800,"Fireball","Fire",false,0,0,false,0,0,0,0,"Poison",6,"Randomthought31","Dragon Cave","Attack Speed %",45,"Damage",22,"MaxMP %",90,"Attack: Poison",210,5,18,"Attack: Regular",425,0,23,"",0,0,0);
addArenaEnemy(2300,6,80000,76000,10600,10600,8000000,6500,650,1800,"Iceball","Ice",false,0,0,false,0,0,0,0,"Slow",6,"Randomthought31","Dragon Cave","Attack Speed %",45,"Damage",22,"MaxMP %",90,"Attack: Stun",425,2,28,"Attack: Regular",425,0,23,"",0,0,0);
addArenaEnemy(2400,6,90000,-999999999,40000,40000,20,30000,6000,9000,"Boogie","Fire",true,0,0,false,120000,0,0,0,"All",10,"Tukkun","Dragon Cave","Negate Effect",22,"Instant Kill",10,"Magic Resist",22,"Attack: Blind",210,5,18,"Attack: Evasion Down",1,5,29,"Attack: Accuracy Down",1,5,17);
addArenaEnemy(2500,4.5,94000,115000,15600,15600,60000000,32500,6500,9000,"Bloodsurfer","Dark",true,0,1000000,false,115000,0,0,75,"Blind",5,"SumYungGai","Dragon Cave","Reward",22,"Damage",22,"MaxHP %",135,"Attack: Blind",210,5,21,"Attack: Regular",425,0,26,"Heal",50,850,31);
addArenaEnemy(3200,4,110000,170000,14600,14600,20000000,7500,750,3500,"Bunneye","Ice",false,0,460000,false,0,0,0,75,"None",0,"Toudou1620","Pirate Ship","Mastery",50,"",0,"Attack Speed %",50,"Attack: Regular",475,0,17,"Heal",50,950,22,"Buff: Enrage",10,0,90);
addArenaEnemy(2750,4,113000,175000,14800,14800,21000000,7550,755,3500,"Sword Bunneye","Ice",false,0,480000,false,0,0,0,75,"Weaken",2,"Toudou1620","Pirate Ship","Mastery",50,"",0,"Attack Speed %",50,"Attack: Weaken",235,5,22,"Attack: Regular",475,0,27,"Heal",50,950,32);
addArenaEnemy(2800,4,115000,180000,15000,15000,22000000,7600,760,3500,"Gun Bunneye","Ice",false,0,500000,false,110000,0,0,75,"Weaken",2,"Toudou1620","Pirate Ship","Mastery",50,"",0,"Attack Speed %",50,"Attack: Weaken",235,5,22,"Attack: Regular",475,0,27,"Heal",50,950,32);
addArenaEnemy(2850,6,155000,200000,15300,15300,23000000,7650,765,3500,"Flying Sword","Dark",false,0,0,false,0,0,0,0,"None",0,"dragonewyn","Pirate Ship","Attack Speed",5,"Attack %",50,"Equipment Attack",200,"Attack: Regular",475,0,13,"",0,0,0,"",0,0,0);
addArenaEnemy(2900,6,160000,205000,15600,15600,24000000,7700,770,3500,"Evil Sword","Dark",false,0,0,false,0,0,0,0,"None",0,"dragonewyn","Pirate Ship","Attack Speed",5,"Attack %",50,"Equipment Attack",200,"Attack: Regular",475,0,13,"",0,0,0,"",0,0,0);
addArenaEnemy(2950,6,150000,210000,15800,15800,25000000,7750,775,3500,"Cursed Sword","Dark",false,0,0,true,0,0,0,0,"Slow",3,"dragonewyn","Pirate Ship","Attack Speed",5,"Attack %",50,"Equipment Attack",200,"Attack: Regular",475,0,13,"Attack: Stun",475,2,38,"",0,0,0);
addArenaEnemy(3000,5,100000,200000,14600,14600,26000000,7800,780,3500,"RandomNoob143","Fire",false,0,0,false,0,0,0,75,"None",0,"ChioreanTudor","Pirate Ship","Attack Speed",5,"",0,"Negate Effect",25,"Attack: Regular",475,0,15,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(3050,4,150000,235000,14800,14800,27000000,7850,785,3500,"Knight","All",false,0,0,false,0,0,0,75,"None",0,"ChioreanTudor","Pirate Ship","Equipment Attack",200,"Equipment Defense",200,"Attack %",50,"Attack: Regular",475,0,17,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(3100,4,155000,240000,15000,15000,28000000,7900,790,3500,"Sword Knight","All",false,0,0,false,0,0,0,75,"None",0,"ChioreanTudor","Pirate Ship","Attack %",50,"Equipment Defense",200,"Attack %",50,"Attack: Regular",475,0,17,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(3150,4,160000,265000,15200,15200,29000000,7950,795,3500,"Backpack Knight","All",false,0,0,false,0,0,0,75,"None",0,"ChioreanTudor","Pirate Ship","Attack %",50,"Defense %",50,"Attack %",50,"Attack: Regular",475,0,17,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(3200,5,130000,220000,19500,15500,30000000,8000,800,3500,"Female Hunter A","Thunder",false,0,0,false,120000,0,0,75,"Slow",3,"SumYungGai","Pirate Ship","Attack Speed",5,"Accuracy %",50,"Accuracy %",50,"Attack: Regular",475,0,15,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(3250,5,133000,230000,19700,15700,31000000,8050,805,3500,"Female Hunter B","Thunder",false,0,0,false,122000,0,0,75,"Slow",4,"SumYungGai","Pirate Ship","Attack Speed",5,"Accuracy %",50,"Accuracy %",50,"Attack: Regular",475,0,15,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(3300,5,135000,235000,20000,16000,32000000,8100,810,3500,"Female Hunter C","Thunder",false,0,0,false,124000,0,0,75,"Slow",5,"SumYungGai","Pirate Ship","Attack Speed",5,"Accuracy %",50,"Accuracy %",50,"Attack: Regular",475,0,15,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(3350,5,137000,240000,23200,16200,33000000,8150,815,3500,"Male Hunter A","Thunder",false,0,0,false,126000,0,0,75,"Blind",3,"SumYungGai","Pirate Ship","Attack Speed",5,"Hit Chance",25,"Hit Chance",25,"Attack: Blind",235,5,20,"Attack: Regular",475,0,25,"Buff: Enrage",10,0,90);
addArenaEnemy(3400,5,140000,245000,23500,16500,34000000,8200,820,3500,"Male Hunter B","Thunder",false,0,0,false,128000,0,0,75,"Blind",4,"SumYungGai","Pirate Ship","Attack Speed",5,"Hit Chance",25,"Hit Chance",25,"Attack: Blind",235,5,20,"Attack: Regular",475,0,25,"Buff: Enrage",10,0,90);
addArenaEnemy(3450,5,142000,255000,23800,16800,35000000,8250,825,3500,"Male Hunter C","Thunder",false,0,0,false,130000,0,0,75,"Blind",5,"SumYungGai","Pirate Ship","Attack Speed",5,"Hit Chance",25,"Hit Chance",25,"Attack: Blind",235,5,20,"Attack: Regular",475,0,25,"Buff: Enrage",10,0,90);
addArenaEnemy(3500,6.5,125000,260000,16700,24700,36000000,8300,830,3500,"Neenja A","Dark",false,0,0,false,0,0,0,50,"Blind",6,"SumYungGai","Pirate Ship","Attack Speed",5,"Drop Rate",25,"Dodge Chance",25,"Attack: Blind",235,5,17,"Attack: Regular",475,0,22,"Buff: Enrage",10,0,90);
addArenaEnemy(3550,6.5,127000,265000,16900,24900,37000000,8350,835,3500,"Neenja B","Dark",false,0,0,false,0,0,0,50,"Blind",7,"SumYungGai","Pirate Ship","Attack Speed",5,"Drop Rate",25,"Dodge Chance",25,"Attack: Blind",235,5,17,"Attack: Regular",475,0,22,"Buff: Enrage",10,0,90);
addArenaEnemy(3600,6.5,130000,275000,17100,25100,38000000,8400,840,3500,"Neenja C","Dark",false,0,0,false,0,0,0,50,"Blind",8,"SumYungGai","Pirate Ship","Attack Speed",5,"Drop Rate",25,"Dodge Chance",25,"Attack: Blind",235,5,17,"Attack: Regular",475,0,22,"Buff: Enrage",10,0,90);
addArenaEnemy(3650,4,135000,400000,19000,19000,33000000,5500,550,3500,"Icewizard","Ice",false,134,0,false,270000,0,0,0,"Slow",5,"Randomthought31","Pirate Ship","MaxMP %",100,"Magic Resist",25,"MaxMP %",100,"Attack: Regular",475,0,17,"MP Recovery",11,0,10,"",0,0,0);
addArenaEnemy(3650,4,135000,400000,19000,19000,33000000,5500,550,3500,"Firewizard","Fire",false,133,0,false,270000,0,0,0,"Poison",5,"Randomthought31","Pirate Ship","MaxMP %",100,"Magic Resist",25,"MaxMP %",100,"Attack: Poison",235,5,22,"Attack: Regular",475,0,27,"MP Recovery",11,0,15);
addArenaEnemy(3700,4,145000,390000,19200,19200,40000000,8500,850,3500,"Bishop","Light",false,0,1100000,false,300000,0,0,0,"None",0,"Randomthought31","Pirate Ship","MaxMP %",100,"Magic Resist",25,"MaxMP %",100,"Attack: Regular",475,0,17,"Heal",50,950,22,"MP Recovery",11,0,15);
addArenaEnemy(4000,4,200000,650000,30000,30000,300000000,50000,10000,20000,"Dark Mage","Dark",true,0,4000000,false,360000,0,0,0,"Weaken",5,"Randomthought31","Pirate Ship","Reward",25,"Magic Resist",25,"MaxMP %",150,"Attack: Weaken",235,5,22,"Attack: Regular",475,0,27,"Heal",50,950,32);
addArenaEnemy(7100,3,700000,1200000,45900,33900,630000000,15000,1500,7500,"Triangle Dummy","All",false,0,0,false,255000,0,0,25,"None",0,"Tukkun","Triangle Land","Hit Chance",30,"Non-Boss Damage",30,"Mastery",60,"Attack: Regular",525,0,19,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(7200,3.5,740000,1800000,32100,32100,660000000,15100,1510,7500,"Triangle Tree","All",false,0,0,false,260000,0,0,25,"None",0,"Tukkun","Triangle Land","Resist",30,"Non-Boss Damage",30,"MaxHP %",120,"Attack: Regular",525,0,18,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(7300,4,800000,1400000,44900,32600,700000000,15200,1520,7500,"Mushtriangle","All",false,0,0,false,215000,0,0,25,"None",0,"Tukkun","Triangle Land","Critical Damage",120,"Critical Chance",30,"Equipment Defense",240,"Attack: Regular",525,0,17,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(7400,4,1000000,1600000,33000,33000,720000000,15300,1530,7500,"Triangoop","All",false,0,0,false,220000,0,0,25,"None",0,"Tukkun","Triangle Land","Equipment Attack",240,"Attack %",60,"Attack %",60,"Attack: Regular",525,0,17,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(7500,0,800000,2600000,33400,33400,750000000,15400,1540,7500,"Tridle","All",false,0,0,false,370000,0,0,25,"None",0,"Tukkun","Triangle Land","Equipment Defense",240,"Defense %",60,"Defense %",60,"Attack: Regular",525,0,25,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(7600,4,1000000,2800000,33900,33900,750000000,15500,1550,7500,"Triangle Bot","All",false,0,0,false,235000,0,0,25,"None",0,"Tukkun","Triangle Land","Resist",30,"",0,"Equipment Attack",240,"Attack: Regular",525,0,17,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(7700,3,1300000,2200000,37000,37000,760000000,15600,1560,7500,"Moving Spikes","All",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Triangle Land","Attack Speed",6,"Reflect",900,"Attack %",60,"Attack: Regular",525,0,19,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(7800,6,1200000,2400000,37500,37500,780000000,15700,1570,7500,"Fast Spikes","All",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Triangle Land","Attack Speed %",60,"Reflect",900,"Attack %",60,"Attack: Regular",525,0,13,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(7900,6,1250000,2600000,38000,38000,800000000,15800,1580,7500,"Dark Spikes","All",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Triangle Land","Attack Speed %",60,"Reflect",900,"Attack %",60,"Attack: Regular",525,0,13,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(8000,5,1400000,3400000,40000,40000,840000000,15900,1590,7500,"Blue Triangle","All",false,0,0,false,650000,0,0,75,"Slow",15,"Tukkun","Triangle Land","Attack Speed",6,"Drop Rate",30,"Damage",30,"Attack: Regular",525,0,15,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(8100,5,1500000,3600000,40500,40500,860000000,16000,1600,7500,"Green Triangle","All",false,0,0,false,330000,0,0,75,"Poison",15,"Tukkun","Triangle Land","Attack Speed",6,"Drop Rate",30,"Damage",30,"Attack: Poison",260,5,20,"Attack: Regular",525,0,25,"Buff: Elemental Boost",10,0,90);
addArenaEnemy(8200,5,1600000,3800000,41000,41000,880000000,16100,1610,7500,"Red Triangle","All",false,0,0,false,340000,0,0,75,"Blind",15,"Tukkun","Triangle Land","Attack Speed",6,"Drop Rate",30,"Damage",30,"Attack: Blind",260,5,20,"Attack: Regular",525,0,25,"Buff: Elemental Boost",10,0,90);
addArenaEnemy(8300,5,1700000,4000000,41500,41500,900000000,16200,1620,7500,"Black Triangle","All",false,0,0,false,350000,0,0,75,"Weaken",15,"Tukkun","Triangle Land","Attack Speed",6,"Drop Rate",30,"Damage",30,"Attack: Weaken",260,5,20,"Attack: Regular",525,0,25,"Buff: Elemental Boost",10,0,90);
addArenaEnemy(8400,4,1600000,4000000,45500,45500,910000000,16400,1640,7500,"Ghost Triangle A","All",false,0,0,true,295000,0,0,75,"None",0,"Tukkun","Triangle Land","EXP",30,"Resist",30,"Resist",30,"Attack: Regular",525,0,17,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(8500,4,1700000,4200000,46000,46000,940000000,16600,1660,7500,"Ghost Triangle B","All",false,0,0,true,305000,0,0,75,"None",0,"Tukkun","Triangle Land","EXP",30,"Resist",30,"Resist",30,"Attack: Regular",525,0,17,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(8600,4,1800000,4300000,46400,46400,970000000,16800,1680,7500,"Ghost Triangle C","All",false,0,0,true,310000,0,0,75,"None",0,"Tukkun","Triangle Land","EXP",30,"Resist",30,"Resist",30,"Attack: Regular",525,0,17,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(8700,4,1900000,4500000,46900,46900,1000000000,17000,1700,7500,"Ghost Triangle D","All",false,0,0,true,320000,0,0,75,"None",0,"Tukkun","Triangle Land","EXP",30,"Resist",30,"Resist",30,"Attack: Regular",525,0,17,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(9000,4,3000000,6000000,60000,60000,30000000000,150000,30000,75000,"Super Triangle","All",true,0,30000000,false,900000,300,30000000,75,"Stat UP",10,"Tukkun","Triangle Land","Reward",30,"Attack %",60,"Attack %",90,"Attack: Blind",260,5,22,"Attack: Knockback",260,5,22,"Heal",50,1050,32);
addArenaEnemy(66,1,1,0,10000,1,66,750,450,900,"Pyramid Worm","Dark",false,0,0,true,0,0,0,0,"None",0,"Tukkun","Dark Pyramid","Spawn Rate",20,"Non-Boss Damage",5,"Non-Boss Damage",8,"Produce Loot: Pixel",5000,0,25,"",0,0,0,"",0,0,0);
addArenaEnemy(66,2,1,0,10000,1,66,750,450,900,"Pyramid Snake","Dark",false,0,0,true,0,0,0,0,"None",0,"Tukkun","Dark Pyramid","Spawn Rate",20,"Non-Boss Damage",5,"Non-Boss Damage",8,"Produce Loot: Material",2500,0,20,"",0,0,0,"",0,0,0);
addArenaEnemy(66,1.5,1,0,10000,1,66,750,450,900,"Pyramid Ghost","Dark",false,0,0,true,0,0,0,0,"None",0,"Darkranboria","Dark Pyramid","Spawn Rate",20,"Non-Boss Damage",5,"Non-Boss Damage",8,"Produce Loot: Coin",4000,0,20,"",0,0,0,"",0,0,0);
addArenaEnemy(66,1,1,0,10000,1,66,750,450,900,"Skulder","Dark",false,0,0,true,0,0,0,0,"None",0,"Toudou1620","Dark Pyramid","Spawn Rate",20,"Non-Boss Damage",5,"Non-Boss Damage",8,"Produce Loot: Stat",0,0,40,"",0,0,0,"",0,0,0);
addArenaEnemy(66,2,1,0,10000,1,166,1000,600,1200,"Pyramid Dragon","Dark",false,0,0,false,0,0,0,0,"None",0,"HeroicHero","Dark Pyramid","Spawn Rate",20,"Non-Boss Damage",5,"Non-Boss Damage",8,"Produce Loot: Rare Item",0,0,200,"",0,0,0,"",0,0,0);
addArenaEnemy(2200,3,7000000,-999999999,10000,7000,10,4000,500,1000,"Killer Lily","Water",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Mystic Path","EXP",10,"Damage",10,"Damage",50,"Attack: Regular",105,0,19,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2250,4,75000,-999999999,10000,7000,30,5000,500,1000,"Minifish","Water",false,0,0,false,0,0,0,0,"Weaken",2,"Tukkun","Mystic Path","EXP",10,"Damage",10,"Magic Resist",50,"Attack: Weaken",50,5,22,"Attack: Regular",105,0,27,"Buff: Invincibility",5,0,90);
addArenaEnemy(2300,3,80000,-999999999,10000,8000,120,7000,3500,3500,"Bronze Jelly","Water",false,0,0,false,0,0,0,0,"Weaken",2,"Tukkun","Mystic Path","Reward",10,"Damage",10,"Drop Rate",50,"Attack: Weaken",50,5,24,"Attack: Regular",105,0,29,"Buff: Invincibility",5,0,90);
addArenaEnemy(2325,3,85000,-999999999,10000,8000,140,7500,3750,3500,"Silver Jelly","Water",false,0,0,false,0,0,0,0,"Weaken",2,"Tukkun","Mystic Path","Reward",10,"Damage",10,"Drop Rate",50,"Attack: Weaken",50,5,24,"Attack: Regular",105,0,29,"Buff: Invincibility",5,0,90);
addArenaEnemy(2350,3,90000,-999999999,10000,8000,160,8000,4000,3500,"Golden Jelly","Water",false,0,0,false,0,0,0,0,"Weaken",2,"Tukkun","Mystic Path","Reward",10,"Damage",10,"Drop Rate",50,"Attack: Weaken",50,5,24,"Attack: Regular",105,0,29,"Buff: Invincibility",5,0,90);
addArenaEnemy(2375,3,95000,-999999999,10000,8000,180,8500,4250,3500,"Platinum Jelly","Water",false,0,0,false,0,0,0,0,"Weaken",2,"Tukkun","Mystic Path","Reward",10,"Damage",10,"Drop Rate",50,"Attack: Weaken",50,5,24,"Attack: Regular",105,0,29,"Buff: Invincibility",5,0,90);
addArenaEnemy(2400,0,1,-999999999,10000,9000,400,12500,6250,7000,"Emerald","Earth",false,0,0,false,100000,20,200000,0,"None",0,"Tukkun","Mystic Path","Reward",10,"Damage",10,"Pixel",50,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"HP Recovery",10,0,15);
addArenaEnemy(2425,0,1,-999999999,10000,9000,420,13000,6500,7000,"Aquamarine","Water",false,0,0,false,105000,20,200000,0,"None",0,"Tukkun","Mystic Path","Reward",10,"Damage",10,"Pixel",50,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"HP Recovery",10,0,15);
addArenaEnemy(2450,0,1,-999999999,10000,9000,440,13500,6750,7000,"Topaz","Thunder",false,0,0,false,110000,20,200000,0,"None",0,"Tukkun","Mystic Path","Reward",10,"Damage",10,"Pixel",50,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"HP Recovery",10,0,15);
addArenaEnemy(2475,0,1,-999999999,10000,9000,460,14000,7000,7000,"Ruby","Fire",false,0,0,false,115000,20,200000,0,"None",0,"Tukkun","Mystic Path","Reward",10,"Damage",10,"Pixel",50,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"HP Recovery",10,0,15);
addArenaEnemy(2500,0,1,-999999999,10000,9000,480,14500,7250,7000,"Diamond","Light",false,0,0,false,120000,20,200000,0,"None",0,"Tukkun","Mystic Path","Reward",10,"Damage",10,"Pixel",50,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"HP Recovery",10,0,15);
addArenaEnemy(2525,0,1,-999999999,10000,9000,500,15000,7500,7000,"Dark Gem","Dark",false,0,0,false,125000,20,200000,0,"None",0,"Tukkun","Mystic Path","Reward",10,"Damage",10,"Pixel",50,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"HP Recovery",10,0,15);
addArenaEnemy(2550,0,1,-999999999,20000,15000,1200,35000,35000,35000,"Supergem","All",true,0,0,false,150000,30,300000,0,"None",0,"Tukkun","Mystic Path","Reward",10,"Damage",10,"Pixel",50,"Attack: Ignore Defense",1,0,40,"Buff: Invincibility",5,0,80,"HP Recovery",10,0,15);
addArenaEnemy(2500,2,65535,-999999999,65535,16383,150000,9100,2000,9001,"Alien A","Light",false,0,10000,false,0,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,23,"Buff: Invincibility",5,0,80,"Attack: Power Down",1,3,13);
addArenaEnemy(2520,2,65535,-999999999,65535,16383,155000,9200,2000,9001,"Alien B","Light",false,0,10000,false,0,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,23,"Buff: Invincibility",5,0,80,"Attack: Defense Down",1,3,13);
addArenaEnemy(2540,2,65535,-999999999,65535,16383,160000,9300,2000,9001,"Alien C","Light",false,0,10000,false,96000,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,23,"Buff: Invincibility",5,0,80,"Attack: Accuracy Down",1,3,11);
addArenaEnemy(2560,2,65535,-999999999,65535,16383,165000,9400,2000,9001,"Alien D","Light",false,0,10000,false,96000,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,23,"Buff: Invincibility",5,0,80,"Attack: Evasion Down",1,3,11);
addArenaEnemy(2580,2,65535,-999999999,65535,16383,170000,9500,2000,9001,"Alien E","Light",false,0,10000,false,0,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,23,"Buff: Invincibility",5,0,80,"Attack: Power Down",1,3,12);
addArenaEnemy(2600,2,65535,-999999999,65535,16383,175000,9600,2000,9001,"Alien F","Light",false,0,10000,false,0,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,23,"Buff: Invincibility",5,0,80,"Attack: Defense Down",1,3,12);
addArenaEnemy(2620,2,65535,-999999999,65535,16383,180000,9700,2000,9001,"Alien G","Light",false,0,10000,false,120000,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,23,"Buff: Invincibility",5,0,80,"Attack: Accuracy Down",1,3,10);
addArenaEnemy(2640,2,65535,-999999999,65535,16383,185000,9800,2000,9001,"Alien H","Light",false,0,10000,false,120000,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,23,"Buff: Invincibility",5,0,80,"Attack: Evasion Down",1,3,10);
addArenaEnemy(2660,2,65535,-999999999,65535,16383,190000,9900,2000,9001,"Alien I","Light",false,0,10000,false,0,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,23,"Buff: Invincibility",5,0,80,"Attack: Power Down",1,3,11);
addArenaEnemy(2680,2,65535,-999999999,65535,16383,195000,10000,2000,9001,"Alien J","Light",false,0,10000,false,0,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,23,"Buff: Invincibility",5,0,80,"Attack: Defense Down",1,3,11);
addArenaEnemy(2700,2,65535,-999999999,65535,16383,200000,10100,2000,9001,"Alien K","Light",false,0,10000,false,145000,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,23,"Buff: Invincibility",5,0,80,"Attack: Accuracy Down",1,3,9);
addArenaEnemy(2720,2,65535,-999999999,65535,16383,205000,10200,2000,9001,"Alien L","Light",false,0,10000,false,145000,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,23,"Buff: Invincibility",5,0,80,"Attack: Evasion Down",1,3,9);
addArenaEnemy(2740,3,131071,-999999999,65535,16383,200000,10300,2500,9001,"Robomin","Light",false,0,15000,false,0,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,21,"Buff: Invincibility",5,0,80,"Attack: Silence",1,20,13);
addArenaEnemy(2760,3,131071,-999999999,65535,16383,210000,10400,2500,9001,"Invisibo","Light",false,0,15000,false,0,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",10,"Non-Boss Damage",10,"",0,"Attack: Regular",105,0,21,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2780,3,131071,-999999999,65535,16383,220000,10500,2500,9001,"Weird Object","Light",false,0,15000,false,0,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",12,"Non-Boss Damage",12,"",0,"Attack: Regular",105,0,21,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2800,3,131071,-999999999,65535,16383,230000,10600,2500,9001,"Weirder Object","Light",false,0,15000,false,0,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",12,"Non-Boss Damage",12,"",0,"Attack: Regular",105,0,21,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2820,4,131071,-999999999,65535,16383,240000,10700,2500,9001,"Supertruck","Light",false,0,15000,false,0,0,0,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",12,"Attack Speed %",25,"",0,"Attack: Regular",105,0,15,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2840,0,1,-999999999,65535,16383,30000,10800,2500,9001,"Not_a_Bomb A","Ice",false,0,0,false,0,2,131071,0,"None",0,"Dragonayzer","9001: Mystic Forest","Pixel",12,"Damage",12,"",0,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2860,0,1,-999999999,65535,16383,32500,10900,2500,9001,"Not_a_Bomb B","Ice",false,0,0,false,0,2,131071,0,"None",0,"Dragonayzer","9001: Mystic Forest","Pixel",12,"Damage",12,"",0,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2880,0,1,-999999999,65535,16383,35000,11000,2500,9001,"Not_a_Bomb C","Ice",false,0,0,false,0,2,131071,0,"None",0,"Dragonayzer","9001: Mystic Forest","Pixel",12,"Damage",12,"",0,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2900,0,1,-999999999,65535,16383,280000,11100,2500,9001,"Suspicious Sign","Light",false,0,15000,false,262143,5,262143,0,"None",0,"Tukkun","9001: Mystic Forest","Pixel",12,"Damage",12,"",0,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2920,4,131071,-999999999,65535,16383,270000,11200,3000,9001,"Arrowbot","Thunder",false,0,20000,false,0,0,0,0,"None",0,"meshwire","9001: Mystic Forest","Pixel",12,"Damage",12,"",0,"Attack: Regular",105,0,15,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2940,4,131071,-999999999,65535,16383,280000,11300,3000,9001,"Dogbot","Thunder",false,0,20000,false,0,0,0,0,"None",0,"meshwire","9001: Mystic Forest","Pixel",12,"Damage",12,"",0,"Attack: Regular",105,0,15,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2960,4,131071,-999999999,65535,16383,290000,11400,3000,9001,"Sentrybot","Thunder",false,0,20000,false,0,0,0,0,"None",0,"meshwire","9001: Mystic Forest","Pixel",12,"Damage",12,"",0,"Attack: Regular",105,0,15,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2980,4,131071,-999999999,65535,16383,300000,11500,3000,9001,"Dronebot","Thunder",false,0,20000,false,0,0,0,0,"None",0,"meshwire","9001: Mystic Forest","Pixel",12,"Damage",12,"",0,"Attack: Regular",105,0,15,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(3000,4,262143,-999999999,131071,32767,1500000,65535,65535,65535,"Master Alien","Thunder",true,0,50000,false,262143,0,0,0,"All",0,"meshwire","9001: Mystic Forest","Reward",12,"Damage",12,"",0,"Attack: Regular",105,0,15,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(3000,6,7,-999999999,100000,10000,500000,20000,2000,10000,"Attacker Alien","Light",false,0,0,false,0,60,100,0,"None",0,"Tukkun","9001: Defend Mission","Pixel",15,"Non-Boss Damage",15,"",0,"Buff: Invincibility",5,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(3000,4,4,-999999999,100000,40000,650000,20000,2000,10000,"Defender Alien","Light",false,0,0,false,0,60,100,0,"None",0,"Tukkun","9001: Defend Mission","Pixel",15,"Non-Boss Damage",15,"",0,"Buff: Invincibility",5,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(3000,5,6,-999999999,100000,10000,450000,20000,2000,10000,"Healer Alien","Light",false,0,50000,false,0,60,100,0,"None",0,"Tukkun","9001: Defend Mission","Pixel",15,"Non-Boss Damage",15,"",0,"Heal",50,210,10,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(3000,7,5,-999999999,100000,10000,450000,20000,2000,10000,"Runner Alien","Light",false,0,0,false,0,60,100,0,"None",0,"Tukkun","9001: Defend Mission","Pixel",15,"Attack Speed %",30,"",0,"Buff: Invincibility",5,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(3500,4.5,9,-999999999,100000,10000,18000000,1000000,50000,500000,"Super Alien","Light",true,0,100000,false,0,0,0,50,"None",0,"Tukkun","9001: Defend Mission","Pixel",30,"Damage",30,"",0,"Buff: Enrage",10,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(4000,0,1,-999999999,100000,40000,45000000,2000000,100000,1000000,"Alien Generator","Light",true,0,0,false,0,0,0,0,"None",0,"Tukkun","9001: Defend Mission","Pixel",30,"Damage",30,"",0,"Buff: Enrage",10,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(4000,0,1,-999999999,100000,10000,800000,20000,5000,25000,"Alien Supply Crate","Light",true,0,0,false,0,60,100,0,"None",0,"Tukkun","9001: Defend Mission","Pixel",30,"Drop Rate",30,"",0,"Buff: Enrage",10,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(4000,0,1,-999999999,100000,10000,800000,2000000,200000,2000000,"Alien Secret Box","Light",true,0,0,false,0,60,100,0,"None",0,"Tukkun","9001: Defend Mission","Spawn Rate",30,"Drop Rate",30,"",0,"Buff: Enrage",10,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(4000,0,1,-999999999,100000,4000,3000000,42500,10000,30000,"???","Light",true,0,0,false,1,0,0,0,"None",0,"Tukkun","9001: Secret Lab","Reward",20,"Drop Rate",20,"",0,"Attack: Regular",105,0,25,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(4000,0,1,-999999999,100000,4000,3200000,45000,10000,30000,"???","Light",true,0,0,false,1,0,0,0,"Slow",1,"Tukkun","9001: Secret Lab","Reward",20,"Drop Rate",20,"",0,"Attack: Regular",105,0,25,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(4000,0,1,-999999999,100000,4000,3400000,47500,10000,30000,"???","Light",true,0,0,false,1,0,0,0,"Slow",2,"Tukkun","9001: Secret Lab","Reward",20,"Drop Rate",20,"",0,"Attack: Regular",105,0,25,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(4000,0,1,-999999999,100000,4000,3600000,50000,10000,30000,"???","Light",true,0,0,false,1,0,0,0,"Slow",3,"Tukkun","9001: Secret Lab","Reward",20,"Drop Rate",20,"",0,"Attack: Regular",105,0,25,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(4000,0,1,-999999999,100000,4000,3200000,45000,10000,30000,"???","Light",true,0,0,false,1,0,0,0,"Blind",1,"Tukkun","9001: Secret Lab","Reward",20,"Drop Rate",20,"",0,"Attack: Blind",50,5,30,"Attack: Regular",105,0,35,"Buff: Invincibility",5,0,90);
addArenaEnemy(4000,0,1,-999999999,100000,4000,3400000,47500,10000,30000,"???","Light",true,0,0,false,1,0,0,0,"Blind",2,"Tukkun","9001: Secret Lab","Reward",20,"Drop Rate",20,"",0,"Attack: Blind",50,5,30,"Attack: Regular",105,0,35,"Buff: Invincibility",5,0,90);
addArenaEnemy(4000,0,1,-999999999,100000,4000,3600000,50000,10000,30000,"???","Light",true,0,0,false,1,0,0,0,"Blind",3,"Tukkun","9001: Secret Lab","Reward",20,"Drop Rate",20,"",0,"Attack: Blind",50,5,30,"Attack: Regular",105,0,35,"Buff: Invincibility",5,0,90);
addArenaEnemy(4000,0,1,-999999999,100000,4000,3200000,45000,10000,30000,"???","Light",true,0,0,false,1,0,0,0,"Weaken",1,"Tukkun","9001: Secret Lab","Reward",20,"Drop Rate",20,"",0,"Attack: Weaken",50,5,30,"Attack: Regular",105,0,35,"Buff: Invincibility",5,0,90);
addArenaEnemy(4000,0,1,-999999999,100000,4000,3400000,47500,10000,30000,"???","Light",true,0,0,false,1,0,0,0,"Weaken",2,"Tukkun","9001: Secret Lab","Reward",20,"Drop Rate",20,"",0,"Attack: Weaken",50,5,30,"Attack: Regular",105,0,35,"Buff: Invincibility",5,0,90);
addArenaEnemy(4000,0,1,-999999999,100000,4000,3600000,50000,10000,30000,"???","Light",true,0,0,false,1,0,0,0,"Weaken",3,"Tukkun","9001: Secret Lab","Reward",20,"Drop Rate",20,"",0,"Attack: Weaken",50,5,30,"Attack: Regular",105,0,35,"Buff: Invincibility",5,0,90);
addArenaEnemy(2300,5,70000,60000,17500,11500,3500000,440,80,500,"Treasure Hunter","Fire",false,240,0,false,0,0,0,75,"None",0,"ChioreanTudor","Pirate Ship Interior","Drop Rate",25,"Coin",25,"Drop Rate",25,"Attack: Regular",500,0,15,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(2400,6.5,70000,75000,12000,18000,3900000,450,90,500,"Duplicated Ninja","Dark",false,241,0,false,0,0,0,50,"Blind",6,"SumYungGai","Pirate Ship Interior","Attack Speed",5,"Spawn Rate",10,"Spawn Rate",10,"Attack: Blind",250,5,17,"Attack: Regular",500,0,22,"Buff: Enrage",10,0,90);
addArenaEnemy(2500,0,5,-999999999,12500,12500,100,5000,5000,10000,"Treasure Chest","Dark",false,248,0,false,0,10,33500,50,"None",0,"Tukkun","Pirate Ship Interior","Reward",25,"Pixel",25,"Coin",25,"Attack: Knockback",250,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2500,0,5,-999999999,12500,12500,100,10000,2500,5000,"Another Chest","Dark",false,244,0,false,0,10,33500,50,"None",0,"Tukkun","Pirate Ship Interior","Reward",25,"Pixel",25,"Coin",25,"Attack: Knockback",250,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(2600,4,120000,120000,15000,19000,55000000,15000,1500,5000,"Blue Ghost","Water",true,245,0,true,0,0,0,50,"Zombify",2,"Darkranboria","Pirate Ship Interior","Reward",10,"Boss Damage",20,"Resist",10,"Attack: Regular",500,0,17,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(2700,4,130000,125000,15500,19500,60000000,20000,2000,5000,"Green Ghost","Wind",true,246,0,true,0,0,0,50,"Zombify",3,"Darkranboria","Pirate Ship Interior","Reward",10,"Boss Damage",20,"Resist",10,"Attack: Regular",500,0,17,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(2800,4,140000,130000,16000,20000,65000000,25000,2500,5000,"Red Ghost","Fire",true,247,0,true,0,0,0,50,"Zombify",4,"Darkranboria","Pirate Ship Interior","Reward",10,"Boss Damage",20,"Resist",10,"Attack: Regular",500,0,17,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(3000,4,150000,180000,18000,22500,115000000,30000,6000,10000,"Super Ghost","Dark",true,0,0,true,0,0,0,50,"Zombify",5,"Darkranboria","Pirate Ship Interior","Reward",15,"Boss Damage",30,"Resist",15,"Attack: Regular",500,0,17,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(3000,0,1,-999999999,15000,15000,1500,40000,20000,20000,"Pirate Gem","All",true,0,0,false,0,30,150000,0,"None",0,"Tukkun","Pirate Ship Interior","Reward",15,"Drop Rate",30,"Drop Rate",30,"Attack: Knockback",250,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(1000,2,23000,23500,5060,5060,440000,3800,380,1000,"Fire Snail","Fire",false,0,44000,false,0,0,0,50,"None",0,"Tukkun","Volcano Peak","Potion Efficiency",20,"",0,"Resist",20,"Attack: Regular",550,0,21,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(1010,4,23000,16000,7150,5100,450000,3850,385,1000,"Lava Blob","Fire",false,0,45000,false,0,0,0,50,"None",0,"dragonewyn","Volcano Peak","Potion Efficiency",20,"",0,"Critical Chance",20,"Attack: Regular",550,0,17,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(1020,4,29500,16500,5650,5130,460000,3900,390,1000,"Lava Jelly","Fire",false,0,46000,false,0,0,0,50,"None",0,"Tukkun","Volcano Peak","Potion Efficiency",20,"",0,"Critical Damage",80,"Attack: Regular",550,0,17,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(1030,4,30000,16500,5690,5170,470000,3950,395,1000,"Lava Slime","Fire",false,0,47000,false,0,0,0,50,"None",0,"Tukkun","Volcano Peak","Potion Efficiency",20,"",0,"Critical Damage",80,"Attack: Regular",550,0,17,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(1040,3,23000,20500,5210,5210,480000,4000,400,1000,"Red Mushroom","Fire",false,0,48000,false,0,0,0,50,"None",0,"Tukkun","Volcano Peak","Potion Efficiency",20,"",0,"Equipment Defense",160,"Attack: Regular",550,0,19,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(1050,3,21000,17500,7880,5250,500000,4050,405,1000,"Fire Snake","Fire",false,0,50000,false,0,0,0,50,"Poison",7,"Tukkun","Volcano Peak","Potion Efficiency",20,"",0,"Hit Chance",20,"Attack: Poison",275,5,24,"Attack: Regular",550,0,29,"Buff: Elemental Boost",10,0,90);
addArenaEnemy(1060,2,24500,26500,5280,5280,510000,4100,410,1000,"Fire Turtle","Fire",false,0,51000,false,0,0,0,50,"None",0,"HeroicHero","Volcano Peak","Potion Efficiency",20,"",0,"Resist",20,"Attack: Regular",550,0,21,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(1070,2,25000,18000,5320,5320,680000,4150,415,1000,"Flame Lizard","Fire",false,0,68000,false,0,0,0,50,"None",0,"Toudou1620","Volcano Peak","Potion Efficiency",20,"",0,"MaxHP %",80,"Attack: Regular",550,0,21,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(1080,4,26500,18000,5360,5360,530000,4200,420,1000,"Fire Eye","Fire",false,0,53000,false,24500,0,0,50,"None",0,"Tukkun","Volcano Peak","Potion Efficiency",20,"",0,"Attack %",40,"Attack: Regular",550,0,17,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(1090,5,24000,18500,5400,5400,430000,2500,250,1000,"Floating Fire","Fire",false,260,43000,false,0,5,32500,50,"None",0,"Tukkun","Volcano Peak","Potion Efficiency",20,"Attack Speed",4,"Negate Effect",20,"Attack: Knockback",275,5,10,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(1200,0,38000,43500,8000,8000,10000000,20000,4000,5000,"Fire Stone","Fire",true,0,1000000,false,46000,30,57000,50,"None",0,"Tukkun","Volcano Peak","Reward",20,"Potion Efficiency",40,"Defense %",60,"Attack: Knockback",275,5,20,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(1300,4,42000,39000,10300,10300,12000000,21000,4200,5000,"Fire Spirit","Fire",true,0,5000000,false,50000,0,0,0,"None",0,"PartyzantPL","Volcano Peak","Reward",20,"Potion Efficiency",40,"Potion Efficiency",80,"Spirit Recovery",9,0,7,"Heal",50,1100,22,"Buff: Elemental Boost",10,0,90);
addArenaEnemy(2700,2,88000,154000,11900,11900,5800000,6900,690,2500,"Ice Snail","Ice",false,0,180000,false,0,0,0,50,"None",0,"Tukkun","Frosty Zone","Potion Efficiency",30,"",0,"Resist",30,"Attack: Regular",600,0,21,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(2710,4,88000,102000,14000,11900,5900000,6950,695,2500,"Ice Blob","Ice",false,0,180000,false,0,0,0,50,"None",0,"dragonewyn","Frosty Zone","Potion Efficiency",30,"",0,"Critical Chance",30,"Attack: Regular",600,0,17,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(2720,4,113000,104000,12000,12000,6000000,7000,700,2500,"Ice Jelly","Ice",false,0,180000,false,0,0,0,50,"None",0,"Tukkun","Frosty Zone","Potion Efficiency",30,"",0,"Critical Damage",120,"Attack: Regular",600,0,17,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(2730,4,113000,106000,13000,12000,6000000,7050,705,2500,"Ice Slime","Ice",false,0,190000,false,0,0,0,50,"None",0,"Tukkun","Frosty Zone","Potion Efficiency",30,"",0,"Critical Damage",120,"Attack: Regular",600,0,17,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(2740,3,86000,128000,12000,12000,6100000,7100,710,2500,"Blue Mushroom","Ice",false,0,190000,false,0,0,0,50,"None",0,"Tukkun","Frosty Zone","Potion Efficiency",30,"",0,"Equipment Defense",240,"Attack: Regular",600,0,19,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(2750,3,86000,108000,12100,12100,7900000,7150,715,2500,"Frozen Cactus","Ice",false,0,250000,false,0,0,0,50,"None",0,"Tukkun","Frosty Zone","Potion Efficiency",30,"",0,"MaxHP %",120,"Attack: Regular",600,0,19,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(2760,2.5,92000,109000,12100,14500,6200000,7200,720,2500,"Snow Abuser","Ice",false,0,190000,false,0,0,0,50,"None",0,"Tukkun","Frosty Zone","Potion Efficiency",30,"",0,"Evasion %",60,"Attack: Regular",600,0,20,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(2770,2,92000,166000,12200,12200,6200000,7250,725,2500,"Igloo Turtle","Ice",false,0,200000,false,0,0,0,50,"None",0,"HeroicHero","Frosty Zone","Potion Efficiency",30,"",0,"Resist",30,"Attack: Regular",600,0,21,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(2780,4,98000,112000,12200,12200,6300000,7300,730,2500,"Frost Eye","Ice",false,0,200000,false,45000,0,0,50,"None",0,"Tukkun","Frosty Zone","Potion Efficiency",30,"",0,"Attack %",60,"Attack: Regular",600,0,17,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(2790,5,88000,113000,12200,12200,5100000,4000,400,2500,"Cold Fire","Ice",false,272,160000,false,0,5,59500,50,"None",0,"Tukkun","Frosty Zone","Potion Efficiency",30,"Attack Speed",6,"Negate Effect",30,"Attack: Knockback",300,6,10,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(2900,0,123000,250000,18000,18000,106000000,32500,6500,12500,"Ice Stone","Ice",true,0,3600000,false,73500,0,0,50,"Slow",3,"Tukkun","Frosty Zone","Reward",30,"Potion Efficiency",60,"Defense %",90,"Attack: Regular",600,0,25,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(3000,4,132000,220000,15100,15100,116000000,35000,7000,12500,"Ice Spirit","Ice",true,0,17000000,false,78500,0,0,0,"Slow",15,"PartyzantPL","Frosty Zone","Reward",30,"Potion Efficiency",60,"Potion Efficiency",120,"Spirit Recovery",9,0,7,"Heal",60,1200,22,"Buff: Elemental Boost",20,0,90);
addArenaEnemy(5000,2,2000000,50000000,30000,40000,1000000000,50000,10000,20000,"The Guardian","All",true,0,7000000,false,2850000,0,0,25,"Slow",30,"Tukkun","Dark Portal","Drop Rate",30,"Boss Damage",30,"Resist",30,"Attack: Regular",600,0,21,"Heal",60,1200,26,"Buff: Elemental Boost",20,0,90);
addArenaEnemy(1,2,10,-999999999,10000,0,9050,1000,1000,1000,"Grinning Colossus","All",true,0,300,false,0,0,0,0,"None",0,"Tukkun","Ropeless Room","Reward",5,"Instant Kill",5,"",0,"Heal",50,210,16,"Buff: Invincibility",5,0,80,"HP Recovery",10,0,15);
addArenaEnemy(9001,4,10000000,1000000,100000,100000,15000000000,2500000,125000,250000,"Chuck Norris","All",true,0,10000000,false,10000000,0,0,75,"Blind",30,"dragonewyn","2012: Ye Olde Pub","Reward",40,"Boss Damage",40,"Ignore Defense",80,"Attack: Blind",2000,5,22,"Attack: Ignore Defense",20000,0,180,"Heal",100,2000,32);
addArenaEnemy(1,6.5,20,-999999999,0,0,10,5000,500,5000,"Arena Box","All",true,277,0,false,0,0,0,0,"None",0,"Darkranboria","The Special Arena","Reward",5,"Boss Damage",5,"",0,"Buff: Invincibility",5,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(500,4,20000,7500,500,500,20000,6000,600,5000,"Arena Mob 1","Earth",true,278,600,false,30000,0,0,50,"None",0,"ChioreanTudor","The Special Arena","Reward",6,"Boss Damage",6,"Damage",5,"Attack: Regular",550,0,17,"Heal",50,1100,22,"Buff: Master",10,0,80);
addArenaEnemy(600,1.5,25000,10000,800,800,50000,7000,700,5000,"Arena Mob 2","Water",true,279,2000,false,40000,0,0,25,"Slow",3,"Tukkun","The Special Arena","Reward",7,"Boss Damage",7,"Damage",5,"Attack: Regular",550,0,22,"Heal",50,1100,27,"Buff: Enrage",10,0,90);
addArenaEnemy(700,5,30000,12500,1100,1100,100000,8000,800,5000,"Arena Mob 3","Ice",true,280,0,false,40000,0,0,100,"None",0,"Tukkun","The Special Arena","Reward",8,"Boss Damage",8,"Damage",5,"Attack: Regular",550,0,15,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(800,4,35000,15000,1400,1400,200000,9000,900,5000,"Arena Mob 4","Water",true,281,8000,false,50000,0,0,50,"None",0,"dragonewyn","The Special Arena","Reward",9,"Boss Damage",9,"Damage",5,"Attack: Regular",550,0,17,"Heal",50,1100,22,"Buff: Enrage",10,0,90);
addArenaEnemy(900,2,50000,20000,2200,2200,500000,10000,1000,5000,"Arena Mob 5","Earth",true,282,30000,false,70000,0,0,0,"None",0,"Tukkun","The Special Arena","Reward",10,"Boss Damage",10,"Damage",5,"Attack: Regular",550,0,21,"Heal",50,1100,26,"",0,0,0);
addArenaEnemy(1000,0,45000,-999999999,10000,900,100,50000,25000,50000,"Arena Bonus 1","All",true,283,0,false,60000,30,60000,0,"None",0,"Tukkun","The Special Arena","Reward",10,"Boss Damage",10,"Drop Rate",10,"Attack: Knockback",275,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(1200,3.5,75000,80000,3000,3000,1000000,12000,1200,10000,"Arena Mob 6","Earth",true,284,0,false,60000,0,0,0,"None",0,"Guille","The Special Arena","Reward",11,"Boss Damage",11,"Damage",10,"Attack: Regular",750,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(1400,4.5,80000,70000,4000,4000,2000000,14000,1400,10000,"Arena Mob 7","Fire",true,285,0,false,100000,0,0,50,"None",0,"Tukkun","The Special Arena","Reward",12,"Boss Damage",12,"Damage",10,"Attack: Regular",750,0,16,"Buff: Enrage",20,0,80,"",0,0,0);
addArenaEnemy(1600,5,90000,100000,5000,5000,5000000,16000,1600,10000,"Arena Mob 8","Earth",true,286,0,false,90000,0,0,25,"Poison",3,"Tukkun","The Special Arena","Reward",13,"Boss Damage",13,"Damage",10,"Attack: Poison",375,6,20,"Attack: Regular",750,0,25,"Buff: Enrage",20,0,90);
addArenaEnemy(1800,2,120000,150000,6000,6000,10000000,18000,1800,10000,"Arena Mob 9","Earth",true,287,120000,false,150000,0,0,75,"None",0,"Tukkun","The Special Arena","Reward",14,"Boss Damage",14,"Damage",10,"Attack: Regular",750,0,21,"Heal",60,1500,26,"Buff: Enrage",20,0,90);
addArenaEnemy(2100,5,130000,500000,7000,7000,20000000,20000,2000,10000,"Arena Mob 10","Thunder",true,288,0,false,140000,20,98500,75,"Slow",5,"meshwire","The Special Arena","Reward",15,"Boss Damage",15,"Damage",10,"Attack: Knockback",375,6,10,"Buff: Enrage",20,0,80,"",0,0,0);
addArenaEnemy(2400,0,165000,-999999999,10000,1900,200,100000,50000,100000,"Arena Bonus 2","All",true,289,0,false,0,30,190000,0,"None",0,"Tukkun","The Special Arena","Reward",15,"Boss Damage",15,"Drop Rate",20,"Attack: Knockback",375,6,20,"Buff: Invincibility",10,0,80,"",0,0,0);
addArenaEnemy(2700,4.5,210000,400000,8500,8500,50000000,25000,2500,20000,"Arena Mob 11","Dark",true,290,400000,false,250000,0,0,75,"Blind",5,"SumYungGai","The Special Arena","Reward",16,"Boss Damage",16,"Damage",20,"Attack: Blind",500,6,21,"Attack: Regular",1000,0,26,"Heal",60,2000,31);
addArenaEnemy(3100,4,315000,600000,10000,10000,100000000,30000,3000,20000,"Arena Mob 12","Dark",true,291,0,true,0,0,0,50,"None",0,"Darkranboria","The Special Arena","Reward",17,"Boss Damage",17,"Damage",20,"Attack: Regular",1000,0,17,"Buff: Enrage",20,0,80,"",0,0,0);
addArenaEnemy(3500,4,335000,700000,12000,12000,200000000,35000,3500,20000,"Arena Mob 13","Dark",true,292,1500000,false,400000,0,0,0,"Weaken",5,"Randomthought31","The Special Arena","Reward",18,"Boss Damage",18,"Damage",20,"Attack: Weaken",500,6,22,"Attack: Regular",1000,0,27,"Heal",60,2000,32);
addArenaEnemy(4000,3,450000,800000,15000,15000,500000000,40000,4000,20000,"Arena Mob 14","All",true,293,3000000,false,450000,40,3000000,75,"Stat UP",10,"Tukkun","The Special Arena","Reward",19,"Boss Damage",19,"Damage",20,"Attack: Blind",500,6,22,"Attack: Knockback",500,6,22,"Heal",60,2000,32);
addArenaEnemy(4500,5,400000,1200000,17000,17000,1000000000,70000,7000,100000,"Dark Spirit","Dark",true,294,0,false,400000,0,0,50,"Blind",5,"Tukkun","The Special Arena","Reward",20,"Boss Damage",20,"Potion Efficiency",100,"Attack: Blind",500,6,20,"Buff: Enrage",20,0,80,"Spirit Recovery",7,0,5);
addArenaEnemy(5000,0,500000,1800000,19000,19000,2000000000,200000,20000,200000,"Dark Stone","Dark",true,295,0,false,600000,0,0,50,"Slow",5,"Tukkun","The Special Arena","Reward",20,"Boss Damage",20,"Defense %",100,"Attack: Regular",1000,0,25,"Buff: Enrage",20,0,80,"",0,0,0);
addArenaEnemy(6000,4,900000,3000000,29000,21000,5000000000,1000000,100000,500000,"THE MEGABOSS","All",true,0,100000000,false,900000,0,0,25,"All",10,"dragonewyn","The Special Arena","Reward",25,"Boss Damage",25,"Negate Effect",50,"Attack: Regular",6000,0,17,"Heal",70,2700,22,"Buff: Elemental Boost",30,0,90);
addArenaEnemy(1,3,1,0,0,0,1,800,50,250,"Light Donkey","Light",false,0,0,false,0,0,0,0,"None",0,"CTSG","-Infinity: Prehistoric Area","Spawn Rate",20,"",0,"Spawn Rate",10,"",0,0,0,"",0,0,0,"",0,0,0);
addArenaEnemy(1,3,1,0,0,0,1,800,50,250,"Dark Donkey","Dark",false,0,0,false,0,0,0,0,"None",0,"CTSG","-Infinity: Prehistoric Area","Spawn Rate",20,"",0,"Spawn Rate",10,"",0,0,0,"",0,0,0,"",0,0,0);
addArenaEnemy(1,4,1,0,0,0,1,1000,50,250,"Green Raptor","Wind",false,0,0,false,0,0,0,0,"None",0,"CTSG","-Infinity: Prehistoric Area","Spawn Rate",20,"",0,"Spawn Rate",10,"",0,0,0,"",0,0,0,"",0,0,0);
addArenaEnemy(1,4,1,0,0,0,1,1000,50,250,"Blue Raptor","Water",false,0,0,false,0,0,0,0,"None",0,"CTSG","-Infinity: Prehistoric Area","Spawn Rate",20,"",0,"Spawn Rate",10,"",0,0,0,"",0,0,0,"",0,0,0);
addArenaEnemy(1,4,1,0,0,0,1,1000,50,250,"Red Raptor","Fire",false,0,0,false,0,0,0,0,"None",0,"CTSG","-Infinity: Prehistoric Area","Spawn Rate",20,"",0,"Spawn Rate",10,"",0,0,0,"",0,0,0,"",0,0,0);
addArenaEnemy(4000,3,1000,0,10000,5000,175000,5000,250,4000,"Light Donkey?","Light",false,0,0,false,0,0,0,0,"None",0,"CTSG","Entry Room","Pixel",20,"",0,"",0,"Attack: Regular",105,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(4000,3,1000,0,10000,5000,175000,5000,250,4000,"Dark Donkey?","Dark",false,0,0,false,0,0,0,0,"None",0,"CTSG","Entry Room","Pixel",20,"",0,"",0,"Attack: Regular",105,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(4250,3,1200,0,10000,5000,250000,6000,250,4000,"Green Raptor?","Wind",false,0,0,false,0,0,0,0,"None",0,"CTSG","Entry Room","EXP",20,"",0,"",0,"Attack: Regular",105,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(4250,3,1200,0,10000,5000,250000,6000,250,4000,"Blue Raptor?","Water",false,0,0,false,0,0,0,0,"None",0,"CTSG","Entry Room","EXP",20,"",0,"",0,"Attack: Regular",105,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(4250,3,1200,0,10000,5000,250000,6000,250,4000,"Red Raptor?","Fire",false,0,0,false,0,0,0,0,"None",0,"CTSG","Entry Room","EXP",20,"",0,"",0,"Attack: Regular",105,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(4500,0,1,-999999999,75000,1500,1,75000,500,40000,"Green Bomb","Fire",false,0,0,false,0,2,10000000,0,"Self-Destruct",1,"Dragonayzer","Reaction Room","Pixel",30,"Dodge Chance",30,"",0,"Buff: Invincibility",5,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(4500,0,10000000,-999999999,75000,1500,9001,75000,500,40000,"Red Bomb","Fire",false,0,0,false,0,2,1,0,"Self-Destruct",1,"Dragonayzer","Reaction Room","Pixel",30,"Dodge Chance",30,"",0,"Buff: Invincibility",5,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(4500,0,1,-999999999,75000,1000,50,40000,500,20000,"Reaction Box","Earth",false,306,0,false,0,15,10000000,0,"None",0,"Darkranboria","Chain Reaction Room","Pixel",30,"Attack Speed %",60,"",0,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(4500,0,1,-999999999,75000,1000,50,40000,500,20000,"Reaction Box","Earth",false,307,0,false,0,15,10000000,0,"None",0,"Darkranboria","Chain Reaction Room","Pixel",30,"Attack Speed %",60,"",0,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(4500,0,1,-999999999,75000,1000,100,40000,500,20000,"Lucky Box","Earth",false,313,0,false,0,30,10000000,0,"None",0,"Darkranboria","Luck Room","Pixel",30,"Drop Rate",30,"",0,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(4500,0,1,-999999999,75000,1000,100,40000,500,20000,"Lucky Box","Earth",false,314,0,false,0,30,10000000,0,"None",0,"Darkranboria","Luck Room","Pixel",30,"Drop Rate",30,"",0,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(4500,0,1,-999999999,75000,1000,100,40000,500,20000,"Lucky Box","Earth",false,315,0,false,0,30,10000000,0,"None",0,"Darkranboria","Luck Room","Pixel",30,"Drop Rate",30,"",0,"Attack: Knockback",50,5,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(4750,4,2000,0,15000,5000,200000,4000,100,2000,"Poisonous Slime","Water",false,313,0,false,0,0,0,0,"Poison",8,"Tukkun","Luck Room","Spawn Rate",30,"",0,"",0,"Attack: Poison",50,5,22,"Attack: Regular",105,0,27,"",0,0,0);
addArenaEnemy(4750,4,2200,0,15000,5000,200000,4000,100,2000,"Darkness Slime","Dark",false,314,0,false,0,0,0,0,"Blind",8,"Tukkun","Luck Room","Spawn Rate",30,"",0,"",0,"Attack: Blind",50,5,22,"Attack: Regular",105,0,27,"",0,0,0);
addArenaEnemy(4750,4,1800,0,15000,5000,200000,4000,100,2000,"Destroyer Slime","Water",false,315,0,false,0,0,0,0,"Weaken",5,"Tukkun","Luck Room","Spawn Rate",30,"",0,"",0,"Attack: Weaken",50,5,22,"Attack: Regular",105,0,27,"",0,0,0);
addArenaEnemy(4750,7,1500,0,15000,5000,1000000,40000,1000,20000,"Anti-Snail","Water",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Speed Room","Pixel",30,"Attack Speed",6,"",0,"Attack: Regular",105,0,11,"",0,0,0,"",0,0,0);
addArenaEnemy(4750,2.5,5000,-999999999,75000,15000,200,75000,1000,40000,"Powerful Snail","Water",false,0,0,false,0,0,0,0,"None",0,"Tukkun","Dimensional Room","Pixel",30,"Attack %",60,"",0,"Attack: Regular",105,0,20,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(5000,0,1,0,75000,6000,10000000,350000,10000,100000,"Power Stone","Thunder",true,0,0,false,0,45,10000000,25,"None",0,"Tukkun","Power Room","Reward",30,"Boss Damage",30,"",0,"Attack: Knockback",50,5,20,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(5500,3,750,0,75000,6000,30000000,750000,20000,200000,"Elite Crab","Thunder",true,0,0,false,0,0,0,25,"Slow",20,"Tukkun","Water Room","Reward",30,"Boss Damage",30,"",0,"Attack: Stun",105,2,34,"Buff: Enrage",10,0,80,"",0,0,0);
addArenaEnemy(6000,4,1250,0,75000,7000,100000000,1250000,50000,500000,"Final Alien","Thunder",true,0,0,false,0,0,0,25,"Weaken",20,"Tukkun","Final Room","Reward",30,"Boss Damage",30,"",0,"Attack: Weaken",50,5,22,"Attack: Regular",105,0,27,"Buff: Enrage",10,0,90);
addArenaEnemy(6000,0,1,-999999999,10000,3000,2000,750000,100000,1000000,"Alien Treasure","Water",true,0,0,false,0,0,0,0,"None",0,"Tukkun","Treasure Room","Reward",30,"Drop Rate",30,"",0,"Buff: Invincibility",5,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(7000,0,1,-999999999,100000,1,500000,1,1,1,"Secret Crystal","All",true,0,0,false,1,120,10000000,0,"Stun",3,"ChaosII7","???","Pixel",25,"Drop Rate",25,"",0,"Attack: Stun",105,2,40,"Attack: Knockback",50,5,30,"Buff: Reward",10,0,80);
addArenaEnemy(1000,0,75,-999999999,100000,4000,2000000,0,0,0,"DON\'T ATTACK!!!","Light",true,0,0,false,0,3,1,0,"Self-Destruct",1,"Tukkun","9001: Defend Mission","Instant Kill",20,"",0,"",0,"Produce Loot: Rare Item",0,0,150,"Buff: Invincibility",5,0,80,"",0,0,0);
addArenaEnemy(5000,3.5,250000,5000000,30000,30000,100000000,12000,3000,6000,"Blank Face","Light",false,0,0,false,0,0,0,0,"Slow",15,"ABlindOrphan","Smiley Island","EXP",20,"",0,"EXP",20,"Attack: Regular",900,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(5000,4.5,240000,5000000,30000,30000,100000000,12000,3000,6000,"Confused Face","Light",false,0,0,false,0,0,0,0,"Blind",15,"ABlindOrphan","Smiley Island","EXP",20,"",0,"EXP",20,"Attack: Blind",450,6,21,"Attack: Regular",900,0,26,"",0,0,0);
addArenaEnemy(5000,3.5,270000,5000000,30000,30000,100000000,12000,3000,6000,"Happy Face","Light",false,0,7000000,false,0,0,0,0,"None",0,"ABlindOrphan","Smiley Island","EXP",20,"",0,"EXP",20,"Attack: Regular",900,0,18,"Heal",60,1800,23,"",0,0,0);
addArenaEnemy(5000,3.5,250000,5000000,30000,30000,100000000,12000,3000,6000,"Smiling Face","Light",false,0,0,false,0,0,0,0,"Poison",15,"ABlindOrphan","Smiley Island","EXP",20,"",0,"EXP",20,"Attack: Poison",450,6,23,"Attack: Regular",900,0,28,"",0,0,0);
addArenaEnemy(5000,3.5,250000,5000000,30000,30000,100000000,12000,3000,6000,"Sad Face","Light",false,0,0,false,310000,0,0,0,"None",0,"ABlindOrphan","Smiley Island","EXP",20,"",0,"EXP",20,"Attack: Regular",900,0,18,"",0,0,0,"",0,0,0);
addArenaEnemy(5000,3.5,220000,5000000,30000,30000,100000000,12000,3000,6000,"Shocked Face","Light",false,0,0,false,0,0,0,25,"Weaken",15,"ABlindOrphan","Smiley Island","EXP",20,"",0,"EXP",20,"Attack: Weaken",450,6,23,"Attack: Regular",900,0,28,"Buff: Enrage",20,0,90);
addArenaEnemy(5000,3.5,220000,5000000,30000,30000,100000000,12000,3000,6000,"Angry Face","Light",false,0,0,false,290000,0,0,75,"None",0,"ABlindOrphan","Smiley Island","EXP",20,"",0,"EXP",20,"Attack: Regular",900,0,18,"Buff: Enrage",20,0,80,"",0,0,0);
addArenaEnemy(9001,4,500000,500000,16000,9000,9000000001,0,0,0,"The Ascendant","All",true,0,25000000,false,500000,0,0,25,"All",4,"Tukkun","???","Instant Kill",20,"Damage",50,"",0,"Attack: Poison",9001,10,7,"Buff: Invincibility",6,0,20,"Heal",100,9001,5);
addArenaEnemy(6000,4,660000,60000000,60000,60000,660000000,60000,30000,30000,"Devil Face","Dark",true,0,50000000,false,1000000,60,6000000,50,"All",16,"Axecutioner64","Smiley Island","Reward",20,"Negate Effect",20,"EXP",20,"Attack: Knockback",450,6,12,"Heal",60,1800,22,"Buff: Enrage",20,0,90);
addArenaEnemy(4000,4,200000,27000,30000,30000,100000000,25000,2500,10000,"Doom Dummy","All",true,0,0,false,200000,0,0,50,"Doom",3,"ChioreanTudor","Tower of DOOOOOOM","Reward",20,"Boss Damage",20,"Damage",20,"Attack: Regular",900,0,17,"Heal",60,1800,22,"Buff: Elemental Boost",20,0,90);
addArenaEnemy(4200,1.5,250000,32000,30000,30000,120000000,26000,2600,11000,"Doom Snail","All",true,0,0,false,250000,0,0,25,"Doom",3,"Tukkun","Tower of DOOOOOOM","Reward",20,"Boss Damage",20,"Damage",20,"Attack: Regular",900,0,22,"Heal",60,1800,27,"Buff: Elemental Boost",20,0,90);
addArenaEnemy(4400,5,250000,38000,30000,30000,150000000,27000,2700,12000,"Doom Rabbit","All",true,0,0,false,300000,0,0,100,"Doom",4,"Tukkun","Tower of DOOOOOOM","Reward",20,"Boss Damage",20,"Damage",20,"Attack: Regular",900,0,15,"Heal",60,1800,20,"Buff: Elemental Boost",20,0,90);
addArenaEnemy(4600,4,300000,45000,30000,30000,180000000,28000,2800,13000,"Doom BlobBB","All",true,0,0,false,300000,0,0,50,"Doom",4,"dragonewyn","Tower of DOOOOOOM","Reward",20,"Boss Damage",20,"Damage",20,"Attack: Regular",900,0,17,"Heal",60,1800,22,"Buff: Elemental Boost",20,0,90);
addArenaEnemy(4800,2,400000,70000,30000,30000,220000000,29000,2900,14000,"Doom Treeman","All",true,0,0,false,0,0,0,0,"Doom",5,"Tukkun","Tower of DOOOOOOM","Reward",20,"Boss Damage",20,"Damage",20,"Attack: Regular",900,0,21,"Heal",60,1800,26,"Buff: Elemental Boost",20,0,90);
addArenaEnemy(5000,3.5,450000,80000,30000,30000,270000000,30000,3000,15000,"Doom Mushroom","All",true,0,0,false,400000,0,0,0,"Doom",5,"Guille","Tower of DOOOOOOM","Reward",20,"Boss Damage",20,"Damage",20,"Attack: Regular",900,0,18,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(5300,4.5,350000,64000,30000,30000,330000000,32000,3200,16000,"Doom Feonix","All",true,0,0,false,450000,0,0,50,"Doom",6,"Tukkun","Tower of DOOOOOOM","Reward",20,"Boss Damage",20,"Damage",20,"Attack: Regular",900,0,16,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(5600,5,400000,75000,30000,30000,400000000,34000,3400,17000,"Doom Rat","All",true,0,0,false,450000,0,0,25,"Doom",6,"Tukkun","Tower of DOOOOOOM","Reward",20,"Boss Damage",20,"Damage",20,"Attack: Regular",900,0,15,"Buff: Elemental Boost",20,0,80,"",0,0,0);
addArenaEnemy(5900,2,500000,87000,30000,30000,500000000,36000,3600,18000,"Doom Giant","All",true,0,0,false,500000,0,0,75,"Doom",7,"Tukkun","Tower of DOOOOOOM","Reward",20,"Boss Damage",20,"Damage",20,"Attack: Regular",1100,0,21,"Heal",70,2200,26,"Buff: Elemental Boost",30,0,90);
addArenaEnemy(6200,5,500000,110000,30000,30000,600000000,38000,3800,19000,"Doomsaurus","All",true,0,0,false,550000,20,700000,75,"Doom",7,"meshwire","Tower of DOOOOOOM","Reward",20,"Boss Damage",20,"Damage",20,"Attack: Knockback",550,7,10,"Buff: Elemental Boost",30,0,80,"",0,0,0);
addArenaEnemy(6500,4.5,550000,120000,30000,30000,750000000,40000,4000,20000,"Doomsurfer","All",true,0,0,false,600000,0,0,75,"Doom",8,"SumYungGai","Tower of DOOOOOOM","Reward",25,"Boss Damage",25,"Damage",25,"Attack: Regular",1100,0,16,"Heal",70,2200,21,"Buff: Elemental Boost",30,0,90);
addArenaEnemy(6900,4,650000,140000,30000,30000,900000000,45000,4500,21000,"Doom Ghost","All",true,0,0,true,0,0,0,50,"Doom",8,"Darkranboria","Tower of DOOOOOOM","Reward",25,"Boss Damage",25,"Damage",25,"Attack: Regular",1100,0,17,"Buff: Elemental Boost",30,0,80,"",0,0,0);
addArenaEnemy(7300,4,700000,160000,30000,30000,1100000000,50000,5000,22000,"Doom Wizard","All",true,0,0,false,750000,0,0,0,"Doom",9,"Randomthought31","Tower of DOOOOOOM","Reward",25,"Boss Damage",25,"Damage",25,"Attack: Regular",1100,0,17,"Heal",70,2200,22,"Buff: Elemental Boost",30,0,90);
addArenaEnemy(7700,4,900000,190000,30000,30000,1300000000,55000,5500,23000,"Doom Triangle","All",true,0,300000,false,950000,40,6000000,75,"Doom",9,"Tukkun","Tower of DOOOOOOM","Reward",25,"Boss Damage",25,"Damage",25,"Attack: Knockback",675,7,12,"Heal",70,2700,22,"Buff: Elemental Boost",30,0,90);
addArenaEnemy(8100,5,1000000,240000,30000,30000,1600000000,90000,6000,24000,"Doom Spirit","All",true,0,0,false,1000000,0,0,50,"Doom",10,"Tukkun","Tower of DOOOOOOM","Reward",25,"Boss Damage",25,"Damage",25,"Attack: Regular",1350,0,15,"Buff: Elemental Boost",30,0,80,"",0,0,0);
addArenaEnemy(8500,0,1,300000,30000,30000,2000000000,125000,6500,25000,"Doom Stone","All",true,0,0,false,1050000,0,0,50,"Doom",10,"Tukkun","Tower of DOOOOOOM","Reward",25,"Boss Damage",25,"Damage",25,"Attack: Regular",1350,0,25,"Buff: Elemental Boost",30,0,80,"",0,0,0);
addArenaEnemy(9000,4,1337000,500000,68000,73000,13370000000,2000000,100000,500000,"Boss of DOOOOOOM","All",true,0,600000,false,1337000,0,0,75,"Doom",15,"Tukkun","Tower of DOOOOOOM","Reward",30,"Boss Damage",30,"Damage",30,"Attack: Regular",9000,0,17,"Heal",80,3700,22,"Buff: Invincibility",5,0,20);
addArenaEnemy(9000,0,10,-999999999,9900,0,700,500000,250000,1000000,"Doom Treasure","All",true,0,0,false,10,0,0,0,"Doom",8,"Tukkun","Tower of DOOOOOOM","Reward",30,"Drop Rate",30,"Damage",30,"Attack: Ignore Defense",1,0,11,"Buff: Invincibility",20,0,80,"",0,0,0);
addArenaEnemy(5500,3,300000,1450000,25300,25300,680000000,9000,900,7000,"Magikrap","Water",false,352,0,false,465000,0,0,0,"Mana Drain",13,"ChaosII7","Pokayman City","Reward",20,"MaxMP %",80,"EXP",20,"MP Recovery",15,0,5,"Attack: Regular",1350,0,29,"",0,0,0);
addArenaEnemy(5800,3,295000,1450000,24100,24100,960000000,17000,1700,7000,"Garydos","Water",false,0,0,false,460000,0,0,100,"Mana Drain",16,"ChaosII7","Pokayman City","Reward",30,"MaxMP %",120,"EXP",30,"MP Recovery",15,0,5,"Attack: Regular",1350,0,29,"Buff: Enrage",30,0,90);
addArenaEnemy(5600,3,310000,1350000,25800,25800,925000000,9500,950,7000,"Starwe","Water",false,354,20000000,false,370000,0,0,0,"Health Drain",13,"ChaosII7","Pokayman City","Reward",20,"MaxHP %",80,"EXP",20,"HP Recovery",15,0,5,"Attack: Regular",1350,0,29,"Heal",70,2700,34);
addArenaEnemy(5900,4,290000,1350000,24500,24500,1300000000,17500,1750,7000,"Starthem","Water",false,0,30000000,false,345000,0,0,100,"Health Drain",16,"ChaosII7","Pokayman City","Reward",30,"MaxHP %",120,"EXP",30,"HP Recovery",15,0,5,"Attack: Regular",1350,0,27,"Heal",70,2700,32);
addArenaEnemy(6500,6,500000,1850000,100000,43100,3000000000,35000,3000,7000,"Pokay Ball","All",false,0,0,false,0,0,0,0,"None",0,"ChaosII7","Pokayman City","Instant Kill",20,"Hit Chance",20,"Hit Chance",20,"Attack: Regular",1350,0,13,"Buff: Power",30,0,70,"",0,0,0);
addArenaEnemy(7000,6,800000,3050000,1000000,68000,10000000000,150000,30000,35000,"Castor Ball","All",true,0,0,false,0,0,0,0,"None",0,"ChaosII7","Pokayman City","Instant Kill",30,"Hit Chance",30,"Hit Chance",45,"Attack: Regular",1350,0,13,"Buff: Power",30,0,70,"",0,0,0);
addArenaEnemy(5700,4,535000,2300000,27600,27600,1180000000,10000,1000,8000,"Peekatchu","Thunder",false,358,0,false,495000,0,0,0,"Stun",7,"ChaosII7","Not Copyright Infringement","Reward",20,"Attack %",40,"EXP",20,"Attack: Stun",1600,3,32,"Attack: Regular",1600,0,27,"",0,0,0);
addArenaEnemy(6000,4,525000,2300000,26100,26100,1650000000,18000,1800,8000,"Ryechew","Thunder",false,0,0,false,485000,0,0,50,"Stun",9,"ChaosII7","Not Copyright Infringement","Reward",30,"Attack %",60,"EXP",30,"Attack: Stun",1600,3,32,"Attack: Regular",1600,0,27,"Buff: Enrage",40,0,90);
addArenaEnemy(5800,4,470000,3100000,28100,28100,1230000000,10500,1050,8000,"Voltode","Thunder",false,360,0,false,0,3,705000,0,"Self-Destruct",2,"ChaosII7","Not Copyright Infringement","Reward",20,"Defense %",40,"EXP",20,"Attack: Knockback",800,8,12,"",0,0,0,"",0,0,0);
addArenaEnemy(6100,4,510000,3400000,29500,29500,1710000000,18500,1850,8000,"Electrorb","Thunder",false,0,0,false,0,3,765000,0,"Self-Destruct",2,"ChaosII7","Not Copyright Infringement","Reward",30,"Defense %",60,"EXP",30,"Attack: Knockback",800,8,12,"",0,0,0,"",0,0,0);
addArenaEnemy(5900,3,555000,2450000,28500,28500,1270000000,11000,1100,8000,"Sanke","Earth",false,362,0,false,665000,0,0,0,"Poison",13,"ChaosII7","Not Copyright Infringement","Reward",20,"Attack Speed %",40,"EXP",20,"Attack: Poison",800,8,24,"Attack: Regular",1600,0,29,"",0,0,0);
addArenaEnemy(6200,3,540000,2400000,27000,27000,1770000000,19000,1900,8000,"Kroba","Earth",false,0,0,false,650000,0,0,50,"Poison",16,"ChaosII7","Not Copyright Infringement","Reward",30,"Attack Speed %",60,"EXP",30,"Attack: Poison",800,8,24,"Attack: Regular",1600,0,29,"Buff: Enrage",40,0,90);
addArenaEnemy(6000,3,475000,2550000,29000,37700,1320000000,11500,1150,8000,"Duglett","Earth",false,364,0,false,570000,0,0,0,"Blind",13,"ChaosII7","Not Copyright Infringement","Reward",20,"Evasion %",40,"EXP",20,"Attack: Blind",800,8,24,"Attack: Regular",1600,0,29,"",0,0,0);
addArenaEnemy(6300,3,460000,2500000,27400,35700,1830000000,19500,1950,8000,"Digtrio","Earth",false,0,0,false,555000,0,0,50,"Blind",16,"ChaosII7","Not Copyright Infringement","Reward",30,"Evasion %",60,"EXP",30,"Attack: Blind",800,8,24,"Attack: Regular",1600,0,29,"Buff: Enrage",40,0,90);
addArenaEnemy(6100,2,510000,2600000,38400,29500,1370000000,12000,1200,8000,"Magnetmight","Thunder",false,366,0,false,615000,0,0,0,"Weaken",13,"ChaosII7","Not Copyright Infringement","Spawn Rate",10,"Accuracy %",40,"EXP",20,"Attack: Weaken",800,8,26,"Attack: Regular",1600,0,31,"",0,0,0);
addArenaEnemy(6400,2,500000,2550000,36300,27900,1890000000,20000,2000,8000,"Magnettonne","Thunder",false,0,0,false,600000,0,0,50,"Weaken",16,"ChaosII7","Not Copyright Infringement","Spawn Rate",15,"Accuracy %",60,"EXP",30,"Attack: Weaken",800,8,26,"Attack: Regular",1600,0,31,"Buff: Enrage",40,0,90);
addArenaEnemy(7000,3,1100000,4050000,50000,50000,9000000000,150000,30000,40000,"Rawrquaza","Fire",true,0,1000000000,false,1300000,0,0,50,"All",9,"ChaosII7","Not Copyright Infringement","Negate Effect",30,"Boss Damage",30,"EXP",45,"Attack: Power Down",220,4,11,"Heal",80,3200,24,"Buff: Enrage",40,0,90);
addArenaEnemy(9000,4,3000000,45000000,50000,50000,2000000000,100000,5000,20000,"Mr. Vitreous","Fire",false,0,0,false,3000000,45,1,0,"None",0,"Kurrus","The Corruption","Reward",25,"Defense %",50,"EXP",50,"Attack: Regular",600,0,17,"",0,0,0,"",0,0,0);
addArenaEnemy(9000,3,3000000,75000000,60000,60000,1400000000,100000,5000,20000,"Accursed Cranium","Dark",false,0,0,true,3000000,45,1,0,"None",0,"Kurrus","The Corruption","Reward",25,"Resist",25,"EXP",50,"Attack: Regular",600,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(9000,3,2500000,32500000,60000,40000,2000000000,100000,5000,20000,"Methane Cloud","Wind",false,0,0,false,3500000,45,1,0,"None",0,"Kurrus","The Corruption","Reward",25,"Defense %",50,"EXP",50,"Attack: Regular",600,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(9000,3,2500000,32500000,50000,50000,1600000000,100000,5000,20000,"Ring of Angry Fire","Fire",false,0,0,false,3000000,45,1,75,"None",0,"Kurrus","The Corruption","Reward",25,"Defense %",50,"EXP",50,"Attack: Regular",600,0,19,"Buff: Enrage",20,0,80,"",0,0,0);
addArenaEnemy(9000,0,1,32500000,70000,60000,2000000000,100000,5000,20000,"Sunflower","Earth",false,0,0,false,3500000,45,1,0,"None",0,"Kurrus","The Corruption","Reward",25,"Defense %",50,"EXP",50,"Attack: Regular",600,0,25,"",0,0,0,"",0,0,0);
addArenaEnemy(9000,2,3500000,35000000,40000,60000,2400000000,100000,5000,20000,"Corrupted Giant","Dark",false,0,0,false,2500000,45,1,0,"None",0,"Kurrus","The Corruption","Reward",25,"Attack %",50,"EXP",50,"Attack: Regular",600,0,21,"",0,0,0,"",0,0,0);
addArenaEnemy(9000,3,3000000,25000000,70000,40000,2000000000,100000,5000,20000,"Corrupted Blob","Dark",false,375,0,false,3000000,45,1,0,"None",0,"Kurrus","The Corruption","Reward",25,"Attack %",50,"EXP",50,"Attack: Regular",600,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(9000,3,4000000,40000000,80000,50000,6600000000,2000000,50000,200000,"Corrupted BlobBB","Dark",true,0,0,false,4500000,45,1,0,"None",0,"Kurrus","The Corruption","Reward",25,"Boss Damage",25,"EXP",50,"Attack: Regular",600,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(9000,2,4500000,50000000,60000,70000,7600000000,2000000,50000,200000,"Corrupted Treeman","Dark",true,0,0,false,4000000,45,1,0,"None",0,"Kurrus","The Corruption","Reward",25,"Boss Damage",25,"EXP",50,"Attack: Regular",600,0,21,"",0,0,0,"",0,0,0);
addArenaEnemy(9000,3,1500000,5000000,25000,25000,75000000,800000,100000,200000,"!!!!!","All",true,0,0,false,0,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",40,"Drop Rate",40,"Reward",40,"Attack: Accuracy Down",900,20,17,"Buff: Reward",30,0,70,"Produce Loot: Rare Item",0,0,90);
addArenaEnemy(6500,5,650000,3000000,15000,50000,125000000,20000,2500,10000,"Small Air Elemental","Wind",false,379,0,false,0,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Evasion %",60,"Dodge Chance",30,"Attack: Regular",1350,0,15,"",0,0,0,"",0,0,0);
addArenaEnemy(7000,5,700000,3500000,15000,50000,200000000,40000,5000,20000,"Large Air Elemental","Wind",false,0,0,false,710000,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Evasion %",60,"Dodge Chance",30,"Attack: Regular",1350,0,15,"",0,0,0,"",0,0,0);
addArenaEnemy(6500,2,700000,7800000,30000,15000,150000000,20000,2500,10000,"Small Earth Elemental","Earth",false,381,0,false,0,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Defense %",60,"Resist",30,"Attack: Regular",1350,0,21,"",0,0,0,"",0,0,0);
addArenaEnemy(7000,2,750000,8800000,30000,15000,250000000,40000,5000,20000,"Large Earth Elemental","Earth",false,0,0,false,835000,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Defense %",60,"Resist",30,"Attack: Regular",1350,0,21,"",0,0,0,"",0,0,0);
addArenaEnemy(6500,3,700000,3500000,30000,15000,125000000,20000,2500,10000,"Small Water Elemental","Water",false,383,0,false,0,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Accuracy %",60,"Hit Chance",30,"Attack: Regular",1350,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(7000,3,750000,4000000,30000,15000,200000000,40000,5000,20000,"Large Water Elemental","Water",false,0,0,false,795000,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Accuracy %",60,"Hit Chance",30,"Attack: Regular",1350,0,19,"",0,0,0,"",0,0,0);
addArenaEnemy(6500,4,1000000,2000000,15000,15000,100000000,20000,2500,10000,"Small Fire Elemental","Fire",false,385,0,false,0,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Attack %",60,"Damage",30,"Attack: Regular",1350,0,17,"",0,0,0,"",0,0,0);
addArenaEnemy(7000,4,1050000,2500000,15000,15000,175000000,40000,5000,20000,"Large Fire Elemental","Fire",false,0,0,false,975000,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Attack %",60,"Damage",30,"Attack: Regular",1350,0,17,"",0,0,0,"",0,0,0);
addArenaEnemy(6250,2,600000,3250000,20000,20000,75000000,20000,2500,10000,"Lizard Slave","Earth",false,0,0,false,0,0,0,0,"Health Drain",7,"ChaosII7","Secret Dungeon","Reward",30,"Defense %",60,"MaxHP %",120,"Attack: Regular",1350,0,21,"Buff: Elemental Boost",30,0,80,"",0,0,0);
addArenaEnemy(6750,2.5,700000,3900000,20000,20000,150000000,30000,3750,15000,"Lizard Hulk","Earth",false,0,0,false,0,0,0,0,"Mana Drain",7,"ChaosII7","Secret Dungeon","Reward",30,"Defense %",60,"MaxHP %",120,"Attack: Regular",1350,0,20,"Buff: Elemental Boost",30,0,80,"",0,0,0);
addArenaEnemy(7250,3,900000,3000000,20000,20000,250000000,60000,7500,30000,"Elite Lizard Hulk","Light",false,0,0,false,0,0,0,0,"Mana Drain",7,"ChaosII7","Secret Dungeon","Reward",30,"Attack %",60,"MaxHP %",120,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"",0,0,0);
addArenaEnemy(6250,3,550000,3250000,20000,20000,65000000,20000,2500,10000,"Lizard Witch-Doctor","Wind",false,0,0,false,825000,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Defense %",60,"MaxMP %",120,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"",0,0,0);
addArenaEnemy(6750,3.5,625000,3900000,20000,20000,130000000,30000,3750,15000,"Lizard Shadow Mage","Dark",false,0,0,false,875000,0,0,0,"Weaken",7,"ChaosII7","Secret Dungeon","Reward",30,"Defense %",60,"MaxMP %",120,"Attack: Regular",1350,0,18,"Buff: Elemental Boost",30,0,80,"",0,0,0);
addArenaEnemy(7250,4,850000,3000000,20000,20000,225000000,60000,7500,30000,"Lizard Berserker","Dark",false,0,0,false,0,0,0,75,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Attack %",60,"MaxMP %",120,"Attack: Regular",1350,0,17,"Buff: Enrage",30,0,80,"",0,0,0);
addArenaEnemy(7000,3,1200000,4000000,60000,25000,175000000,40000,5000,20000,"Owlbear","Wind",false,0,0,false,0,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Attack %",60,"Damage",30,"Attack: Regular",1350,0,19,"Attack: Stun",1350,3,44,"Attack: Evasion Down",300,4,7);
addArenaEnemy(7500,3.5,1100000,4000000,60000,35000,450000000,120000,15000,60000,"Purple Worm","Earth",false,0,0,false,1000000,0,0,50,"Potion Block",7,"ChaosII7","Secret Dungeon","Reward",30,"Attack %",60,"Damage",30,"Attack: Regular",1350,0,18,"Buff: Enrage",30,0,80,"Attack: Silence",400,10,7);
addArenaEnemy(6750,5,750000,3500000,60000,22500,100000000,20000,2500,10000,"Rust Monster","Thunder",false,0,0,false,0,0,0,0,"Weaken",12,"ChaosII7","Secret Dungeon","Reward",30,"Negate Effect",30,"Ignore Defense",30,"Attack: Weaken",675,7,20,"Attack: Regular",1350,0,25,"Attack: Power Down",200,2,7);
addArenaEnemy(7250,2,850000,5000000,60000,22500,200000000,40000,5000,20000,"Roper","Earth",false,0,0,false,1050000,0,0,0,"Stun",8,"ChaosII7","Secret Dungeon","Reward",30,"Negate Effect",30,"Ignore Defense",30,"Attack: Stun",1350,3,36,"Attack: Regular",1350,0,31,"Attack: Defense Down",300,3,7);
addArenaEnemy(7750,5.5,1000000,10000000,30000,32500,500000000,120000,15000,60000,"Mimic","Ice",false,0,0,false,800000,0,0,0,"Stun",4,"ChaosII7","Secret Dungeon","Reward",30,"Drop Rate",30,"Coin",60,"Attack: Stun",1350,3,29,"Attack: Knockback",675,7,19,"Produce Loot: Pixel",8000,0,20);
addArenaEnemy(6750,3.5,700000,3500000,50000,55000,150000000,30000,3750,15000,"Flame Lich","Fire",false,0,0,false,850000,0,0,0,"Poison",16,"ChaosII7","Secret Dungeon","Reward",30,"Instant Kill",15,"Negate Effect",30,"Attack: Poison",675,7,23,"Attack: Regular",1350,0,28,"Attack: Power Down",200,2,7);
addArenaEnemy(6750,3.5,700000,4000000,50000,55000,150000000,30000,3750,15000,"Frost Lich","Ice",false,0,0,false,850000,0,0,0,"Slow",16,"ChaosII7","Secret Dungeon","Reward",30,"Instant Kill",15,"Negate Effect",30,"Attack: Stun",1350,3,33,"Attack: Regular",1350,0,28,"Attack: Defense Down",200,3,7);
addArenaEnemy(7250,3.5,800000,5000000,70000,60000,600000000,120000,15000,60000,"Demi-Lich","Dark",false,0,0,false,1000000,0,0,0,"Blind",24,"ChaosII7","Secret Dungeon","Reward",30,"Instant Kill",15,"Negate Effect",30,"Attack: Blind",675,7,23,"Attack: Regular",1350,0,28,"Attack: Silence",300,30,7);
addArenaEnemy(6750,3.5,750000,2500000,55000,20000,150000000,20000,2500,10000,"Inky Pool","Water",false,401,0,false,700000,0,0,0,"Poison",15,"ChaosII7","Secret Dungeon","Reward",30,"MaxHP %",120,"Critical Damage",120,"Attack: Poison",675,7,23,"Attack: Regular",1350,0,28,"Attack: Stun",1350,3,53);
addArenaEnemy(7250,3.5,850000,3500000,55000,20000,350000000,40000,5000,20000,"Black Pudding","Water",false,402,0,false,800000,0,0,0,"Poison",15,"ChaosII7","Secret Dungeon","Reward",30,"MaxHP %",120,"Critical Damage",120,"Attack: Poison",675,7,23,"Attack: Regular",1350,0,28,"Attack: Stun",1350,3,53);
addArenaEnemy(7750,3.5,1000000,4000000,55000,20000,650000000,60000,7500,30000,"Elder Pudding","Water",false,0,0,false,900000,0,0,0,"Poison",15,"ChaosII7","Secret Dungeon","Reward",30,"MaxHP %",120,"Critical Damage",120,"Attack: Poison",675,7,23,"Attack: Regular",1350,0,28,"Attack: Stun",1350,3,53);
addArenaEnemy(8000,3.5,1100000,6000000,55000,40000,1000000000,120000,15000,60000,"Gelatinous Cube","Water",false,0,0,false,1000000,0,0,0,"Slow",15,"ChaosII7","Secret Dungeon","Reward",30,"MaxHP %",120,"Critical Damage",120,"Attack: Silence",500,15,11,"Attack: Stun",1350,3,43,"",0,0,0);
addArenaEnemy(7000,3,700000,3000000,42000,20000,250000000,30000,3750,15000,"Gibbering Orb","Earth",false,0,0,false,950000,0,0,0,"Weaken",9,"ChaosII7","Secret Dungeon","Reward",30,"MaxMP %",120,"Critical Chance",30,"Attack: Weaken",675,7,24,"Attack: Regular",1350,0,29,"Attack: Power Down",700,4,7);
addArenaEnemy(7500,3,800000,4000000,42000,20000,400000000,50000,6250,25000,"Gibbering Mouther","Earth",false,0,0,false,1050000,0,0,0,"Weaken",9,"ChaosII7","Secret Dungeon","Reward",30,"MaxMP %",120,"Critical Chance",30,"Attack: Weaken",675,7,24,"Attack: Regular",1350,0,29,"Attack: Power Down",700,4,7);
addArenaEnemy(7000,3,1000000,4400000,44000,55000,150000000,30000,3750,15000,"Giant Spider","Dark",false,0,0,false,0,0,0,0,"Blind",10,"ChaosII7","Secret Dungeon","Reward",30,"Mastery",60,"Instant Kill",15,"Attack: Blind",675,7,24,"Attack: Regular",1350,0,29,"Attack: Accuracy Down",700,7,7);
addArenaEnemy(7500,5,1100000,2000000,40000,30000,250000000,50000,6250,25000,"Reapling","Dark",false,0,0,false,0,0,0,0,"Attack UP",20,"ChaosII7","Secret Dungeon","Reward",30,"Instant Kill",15,"Instant Kill",15,"Attack: Regular",1350,0,15,"",0,0,0,"",0,0,0);
addArenaEnemy(7000,3,800000,9000000,30000,40000,125000000,30000,3750,15000,"Ghostly Adventurer","All",false,0,400000,true,0,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Resist",30,"Resist",30,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"HP Recovery",15,0,15);
addArenaEnemy(7500,3,900000,16000000,30000,50000,225000000,50000,6250,25000,"Invisible","All",false,0,0,true,0,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",30,"Resist",30,"Resist",30,"Attack: Regular",1350,0,19,"Buff: Invincibility",15,0,80,"",0,0,0);
addArenaEnemy(6750,3.5,650000,3500000,35000,68300,150000000,30000,3750,15000,"Floating Angel","Light",false,0,0,false,0,0,0,0,"Potion Block",5,"ChaosII7","Secret Dungeon","Reward",30,"Dodge Chance",30,"Evasion %",60,"Attack: Regular",1350,0,18,"Buff Extension",2,0,11,"",0,0,0);
addArenaEnemy(7250,3.5,700000,4000000,35000,68300,225000000,50000,6250,25000,"Floating Devil","Fire",false,0,0,false,0,0,0,0,"Potion Block",5,"ChaosII7","Secret Dungeon","Reward",30,"Dodge Chance",30,"Evasion %",60,"Attack: Regular",1350,0,18,"Buff Extension",2,0,11,"",0,0,0);
addArenaEnemy(7750,2,1050000,10000000,35000,45000,750000000,160000,20000,80000,"Beholder","All",false,0,0,false,850000,0,0,50,"Potion Block",5,"ChaosII7","Secret Dungeon","Reward",30,"Equipment Attack",240,"Attack %",60,"Attack: Regular",1350,0,21,"Buff: Power",30,0,70,"",0,0,0);
addArenaEnemy(6750,4.5,800000,3000000,35000,35000,100000000,30000,3750,15000,"Hellchihuahua","Dark",false,414,0,false,0,0,0,0,"Poison",4,"ChaosII7","Secret Dungeon","Reward",30,"Attack Speed %",60,"Attack Speed",6,"Attack: Poison",675,7,21,"Attack: Regular",1350,0,26,"",0,0,0);
addArenaEnemy(7250,5.5,850000,4000000,35000,35000,150000000,50000,6250,25000,"Hellhound","Dark",false,415,0,false,0,0,0,0,"Poison",6,"ChaosII7","Secret Dungeon","Reward",30,"Attack Speed %",60,"Attack Speed",6,"Attack: Poison",675,7,19,"Attack: Regular",1350,0,24,"",0,0,0);
addArenaEnemy(7750,5,900000,6000000,35000,40000,500000000,160000,20000,80000,"Cerberus","Dark",false,0,0,false,0,0,0,75,"Poison",8,"ChaosII7","Secret Dungeon","Reward",30,"Attack Speed %",60,"Attack Speed",6,"Attack: Poison",675,7,20,"Attack: Regular",1350,0,25,"Buff: Enrage",30,0,90);
addArenaEnemy(7500,2.5,1600000,25000000,25000,40000,1300000000,400000,40000,160000,"Mummy","Dark",true,417,0,true,1,0,0,0,"Zombify",10,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"Resist",40,"Attack: Regular",1350,0,20,"Buff: Elemental Boost",30,0,80,"Produce Loot: Coin",12000,0,20);
addArenaEnemy(8000,3,1750000,30000000,30000,50000,3700000000,600000,60000,240000,"Pharaoh","Dark",true,0,0,true,1,0,0,0,"Zombify",10,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"Resist",40,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"Produce Loot: Coin",19000,0,30);
addArenaEnemy(7750,2,900000,12000000,25000,35000,1000000000,175000,17500,70000,"Visage of Sorrow","Ice",true,419,0,false,900000,0,0,50,"Defense UP",12,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"Defense %",80,"Attack: Regular",1350,0,21,"Buff: Enrage",30,0,80,"Attack: Defense Down",700,10,20);
addArenaEnemy(8000,4,950000,9000000,25000,35000,800000000,225000,22500,90000,"Visage of Rage","Fire",true,420,0,false,950000,0,0,50,"Attack UP",12,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"Attack %",80,"Attack: Regular",1350,0,17,"Buff: Enrage",30,0,80,"Attack: Power Down",700,7,20);
addArenaEnemy(8250,3,1000000,10000000,25000,45500,1200000000,275000,27500,110000,"Visage of Joy","Thunder",true,421,0,false,1000000,0,0,50,"Evasion UP",12,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"Evasion %",80,"Attack: Regular",1350,0,19,"Buff: Enrage",30,0,80,"Attack: Evasion Down",900,13,20);
addArenaEnemy(8500,3,1050000,10000000,25000,35000,600000000,325000,32500,130000,"Visage of Apathy","All",true,0,0,false,1050000,0,0,50,"Stat UP",9,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"Negate Effect",40,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"Attack: Silence",900,50,20);
addArenaEnemy(8000,3,1200000,11000000,35000,50000,2400000000,200000,20000,80000,"Chimera","Fire",true,423,0,false,1300000,0,0,0,"Potion Block",6,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"Damage",40,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"HP Recovery",15,0,15);
addArenaEnemy(8250,3,1100000,11000000,35000,45000,2000000000,300000,30000,120000,"Chimera","Fire",true,424,0,false,1200000,0,0,0,"Potion Block",6,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"Damage",40,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"HP Recovery",15,0,15);
addArenaEnemy(8500,3,900000,11000000,35000,40000,1600000000,500000,50000,200000,"Chimera","Fire",true,0,0,false,1000000,0,0,25,"Potion Block",6,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"Damage",40,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"HP Recovery",15,0,15);
addArenaEnemy(7500,3,1100000,18000000,35000,50000,300000000,100000,10000,40000,"Blooooob","All",true,426,0,false,0,45,1700000,0,"Defense UP",2,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"MaxMP %",80,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"MP Recovery",15,0,15);
addArenaEnemy(7750,3,1200000,17000000,35000,45000,400000000,150000,15000,60000,"Bloooob","All",true,427,0,false,0,45,1800000,0,"Defense UP",4,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"MaxMP %",80,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"MP Recovery",15,0,15);
addArenaEnemy(8000,3,1300000,16000000,35000,45000,500000000,200000,20000,80000,"Blooob","All",true,428,0,false,0,45,1900000,0,"Defense UP",6,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"MaxMP %",80,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"MP Recovery",15,0,15);
addArenaEnemy(8250,3,1400000,15000000,35000,40000,600000000,250000,25000,100000,"Bloob","All",true,429,0,false,0,45,2000000,0,"Defense UP",8,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"MaxMP %",80,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"MP Recovery",15,0,15);
addArenaEnemy(8500,3,1500000,12000000,35000,40000,700000000,300000,30000,120000,"Blob?","All",true,0,0,false,1100000,0,0,0,"Defense UP",10,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"MaxMP %",80,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"MP Recovery",15,0,15);
addArenaEnemy(9000,3,1600000,8000000,40000,40000,2400000000,1200000,60000,300000,"?????","All",true,0,0,false,0,0,0,0,"None",0,"ChaosII7","Secret Dungeon","Reward",40,"Boss Damage",40,"Drop Rate",40,"Attack: Accuracy Down",300,20,17,"Buff: Elemental Boost",30,0,80,"Produce Loot: Rare Item",0,0,90);
addArenaEnemy(9000,3,1800000,60000000,60000,45000,6666666666,1200000,60000,300000,"Chaos","All",true,432,0,false,1600000,0,0,0,"Chaos",2,"ChaosII7","Final Chamber","Reward",50,"Boss Damage",50,"Ignore Defense",50,"Attack: Ignore Defense",1000,0,11,"Buff: Elemental Boost",30,0,80,"Produce Loot: Stat",0,0,10);
addArenaEnemy(9001,3,1800000,60000000,60000,45000,26666666666,3000000,150000,750000,"CHAOS","All",true,0,266666666,false,1600000,0,0,100,"Chaos",8,"ChaosII7","Final Chamber","Reward",60,"Boss Damage",60,"Ignore Defense",60,"Attack: Ignore Defense",1500,0,11,"Buff: Elemental Boost",30,0,80,"Produce Loot: Rare Item",0,0,60);
addArenaEnemy(7000,2.5,600000,1000000,25000,30000,10000000,6666,666,6666,"Elite Mummy","Dark",false,434,0,true,0,0,0,0,"Zombify",6,"ChaosII7","Spooky Crypt","Reward",40,"Non-Boss Damage",40,"",0,"Attack: Regular",1350,0,20,"Buff: Elemental Boost",30,0,80,"Produce Loot: Stat",0,0,20);
addArenaEnemy(7000,3,600000,1000000,25000,30000,10000000,6666,666,6666,"Elite Pharaoh","Dark",false,433,0,true,0,0,0,0,"Zombify",6,"ChaosII7","Spooky Crypt","Reward",40,"Non-Boss Damage",40,"",0,"Attack: Regular",1350,0,19,"Buff: Elemental Boost",30,0,80,"Produce Loot: Stat",0,0,20);
addArenaEnemy(8400,0,1,-999999999,100000,1,1000000,1,1,1,"Secret Crystal","All",true,0,0,false,1,120,10000000,0,"Stun",4,"ChaosII7","???","Pixel",50,"Drop Rate",50,"",0,"Attack: Stun",105,2,40,"Attack: Knockback",50,5,30,"Buff: Reward",10,0,80);
addArenaEnemy(9000,3,12345,12345,12345,12345,123450000,1600000,200000,400000,"shinki, the bridge dweller","All",true,0,0,false,0,0,0,0,"Self-Destruct",1,"Tukkun","Secret Dungeon","Drop Rate",40,"Damage",40,"Spawn Rate",20,"Attack: Defense Down",900,30,17,"Produce Loot: Coin",10000,0,30,"Produce Loot: Rare Item",0,0,45);
addArenaEnemy(6000,4.5,800000,3000000,29000,21000,500000000,55000,1750,17500,"THE MEGABOSS\'s Revenge","All",true,0,0,false,0,0,0,0,"Chaos",7,"???","???","Reward",40,"Boss Damage",40,"",0,"Attack: Regular",1350,0,16,"Heal",70,2700,21,"Buff: Elemental Boost",30,0,90);
addArenaEnemy(6500,4,1000000,4000000,455000,325000,500000000,25000,2500,10000,"Monster","All",false,0,0,false,5000000,0,0,50,"Throw Soap",16,"SumYungGai","Censor Ship","Accuracy %",120,"Evasion %",120,"Negate Effect",60,"Attack: Blind",800,8,22,"Attack: Regular",1600,0,27,"Buff: Invincibility",20,0,90);
addArenaEnemy(7000,4,1500000,14000000,660000,450000,6000000000,1000000,100000,200000,"Censor Sheep","All",true,0,0,false,8000000,0,0,100,"Throw Soap",40,"Arrrl","Censor Ship","Hit Chance",60,"Dodge Chance",60,"Negate Effect",60,"Attack: Blind",800,8,22,"Attack: Silence",400,50,11,"Buff: Invincibility",20,0,90);
addArenaEnemy(9000,0,1,50000000,275000,50000,35000000000,20000000,500000,2500000,"Corrupted Giant Treeman","All",true,0,0,false,2000000,0,0,0,"Accuracy UP",5,"Kurrus","The Corruption","Reward",50,"Spawn Rate",30,"EXP",25,"",0,0,0,"",0,0,0,"",0,0,0);
addArenaEnemy(1000,2.5,1,-999999999,1000,1000,5000,5000,5000,5000,"Robaconollitron","Earth",true,0,0,false,1,0,0,0,"Stun",1,"toadvine","Foodlandistan","Reward",20,"Reflect",600,"Drop Rate",20,"Buff: Enrage",10,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(1000,2.5,1,-999999999,1100,1000,5000,5000,5000,5000,"Robroccolaconator","Earth",true,0,0,false,1,0,0,0,"Stun",1,"toadvine","Foodlandistan","Reward",20,"Critical Damage",80,"Drop Rate",20,"Buff: Elemental Boost",10,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(7500,0,2800000,20000000,99000,44000,2500000000,10000,10000,10000,"Abandoned Mob 1","All",true,0,0,true,0,0,0,0,"Zombify",20,"Tukkun","Abandoned Lab","Damage",20,"Resist",20,"",0,"Buff: Elemental Boost",60,0,70,"",0,0,0,"",0,0,0);
addArenaEnemy(7500,3,2800000,20000000,99000,44000,2500000000,10000,10000,10000,"Abandoned Mob 2","All",true,0,0,false,0,0,0,0,"Stat UP",20,"Tukkun","Abandoned Lab","Instant Kill",10,"Boss Damage",40,"",0,"Attack: Ignore Defense",500,0,20,"",0,0,0,"",0,0,0);
addArenaEnemy(7500,0,2800000,80000000,99000,44000,2500000000,10000,10000,10000,"Abandoned Mob 3","All",true,0,0,false,0,0,0,0,"Chaos",20,"Tukkun","Abandoned Lab","Magic Resist",20,"Negate Effect",20,"",0,"Buff: Invincibility",30,0,70,"Spirit Recovery",5,0,10,"",0,0,0);
addArenaEnemy(7500,0,2800000,20000000,99000,44000,2500000000,10000,10000,10000,"Abandoned Mob 4","All",true,0,0,false,0,0,0,0,"Doom",10,"Tukkun","Abandoned Lab","Equipment Attack",40,"Ignore Defense",8,"",0,"Attack: Defense Down",100,5,1,"Buff: Master",60,0,70,"",0,0,0);
addArenaEnemy(7500,0,2800000,20000000,99000,44000,3000000000,10000,10000,10000,"Abandoned Mob 5","All",true,0,150000000,false,0,0,0,0,"Evasion UP",20,"Tukkun","Abandoned Lab","MaxHP %",20,"Potion Efficiency",200,"",0,"HP Recovery",20,0,5,"MP Recovery",20,0,10,"Buff Extension",1,0,10);
addArenaEnemy(3500,4.5,250000,2000000,20000,30000,50000000,13900,1390,5000,"Mother Goose","Earth",false,0,0,false,0,0,0,0,"Attack UP",10,"toadvine","Lullaby Lake","Spawn Rate",1,"",0,"Reward",1,"Attack: Power Down",350,5,15,"Produce Loot: Pixel",5000,0,20,"Buff: Reward",30,0,80);
addArenaEnemy(3600,3.5,275000,2000000,25000,35000,55000000,14000,1400,5000,"Little Mermaid","Water",false,0,0,false,0,0,0,0,"Weaken",5,"toadvine","Lullaby Lake","Spawn Rate",2,"",0,"Reward",2,"Attack: Weaken",675,7,23,"Produce Loot: Pixel",5000,0,20,"Buff: Reward",30,0,80);
addArenaEnemy(3700,6,300000,3000000,15000,40000,60000000,14100,1410,5000,"Blind Mouse","Earth",false,0,0,false,0,0,0,0,"Blind",30,"toadvine","Lullaby Lake","Spawn Rate",3,"",0,"Reward",3,"Attack: Blind",675,7,18,"Produce Loot: Pixel",5000,0,20,"Buff: Reward",30,0,80);
addArenaEnemy(3800,3,460000,4000000,40000,40000,800000000,45000,4500,25000,"Frog Prince","Water",true,0,0,false,550000,0,0,0,"Poison",15,"toadvine","Lullaby Lake","Spawn Rate",4,"Ignore Defense",5,"Reward",4,"Attack: Poison",675,7,24,"Produce Loot: Pixel",5000,0,20,"Buff: Reward",30,0,80);
addArenaEnemy(3900,4,300000,3000000,20000,25000,65000000,14400,1440,5000,"Ugly Duckling","Water",false,0,0,false,0,0,0,25,"Attack UP",15,"toadvine","Lullaby Lake","Spawn Rate",5,"",0,"Reward",5,"Attack: Power Down",500,5,15,"Produce Loot: Pixel",5000,0,20,"Buff: Reward",30,0,80);
addArenaEnemy(4000,5,300000,4000000,30000,30000,70000000,14500,1450,5000,"Tom Thumb","Light",false,0,0,false,0,0,0,0,"Defense UP",15,"toadvine","Lullaby Lake","Spawn Rate",6,"",0,"Reward",6,"Attack: Defense Down",500,5,15,"Produce Loot: Pixel",5000,0,20,"Buff: Reward",30,0,80);
addArenaEnemy(4100,5,325000,4000000,30000,30000,75000000,14600,1460,5000,"Thumbelina","Light",false,0,0,false,0,0,0,0,"Defense UP",20,"toadvine","Lullaby Lake","Spawn Rate",7,"",0,"Reward",7,"Attack: Defense Down",500,5,15,"Produce Loot: Pixel",5000,0,20,"Buff: Reward",30,0,80);
addArenaEnemy(4200,3.5,450000,5000000,40000,40000,1000000000,50000,5000,25000,"Old Woman in Shoe","Light",true,0,0,false,600000,0,0,0,"Evasion UP",30,"toadvine","Lullaby Lake","Spawn Rate",8,"Potion Efficiency",40,"Reward",8,"Attack: Evasion Down",500,5,15,"Produce Loot: Pixel",5000,0,20,"Buff: Reward",30,0,80);
addArenaEnemy(4500,4,400000,5000000,25000,40000,140000000,17000,1700,6500,"Troll","Ice",false,0,0,false,0,0,0,50,"Potion Block",20,"toadvine","Billygoat Bridge","Spawn Rate",9,"",0,"Reward",9,"Attack: Knockback",800,8,12,"Produce Loot: Pixel",5500,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(4600,4,500000,5000000,25000,40000,150000000,17100,1710,6500,"Trollface","Dark",false,0,0,false,400000,0,0,50,"Throw Soap",20,"toadvine","Billygoat Bridge","Spawn Rate",10,"",0,"Reward",10,"Attack: Knockback",800,8,12,"Produce Loot: Pixel",5500,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(4700,4,800000,7000000,30000,50000,2000000000,60000,6000,32500,"Successful Troll","Ice",true,0,0,false,0,0,0,50,"Potion Block",30,"toadvine","Billygoat Bridge","Spawn Rate",11,"Ignore Defense",10,"Reward",11,"Attack: Knockback",800,8,12,"Produce Loot: Pixel",5500,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(4800,4,600000,6000000,25000,25000,160000000,17300,1730,6500,"Younger Gruff","Earth",false,0,0,false,0,0,0,25,"Stun",4,"toadvine","Billygoat Bridge","Spawn Rate",12,"",0,"Reward",12,"Attack: Stun",1600,3,32,"Produce Loot: Pixel",5500,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(4900,3.5,460000,8000000,27500,27500,170000000,17400,1740,6500,"Middle Gruff","Earth",false,0,0,false,0,0,0,25,"Stun",6,"toadvine","Billygoat Bridge","Spawn Rate",13,"",0,"Reward",13,"Attack: Stun",1600,3,33,"Produce Loot: Pixel",5500,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(5000,3,900000,10000000,50000,40000,2500000000,65000,6500,32500,"Eldest Gruff","Earth",true,0,0,false,0,0,0,25,"Stun",10,"toadvine","Billygoat Bridge","Spawn Rate",14,"Potion Efficiency",80,"Reward",14,"Attack: Stun",1600,3,34,"Produce Loot: Pixel",5500,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(5500,4.5,1000000,8000000,35000,35000,300000000,20300,2030,8500,"Gingerbro","Earth",false,0,0,false,0,0,0,0,"Poison",30,"toadvine","Fabled Forest","Spawn Rate",15,"",0,"Reward",15,"Attack: Poison",925,8,21,"Produce Loot: Pixel",6000,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(5600,3.5,950000,9000000,50000,50000,315000000,20400,2040,8500,"HEY! LISTEN!","Light",false,0,0,false,900000,0,0,0,"Evasion UP",30,"toadvine","Fabled Forest","Spawn Rate",16,"",0,"Reward",16,"Attack: Silence",500,5,15,"Produce Loot: Pixel",6000,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(5700,4,700000,7000000,50000,40000,330000000,20500,2050,8500,"Forest Elf","Wind",false,0,0,false,794400,0,0,50,"Slow",15,"toadvine","Fabled Forest","Spawn Rate",17,"",0,"Reward",17,"Attack: Stun",1850,3,32,"Produce Loot: Pixel",6000,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(5800,3,1000000,15000000,40000,40000,350000000,20600,2060,8500,"Mini Baba Yaga","Earth",false,0,0,false,0,0,0,0,"Defense UP",30,"toadvine","Fabled Forest","Spawn Rate",18,"",0,"Reward",18,"Attack: Defense Down",500,5,15,"Produce Loot: Pixel",6000,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(5900,5,1100000,10000000,40000,40000,375000000,20700,2070,8500,"Warpig","Earth",false,0,0,false,0,0,0,25,"Weaken",4,"toadvine","Fabled Forest","Spawn Rate",19,"",0,"Reward",19,"Attack: Weaken",925,8,20,"Produce Loot: Pixel",6000,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(6000,4.5,1200000,12000000,45000,45000,400000000,20800,2080,8500,"Grandma","Earth",false,0,0,false,0,0,0,25,"Weaken",6,"toadvine","Fabled Forest","Spawn Rate",20,"",0,"Reward",20,"Attack: Weaken",925,8,21,"Produce Loot: Pixel",6000,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(6100,4,1400000,15000000,60000,60000,5000000000,90000,9000,42500,"Goldie Bear","Earth",true,0,0,false,0,0,0,50,"Weaken",10,"toadvine","Fabled Forest","Spawn Rate",21,"Potion Efficiency",120,"Reward",21,"Attack: Weaken",925,8,22,"Produce Loot: Pixel",6000,0,20,"Buff: Reward",40,0,80);
addArenaEnemy(6500,5,1400000,10000000,60000,70000,650000000,23800,2380,11000,"Jubjub Bird","Dark",false,0,0,false,0,0,0,50,"Accuracy UP",30,"toadvine","Fortress Foothills","Spawn Rate",22,"",0,"Reward",22,"Attack: Accuracy Down",500,5,15,"Produce Loot: Pixel",6500,0,20,"Buff: Reward",50,0,80);
addArenaEnemy(6600,7,1500000,10000000,50000,50000,700000000,23900,2390,11000,"Frumious Bandersnatch","Wind",false,0,0,false,0,0,0,50,"Slow",20,"toadvine","Fortress Foothills","Spawn Rate",23,"",0,"Reward",23,"Attack: Stun",2100,3,26,"Produce Loot: Pixel",6500,0,20,"Buff: Reward",50,0,80);
addArenaEnemy(6700,4.5,1500000,10000000,40000,40000,750000000,24000,2400,11000,"Dwarf 1","Earth",false,0,0,false,0,0,0,50,"Stat UP",5,"toadvine","Fortress Foothills","Spawn Rate",24,"",0,"Reward",24,"Attack: Knockback",1050,9,11,"Produce Loot: Pixel",6500,0,20,"Buff: Reward",50,0,80);
addArenaEnemy(6800,4,1600000,20000000,45000,45000,800000000,24100,2410,11000,"Dwarves 2-3","Earth",false,0,0,false,0,0,0,50,"Stat UP",10,"toadvine","Fortress Foothills","Spawn Rate",25,"",0,"Reward",25,"Attack: Knockback",1050,9,12,"Produce Loot: Pixel",6500,0,20,"Buff: Reward",50,0,80);
addArenaEnemy(6900,3.5,1800000,40000000,55000,55000,850000000,24200,2420,11000,"Dwarves 4-7","Earth",false,0,0,false,0,0,0,50,"Stat UP",20,"toadvine","Fortress Foothills","Spawn Rate",26,"",0,"Reward",26,"Attack: Knockback",1050,9,13,"Produce Loot: Pixel",6500,0,20,"Buff: Reward",50,0,80);
addArenaEnemy(7000,3,3500000,100000000,90000,90000,10000000000,120000,12000,55000,"Pumpkin Carriage","Earth",true,0,0,false,2500000,0,0,0,"Stun",10,"toadvine","Fortress Foothills","Spawn Rate",27,"Potion Efficiency",160,"Reward",27,"Attack: Stun",2100,3,34,"Produce Loot: Pixel",6500,0,20,"Buff: Reward",50,0,80);
addArenaEnemy(7500,3,3140000,31400000,31400,31400,1500000000,27600,2760,14000,"3.14 Piper","Wind",false,0,0,false,3140000,0,0,0,"Blind",30,"toadvine","Castle Grimm","Spawn Rate",28,"",0,"Reward",28,"Attack: Blind",1175,9,23,"Produce Loot: Pixel",7000,0,20,"Buff: Reward",50,0,80);
addArenaEnemy(7600,3,3300000,30000000,40000,60000,1600000000,27700,2770,14000,"Leprechaun","Light",false,0,0,false,0,0,0,0,"Evasion UP",40,"toadvine","Castle Grimm","Spawn Rate",29,"",0,"Reward",29,"Attack: Evasion Down",750,10,15,"Produce Loot: Pixel",7000,0,20,"Buff: Reward",50,0,80);
addArenaEnemy(7700,0,1,20000000,70000,70000,1700000000,27800,2780,14000,"Sleeping Rose","Earth",false,0,0,false,3600000,0,0,0,"Slow",30,"toadvine","Castle Grimm","Spawn Rate",30,"",0,"Reward",30,"Attack: Stun",2350,3,40,"Produce Loot: Pixel",7000,0,20,"Buff: Reward",50,0,80);
addArenaEnemy(7800,2,2700000,50000000,70000,80000,1800000000,27900,2790,14000,"Moat Gator","Water",false,0,0,false,2400000,0,0,25,"Slow",30,"toadvine","Castle Grimm","Spawn Rate",31,"",0,"Reward",31,"Attack: Stun",2350,3,36,"Produce Loot: Pixel",7000,0,20,"Buff: Reward",50,0,80);
addArenaEnemy(7900,3,3900000,150000000,70000,70000,1900000000,28000,2800,14000,"Gargoyle","Earth",false,0,0,false,0,0,0,0,"Stun",10,"toadvine","Castle Grimm","Spawn Rate",32,"",0,"Reward",32,"Attack: Stun",2350,3,34,"Produce Loot: Pixel",7000,0,20,"Buff: Reward",50,0,80);
addArenaEnemy(8000,5,4000000,250000000,80000,70000,20000000000,150000,15000,70000,"Flying Monkey","Wind",true,0,0,false,4000000,0,0,50,"Evasion UP",40,"toadvine","Castle Grimm","Spawn Rate",33,"Potion Efficiency",200,"Reward",33,"Attack: Evasion Down",750,10,15,"Produce Loot: Pixel",7000,0,20,"Buff: Reward",50,0,80);
addArenaEnemy(8500,3,5000000,20000000,60000,60000,3000000000,31700,3170,17500,"Pea Princess","Earth",false,0,0,false,0,0,0,0,"Mana Drain",50,"toadvine","Throne Room","Spawn Rate",34,"",0,"Reward",34,"MP Recovery",20,0,5,"Produce Loot: Pixel",7500,0,20,"Buff: Reward",60,0,80);
addArenaEnemy(8600,3,5250000,25000000,60000,60000,3250000000,31800,3180,17500,"Peach Princess","Earth",false,0,0,false,0,0,0,0,"Mana Drain",50,"toadvine","Throne Room","Spawn Rate",35,"",0,"Reward",35,"MP Recovery",20,0,5,"Produce Loot: Pixel",7500,0,20,"Buff: Reward",60,0,80);
addArenaEnemy(8700,3,5500000,30000000,60000,60000,3500000000,31900,3190,17500,"Paperbag Princess","Light",false,0,0,false,0,0,0,0,"Health Drain",50,"toadvine","Throne Room","Spawn Rate",36,"",0,"Reward",36,"HP Recovery",20,0,5,"Produce Loot: Pixel",7500,0,20,"Buff: Reward",60,0,80);
addArenaEnemy(8800,4,6500000,150000000,100000,100000,55000000000,180000,18000,100000,"Fairy Godfather","Light",true,0,0,false,5500000,0,0,25,"All",15,"toadvine","Throne Room","Spawn Rate",38,"Ignore Defense",50,"Reward",38,"Attack: Ignore Defense",750,0,15,"Produce Loot: Rare Item",0,0,40,"Buff: Reward",60,0,80);
addArenaEnemy(8900,4,6000000,90000000,100000,100000,60000000000,200000,20000,100000,"Fairy Godmother","Light",true,0,900000000,false,7000000,0,0,25,"Chaos",25,"toadvine","Throne Room","Spawn Rate",40,"Potion Efficiency",500,"Reward",40,"Attack: Ignore Defense",1000,0,15,"Produce Loot: Rare Item",0,0,40,"Buff: Reward",60,0,80);
addArenaEnemy(1,3,3333333,33333333,33333,33333,333333333,33333,3333,33333,"Triangle","All",true,0,3333333,false,1,25,9999999999,33,"Chaos",15,"Tukkun","Triangle Hideout","Reward",60,"Drop Rate",60,"",0,"",0,0,0,"",0,0,0,"",0,0,0);
addArenaEnemy(1,0,1,-999999999,100000,100,100,120000,30000,60000,"Strange Box","All",true,0,5,false,0,30,1,0,"None",0,"Tukkun","Unknown Location","Drop Rate",50,"Spawn Rate",20,"Drop Rate",20,"",0,0,0,"",0,0,0,"",0,0,0);
addArenaEnemy(3100,3,40000,1000000,2000,2000,17500000,3500,1700,300,"Strange Triangle Dummy","Earth",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,19,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(3200,3,42500,1000000,3000,3000,18500000,3600,1750,300,"Strange Triangle Tree","Earth",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,19,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(3300,3,45000,1000000,3000,3000,20000000,3700,1800,300,"Strange Mushtriangle","Earth",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,19,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(3400,3,47500,1000000,3000,3000,22000000,3800,1850,300,"Strange Triangoop","Water",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,19,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(3500,3,50000,1000000,2000,4000,24000000,3900,1900,300,"Strange Tridle","Light",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,19,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(3500,3,52500,2000000,4000,4000,24000000,4000,1950,300,"Strange Triangle Bot","Light",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,19,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(3600,3,55000,2000000,9000,4000,26000000,4100,2000,300,"Strange Moving Spikes","Light",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,19,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(3700,5.5,57500,2000000,9000,4000,28000000,4200,2050,300,"Strange Fast Spikes","Light",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,14,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(3800,5.5,60000,2000000,9000,4000,30000000,4300,2100,300,"Strange Dark Spikes","Dark",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,14,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(3900,2.5,65000,2000000,2000,2000,32500000,4400,2150,300,"Strange Blue Triangle","Water",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,20,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(4000,2.5,70000,2000000,4000,4000,35000000,4500,2200,300,"Strange Green Triangle","Wind",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,20,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(4100,2.5,75000,2000000,4000,4000,37500000,4600,2250,300,"Strange Red Triangle","Fire",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,20,"Buff: Elemental Boost",10,0,80,"",0,0,0);
addArenaEnemy(4200,2.5,80000,2000000,4000,4000,40000000,4700,2300,300,"Strange Black Triangle","Dark",false,0,0,false,145000,0,0,0,"None",0,"Tukkun","2011: Triangle Land","EXP",50,"Non-Boss Damage",20,"Spawn Rate",5,"Attack: Regular",105,0,20,"Buff: Elemental Boost",10,0,80,"",0,0,0);
i = 501;
while(i <= 9999)
{
   addArenaEnemy(1337,0,0,0,0,0,1,0,0,0,"LOADING FAILED","All",true,0,0,false,0,0,0,0,"None",0,"Jimp (?)","Kongpanion","",0,"",0,"",0,"Attack: Poison",1337,20,30,"Buff: Reward",50,0,70,"Produce Loot: Rare Item",0,0,130);
   i++;
}
_root.komDiff = new Array();
_root.komCount = new Array();
i = 1;
while(i <= 500)
{
   _root.komDiff[i] = -1;
   _root.komCount[i] = -1;
   i++;
}
addKommanderMission(1,7,100);
i = 2;
while(i <= 15)
{
   addKommanderMission(i,1,5);
   i++;
}
i = 16;
while(i <= 34)
{
   addKommanderMission(i,2,10);
   i++;
}
i = 35;
while(i <= 54)
{
   addKommanderMission(i,3,15);
   i++;
}
i = 55;
while(i <= 64)
{
   addKommanderMission(i,4,20);
   i++;
}
i = 65;
while(i <= 71)
{
   addKommanderMission(i,5,25);
   i++;
}
i = 72;
while(i <= 82)
{
   addKommanderMission(i,6,30);
   i++;
}
i = 83;
while(i <= 97)
{
   addKommanderMission(i,7,35);
   i++;
}
i = 98;
while(i <= 99)
{
   addKommanderMission(i,8,40);
   i++;
}
i = 100;
while(i <= 124)
{
   addKommanderMission(i,10,50);
   i++;
}
i = 125;
while(i <= 136)
{
   addKommanderMission(i,15,60);
   i++;
}
i = 137;
while(i <= 159)
{
   addKommanderMission(i,20,80);
   i++;
}
i = 160;
while(i <= 177)
{
   addKommanderMission(i,25,100);
   i++;
}
i = 178;
while(i <= 182)
{
   addKommanderMission(i,4,200);
   i++;
}
i = 183;
while(i <= 195)
{
   addKommanderMission(i,11,20);
   i++;
}
i = 196;
while(i <= 221)
{
   addKommanderMission(i,12,15);
   i++;
}
i = 222;
while(i <= 225)
{
   addKommanderMission(i,15,4);
   i++;
}
i = 226;
while(i <= 229)
{
   addKommanderMission(i,15,1);
   i++;
}
i = 240;
while(i <= 241)
{
   addKommanderMission(i,12,500);
   i++;
}
i = 242;
while(i <= 248)
{
   addKommanderMission(i,12,50);
   i++;
}
i = 249;
while(i <= 260)
{
   addKommanderMission(i,9,50);
   i++;
}
i = 261;
while(i <= 272)
{
   addKommanderMission(i,13,60);
   i++;
}
addKommanderMission(273,25,20);
addKommanderMission(274,5,1);
addKommanderMission(275,40,2);
i = 276;
while(i <= 288)
{
   addKommanderMission(i,10,2);
   i++;
}
i = 289;
while(i <= 294)
{
   addKommanderMission(i,15,2);
   i++;
}
addKommanderMission(295,20,2);
i = 296;
while(i <= 300)
{
   addKommanderMission(i,10,100);
   i++;
}
i = 301;
while(i <= 305)
{
   addKommanderMission(i,15,8);
   i++;
}
i = 306;
while(i <= 307)
{
   addKommanderMission(i,15,2);
   i++;
}
i = 313;
while(i <= 315)
{
   addKommanderMission(i,15,8);
   i++;
}
i = 316;
while(i <= 317)
{
   addKommanderMission(i,15,2);
   i++;
}
addKommanderMission(318,17,1);
addKommanderMission(319,17,1);
addKommanderMission(320,20,1);
addKommanderMission(321,20,1);
addKommanderMission(323,14,2);
i = 324;
while(i <= 330)
{
   addKommanderMission(i,20,150);
   i++;
}
addKommanderMission(332,20,25);
i = 333;
while(i <= 345)
{
   addKommanderMission(i,25,2);
   i++;
}
i = 346;
while(i <= 348)
{
   addKommanderMission(i,30,2);
   i++;
}
i = 349;
while(i <= 350)
{
   addKommanderMission(i,35,2);
   i++;
}
i = 351;
while(i <= 354)
{
   addKommanderMission(i,25,150);
   i++;
}
i = 355;
while(i <= 367)
{
   addKommanderMission(i,30,150);
   i++;
}
i = 368;
while(i <= 374)
{
   addKommanderMission(i,15,10);
   i++;
}
i = 375;
while(i <= 376)
{
   addKommanderMission(i,15,5);
   i++;
}
addKommanderMission(377,35,2);
i = 378;
while(i <= 415)
{
   addKommanderMission(i,30,5);
   i++;
}
i = 416;
while(i <= 430)
{
   addKommanderMission(i,35,3);
   i++;
}
addKommanderMission(431,35,3);
addKommanderMission(432,40,3);
addKommanderMission(436,35,2);
addKommanderMission(438,30,300);
addKommanderMission(439,35,5);
addKommanderMission(440,50,1);
i = 448;
while(i <= 455)
{
   addKommanderMission(i,20,175);
   i++;
}
i = 456;
while(i <= 461)
{
   addKommanderMission(i,25,200);
   i++;
}
i = 462;
while(i <= 468)
{
   addKommanderMission(i,30,225);
   i++;
}
i = 469;
while(i <= 474)
{
   addKommanderMission(i,35,250);
   i++;
}
i = 475;
while(i <= 480)
{
   addKommanderMission(i,40,275);
   i++;
}
i = 481;
while(i <= 483)
{
   addKommanderMission(i,45,300);
   i++;
}
addKommanderMission(484,50,50);
addKommanderMission(485,50,50);
addKommanderMission(487,10,2);
stickName = _root.kongregate_username + "\'s Tree Stick";
if(_root.kongregate_username == undefined || _root.kongregate_username == "Guest")
{
   stickName = "????\'s Tree Stick";
}
_root.museumItem = new Array();
_root.museumValue = new Array();
_root.museumMaxItem = 0;
_root.museumMaxValue = 0;
addMuseumItem(1401,1,"Broken Greatsword");
addMuseumItem(1402,1,"Ranseur");
addMuseumItem(1403,2,"Halberd");
addMuseumItem(1404,2,"Trident");
addMuseumItem(1405,3,"Partisan");
addMuseumItem(1406,3,"Awl Pike");
addMuseumItem(1407,3,"Bill Hook");
addMuseumItem(1408,4,"Bat-Wing Corseque");
addMuseumItem(1409,4,"Corseque");
addMuseumItem(1410,4,"Fauchard");
addMuseumItem(1411,5,"Military Fork");
addMuseumItem(1412,5,"Fauchard-Fork");
addMuseumItem(1413,5,"Naginata");
addMuseumItem(1414,5,"Nagimaki");
addMuseumItem(1415,6,"Fukuro Yari");
addMuseumItem(1416,6,"Voulge");
addMuseumItem(1417,6,"Scythe");
addMuseumItem(1418,6,"Bardiche");
addMuseumItem(1419,6,"Poleaxe");
addMuseumItem(1420,6,"Lochaber Axe");
addMuseumItem(1421,7,"Bohemian Earspoon");
addMuseumItem(1422,8,"Bec de Corbin");
addMuseumItem(1423,9,"Ox Tongue");
addMuseumItem(1424,10,"Spetum");
addMuseumItem(1425,11,"Glaive");
addMuseumItem(1426,12,"Guisarme");
addMuseumItem(1427,13,"Longspear");
addMuseumItem(1428,14,"Lucerne Hammer");
addMuseumItem(1429,15,"Glaive-Guisarme");
addMuseumItem(1430,16,"Guisarme-Glaive");
addMuseumItem(1431,17,"Glaive-Guisarme-Glaive");
addMuseumItem(1432,18,"Glaive-Glaive-Glaive-Guisarme-Glaive");
addMuseumItem(1433,19,"Greatsword");
addMuseumItem(1434,20,"Greatersword");
addMuseumItem(1441,4,"Laser Gun");
addMuseumItem(1442,5,"Mystic Bow");
addMuseumItem(1443,6,"Strong Machine Gun");
addMuseumItem(1444,8,"Mystic Crossbow");
addMuseumItem(1445,10,"Pure Darkness Claw");
addMuseumItem(1446,12,"Slingshot");
addMuseumItem(1447,14,"Crimson Bow");
addMuseumItem(1448,16,"Oversized Slingshot");
addMuseumItem(1449,18,"Cannon");
addMuseumItem(1450,20,"Gold Cannon");
addMuseumArmorSet(1451,1,"Training");
addMuseumArmorSet(1456,2,"Soldier");
addMuseumArmorSet(1461,2,"Stripper Nurse");
addMuseumArmorSet(1466,3,"Enchanted Leather");
addMuseumArmorSet(1471,3,"Golden");
addMuseumArmorSet(1476,4,"Regeneration");
addMuseumArmorSet(1481,4,"Berserker");
addMuseumArmorSet(1486,5,"Defensive");
addMuseumArmorSet(1491,5,"Pure Darkness");
addMuseumArmorSet(1496,6,"Crimson");
addMuseumArmorSet(1501,7,"Knightmare");
addMuseumArmorSet(1506,8,"Humblebee");
addMuseumArmorSet(1511,10,"Ghost");
addMuseumItem(1521,1,"Pink Skin");
addMuseumItem(1522,1,"Teal Skin");
addMuseumItem(1523,1,"Green Skin");
addMuseumItem(1524,1,"Red Skin");
addMuseumItem(1525,1,"Black Skin");
addMuseumItem(1526,1,"White Skin");
addMuseumItem(1527,1,"Purple Skin");
addMuseumItem(1528,1,"Blue Skin");
addMuseumItem(1529,5,"Neon Skin");
addMuseumItem(1531,6,"Cursed Sword (1)");
addMuseumItem(1532,6,"Cursed Sword (2)");
addMuseumItem(1533,6,"Cursed Sword (3)");
addMuseumItem(1534,25,"Dark Ruler");
addMuseumItem(1541,1,"Burned Rope");
addMuseumItem(1542,1,"Special Wand");
addMuseumItem(1543,200,"MEGA PENDANT");
addMuseumItem(1544,200,"MEGA EARRINGS");
addMuseumItem(1545,100,"MEGA WINGS");
addMuseumArmorSet(1551,3,"Elm");
addMuseumArmorSet(1561,4,"Emperor\'s");
addMuseumArmorSet(1571,5,"Chuck Norris");
addMuseumArmorSet(1581,6,"Companion Cube");
addMuseumItem(1586,10,"Bacon Sword");
addMuseumItem(1591,5,"Collector\'s Pendant");
addMuseumItem(1592,5,"Cursed Pendant");
addMuseumItem(1593,5,"Anti-Checkpoint Pendant");
addMuseumItem(1601,1,"Bronze Pendant");
addMuseumItem(1602,2,"Silver Pendant");
addMuseumItem(1603,3,"Gold Pendant");
addMuseumItem(1604,4,"Platinum Pendant");
addMuseumItem(1605,5,"Unobtainium Pendant");
addMuseumItem(1611,5,"Pendant of Fire");
addMuseumItem(1612,5,"Pendant of Ice");
addMuseumItem(1613,5,"Pendant of Wind");
addMuseumItem(1614,5,"Pendant of Earth");
addMuseumItem(1615,5,"Pendant of Thunder");
addMuseumItem(1616,5,"Pendant of Water");
addMuseumItem(1617,5,"Pendant of Light");
addMuseumItem(1618,5,"Pendant of Darkness");
addMuseumItem(1621,3,"Pendant of Double Hit");
addMuseumItem(1622,3,"Pendant of Rage");
addMuseumItem(1623,3,"Pendant of Recovery");
addMuseumItem(1624,3,"Pendant of Bosshunter");
addMuseumItem(1625,3,"Pendant of Spell Protection");
addMuseumItem(1626,3,"Pendant of Cruelty");
addMuseumItem(1627,3,"Pendant of Resistance");
addMuseumItem(1628,3,"Crappy Earrings");
addMuseumItem(1629,5,"Awesome Earrings");
addMuseumItem(1630,5,"Mission Kommander\'s Gem");
addMuseumItem(1631,15,"Gem of Constancy");
addMuseumItem(1632,15,"Empowering Gem");
addMuseumItem(1633,15,"Worst Moon Gem");
addMuseumItem(1634,15,"Auto Buff Gem");
addMuseumItem(1635,25,"Gem of Good Luck");
addMuseumItem(1636,25,"Yellow Madness Gem");
addMuseumItem(1637,25,"Gem of Eternal Rage");
addMuseumItem(1638,5,"Dominator Gem");
addMuseumItem(1639,5,"Triangle Gem");
addMuseumItem(1640,5,"Mega Triangle Gem");
addMuseumItem(1641,2,"Ultimate Weapon");
addMuseumArmorSet(1642,1,"Ultimate");
addMuseumItem(1647,1,"Ultimate Pendant");
addMuseumItem(1648,1,"Ultimate Earrings");
addMuseumItem(1649,1,"Ultimate Trinket");
addMuseumItem(1651,2,"Reincarnation Weapon");
addMuseumArmorSet(1652,1,"Reincarnation");
addMuseumItem(1657,1,"Reincarnation Pendant");
addMuseumItem(1658,1,"Reincarnation Earrings");
addMuseumItem(1659,1,"Reincarnation Trinket");
addMuseumItem(1661,2,"Bronze Pickaxe");
addMuseumItem(1662,4,"Silver Pickaxe");
addMuseumItem(1663,6,"Golden Pickaxe");
addMuseumItem(1664,8,"Diamond Pickaxe");
addMuseumItem(1665,10,"Master\'s Pickaxe");
addMuseumItem(1666,15,"Legendary Pickaxe");
addMuseumItem(1667,20,"Unobtainium Pickaxe");
addMuseumArmorSet(1671,2,"Blue Crystal");
addMuseumArmorSet(1676,2,"Red Crystal");
addMuseumArmorSet(1681,2,"Yellow Crystal");
addMuseumArmorSet(1686,4,"Green Crystal");
addMuseumArmorSet(1691,4,"Purple Crystal");
addMuseumArmorSet(1696,4,"Pink Crystal");
addMuseumItem(1701,2,"Green Hat of Loot");
addMuseumItem(1702,2,"Green Shirt of Loot");
addMuseumItem(1703,2,"Green Gloves of Loot");
addMuseumItem(1704,2,"Green Pants of Loot");
addMuseumItem(1705,2,"Green Shoes of Loot");
addMuseumItem(1706,4,"Blue Hat of Loot");
addMuseumItem(1707,4,"Blue Shirt of Loot");
addMuseumItem(1708,4,"Blue Gloves of Loot");
addMuseumItem(1709,4,"Blue Pants of Loot");
addMuseumItem(1710,4,"Blue Shoes of Loot");
addMuseumItem(1711,6,"Purple Hat of Loot");
addMuseumItem(1712,6,"Purple Shirt of Loot");
addMuseumItem(1713,6,"Purple Gloves of Loot");
addMuseumItem(1714,6,"Purple Pants of Loot");
addMuseumItem(1715,6,"Purple Shoes of Loot");
addMuseumArmorSet(1721,12,"Samurai");
addMuseumArmorSet(1726,15,"Dress");
addMuseumItem(1731,50,"Dummy Sword");
addMuseumItem(1732,50,"Carrot Gun");
addMuseumItem(1733,50,"Treeman Dagger");
addMuseumItem(1734,50,"Rat Tail");
addMuseumItem(1735,50,"Dark Mage Wand");
addMuseumArmorSet(1741,5,"Censor");
addMuseumItem(1746,10,"Censor Sword");
addMuseumItem(1751,1,"Revolution Pyrabow");
addMuseumItem(1752,1,"Revolution Earrings");
addMuseumItem(1753,2,"Immortal Pendant");
addMuseumItem(1754,5,"Roflhunter\'s Pendant");
addMuseumItem(1755,1,"Revolution Pendant");
addMuseumItem(1761,2,"Alien Sword #1");
addMuseumItem(1762,2,"Alien Claw #1");
addMuseumItem(1763,2,"Alien Wand #1");
addMuseumItem(1764,2,"Alien Bow #1");
addMuseumItem(1765,2,"Alien Sword #2");
addMuseumItem(1766,2,"Alien Claw #2");
addMuseumItem(1767,2,"Alien Wand #2");
addMuseumItem(1768,2,"Alien Bow #2");
addMuseumItem(1771,2,"Alien Hat #1");
addMuseumItem(1772,2,"Alien Shirt #1");
addMuseumItem(1773,2,"Alien Gloves #1");
addMuseumItem(1774,2,"Alien Pants #1");
addMuseumItem(1775,2,"Alien Shoes #1");
addMuseumItem(1776,2,"Alien Hat #2");
addMuseumItem(1777,2,"Alien Shirt #2");
addMuseumItem(1778,2,"Alien Gloves #2");
addMuseumItem(1779,2,"Alien Pants #2");
addMuseumItem(1780,2,"Alien Shoes #2");
addMuseumItem(1781,2,"Alien Hat #3");
addMuseumItem(1782,2,"Alien Shirt #3");
addMuseumItem(1783,2,"Alien Gloves #3");
addMuseumItem(1784,2,"Alien Pants #3");
addMuseumItem(1785,2,"Alien Shoes #3");
addMuseumItem(1786,2,"Alien Hat #4");
addMuseumItem(1787,2,"Alien Shirt #4");
addMuseumItem(1788,2,"Alien Gloves #4");
addMuseumItem(1789,2,"Alien Pants #4");
addMuseumItem(1790,2,"Alien Shoes #4");
addMuseumItem(1791,4,"Elite Alien Sword #1");
addMuseumItem(1792,4,"Elite Alien Claw #1");
addMuseumItem(1793,4,"Elite Alien Wand #1");
addMuseumItem(1794,4,"Elite Alien Bow #1");
addMuseumItem(1795,4,"Elite Alien Sword #2");
addMuseumItem(1796,4,"Elite Alien Claw #2");
addMuseumItem(1797,4,"Elite Alien Wand #2");
addMuseumItem(1798,4,"Elite Alien Bow #2");
addMuseumItem(1801,4,"Elite Alien Hat #1");
addMuseumItem(1802,4,"Elite Alien Shirt #1");
addMuseumItem(1803,4,"Elite Alien Gloves #1");
addMuseumItem(1804,4,"Elite Alien Pants #1");
addMuseumItem(1805,4,"Elite Alien Shoes #1");
addMuseumItem(1806,4,"Elite Alien Hat #2");
addMuseumItem(1807,4,"Elite Alien Shirt #2");
addMuseumItem(1808,4,"Elite Alien Gloves #2");
addMuseumItem(1809,4,"Elite Alien Pants #2");
addMuseumItem(1810,4,"Elite Alien Shoes #2");
addMuseumItem(1811,4,"Elite Alien Hat #3");
addMuseumItem(1812,4,"Elite Alien Shirt #3");
addMuseumItem(1813,4,"Elite Alien Gloves #3");
addMuseumItem(1814,4,"Elite Alien Pants #3");
addMuseumItem(1815,4,"Elite Alien Shoes #3");
addMuseumItem(1816,4,"Elite Alien Hat #4");
addMuseumItem(1817,4,"Elite Alien Shirt #4");
addMuseumItem(1818,4,"Elite Alien Gloves #4");
addMuseumItem(1819,4,"Elite Alien Pants #4");
addMuseumItem(1820,4,"Elite Alien Shoes #4");
addMuseumItem(1821,10,"Alien Earrings");
addMuseumItem(1831,2,"Bronze Trophy");
addMuseumItem(1832,4,"Silver Trophy");
addMuseumItem(1833,6,"Gold Trophy");
addMuseumItem(1834,8,"Platinum Trophy");
addMuseumItem(1835,10,"Unobtainium Trophy");
addMuseumItem(1836,2,"Bronze Endurance Trophy");
addMuseumItem(1837,4,"Silver Endurance Trophy");
addMuseumItem(1838,6,"Gold Endurance Trophy");
addMuseumItem(1839,8,"Platinum Endurance Trophy");
addMuseumItem(1840,10,"Unobtainium Endurance Trophy");
addMuseumItem(1841,2,"Dagger of DOOOOOOM");
addMuseumItem(1842,2,"Sword of DOOOOOOM");
addMuseumItem(1843,2,"Longsword of DOOOOOOM");
addMuseumItem(1844,2,"Spear of DOOOOOOM");
addMuseumItem(1845,2,"Axe of DOOOOOOM");
addMuseumItem(1846,2,"Bow of DOOOOOOM");
addMuseumItem(1847,2,"Crossbow of DOOOOOOM");
addMuseumItem(1848,2,"Gun of DOOOOOOM");
addMuseumItem(1849,2,"Wand of DOOOOOOM");
addMuseumItem(1850,2,"Claw of DOOOOOOM");
addMuseumItem(1851,1,"Hat of DOOOOOOM");
addMuseumItem(1852,1,"Shirt of DOOOOOOM");
addMuseumItem(1853,1,"Gloves of DOOOOOOM");
addMuseumItem(1854,1,"Pants of DOOOOOOM");
addMuseumItem(1855,1,"Shoes of DOOOOOOM");
addMuseumItem(1861,5,"THE MEGABOSS\'s Earrings of Experience");
addMuseumItem(1862,5,"THE MEGABOSS\'s Earrings of Wealth");
addMuseumItem(1863,5,"THE MEGABOSS\'s Earrings of Health");
addMuseumItem(1864,5,"THE MEGABOSS\'s Earrings of Power");
addMuseumArmorSet(1871,6,"Corrupted Elm");
addMuseumItem(1881,10,"Badly Recolored Weapon");
addMuseumItem(1882,15,"Scimitar");
addMuseumItem(1883,20,"Blood Scimitar");
addMuseumItem(1891,50,"Meteoric Battleaxe");
addMuseumItem(1892,50,"Meteoric Sword");
addMuseumItem(1893,50,"Meteoric Cleaver");
addMuseumItem(1894,50,"Meteoric Glaive");
addMuseumItem(1895,50,"Meteoric Scythe");
addMuseumItem(1896,50,"Meteoric Voulge");
addMuseumArmorSet(1901,25,"Meteoric");
addMuseumArmorSet(1911,5,"Wizard");
addMuseumItem(1916,7,"Rain Bow");
addMuseumItem(1921,3,"Epic Fire Staff");
addMuseumItem(1922,3,"Epic Ice Staff");
addMuseumItem(1923,3,"Epic Wind Staff");
addMuseumItem(1924,3,"Epic Earth Staff");
addMuseumItem(1925,3,"Epic Thunder Staff");
addMuseumItem(1926,3,"Epic Water Staff");
addMuseumItem(1927,3,"Light Glaive");
addMuseumItem(1928,3,"Dark Glaive");
addMuseumItem(1931,3,"Ultimate Fire Sword");
addMuseumItem(1932,3,"Ultimate Fire Spear");
addMuseumItem(1933,3,"Ultimate Fire Polearm");
addMuseumItem(1934,3,"Ultimate Ice Sword");
addMuseumItem(1935,3,"Ultimate Ice Spear");
addMuseumItem(1936,3,"Ultimate Ice Polearm");
addMuseumItem(1937,3,"Ultimate Lightning Sword");
addMuseumItem(1938,3,"Ultimate Lightning Spear");
addMuseumItem(1939,3,"Ultimate Lightning Polearm");
addMuseumArmorSet(1941,4,"Holy Glory");
addMuseumItem(1946,20,"Glaive of Smiting");
addMuseumArmorSet(1951,5,"Dark Angel");
addMuseumItem(1956,25,"Darkglaive of Smiting");
addMuseumArmorSet(1961,6,"Chaos");
addMuseumItem(1966,30,"Fiend Glaive");
addMuseumItem(1971,8,"CHAOS HAT");
addMuseumItem(1972,8,"CHAOS SHIRT");
addMuseumItem(1973,8,"CHAOS GLOVES");
addMuseumItem(1974,8,"CHAOS PANTS");
addMuseumItem(1975,8,"CHAOS SHOES");
addMuseumItem(1976,40,"CHAOS AURA");
addMuseumItem(1977,250,"GIGA PENDANT");
addMuseumItem(1978,250,"GIGA EARRINGS");
addMuseumItem(1979,750,"TERA PENDANT");
addMuseumItem(1980,750,"TERA EARRINGS");
addMuseumItem(1981,44,"Dragon Slayer Dagger");
addMuseumItem(1982,44,"Dragon Slayer Sword");
addMuseumItem(1983,44,"Dragon Slayer Spear");
addMuseumItem(1984,44,"Dragon Slayer Axe");
addMuseumItem(1985,44,"Dragon Slayer Bow");
addMuseumItem(1986,44,"Dragon Slayer Gun");
addMuseumItem(1987,44,"Dragon Slayer Staff");
addMuseumItem(1988,44,"Dragon Slayer Claw");
addMuseumArmorSet(1991,44,"Dragon Slayer");
addMuseumItem(2001,66,"Demon Slayer Dagger");
addMuseumItem(2002,66,"Demon Slayer Sword");
addMuseumItem(2003,66,"Demon Slayer Spear");
addMuseumItem(2004,66,"Demon Slayer Axe");
addMuseumItem(2005,66,"Demon Slayer Bow");
addMuseumItem(2006,66,"Demon Slayer Gun");
addMuseumItem(2007,66,"Demon Slayer Staff");
addMuseumItem(2008,66,"Demon Slayer Claw");
addMuseumItem(2009,66,"Demon Slayer Stick");
addMuseumArmorSet(2011,66,"Demon Slayer");
addMuseumArmorSet(2021,10,"Fairy Godfather");
addMuseumArmorSet(2031,10,"Fairy Godmother");
addMuseumItem(2036,20,"Fairy Godmother Wand");
addMuseumItem(2041,1,"First Medal");
addMuseumItem(2042,1,"Newbie Fighter");
addMuseumItem(2043,2,"Fighter");
addMuseumItem(2044,2,"Veteran Fighter");
addMuseumItem(2045,3,"Heroic Fighter");
addMuseumItem(2046,3,"Elite Fighter");
addMuseumItem(2047,4,"Master Fighter");
addMuseumItem(2048,4,"Ultimate Fighter");
addMuseumItem(2049,5,"Arena Champion");
addMuseumItem(2050,1,"Combo King");
addMuseumItem(2051,2,"Bestiary Master");
addMuseumItem(2052,3,"Bestiary King");
addMuseumItem(2053,4,"Mad Scientist");
addMuseumItem(2054,5,"THE BESTiary");
addMuseumItem(2055,2,"Novice Tamer");
addMuseumItem(2056,3,"Veteran Tamer");
addMuseumItem(2057,4,"Master Tamer");
addMuseumItem(2058,5,"Legendary Tamer");
addMuseumItem(2059,2,"Novice Trainer");
addMuseumItem(2060,3,"Veteran Trainer");
addMuseumItem(2061,4,"Master Trainer");
addMuseumItem(2062,5,"Legendary Trainer");
addMuseumItem(2063,5,"Bottomless Bag");
addMuseumItem(2064,4,"Four-Leaf Clover");
addMuseumItem(2065,0,"Speed Runner");
addMuseumItem(2071,0,"Challenge #1 Participant");
addMuseumItem(2072,0,"Challenge #2 Participant");
addMuseumItem(2073,0,"Challenge #3 Participant");
addMuseumItem(2074,0,"Challenge #4 Participant");
addMuseumItem(2075,0,"Challenge #5 Participant");
addMuseumItem(2076,0,"Challenge #6 Participant");
addMuseumItem(2081,0,"Challenge #1 Master");
addMuseumItem(2082,0,"Challenge #2 Master");
addMuseumItem(2083,0,"Challenge #3 Master");
addMuseumItem(2084,0,"Challenge #4 Master");
addMuseumItem(2085,0,"Challenge #5 Master");
addMuseumItem(2086,0,"Challenge #6 Master");
addMuseumItem(2091,0,"This is NOT a Restaurant");
addMuseumItem(2092,0,"Defenseless Warrior");
addMuseumItem(2093,0,"Peaceful Player");
addMuseumItem(2094,0,"Time Traveler");
addMuseumItem(2095,0,"FCG Master");
addMuseumItem(2096,0,"Zombie");
addMuseumArmorSet(2101,0,"Pre-Explosion");
addMuseumItem(2106,0,"Pre-Explosion Trophy");
addMuseumItem(2111,0,"\'FIRST!!!\' Sword");
addMuseumItem(2112,0,"Newbie Stick");
addMuseumArmorSet(2121,0,"Halloween");
addMuseumItem(2126,0,"Ghostslayer");
addMuseumArmorSet(2131,0,"Elite Lovely");
addMuseumArmorSet(2141,0,"2nd Anniversary");
addMuseumItem(2146,0,"2nd Anniversary Medal");
addMuseumItem(2151,0,"4 Million Plays Event Sword");
addMuseumItem(2161,0,"Anniversary Hat");
addMuseumItem(2162,0,"Anniversary Hat");
addMuseumItem(2171,0,"Nerf Accepted!");
addMuseumItem(2181,0,"Earrings of Activity");
addMuseumItem(2182,0,"Earrings of Activity");
addMuseumItem(2183,0,"Earrings of Activity");
addMuseumItem(2184,0,"Earrings of Activity");
addMuseumItem(2185,0,"Earrings of Activity");
addMuseumItem(2186,0,"Earrings of Activity");
addMuseumItem(2187,0,"Earrings of Activity");
addMuseumItem(2188,0,"Earrings of Activity");
addMuseumItem(2189,0,"Earrings of Activity");
addMuseumItem(2190,0,"Final Earrings of Activity");
addMuseumItem(2191,0,"[Event] Mystery Enhancer Identifier");
addMuseumItem(2192,0,"[Event] Mega Bullets");
addMuseumItem(2193,0,"[Event] Weapon Mystery Rock Lv. 10");
addMuseumItem(2194,0,"Armor Cleansing Rock");
addMuseumItem(2195,0,"Relic");
addMuseumItem(2196,0,"Anti-Curse Potion");
addMuseumItem(2201,0,"Pendant of Experience");
addMuseumItem(2202,0,"Pendant of Treasure");
addMuseumItem(2203,0,"Pendant of Greed");
addMuseumItem(2204,0,"Pendant of Luck");
addMuseumItem(2205,0,"Pendant of Encounter");
addMuseumItem(2206,0,"Pendant of Epicness");
addMuseumItem(2207,0,"Pendant of Accuracy");
addMuseumItem(2208,0,"Pendant of Nimbleness");
addMuseumItem(2209,0,"Pendant of Quickness");
addMuseumItem(2210,0,"Pendant of Regeneration");
addMuseumItem(2211,0,"Premium Sword (1)");
addMuseumItem(2212,0,"Premium Sword (2)");
addMuseumItem(2213,0,"Premium Sword (3)");
addMuseumItem(2214,0,"Evil Sword");
addMuseumItem(2215,0,"Pyrabow");
addMuseumItem(2221,1,"Adventurer\'s Trophy");
addMuseumItem(2222,1,"Sword of Ascendant");
addMuseumItem(2223,3,"Pirate Sword");
addMuseumItem(2224,3,"Elite Grenades");
addMuseumItem(2231,1,"Transparent Earrings");
addMuseumItem(2232,1,"Yellow Skin");
addMuseumItem(2233,1,"Invisible Skin");
addMuseumItem(2234,3,"Invisible Weapon");
addMuseumItem(2235,3,"Invisible Projectiles");
addMuseumItem(2236,3,"Invisible Weapon and Projectiles");
addMuseumItem(2241,0,"Kana Warrior");
addMuseumItem(2242,0,"Kana King");
addMuseumItem(2291,1,"4D Infinity Cube");
i = 2341;
while(i <= 2400)
{
   addMuseumItem(i,0,"Perfect Attendance");
   i++;
}
addMuseumArmorSet(2401,0,"Festive");
addMuseumItem(2406,0,"Technical Trophy #1");
addMuseumArmorSet(2411,0,"Choco");
addMuseumItem(2416,0,"Technical Trophy #2");
addMuseumArmorSet(2421,0,"Lantern");
addMuseumItem(2426,0,"Technical Trophy #3");
addMuseumItem(2501,1,"Poison Arrows");
addMuseumItem(2502,1,"Explosive Arrows");
addMuseumItem(2503,1,"Mega Bullets");
addMuseumItem(2504,1,"Master Shurikens");
addMuseumItem(2511,1,"Spell Scroll - Fire");
addMuseumItem(2512,1,"Spell Scroll - Ice");
addMuseumItem(2513,1,"Spell Scroll - Wind");
addMuseumItem(2514,1,"Spell Scroll - Earth");
addMuseumItem(2515,1,"Spell Scroll - Thunder");
addMuseumItem(2516,1,"Spell Scroll - Water");
addMuseumItem(2517,1,"Spell Scroll - Light");
addMuseumItem(2518,1,"Spell Scroll - Dark");
addMuseumItem(2521,2,"Fire Card");
addMuseumItem(2522,2,"Ice Card");
addMuseumItem(2523,2,"Wind Card");
addMuseumItem(2524,2,"Earth Card");
addMuseumItem(2525,2,"Thunder Card");
addMuseumItem(2526,2,"Water Card");
addMuseumItem(2527,2,"Light Card");
addMuseumItem(2528,2,"Dark Card");
addMuseumItem(2531,2,"Poison Arrows [+]");
addMuseumItem(2532,2,"Explosive Arrows [+]");
addMuseumItem(2533,2,"Mega Bullets [+]");
addMuseumItem(2534,2,"Master Shurikens [+]");
addMuseumItem(2541,2,"Spell Scroll - Fire [+]");
addMuseumItem(2542,2,"Spell Scroll - Ice [+]");
addMuseumItem(2543,2,"Spell Scroll - Wind [+]");
addMuseumItem(2544,2,"Spell Scroll - Earth [+]");
addMuseumItem(2545,2,"Spell Scroll - Thunder [+]");
addMuseumItem(2546,2,"Spell Scroll - Water [+]");
addMuseumItem(2547,2,"Spell Scroll - Light [+]");
addMuseumItem(2548,2,"Spell Scroll - Dark [+]");
addMuseumItem(2551,4,"Fire Card [+]");
addMuseumItem(2552,4,"Ice Card [+]");
addMuseumItem(2553,4,"Wind Card [+]");
addMuseumItem(2554,4,"Earth Card [+]");
addMuseumItem(2555,4,"Thunder Card [+]");
addMuseumItem(2556,4,"Water Card [+]");
addMuseumItem(2557,4,"Light Card [+]");
addMuseumItem(2558,4,"Dark Card [+]");
addMuseumItem(2581,123,"Tukkonium Dagger");
addMuseumItem(2582,123,"Tukkonium Sword");
addMuseumItem(2583,123,"Tukkonium Spear");
addMuseumItem(2584,123,"Tukkonium Axe");
addMuseumItem(2585,123,"Tukkonium Bow");
addMuseumItem(2586,123,"Tukkonium Gun");
addMuseumItem(2587,123,"Tukkonium Staff");
addMuseumItem(2588,123,"Tukkonium Claw");
addMuseumItem(2589,123,"Tukkonium Stick");
addMuseumArmorSet(2591,123,"Tukkonium");
addMuseumItem(2596,123,"Tukkonium Skin");
trace("MAX: " + _root.museumMaxValue + " CP (" + _root.museumMaxItem + " items)");
