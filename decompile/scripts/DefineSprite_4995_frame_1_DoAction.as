//! status=pending
function refr()
{
   if(!isNaN(iniSlot) && iniSlot < 60)
   {
      slot = iniSlot + _root.invTab * 100;
   }
   checkStat();
   itemIcon.checkFrame();
}
function checkStat()
{
   exist = _root.save.inventoryExist[slot];
   name = _root.save.inventoryName[slot];
   if(name.indexOf("[S]") != -1)
   {
      typeS = true;
   }
   else
   {
      typeS = false;
   }
   if(name.indexOf("[I]") != -1)
   {
      typeI = true;
   }
   else
   {
      typeI = false;
   }
   if(name.indexOf("(Cursed)") != -1)
   {
      typeC = true;
   }
   else
   {
      typeC = false;
   }
   level = _root.save.inventoryLevel[slot];
   maxLevel = _root.save.inventoryMaxLevel[slot];
   reqRank = _root.save.inventoryReqRank[slot];
   exp = _root.save.inventoryExp[slot];
   expTNL = _root.save.inventoryExpTNL[slot];
   enhance = _root.save.inventoryEnhance[slot];
   bonusPow = _root.save.inventoryBonusPow[slot];
   expTNL = _root.save.inventoryExpTNL[slot];
   type = _root.save.inventoryType[slot];
   subtype = _root.save.inventorySubtype[slot];
   frame = _root.save.inventoryFrame[slot];
   range = _root.save.inventoryRange[slot];
   attack = _root.save.inventoryAttack[slot];
   speed = _root.save.inventorySpeed[slot];
   defense = _root.save.inventoryDefense[slot];
   bonus = _root.save.inventoryBonus[slot];
   ability = _root.save.inventoryAbility[slot];
   moreBonus = _root.save.inventoryMoreBonus[slot];
   sell = _root.save.inventorySell[slot];
   expiry = _root.save.inventoryExpiry[slot];
   obtainTime = _root.save.inventoryObtainTime[slot];
   noBonus = _root.save.inventoryNoBonus[slot];
   noRecycle = _root.save.inventoryNoRecycle[slot];
   noFuse = _root.save.inventoryNoFuse[slot];
   noUnique = _root.save.inventoryNoUnique[slot];
   unob = _root.save.inventoryUnob[slot];
   spirit = _root.save.inventorySpirit[slot];
   crit = _root.save.inventoryCrit[slot];
   dexterity = _root.save.inventoryDexterity[slot];
   health = _root.save.inventoryHealth[slot];
   desc = _root.save.inventoryDesc[slot];
   xCate = _root.save.inventoryType[slot];
   guard = _root.save.inventoryGuard[slot];
   setID = _root.save.inventorySet[slot];
   if(isNaN(setID))
   {
      setID = 0;
   }
   if(_root.save.inventorySubtype[slot] == "Secondary Weapon")
   {
      xCate = "SubWeapon";
   }
   if(_root.save.inventoryType[slot] == "Armor" || _root.save.inventoryType[slot] == "Accessory")
   {
      xCate = _root.save.inventorySubtype[slot];
   }
   if(_root.save.inventoryType[slot] == "Outfit")
   {
      xCate = "Outfit" + _root.save.inventorySubtype[slot];
   }
}
function showText()
{
   _root.actiondescription = "";
   if(exist != 1)
   {
      return undefined;
   }
   _root.actiondescription += "<font color=\'#DDEEFF\'><b>";
   if(bonusPow >= 100000)
   {
      if(name.indexOf("\'s Elixir of Greatness") != -1)
      {
         rainbowName = name.substr(1,name.indexOf("\'s") + 2);
         _root.actiondescription += _root.jewk(rainbowName);
         rainbowName = name.substr(name.indexOf("\'s") + 4,name.length - name.indexOf("\'s") - 1);
         if(type != "Enhancer")
         {
            if(enhance > 0)
            {
               rainbowName += " [+" + enhance + "]";
            }
            else if(enhance < 0)
            {
               rainbowName += " [" + enhance + "]";
            }
         }
         _root.actiondescription += "\n" + _root.jewk(rainbowName) + "</b>";
      }
      else
      {
         rainbowName = name;
         if(type != "Enhancer")
         {
            if(enhance > 0)
            {
               rainbowName += " [+" + enhance + "]";
            }
            else if(enhance < 0)
            {
               rainbowName += " [" + enhance + "]";
            }
         }
         _root.actiondescription += _root.jewk(rainbowName) + "</b>";
      }
   }
   else
   {
      if(bonusPow >= 706)
      {
         _root.actiondescription += "<font color=\'#FF0000\'>";
      }
      else if(bonusPow >= 406)
      {
         _root.actiondescription += "<font color=\'#FF33CC\'>";
      }
      else if(bonusPow >= 256)
      {
         _root.actiondescription += "<font color=\'#999900\'>";
      }
      else if(bonusPow >= 156)
      {
         _root.actiondescription += "<font color=\'#009900\'>";
      }
      else if(bonusPow >= 106)
      {
         _root.actiondescription += "<font color=\'#9900FF\'>";
      }
      else if(bonusPow >= 66)
      {
         _root.actiondescription += "<font color=\'#00FFFF\'>";
      }
      else if(bonusPow >= 36)
      {
         _root.actiondescription += "<font color=\'#00FF00\'>";
      }
      else if(bonusPow >= 16)
      {
         _root.actiondescription += "<font color=\'#FFFF00\'>";
      }
      else if(bonusPow >= 1)
      {
         _root.actiondescription += "<font color=\'#0099FF\'>";
      }
      else if(bonusPow >= 0)
      {
         _root.actiondescription += "<font color=\'#FFFFFF\'>";
      }
      else
      {
         _root.actiondescription += "<font color=\'#999999\'>";
      }
      if(name.indexOf("\'s Elixir of Greatness") != -1)
      {
         _root.actiondescription += name.substr(1,name.indexOf("\'s") + 2);
         _root.actiondescription += "\n" + name.substr(name.indexOf("\'s") + 4,name.length - name.indexOf("\'s") - 1);
      }
      else
      {
         _root.actiondescription += name;
      }
      if(type != "Enhancer")
      {
         if(enhance > 0)
         {
            _root.actiondescription += " [+" + enhance + "]";
         }
         else if(enhance < 0)
         {
            _root.actiondescription += " [" + enhance + "]";
         }
      }
      _root.actiondescription += "</font></b>";
   }
   if(noBonus == true && level != 9999)
   {
      _root.actiondescription += "\n<font color=\'#FF6600\'><b>Cannot apply Bonus Rocks</b></font>";
   }
   if(noFuse == true || noUnique == true)
   {
      if(level != 9999 && type != "Accessory")
      {
         _root.actiondescription += "\n<font color=\'#FF6600\'><b>Cannot Fuse</b></font>";
      }
   }
   if(noUnique == true)
   {
      _root.actiondescription += "\n<font color=\'#FF6600\'><b>Cannot apply Unique Enhancers</b></font>";
   }
   if(spirit == true)
   {
      _root.actiondescription += "\n<font color=\'#0099FF\'><b>Spirit Item</b></font>";
   }
   timeLeft = expiry - _root.systemtimenow;
   if(timeLeft != Infinity && !isNaN(timeLeft))
   {
      if(timeLeft > 86400000)
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Time Left: <b>" + Math.ceil(timeLeft / 8640000) / 10 + " days</b></font>";
      }
      else if(timeLeft > 3600000)
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Time Left: <b>" + Math.ceil(timeLeft / 3600000) + " hr.</b></font>";
      }
      else if(timeLeft > 0)
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Time Left: <b>" + Math.ceil(timeLeft / 60000) + " min.</b></font>";
      }
      else
      {
         _root.actiondescription += "\n<font color=\'#FF0000\'><b>Expired</b></font>";
      }
   }
   if(reqRank >= 1 && type != "Enhancer" && type != "Potion" && type != "Chip")
   {
      if(_root.save.arenaLevel < reqRank)
      {
         _root.actiondescription += "\n<font color=\'#6699CC\'>Required Rank: <font color=\'#FF0000\'><b>" + reqRank + "</b></font></font>";
      }
      else
      {
         _root.actiondescription += "\n<font color=\'#6699CC\'>Required Rank: <font color=\'#99CCFF\'><b>" + reqRank + "</b></font></font>";
      }
   }
   if(maxLevel > 1)
   {
      if(level == 9999)
      {
         _root.actiondescription += "\n<font color=\'#B478F0\'><b>Finalized</b></font>";
      }
   }
   else if(maxLevel == -1)
   {
      _root.actiondescription += "\n<font color=\'#99FF33\'>Durability: <b>" + _root.withComma(expTNL) + "</b> attacks</font>";
   }
   if(typeC == true)
   {
      _root.actiondescription += "\n<font color=\'#FF9999\'><b>Cursed Item</b>\nEquipping this will cause your MaxHP and damage dealt to drop. Use a Cleansing Rock to get rid of the curse.</font>\n";
   }
   if(type == "Weapon")
   {
      _root.actiondescription += "\nType: Weapon / " + subtype;
   }
   if(type == "Armor")
   {
      _root.actiondescription += "\nType: Armor / " + subtype;
   }
   if(type == "Accessory")
   {
      _root.actiondescription += "\nType: Accessory / " + subtype;
   }
   if(type == "Outfit")
   {
      _root.actiondescription += "\nType: Outfit / " + subtype;
   }
   if(type == "Weapon" || type == "Armor" || type == "Accessory")
   {
      _root.actiondescription += "\n";
      if(type == "Weapon" && subtype != "Secondary Weapon")
      {
         if(name == "Ultimate Weapon" || name == "Reincarnation Weapon")
         {
            _root.actiondescription += "\nRange: <font color=\'#99CCFF\'>125 px</font>";
         }
         else if(_root.save.inventoryRange[slot] == false)
         {
            _root.actiondescription += "\nRange: <font color=\'#99CCFF\'>" + weaponRange + " px</font>";
         }
         else
         {
            _root.actiondescription += "\nRange: <font color=\'#99CCFF\'>MAX</font>";
         }
      }
      if(attack > 0)
      {
         _root.actiondescription += "\nAttack: <font color=\'#FFFF00\'>" + _root.withComma(attack) + "</font>";
      }
      if(speed > 0)
      {
         if(type == "Weapon")
         {
            _root.actiondescription += "\nAttack Speed: <font color=\'#FFFF00\'>" + speed + "</font>";
         }
         else
         {
            _root.actiondescription += "\nAttack Speed: <font color=\'#FFFF00\'>" + Math.floor(speed * 5) + "%</font>";
         }
      }
      if(defense > 0)
      {
         _root.actiondescription += "\nDefense: <font color=\'#FFFF00\'>" + _root.withComma(defense) + "</font>";
      }
      if(crit > 0)
      {
         if(type == "Weapon")
         {
            _root.actiondescription += "\nCritical Chance: <font color=\'#FFFF00\'>" + crit + "%</font>";
         }
         else
         {
            _root.actiondescription += "\nCritical Damage: <font color=\'#FFFF00\'>" + crit + "%</font>";
         }
      }
      if(dexterity > 0)
      {
         if(type == "Weapon")
         {
            _root.actiondescription += "\nAccuracy: <font color=\'#FFFF00\'>" + dexterity + "%</font>";
         }
         else
         {
            _root.actiondescription += "\nEvasion: <font color=\'#FFFF00\'>" + dexterity + "%</font>";
         }
      }
      if(health > 0)
      {
         if(type == "Weapon")
         {
            _root.actiondescription += "\nHP Regen: <font color=\'#FFFF00\'>" + _root.withComma(Math.floor(health * 25)) + "%</font>";
         }
         else
         {
            _root.actiondescription += "\nMaxHP: <font color=\'#FFFF00\'>" + health + "%</font>";
         }
      }
      if(_root.enhancerToUse != 0 && _root.save["arena" + xCate] != slot && _root.save.inventoryAttack[_root.enhancerToUse] > 0)
      {
         if(_root.save.inventorySubtype[_root.enhancerToUse] == "Weapon Attack Enhancer" || _root.save.inventorySubtype[_root.enhancerToUse] == "Armor Attack Enhancer" || _root.save.inventorySubtype[_root.enhancerToUse] == "Accessory Attack Enhancer" || _root.save.inventorySubtype[_root.enhancerToUse] == "Weapon Unique Enhancer")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>Attack: +" + _root.save.inventoryAttack[_root.enhancerToUse] + "</font>";
         }
         else if(_root.save.inventorySubtype[_root.enhancerToUse] == "Weapon Speed Enhancer")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>Attack Speed: +" + _root.save.inventoryAttack[_root.enhancerToUse] + "</font>";
         }
         else if(_root.save.inventorySubtype[_root.enhancerToUse] == "Armor Speed Enhancer")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>Attack Speed: +" + Math.floor(_root.save.inventoryAttack[_root.enhancerToUse] * 5) + "%</font>";
         }
         else if(_root.save.inventorySubtype[_root.enhancerToUse] == "Weapon Defense Enhancer" || _root.save.inventorySubtype[_root.enhancerToUse] == "Armor Defense Enhancer" || _root.save.inventorySubtype[_root.enhancerToUse] == "Armor Unique Enhancer")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>Defense: +" + _root.save.inventoryAttack[_root.enhancerToUse] + "</font>";
         }
         else if(_root.save.inventorySubtype[_root.enhancerToUse] == "Weapon Critical Enhancer")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>Critical Chance: +" + _root.save.inventoryAttack[_root.enhancerToUse] + "%</font>";
         }
         else if(_root.save.inventorySubtype[_root.enhancerToUse] == "Weapon Dexterity Enhancer")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>Accuracy: +" + _root.save.inventoryAttack[_root.enhancerToUse] + "%</font>";
         }
         else if(_root.save.inventorySubtype[_root.enhancerToUse] == "Weapon Health Enhancer")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>HP Regen: +" + Math.floor(_root.save.inventoryAttack[_root.enhancerToUse] * 25) + "%</font>";
         }
         else if(_root.save.inventorySubtype[_root.enhancerToUse] == "Armor Critical Enhancer")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>Critical Damage: +" + _root.save.inventoryAttack[_root.enhancerToUse] + "%</font>";
         }
         else if(_root.save.inventorySubtype[_root.enhancerToUse] == "Armor Dexterity Enhancer")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>Evasion: +" + _root.save.inventoryAttack[_root.enhancerToUse] + "%</font>";
         }
         else if(_root.save.inventorySubtype[_root.enhancerToUse] == "Armor Health Enhancer")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>MaxHP: +" + _root.save.inventoryAttack[_root.enhancerToUse] + "%</font>";
         }
         else if(_root.save.inventorySubtype[_root.enhancerToUse] == "Weapon Lifespan Extender" || _root.save.inventorySubtype[_root.enhancerToUse] == "Armor Lifespan Extender")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>Lifespan (Days): +" + _root.save.inventoryAttack[_root.enhancerToUse] + "</font>";
         }
         else if(_root.save.inventorySubtype[_root.enhancerToUse] == "Weapon Growth Rock" || _root.save.inventorySubtype[_root.enhancerToUse] == "Armor Growth Rock")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>Max Level: +" + _root.save.inventoryAttack[_root.enhancerToUse] + "</font>";
         }
         else if(_root.save.inventorySubtype[_root.enhancerToUse] == "Weapon Mystery Enhancer" || _root.save.inventorySubtype[_root.enhancerToUse] == "Armor Mystery Enhancer")
         {
            _root.actiondescription += "\n<font color=\'#00FFFF\'>Enhancement Level: " + _root.save.inventoryAttack[_root.enhancerToUse] + "</font>";
         }
      }
      if(maxLevel > 1 && maxLevel != 9999)
      {
         if(level < maxLevel)
         {
            expmul = 1 + level * 0.01;
            if(subtype == "Trinket")
            {
               expmul = level;
            }
            _root.actiondescription += "\n\n<font color=\'#77DDFF\'>--- Item Level: <b>" + level + "</b> / " + maxLevel + " ---</font>";
            _root.actiondescription += "\n<font color=\'#55BBDD\'>EXP: " + _root.withComma(Math.floor(exp / 1000 * expmul)) + " / " + _root.withComma(Math.ceil(expTNL / 1000 * expmul)) + " (" + Math.floor(exp / expTNL * 100) + "%)</font>";
         }
         else
         {
            _root.actiondescription += "\n\n<font color=\'#DD77FF\'>--- Item Level: <b>" + level + "</b> / " + maxLevel + " (MAX) ---</font>";
         }
      }
   }
   if(type == "Enhancer")
   {
      if(subtype == "Weapon Attack Enhancer")
      {
         _root.actiondescription += "\nType: Weapon Enhancer";
         _root.actiondescription += "\n\nAttack: <font color=\'#0099FF\'>+" + attack + "</font>";
      }
      else if(subtype == "Weapon Unique Enhancer")
      {
         _root.actiondescription += "\nType: Weapon Unique Enhancer";
         _root.actiondescription += "\n\nAttack: <font color=\'#0099FF\'>+" + attack + "</font>";
         _root.actiondescription += "\n<font color=\'#FFFF00\'>Can only be used on fully enhanced and fully leveled items</font>";
      }
      else if(subtype == "Weapon Tukkonium Enhancer")
      {
         _root.actiondescription += "\nType: Weapon Tukkonium Enhancer";
         _root.actiondescription += "\n<font color=\'#FFFF00\'>Can only be used on finalized items</font>";
      }
      else if(subtype == "Weapon Speed Enhancer")
      {
         _root.actiondescription += "\nType: Weapon Enhancer";
         _root.actiondescription += "\n\nAttack Speed: <font color=\'#0099FF\'>+" + attack + "</font>";
      }
      else if(subtype == "Weapon Defense Enhancer")
      {
         _root.actiondescription += "\nType: Weapon Enhancer";
         _root.actiondescription += "\n\nDefense: <font color=\'#0099FF\'>+" + attack + "</font>";
      }
      else if(subtype == "Armor Attack Enhancer")
      {
         _root.actiondescription += "\nType: Armor Enhancer";
         _root.actiondescription += "\n\nAttack: <font color=\'#0099FF\'>+" + attack + "</font>";
      }
      else if(subtype == "Accessory Attack Enhancer")
      {
         _root.actiondescription += "\nType: Accessory Enhancer";
         _root.actiondescription += "\n\nAttack: <font color=\'#0099FF\'>+" + attack + "</font>";
      }
      else if(subtype == "Armor Speed Enhancer")
      {
         _root.actiondescription += "\nType: Armor Enhancer";
         _root.actiondescription += "\n\nAttack Speed: <font color=\'#0099FF\'>+" + Math.floor(attack * 5) + "%</font>";
      }
      else if(subtype == "Armor Defense Enhancer")
      {
         _root.actiondescription += "\nType: Armor Enhancer";
         _root.actiondescription += "\n\nDefense: <font color=\'#0099FF\'>+" + attack + "</font>";
      }
      else if(subtype == "Armor Unique Enhancer")
      {
         _root.actiondescription += "\nType: Armor Unique Enhancer";
         _root.actiondescription += "\n\nDefense: <font color=\'#0099FF\'>+" + attack + "</font>";
         _root.actiondescription += "\n<font color=\'#FFFF00\'>Can only be used on fully enhanced and fully leveled items</font>";
      }
      else if(subtype == "Armor Tukkonium Enhancer")
      {
         _root.actiondescription += "\nType: Armor Tukkonium Enhancer";
         _root.actiondescription += "\n<font color=\'#FFFF00\'>Can only be used on finalized items</font>";
      }
      else if(subtype == "Weapon Critical Enhancer")
      {
         _root.actiondescription += "\nType: Weapon Enhancer";
         _root.actiondescription += "\n\nCritical Chance: <font color=\'#0099FF\'>+" + attack + "%</font>";
      }
      else if(subtype == "Weapon Dexterity Enhancer")
      {
         _root.actiondescription += "\nType: Weapon Enhancer";
         _root.actiondescription += "\n\nAccuracy: <font color=\'#0099FF\'>+" + attack + "%</font>";
      }
      else if(subtype == "Weapon Health Enhancer")
      {
         _root.actiondescription += "\nType: Weapon Enhancer";
         _root.actiondescription += "\n\nHP Regen: <font color=\'#0099FF\'>+" + Math.floor(attack * 25) + "%</font>";
      }
      else if(subtype == "Armor Critical Enhancer")
      {
         _root.actiondescription += "\nType: Armor Enhancer";
         _root.actiondescription += "\n\nCritical Damage: <font color=\'#0099FF\'>+" + attack + "%</font>";
      }
      else if(subtype == "Armor Dexterity Enhancer")
      {
         _root.actiondescription += "\nType: Armor Enhancer";
         _root.actiondescription += "\n\nEvasion: <font color=\'#0099FF\'>+" + attack + "%</font>";
      }
      else if(subtype == "Armor Health Enhancer")
      {
         _root.actiondescription += "\nType: Armor Enhancer";
         _root.actiondescription += "\n\nMaxHP: <font color=\'#0099FF\'>+" + attack + "%</font>";
      }
      else if(subtype == "Weapon Bonus Adder")
      {
         _root.actiondescription += "\nType: Weapon Bonus Adder";
         if(typeS == true)
         {
            _root.actiondescription += "\n<font color=\'#0099FF\'>Can be used on <font color=\'#FFFF00\'>any item</font>.</font>";
         }
      }
      else if(subtype == "Armor Bonus Adder")
      {
         _root.actiondescription += "\nType: Armor Bonus Adder";
         if(typeS == true)
         {
            _root.actiondescription += "\n<font color=\'#0099FF\'>Can be used on <font color=\'#FFFF00\'>any item</font>.</font>";
         }
      }
      else if(subtype == "Accessory Bonus Adder")
      {
         _root.actiondescription += "\nType: Accessory Bonus Adder";
         if(typeS == true)
         {
            _root.actiondescription += "\n<font color=\'#0099FF\'>Can be used on <font color=\'#FFFF00\'>any item (except Medals and some Trinkets)</font>.</font>";
         }
      }
      else if(subtype == "Weapon Lifespan Extender")
      {
         _root.actiondescription += "\nType: Weapon Lifespan Extender";
         _root.actiondescription += "\n\nLifespan (Days): <font color=\'#0099FF\'>+" + attack + "</font>";
      }
      else if(subtype == "Armor Lifespan Extender")
      {
         _root.actiondescription += "\nType: Armor Lifespan Extender";
         _root.actiondescription += "\n\nLifespan (Days): <font color=\'#0099FF\'>+" + attack + "</font>";
      }
      else if(subtype == "Accessory Lifespan Extender")
      {
         _root.actiondescription += "\nType: Accessory Lifespan Extender";
         _root.actiondescription += "\n\nLifespan (Days): <font color=\'#0099FF\'>+" + attack + "</font>";
      }
      else if(subtype == "Accessory Unique Enhancer")
      {
         _root.actiondescription += "\nType: Accessory Unique Enhancer";
         _root.actiondescription += "\n\nDefense: <font color=\'#0099FF\'>+" + attack + "</font>";
         _root.actiondescription += "\n<font color=\'#FFFF00\'>Can only be used on fully enhanced and fully leveled items</font>";
      }
      else if(subtype == "Accessory Tukkonium Enhancer")
      {
         _root.actiondescription += "\nType: Accessory Tukkonium Enhancer";
         _root.actiondescription += "\n<font color=\'#FFFF00\'>Can only be used on finalized items</font>";
      }
      else if(subtype == "Weapon Growth Rock")
      {
         _root.actiondescription += "\nType: Weapon Enhancer";
         _root.actiondescription += "\n\nMax Level: <font color=\'#0099FF\'>+" + attack + "</font>";
      }
      else if(subtype == "Armor Growth Rock")
      {
         _root.actiondescription += "\nType: Armor Enhancer";
         _root.actiondescription += "\n\nMax Level: <font color=\'#0099FF\'>+" + attack + "</font>";
      }
      else if(subtype == "Accessory Growth Rock")
      {
         _root.actiondescription += "\nType: Accessory Enhancer";
         _root.actiondescription += "\n\nMax Level: <font color=\'#0099FF\'>+" + attack + "</font>";
      }
      else if(subtype == "Weapon Spirit Rock")
      {
         _root.actiondescription += "\nType: Weapon Spirit Rock";
         if(typeS == true)
         {
            _root.actiondescription += "\n\n<font color=\'#0099FF\'>Can be used on <font color=\'#FFFF00\'>any item</font> to turn it into a Spirit item, or turn a Spirit item into a regular item.</font>";
         }
         else
         {
            _root.actiondescription += "\n\n<font color=\'#0099FF\'>Can be used on <font color=\'#FF9900\'>a fully enhanced item</font> to turn it into a Spirit item, or turn a Spirit item into a regular item.</font>";
         }
      }
      else if(subtype == "Armor Spirit Rock")
      {
         _root.actiondescription += "\nType: Armor Spirit Rock";
         if(typeS == true)
         {
            _root.actiondescription += "\n\n<font color=\'#0099FF\'>Can be used on <font color=\'#FFFF00\'>any item</font> to turn it into a Spirit item, or turn a Spirit item into a regular item.</font>";
         }
         else
         {
            _root.actiondescription += "\n\n<font color=\'#0099FF\'>Can be used on <font color=\'#FF9900\'>a fully enhanced item</font> to turn it into a Spirit item, or turn a Spirit item into a regular item.</font>";
         }
      }
      else if(subtype == "Accessory Spirit Rock")
      {
         _root.actiondescription += "\nType: Accessory Spirit Rock";
         if(typeS == true)
         {
            _root.actiondescription += "\n\n<font color=\'#0099FF\'>Can be used on <font color=\'#FFFF00\'>any item</font> to turn it into a Spirit item, or turn a Spirit item into a regular item.</font>";
         }
         else
         {
            _root.actiondescription += "\n\n<font color=\'#0099FF\'>Can be used on <font color=\'#FF9900\'>a fully enhanced item</font> to turn it into a Spirit item, or turn a Spirit item into a regular item.</font>";
         }
      }
      else if(subtype == "Mystery Enhancer Identifier")
      {
         _root.actiondescription += "\nType: Mystery Enhancer Identifier";
         _root.actiondescription += "\n\n<font color=\'#0099FF\'>Reveals the effect of a Mystery Enhancer.</font>";
      }
      else if(subtype == "Weapon Mystery Enhancer")
      {
         _root.actiondescription += "\nType: Weapon Enhancer";
         _root.actiondescription += "\n\nEnhancement Level: <font color=\'#0099FF\'>" + attack + "</font>";
      }
      else if(subtype == "Armor Mystery Enhancer")
      {
         _root.actiondescription += "\nType: Armor Enhancer";
         _root.actiondescription += "\n\nEnhancement Level: <font color=\'#0099FF\'>" + attack + "</font>";
      }
      else if(subtype == "Enhancer Success Enhancer")
      {
         _root.actiondescription += "\nType: Enhancer Enhancer";
         _root.actiondescription += "\n\nSuccess Rate: <font color=\'#0099FF\'>" + attack + "% of current</font>";
      }
      else if(subtype == "Enhancer Destruction Enhancer")
      {
         _root.actiondescription += "\nType: Enhancer Enhancer";
         _root.actiondescription += "\n\nDestruction Rate: <font color=\'#0099FF\'>" + attack + "% of current</font>";
      }
      else if(subtype == "Weapon Unobtainium Enhancer")
      {
         _root.actiondescription += "\nType: Weapon Unobtainium Enhancer";
         _root.actiondescription += "\n\nBonus Tier: <font color=\'#0099FF\'>+" + attack + " of original</font>";
      }
      else if(subtype == "Armor Unobtainium Enhancer")
      {
         _root.actiondescription += "\nType: Armor Unobtainium Enhancer";
         _root.actiondescription += "\n\nBonus Tier: <font color=\'#0099FF\'>+" + attack + " of original</font>";
      }
      else if(subtype == "Accessory Unobtainium Enhancer")
      {
         _root.actiondescription += "\nType: Accessory Unobtainium Enhancer";
         _root.actiondescription += "\n\nBonus Tier: <font color=\'#0099FF\'>+" + attack + " of original</font>";
      }
      else if(subtype == "Weapon Finalizer")
      {
         _root.actiondescription += "\nType: Weapon Finalizer";
         _root.actiondescription += "\n\n<font color=\'#0099FF\'>Finalize a Rank <b>" + attack + "</b> or below weapon. A finalized item gains extra stats, but can no longer be enhanced, fused, leveled up, and cannot have its bonuses changed.</font>";
      }
      else if(subtype == "Armor Finalizer")
      {
         _root.actiondescription += "\nType: Armor Finalizer";
         _root.actiondescription += "\n\n<font color=\'#0099FF\'>Finalize a Rank <b>" + attack + "</b> or below armor piece. A finalized item gains extra stats, but can no longer be enhanced, fused, leveled up, and cannot have its bonuses changed.</font>";
      }
      else if(subtype == "Accessory Finalizer")
      {
         _root.actiondescription += "\nType: Accessory Finalizer";
         _root.actiondescription += "\n\n<font color=\'#0099FF\'>Finalize a Rank <b>" + attack + "</b> or below accessory. A finalized item gains extra stats, can no longer be enhanced, fused, leveled up, and cannot have its bonuses changed.</font>";
      }
      else if(subtype == "Weapon Cleansing Rock")
      {
         _root.actiondescription += "\nType: Weapon Cleansing Rock";
      }
      else if(subtype == "Armor Cleansing Rock")
      {
         _root.actiondescription += "\nType: Armor Cleansing Rock";
      }
      if(typeI == true)
      {
         _root.actiondescription += "\n\n<font color=\'#FF9900\'>Does not disappear when used.</font>";
      }
   }
   if(type == "Potion")
   {
      if(isNaN(_root.buffMultiplier))
      {
         _root.buffMultiplier = 1;
      }
      if(subtype == "Power Buff Potion")
      {
         _root.actiondescription += "\nType: Power Buff";
         _root.actiondescription += "\nCan be used <font color=\'#0099FF\'><b>" + defense + "</b> more time(s)</font>";
         _root.actiondescription += "\nDuration: <font color=\'#0099FF\'><b>" + _root.convertSec(attack) + "</b></font>";
         _root.actiondescription += "\nEffect:";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Attack: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Defense: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>MaxHP: <b>+" + Math.floor(150 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>MaxMP: <b>+" + Math.floor(250 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Accuracy: <b>+" + Math.floor(75 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Evasion: <b>+" + Math.floor(75 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n[Will replace current buff]";
         _root.actiondescription += "\n\n<font color=\'#FFFF00\'>The duration of this buff is affected by Potion Efficiency.</font>";
      }
      else if(subtype == "Master Buff Potion")
      {
         _root.actiondescription += "\nType: Master Buff";
         _root.actiondescription += "\nCan be used <font color=\'#0099FF\'><b>" + defense + "</b> more time(s)</font>";
         _root.actiondescription += "\nDuration: <font color=\'#0099FF\'><b>" + _root.convertSec(attack) + "</b></font>";
         _root.actiondescription += "\nEffect:";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Mastery: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage Taken: <b>-" + Math.floor(20 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>HP Regen: <b>+" + Math.floor(2500 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>MP Regen: <b>+" + Math.floor(1250 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Hit Chance: <b>+" + Math.floor(20 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Dodge Chance: <b>+" + Math.floor(20 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n[Will replace current buff]";
         _root.actiondescription += "\n\n<font color=\'#FFFF00\'>The duration of this buff is affected by Potion Efficiency.</font>";
      }
      else if(subtype == "Reward Buff Potion")
      {
         _root.actiondescription += "\nType: Reward Buff";
         _root.actiondescription += "\nCan be used <font color=\'#0099FF\'><b>" + defense + "</b> more time(s)</font>";
         _root.actiondescription += "\nDuration: <font color=\'#0099FF\'><b>" + _root.convertSec(attack) + "</b></font>";
         _root.actiondescription += "\nEffect:";
         _root.actiondescription += "\n<font color=\'#99FF33\'>EXP: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Coin: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Pixel: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Drop Rate: <b>+" + Math.floor(100 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n[Will replace current buff]";
         _root.actiondescription += "\n\n<font color=\'#FFFF00\'>The duration of this buff is affected by Potion Efficiency.</font>";
      }
      else if(subtype == "Nightmare Potion")
      {
         _root.actiondescription += "\nType: ???";
         _root.actiondescription += "\nCan be used <font color=\'#0099FF\'><b>" + defense + "</b> more time(s)</font>";
         _root.actiondescription += "\nDuration: <font color=\'#0099FF\'><b>" + _root.convertSec(attack) + "</b></font>";
      }
      else if(subtype == "Anti-Curse Potion")
      {
         _root.actiondescription += "\nType: Anti-Curse Potion";
         _root.actiondescription += "\nCan be used <font color=\'#0099FF\'><b>" + defense + "</b> more time(s)</font>";
         _root.actiondescription += "\nDuration: <font color=\'#0099FF\'><b>" + _root.convertSec(attack) + "</b></font>";
      }
      else if(subtype == "Loot Magnet")
      {
         _root.actiondescription += "\nType: Loot Magnet";
         _root.actiondescription += "\nCan be used <font color=\'#0099FF\'><b>" + defense + "</b> more time(s)</font>";
         _root.actiondescription += "\nDuration: <font color=\'#0099FF\'><b>" + _root.convertSec(attack) + "</b></font>";
         _root.actiondescription += "\nEffect:";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Magnetizes most loot drops</font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Drop Rate: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Rare Monster Rate: <b>+" + Math.floor(100 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Epic Monster Rate: <b>+" + Math.floor(100 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n[Will replace current buff]";
      }
      else if(subtype == "Monster Magnet")
      {
         _root.actiondescription += "\nType: Monster Magnet";
         _root.actiondescription += "\nCan be used <font color=\'#0099FF\'><b>" + defense + "</b> more time(s)</font>";
         _root.actiondescription += "\nDuration: <font color=\'#0099FF\'><b>" + _root.convertSec(attack) + "</b></font>";
         _root.actiondescription += "\nEffect:";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Magnetizes monsters</font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Spawn Rate: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n[Will replace current buff]";
      }
      else if(subtype == "Air Bubble")
      {
         _root.actiondescription += "\nType: Air Bubble";
         _root.actiondescription += "\nCan be used <font color=\'#0099FF\'><b>" + defense + "</b> more time(s)</font>";
         _root.actiondescription += "\nDuration: <font color=\'#0099FF\'><b>" + _root.convertSec(attack) + "</b></font>";
      }
      else if(subtype == "Elixir of Greatness")
      {
         _root.actiondescription += "\nType: Elixir of Greatness";
         _root.actiondescription += "\nDuration: <font color=\'#0099FF\'><b>" + _root.convertSec(attack) + "</b></font>";
      }
      else if(subtype == "Rebirth Potion")
      {
         _root.actiondescription += "\nType: Rebirth Potion";
      }
      else if(subtype == "Potion of Regrets")
      {
         _root.actiondescription += "\nType: Potion of Regrets";
         _root.actiondescription += "\nYou can use Potion of Regrets <font color=\'#0099FF\'><b>" + _root.save.regretRem + "</b> more time(s) this month</font>";
      }
   }
   if(type == "Chip")
   {
      if(subtype == "Monster Chip (Rare)")
      {
         _root.actiondescription += "\nType: Monster Chip";
         _root.actiondescription += "\n\n<font color=\'#FFFF00\'>[#" + attack + "] " + _root.enemyList[attack].name + "</font>";
         if(isNaN(_root.save.arenaAllyEXP[attack]) || _root.save.arenaAllyEXP[attack] < 10000)
         {
            _root.actiondescription += "\nYou haven\'t mastered this Invisible Ally. This Monster Chip cannot be used.";
         }
         else if(_root.save.arenaAllyUpgrade[attack] == 15 && _root.enemyList[attack].allyPassive3 == "")
         {
            _root.actiondescription += "\nYou have obtained the ULTRA ALLY for this monster.\n\nClick this Monster Chip to gain 500 kill count for this monster.";
         }
         else if(_root.save.arenaAllyUpgrade[attack] == 10 && _root.enemyList[attack].allyPassive3 == "")
         {
            _root.actiondescription += "\nYou have fully upgraded this monster.\n\nClick this Monster Chip to obtain the ULTRA ALLY for this monster and gain 500 kill count for this monster.";
         }
         else if(_root.save.arenaAllyUpgrade[attack] == 15)
         {
            _root.actiondescription += "\nYou have obtained the ULTRA ALLY for this monster.\n\nYou can go to Danger Zone in Hardcore + Apocalypse Mode and use this Monster Chip to summon the ULTRA-1 form of this monster (if it exists). In case you use it without being in Danger Zone in Hardcore + Apocalypse Mode, you will gain 100 kill count for this monster.";
         }
         else if(_root.save.arenaAllyUpgrade[attack] == 10)
         {
            _root.actiondescription += "\nYou have fully upgraded this monster.\n\nYou can go to Danger Zone in Hardcore + Apocalypse Mode and use this Monster Chip to summon the ULTRA-1 form of this monster (if it exists). In case you use it without being in Danger Zone in Hardcore + Apocalypse Mode, you will gain 100 kill count for this monster.";
         }
         else
         {
            _root.actiondescription += "\nAlly Upgrades: <b>" + _root.save.arenaAllyUpgrade[attack] + "</b> / 10\nClick this Monster Chip to upgrade the Invisible Ally for this monster.";
         }
      }
      if(subtype == "Monster Chip (Epic)")
      {
         _root.actiondescription += "\nType: Monster Chip";
         _root.actiondescription += "\n\n<font color=\'#FFFF00\'>[#" + attack + "] " + _root.enemyList[attack].name + "</font>";
         if(isNaN(_root.save.arenaAllyEXP[attack]) || _root.save.arenaAllyEXP[attack] < 10000)
         {
            _root.actiondescription += "\nYou haven\'t mastered this Invisible Ally. This Monster Chip cannot be used.";
         }
         else if(_root.save.arenaAllyUpgrade[attack] == 15 && _root.enemyList[attack].allyPassive3 == "")
         {
            _root.actiondescription += "\nYou have obtained the ULTRA ALLY for this monster.\n\nClick this Monster Chip to gain 5,000 kill count for this monster.";
         }
         else if(_root.save.arenaAllyUpgrade[attack] == 10 && _root.enemyList[attack].allyPassive3 == "")
         {
            _root.actiondescription += "\nYou have fully upgraded this monster.\n\nClick this Monster Chip to obtain the ULTRA ALLY for this monster and gain 5,000 kill count for this monster.";
         }
         else if(_root.save.arenaAllyUpgrade[attack] == 15)
         {
            _root.actiondescription += "\nYou have obtained the ULTRA ALLY for this monster.\n\nYou can go to Danger Zone in Hardcore + Apocalypse Mode and use this Monster Chip to summon the ULTRA-2 form of this monster (if it exists). In case you use it without being in Danger Zone in Hardcore + Apocalypse Mode, you will gain 1,000 kill count for this monster.";
         }
         else if(_root.save.arenaAllyUpgrade[attack] == 10)
         {
            _root.actiondescription += "\nYou have fully upgraded this monster.\n\nYou can go to Danger Zone in Hardcore + Apocalypse Mode and use this Monster Chip to summon the ULTRA-2 form of this monster (if it exists). In case you use it without being in Danger Zone in Hardcore + Apocalypse Mode, you will gain 1,000 kill count for this monster.";
         }
         else
         {
            _root.actiondescription += "\nAlly Upgrades: <b>" + _root.save.arenaAllyUpgrade[attack] + "</b> / 10\nClick this Monster Chip to fully upgrade the Invisible Ally for this monster.";
         }
      }
      if(subtype == "Monster Chip (Ultra)")
      {
         _root.actiondescription += "\nType: Monster Chip";
         _root.actiondescription += "\n\n<font color=\'#FFFF00\'>[#" + attack + "] " + _root.enemyList[attack].name + "</font>";
         if(isNaN(_root.save.arenaAllyEXP[attack]) || _root.save.arenaAllyEXP[attack] < 10000)
         {
            _root.actiondescription += "\nYou haven\'t mastered this Invisible Ally. This Monster Chip cannot be used.";
         }
         else if(_root.save.arenaAllyUpgrade[attack] == 15 && _root.enemyList[attack].allyPassive3 == "")
         {
            _root.actiondescription += "\nYou have obtained the ULTRA ALLY for this monster.\n\nClick this Monster Chip to gain 50,000 kill count for this monster.";
         }
         else if(_root.save.arenaAllyUpgrade[attack] == 10 && _root.enemyList[attack].allyPassive3 == "")
         {
            _root.actiondescription += "\nYou have fully upgraded this monster.\n\nClick this Monster Chip to obtain the ULTRA ALLY for this monster and gain 50,000 kill count for this monster.";
         }
         else if(_root.save.arenaAllyUpgrade[attack] == 15)
         {
            _root.actiondescription += "\nYou have obtained the ULTRA ALLY for this monster.\n\nYou can go to Danger Zone in Hardcore + Apocalypse Mode and use this Monster Chip to summon the ULTRA-3 form of this monster (if it exists). In case you use it without being in Danger Zone in Hardcore + Apocalypse Mode, you will gain 10,000 kill count for this monster.";
         }
         else
         {
            _root.actiondescription += "\nAlly Upgrades: <b>" + _root.save.arenaAllyUpgrade[attack] + "</b> / 10\nClick this Monster Chip to obtain the ULTRA ALLY for this monster.";
         }
      }
      if(subtype == "Monster Chip (Kongpanion)")
      {
         _root.actiondescription += "\nType: Monster Chip";
         _root.actiondescription += "\n\n<font color=\'#FFFF00\'>[#" + attack + "] " + _root.enemyList[attack].name + "</font>";
         if(isNaN(_root.save.arenaAllyEXP[attack]) || _root.save.arenaAllyEXP[attack] < 10000)
         {
            _root.actiondescription += "\nYou do not own this Kongpanion. Use this Monster Chip to obtain the Kongpanion for this monster. Please note that this only applies to the respective Invisible Ally in Anti-Idle: The Game and it will NOT give you an actual Kongpanion that is visible on your Kongregate profile page.";
         }
         else if(_root.save.arenaAllyUpgrade[attack] == 15)
         {
            _root.actiondescription += "\nYou already have this Shiny Kongpanion. This Monster Chip cannot be used.";
         }
         else
         {
            _root.actiondescription += "\nYou already have the non-Shiny version of this Kongpanion. Use this Monster Chip to upgrade it to a Shiny Kongpanion. Please note that this only applies to the respective Invisible Ally in Anti-Idle: The Game and it will NOT give you an actual Shiny Kongpanion that is visible on your Kongregate profile page.";
         }
      }
      if(attack <= 500)
      {
         _root.actiondescription += "\n\nKill count: <b>" + _root.withComma(_root.save.arenaBestiary[attack]) + "</b>";
      }
   }
   _root.actiondescription += "\n";
   if(type == "Enhancer")
   {
      tier = 0;
      if(bonus != "")
      {
         _root.actiondescription += "\nAdd Bonus: <font color=\'#99FF33\'><b>" + bonus + "</b></font>";
         tier = 1;
      }
      if(ability != "")
      {
         _root.actiondescription += "\nAdd Bonus: <font color=\'#FFCC33\'><b>" + ability + "</b></font>";
         tier = 1;
      }
      if(moreBonus != "")
      {
         _root.actiondescription += "\nAdd Bonus: <font color=\'#CC99FF\'><b>" + moreBonus + "</b></font>";
         tier = 1;
      }
      if(bonus != "" || ability != "" || moreBonus != "")
      {
         _root.actiondescription += "\n[Will replace same color bonuses]";
      }
   }
   else
   {
      tier = Math.ceil(reqRank / 10);
      if(type == "Weapon" && _root.save.arenaSkill[59] > 0)
      {
         tier += Math.floor(_root.save.arenaSkill[59] / 5);
      }
      baseTier = tier;
      tier += unob;
      if(unob > 0 || bonus != "" || ability != "" || moreBonus != "")
      {
         if(type == "Weapon" || type == "Armor" || type == "Accessory")
         {
            _root.actiondescription += "\n<font color=\'#DDFF77\'>--- Bonus Tier: <b>" + tier + "</b></font>";
            if(unob > 0)
            {
               _root.actiondescription += " <font color=\'#BBCC66\'>(" + baseTier + " + <font color=\'#DDFF77\'>" + unob + "</font>)</font>";
            }
            _root.actiondescription += "<font color=\'#DDFF77\'> ---</font>";
         }
      }
      if(bonus == "Random")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'><b>Random Bonus</b></font>";
      }
      else if(bonus == "Reward")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>EXP: <b>+" + Math.ceil(tier * 0.25) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Coin: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Pixel: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
      }
      else if(bonus == "EXP")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>EXP: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
      }
      else if(bonus == "Coin")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Coin: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(bonus == "Pixel")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Pixel: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(bonus == "Drop Rate")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Drop Rate: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(bonus == "Spawn Rate")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Spawn Rate: <b>+" + Math.ceil(tier * 0.2) + "%</b></font>";
      }
      else if(bonus == "Rare Monster Rate")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Rare Monster Rate: <b>+" + Math.ceil(tier * 2.5) + "%</b></font>";
      }
      else if(bonus == "Epic Monster Rate")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Epic Monster Rate: <b>+" + Math.ceil(tier * 2.5) + "%</b></font>";
      }
      else if(bonus == "Ignore Epic Weapons")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Ignore Epic [Element] Staff and Light/Dark Glaive loots and replace them with <b>" + _root.withComma(Math.ceil(tier * 50000)) + " Pixels</b> each</font>";
      }
      else if(bonus == "Ignore Bonus Rocks")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Ignore Bonus Rock loots (except special Bonus Rocks) and replace them with <b>" + _root.withComma(Math.ceil(tier * 5000)) + " Pixels</b> each</font>";
      }
      else if(bonus == "Ignore Pendants")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Ignore Pendant loots (except Immortal Pendant, Collector\'s Pendant and Rank 500 Pendants) and replace them with <b>" + _root.withComma(Math.ceil(tier * 5000)) + " Pixels</b> each</font>";
      }
      else if(bonus == "Ignore Finalizers")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Ignore Finalizer loots and replace them with <b>" + _root.withComma(Math.ceil(tier * 25000)) + " Pixels</b> each</font>";
      }
      else if(bonus == "Ignore Outfit Items")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Ignore outfit loots and replace them with <b>" + _root.withComma(Math.ceil(tier * 25000)) + " Pixels</b> each</font>";
      }
      else if(bonus == "Fire Element")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Fire Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(bonus == "Ice Element")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Ice Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(bonus == "Wind Element")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Wind Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(bonus == "Earth Element")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Earth Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(bonus == "Thunder Element")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Thunder Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(bonus == "Water Element")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Water Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(bonus == "Light Element")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Light Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(bonus == "Dark Element")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Dark Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(bonus == "Auto Buff - Power")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Grants permanent Power buff when equipped</font>";
      }
      else if(bonus == "Auto Buff - Master")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Grants permanent Master buff when equipped</font>";
      }
      else if(bonus == "Auto Buff - Reward")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Grants permanent Reward buff when equipped</font>";
      }
      else if(bonus == "Auto Buff - Enrage")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Grants permanent Enrage buff when equipped</font>";
      }
      else if(bonus == "Auto Buff - Boost")
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Grants permanent Elemental Boost buff when equipped</font>";
      }
      if(ability == "Random")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'><b>Random Bonus</b></font>";
      }
      else if(ability == "Attack")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Attack: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(ability == "Attack Speed")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Attack Speed: <b>+" + Math.ceil(tier * 2) + "%</b></font>";
      }
      else if(ability == "Ignore Defense")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Ignore <b>" + Math.ceil(tier * 1) + "%</b> of monster DEF</font>";
      }
      else if(ability == "Mastery")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Min Damage: <b>+" + Math.ceil(tier * 1) + "%</b> of Max Damage</font>";
      }
      else if(ability == "Critical Chance")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Critical Chance: <b>+" + Math.ceil(tier * 1.5) + "%</b></font>";
      }
      else if(ability == "Critical Damage")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Critical Damage: <b>+" + Math.ceil(tier * 3) + "%</b></font>";
      }
      else if(ability == "Defense")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Defense: <b>+" + Math.ceil(tier * 2) + "%</b></font>";
      }
      else if(ability == "Damage Taken")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage Taken: <b>-" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(ability == "Reflect")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Reflect Damage: <b>+" + Math.ceil(tier * 50) + "%</b></font>";
      }
      else if(ability == "Accuracy")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Accuracy: <b>+" + Math.ceil(tier * 2) + "%</b></font>";
      }
      else if(ability == "Hit Chance")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Hit Chance: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
      }
      else if(ability == "Evasion")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Evasion: <b>+" + Math.ceil(tier * 4) + "%</b></font>";
      }
      else if(ability == "Dodge Chance")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Dodge Chance: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
      }
      else if(ability == "Poison Chance")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Poison Chance: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(ability == "Weaken Chance")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Weaken Chance: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(ability == "Blind Chance")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Blind Chance: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(ability == "Stun Chance")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Stun Chance: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
      }
      else if(ability == "Silence Chance")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Silence Chance: <b>+" + Math.ceil(tier * 2) + "%</b></font>";
      }
      else if(ability == "HP")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>MaxHP: <b>+" + Math.ceil(tier * 5) + "%</b></font>";
      }
      else if(ability == "MP")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>MaxMP: <b>+" + Math.ceil(tier * 5) + "%</b></font>";
      }
      else if(ability == "HP Regen")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>HP Regen: <b>+" + Math.ceil(tier * 100) + "%</b></font>";
      }
      else if(ability == "MP Regen")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>MP Regen: <b>+" + Math.ceil(tier * 50) + "%</b></font>";
      }
      else if(ability == "Rage Depletion")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Rage Depletion: <b>-" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(ability == "Drain")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Drain Level: <b>+" + Math.ceil(tier * 1) + "</b></font>";
      }
      else if(ability == "Mana Eater")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>When you kill a monster, MP <b>+" + Math.ceil(tier * 500) + "</b></font>";
      }
      else if(ability == "Autosteal")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Autosteal Level: <b>+" + Math.ceil(tier * 1) + "</b></font>";
      }
      else if(ability == "Double Hit Chance")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Double Hit Chance: <b>+" + Math.ceil(tier * 2.5) + "%</b></font>";
      }
      else if(ability == "Rage Attack")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Rage Attack: <b>+" + Math.ceil(tier * 1.5) + "%</b></font>";
      }
      else if(ability == "Rage Speed")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Rage Speed: <b>+" + Math.ceil(tier * 2.5) + "%</b></font>";
      }
      else if(ability == "Poison Damage")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Poison Damage: <b>+" + Math.ceil(tier * 25) + "%</b> / sec</font>";
      }
      else if(ability == "Poison Duration")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Poison Duration: <b>+" + Math.ceil(tier * 1) + " sec</b></font>";
      }
      else if(ability == "Weaken Effect")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Weakened monster ATT/DEF: <b>-" + Math.ceil(tier * 0.5) + "%</b></font>";
      }
      else if(ability == "Weaken Duration")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Weaken Duration: <b>+" + Math.ceil(tier * 1) + " sec</b></font>";
      }
      else if(ability == "Blind Effect")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Blinded monster ACC/EVA: <b>-" + Math.ceil(tier * 0.5) + "%</b></font>";
      }
      else if(ability == "Blind Duration")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Blind Duration: <b>+" + Math.ceil(tier * 1) + " sec</b></font>";
      }
      else if(ability == "Potion Efficiency")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Potion Efficiency: <b>+" + Math.ceil(tier * 10) + "%</b></font>";
      }
      else if(ability == "Boss Damage")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage vs. Bosses: <b>+" + Math.ceil(tier * 2) + "%</b></font>";
      }
      else if(ability == "Magic Resist")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage taken from magic attacks is reduced by <b>" + Math.ceil(tier * 1.5) + "%</b></font>";
      }
      else if(ability == "Instant Kill")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'><b>" + Math.ceil(tier * 0.5) + "%</b> chance to instantly kill a non-boss monster if its HP is below 50%</font>";
      }
      else if(ability == "Negate Effect")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'><b>" + Math.ceil(tier * 1) + "%</b> chance to negate status effects</font>";
      }
      else if(ability == "Damage")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage vs. Non-Bosses: <b>+" + Math.ceil(tier * 1.5) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage vs. Bosses: <b>+" + Math.ceil(tier * 1.5) + "%</b></font>";
      }
      else if(ability == "Non-Boss Damage")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage vs. Non-Bosses: <b>+" + Math.ceil(tier * 2) + "%</b></font>";
      }
      else if(ability == "Extra Combo")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'><b>" + Math.ceil(tier * 1) + "%</b> chance to gain +3 extra combo per attack</font>";
      }
      else if(ability == "Magic Reflect")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Magic Reflect: <b>+" + Math.ceil(tier * 10) + "%</b> of Physical Reflect</font>";
      }
      else if(ability == "Nullify Death Penalty")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'><b>100%</b> chance to nullify death penalty</font>";
      }
      else if(ability == "Buff Effect")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Buff Effect: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
      }
      else if(ability == "All Elements")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>All Elements: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
      }
      else if(ability == "Max Spirit")
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Max Spirit: <b>+" + Math.ceil(tier * 10) + "</b></font>";
      }
      if(moreBonus == "Random")
      {
         _root.actiondescription += "\n<font color=\'#CC99FF\'><b>Random Bonus</b></font>";
      }
      else if(moreBonus == "Equipment Attack")
      {
         _root.actiondescription += "\n<font color=\'#CC99FF\'>Equipment Attack: <b>+" + _root.withComma(Math.ceil(0.15 * tier * tier)) + "</b></font>";
      }
      else if(moreBonus == "Equipment Defense")
      {
         _root.actiondescription += "\n<font color=\'#CC99FF\'>Equipment Defense: <b>+" + _root.withComma(Math.ceil(1 * tier * tier)) + "</b></font>";
      }
      else if(moreBonus == "Attack Power")
      {
         _root.actiondescription += "\n<font color=\'#CC99FF\'>Attack Power: <b>+" + _root.withComma(Math.ceil(4 * tier * tier)) + "</b></font>";
      }
      else if(moreBonus == "Defense Power")
      {
         _root.actiondescription += "\n<font color=\'#CC99FF\'>Defense Power: <b>+" + _root.withComma(Math.ceil(8 * tier * tier)) + "</b></font>";
      }
      else if(moreBonus == "MaxHP")
      {
         _root.actiondescription += "\n<font color=\'#CC99FF\'>MaxHP: <b>+" + _root.withComma(Math.ceil(250 * tier * tier)) + "</b></font>";
      }
      else if(moreBonus == "MaxMP")
      {
         _root.actiondescription += "\n<font color=\'#CC99FF\'>MaxMP: <b>+" + _root.withComma(Math.ceil(100 * tier * tier)) + "</b></font>";
      }
      else if(moreBonus == "Accuracy")
      {
         _root.actiondescription += "\n<font color=\'#CC99FF\'>Accuracy: <b>+" + _root.withComma(Math.ceil(4 * tier * tier)) + "</b></font>";
      }
      else if(moreBonus == "Evasion")
      {
         _root.actiondescription += "\n<font color=\'#CC99FF\'>Evasion: <b>+" + _root.withComma(Math.ceil(8 * tier * tier)) + "</b></font>";
      }
      else if(moreBonus == "EXP / Boss Kill")
      {
         _root.actiondescription += "\n<font color=\'#CC99FF\'>EXP / Boss Kill: <b>+" + _root.withComma(Math.ceil(2 * tier * tier)) + "</b>\n(Limit: +100% of original EXP)</font>";
      }
      else if(moreBonus == "EXP / Rare Kill")
      {
         _root.actiondescription += "\n<font color=\'#CC99FF\'>EXP / Rare Kill: <b>+" + _root.withComma(Math.ceil(2 * tier * tier)) + "</b>\n(Limit: +200% of original EXP)\nEXP / Epic Kill: <b>+" + _root.withComma(Math.ceil(2 * tier * tier)) + "</b>\n(Limit: +400% of original EXP)</font>";
      }
      else if(moreBonus == "EXP / Epic Kill")
      {
         _root.actiondescription += "\n<font color=\'#CC99FF\'>EXP / Epic Kill: <b>+" + _root.withComma(Math.ceil(10 * tier * tier)) + "</b>\n(Limit: +400% of original EXP)</font>";
      }
      if(name.indexOf("Humblebee") != -1)
      {
         if(maxLevel >= 184 && maxLevel < 284)
         {
            _root.actiondescription += "\n\n<font color=\'#FFFF00\'>1 more Humblebee Armor Upgrade can be applied.\n</font>";
         }
         else if(maxLevel >= 84 && maxLevel < 184)
         {
            _root.actiondescription += "\n\n<font color=\'#FFFF00\'>2 more Humblebee Armor Upgrades can be applied.\n</font>";
         }
      }
      if(_root.enhancerToUse != 0 && type != "Enhancer" && _root.save["arena" + xCate] != slot)
      {
         if(_root.save.inventorySubtype[_root.enhancerToUse] == "Weapon Bonus Adder" || _root.save.inventorySubtype[_root.enhancerToUse] == "Armor Bonus Adder" || _root.save.inventorySubtype[_root.enhancerToUse] == "Accessory Bonus Adder")
         {
            _root.actiondescription += "\n\n<font color=\'#0099FF\'>New Bonuses:</font>";
            tier = Math.ceil(reqRank / 10);
            tier += unob;
            if(type == "Weapon" && _root.save.arenaSkill[59] > 0)
            {
               tier += Math.floor(_root.save.arenaSkill[59] / 5);
            }
            bonusX = _root.save.inventoryBonus[_root.enhancerToUse];
            abilityX = _root.save.inventoryAbility[_root.enhancerToUse];
            moreBonusX = _root.save.inventoryMoreBonus[_root.enhancerToUse];
            tier = Math.ceil(reqRank / 10);
            tier += unob;
            if(type == "Weapon" && _root.save.arenaSkill[59] > 0)
            {
               tier += Math.floor(_root.save.arenaSkill[59] / 5);
            }
            if(bonusX == "Random")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'><b>Random Bonus</b></font>";
            }
            else if(bonusX == "Reward")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>EXP: <b>+" + Math.ceil(tier * 0.25) + "%</b></font>";
               _root.actiondescription += "\n<font color=\'#99FF33\'>Coin: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
               _root.actiondescription += "\n<font color=\'#99FF33\'>Pixel: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
            }
            else if(bonusX == "EXP")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>EXP: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
            }
            else if(bonusX == "Coin")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Coin: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(bonusX == "Pixel")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Pixel: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(bonusX == "Drop Rate")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Drop Rate: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(bonusX == "Spawn Rate")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Spawn Rate: <b>+" + Math.ceil(tier * 0.2) + "%</b></font>";
            }
            else if(bonusX == "Rare Monster Rate")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Rare Monster Rate: <b>+" + Math.ceil(tier * 2.5) + "%</b></font>";
            }
            else if(bonusX == "Epic Monster Rate")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Epic Monster Rate: <b>+" + Math.ceil(tier * 2.5) + "%</b></font>";
            }
            else if(bonusX == "Ignore Epic Weapons")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Ignore Epic [Element] Staff and Light/Dark Glaive loots and replace them with <b>" + _root.withComma(Math.ceil(tier * 50000)) + " Pixels</b> each</font>";
            }
            else if(bonusX == "Ignore Pendants")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Ignore Pendant loots (except Immortal Pendant, Collector\'s Pendant and Rank 500 Pendants) and replace them with <b>" + _root.withComma(Math.ceil(tier * 5000)) + " Pixels</b> each</font>";
            }
            else if(bonusX == "Ignore Bonus Rocks")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Ignore Bonus Rock loots (except Corrupted Bonus Rocks) and replace them with <b>" + _root.withComma(Math.ceil(tier * 5000)) + " Pixels</b> each</font>";
            }
            else if(bonusX == "Ignore Finalizers")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Ignore Finalizer loots and replace them with <b>" + _root.withComma(Math.ceil(tier * 25000)) + " Pixels</b> each</font>";
            }
            else if(bonusX == "Ignore Outfit Items")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Ignore outfit loots and replace them with <b>" + _root.withComma(Math.ceil(tier * 25000)) + " Pixels</b> each</font>";
            }
            else if(bonusX == "Fire Element")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Fire Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(bonusX == "Ice Element")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Ice Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(bonusX == "Wind Element")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Wind Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(bonusX == "Earth Element")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Earth Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(bonusX == "Thunder Element")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Thunder Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(bonusX == "Water Element")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Water Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(bonusX == "Light Element")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Light Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(bonusX == "Dark Element")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Dark Element: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(bonusX == "Auto Buff - Power")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Grants permanent Power buff when equipped</font>";
            }
            else if(bonusX == "Auto Buff - Master")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Grants permanent Master buff when equipped</font>";
            }
            else if(bonusX == "Auto Buff - Reward")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Grants permanent Reward buff when equipped</font>";
            }
            else if(bonusX == "Auto Buff - Enrage")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Grants permanent Enrage buff when equipped</font>";
            }
            else if(bonusX == "Auto Buff - Boost")
            {
               _root.actiondescription += "\n<font color=\'#99FF33\'>Grants permanent Elemental Boost buff when equipped</font>";
            }
            if(abilityX == "Random")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'><b>Random Bonus</b></font>";
            }
            else if(abilityX == "Attack")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Attack: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(abilityX == "Attack Speed")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Attack Speed: <b>+" + Math.ceil(tier * 2) + "%</b></font>";
            }
            else if(abilityX == "Ignore Defense")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Ignore <b>" + Math.ceil(tier * 1) + "%</b> of monster DEF</font>";
            }
            else if(abilityX == "Mastery")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Min Damage: <b>+" + Math.ceil(tier * 1) + "%</b> of Max Damage</font>";
            }
            else if(abilityX == "Critical Chance")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Critical Chance: <b>+" + Math.ceil(tier * 1.5) + "%</b></font>";
            }
            else if(abilityX == "Critical Damage")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Critical Damage: <b>+" + Math.ceil(tier * 3) + "%</b></font>";
            }
            else if(abilityX == "Defense")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Defense: <b>+" + Math.ceil(tier * 2) + "%</b></font>";
            }
            else if(abilityX == "Damage Taken")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage Taken: <b>-" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(abilityX == "Reflect")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Reflect Damage: <b>+" + Math.ceil(tier * 50) + "%</b></font>";
            }
            else if(abilityX == "Accuracy")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Accuracy: <b>+" + Math.ceil(tier * 2) + "%</b></font>";
            }
            else if(abilityX == "Hit Chance")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Hit Chance: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
            }
            else if(abilityX == "Evasion")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Evasion: <b>+" + Math.ceil(tier * 4) + "%</b></font>";
            }
            else if(abilityX == "Dodge Chance")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Dodge Chance: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
            }
            else if(abilityX == "Poison Chance")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Poison Chance: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(abilityX == "Weaken Chance")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Weaken Chance: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(abilityX == "Blind Chance")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Blind Chance: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(abilityX == "Stun Chance")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Stun Chance: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
            }
            else if(abilityX == "Silence Chance")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Silence Chance: <b>+" + Math.ceil(tier * 2) + "%</b></font>";
            }
            else if(abilityX == "HP")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>MaxHP: <b>+" + Math.ceil(tier * 5) + "%</b></font>";
            }
            else if(abilityX == "MP")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>MaxMP: <b>+" + Math.ceil(tier * 5) + "%</b></font>";
            }
            else if(abilityX == "HP Regen")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>HP Regen: <b>+" + Math.ceil(tier * 100) + "%</b></font>";
            }
            else if(abilityX == "MP Regen")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>MP Regen: <b>+" + Math.ceil(tier * 50) + "%</b></font>";
            }
            else if(abilityX == "Rage Depletion")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Rage Depletion: <b>-" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(abilityX == "Drain")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Drain Level: <b>+" + Math.ceil(tier * 1) + "</b></font>";
            }
            else if(abilityX == "Mana Eater")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>When you kill a monster, MP <b>+" + Math.ceil(tier * 500) + "</b></font>";
            }
            else if(abilityX == "Autosteal")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Autosteal Level: <b>+" + Math.ceil(tier * 1) + "</b></font>";
            }
            else if(abilityX == "Double Hit Chance")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Double Hit Chance: <b>+" + Math.ceil(tier * 2.5) + "%</b></font>";
            }
            else if(abilityX == "Rage Attack")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Rage Attack: <b>+" + Math.ceil(tier * 1.5) + "%</b></font>";
            }
            else if(abilityX == "Rage Speed")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Rage Speed: <b>+" + Math.ceil(tier * 2.5) + "%</b></font>";
            }
            else if(abilityX == "Poison Damage")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Poison Damage: <b>+" + Math.ceil(tier * 25) + "%</b> / sec</font>";
            }
            else if(abilityX == "Poison Duration")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Poison Duration: <b>+" + Math.ceil(tier * 1) + " sec</b></font>";
            }
            else if(abilityX == "Weaken Effect")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Weakened monster ATT/DEF: <b>-" + Math.ceil(tier * 0.5) + "%</b></font>";
            }
            else if(abilityX == "Weaken Duration")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Weaken Duration: <b>+" + Math.ceil(tier * 1) + " sec</b></font>";
            }
            else if(abilityX == "Blind Effect")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Blinded monster ACC/EVA: <b>-" + Math.ceil(tier * 0.5) + "%</b></font>";
            }
            else if(abilityX == "Blind Duration")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Blind Duration: <b>+" + Math.ceil(tier * 1) + " sec</b></font>";
            }
            else if(abilityX == "Potion Efficiency")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Potion Efficiency: <b>+" + Math.ceil(tier * 10) + "%</b></font>";
            }
            else if(abilityX == "Boss Damage")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage vs. Bosses: <b>+" + Math.ceil(tier * 2) + "%</b></font>";
            }
            else if(abilityX == "Magic Resist")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage taken from magic attacks is reduced by <b>" + Math.ceil(tier * 1.5) + "%</b></font>";
            }
            else if(abilityX == "Instant Kill")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'><b>" + Math.ceil(tier * 0.5) + "%</b> chance to instantly kill a non-boss monster if its HP is below 50%</font>";
            }
            else if(abilityX == "Negate Effect")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'><b>" + Math.ceil(tier * 1) + "%</b> chance to negate status effects</font>";
            }
            else if(abilityX == "Damage")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage vs. Non-Bosses: <b>+" + Math.ceil(tier * 1.5) + "%</b></font>";
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage vs. Bosses: <b>+" + Math.ceil(tier * 1.5) + "%</b></font>";
            }
            else if(abilityX == "Non-Boss Damage")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage vs. Non-Bosses: <b>+" + Math.ceil(tier * 2) + "%</b></font>";
            }
            else if(abilityX == "Extra Combo")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'><b>" + Math.ceil(tier * 1) + "%</b> chance to gain +1 extra combo per attack</font>";
            }
            else if(abilityX == "Magic Reflect")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Magic Reflect: <b>+" + Math.ceil(tier * 5) + "%</b> of Physical Reflect</font>";
            }
            else if(abilityX == "Nullify Death Penalty")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'><b>100%</b> chance to nullify death penalty</font>";
            }
            else if(abilityX == "Buff Effect")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Buff Effect: <b>+" + Math.ceil(tier * 0.5) + "%</b></font>";
            }
            else if(abilityX == "All Elements")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>All Elements: <b>+" + Math.ceil(tier * 1) + "%</b></font>";
            }
            else if(abilityX == "Max Spirit")
            {
               _root.actiondescription += "\n<font color=\'#FFCC33\'>Max Spirit: <b>+" + Math.ceil(tier * 10) + "</b></font>";
            }
            if(moreBonusX == "Random")
            {
               _root.actiondescription += "\n<font color=\'#CC99FF\'><b>Random Bonus</b></font>";
            }
            else if(moreBonusX == "Equipment Attack")
            {
               _root.actiondescription += "\n<font color=\'#CC99FF\'>Equipment Attack: <b>+" + _root.withComma(Math.ceil(0.15 * tier * tier)) + "</b></font>";
            }
            else if(moreBonusX == "Equipment Defense")
            {
               _root.actiondescription += "\n<font color=\'#CC99FF\'>Equipment Defense: <b>+" + _root.withComma(Math.ceil(1 * tier * tier)) + "</b></font>";
            }
            else if(moreBonusX == "Attack Power")
            {
               _root.actiondescription += "\n<font color=\'#CC99FF\'>Attack Power: <b>+" + _root.withComma(Math.ceil(4 * tier * tier)) + "</b></font>";
            }
            else if(moreBonusX == "Defense Power")
            {
               _root.actiondescription += "\n<font color=\'#CC99FF\'>Defense Power: <b>+" + _root.withComma(Math.ceil(8 * tier * tier)) + "</b></font>";
            }
            else if(moreBonusX == "MaxHP")
            {
               _root.actiondescription += "\n<font color=\'#CC99FF\'>MaxHP: <b>+" + _root.withComma(Math.ceil(250 * tier * tier)) + "</b></font>";
            }
            else if(moreBonusX == "MaxMP")
            {
               _root.actiondescription += "\n<font color=\'#CC99FF\'>MaxMP: <b>+" + _root.withComma(Math.ceil(100 * tier * tier)) + "</b></font>";
            }
            else if(moreBonusX == "Accuracy")
            {
               _root.actiondescription += "\n<font color=\'#CC99FF\'>Accuracy: <b>+" + _root.withComma(Math.ceil(4 * tier * tier)) + "</b></font>";
            }
            else if(moreBonusX == "Evasion")
            {
               _root.actiondescription += "\n<font color=\'#CC99FF\'>Evasion: <b>+" + _root.withComma(Math.ceil(8 * tier * tier)) + "</b></font>";
            }
            else if(moreBonusX == "EXP / Boss Kill")
            {
               _root.actiondescription += "\n<font color=\'#CC99FF\'>EXP / Boss Kill: <b>+" + _root.withComma(Math.ceil(2 * tier * tier)) + "</b></font>";
            }
            else if(moreBonusX == "EXP / Rare Kill")
            {
               _root.actiondescription += "\n<font color=\'#CC99FF\'>EXP / Rare Kill: <b>+" + _root.withComma(Math.ceil(2 * tier * tier)) + "</b></font>";
            }
            else if(moreBonusX == "EXP / Epic Kill")
            {
               _root.actiondescription += "\n<font color=\'#CC99FF\'>EXP / Epic Kill: <b>+" + _root.withComma(Math.ceil(10 * tier * tier)) + "</b></font>";
            }
            _root.actiondescription += "\n[Will replace same color bonuses]";
         }
      }
   }
   if(name == "Dominator Gem")
   {
      erBonus = Math.floor(Math.min(_root.save.arenaSpookyScore / 500,50));
      _root.actiondescription += "\n\n<font color=\'#FFFF00\'>If you have at least 1 Dominator Gem in your inventory, you will receive extra Coins (up to +50%) based on your Spooky Crypt highscore.\nBest streak: " + _root.withComma(_root.save.arenaSpookyScore) + "\nCoin: <b>+" + erBonus + "%</b></font>";
   }
   else if(name == "Mega Triangle Gem")
   {
      erBonus = Math.floor(Math.min(_root.save.arenaTriangleScore / 50,50));
      _root.actiondescription += "\n\n<font color=\'#FFFF00\'>If you have at least 1 Mega Triangle Gem in your inventory, you will receive extra EXP (up to +50%) based on your Triangle Hideout highscore.\nBest streak: " + _root.withComma(_root.save.arenaTriangleScore) + "\nEXP: <b>+" + erBonus + "%</b></font>";
   }
   else if(name == "Mission Kommander\'s Gem")
   {
      _root.actiondescription += "\n\n<font color=\'#CCCCCC\'>" + desc + "</font>";
      erBonus = Math.floor(Math.min(Math.sqrt(_root.save.arenaKommanderComplete),50));
      _root.actiondescription += "\n\n<font color=\'#FFFF00\'>If you have at least 1 Mission Kommander\'s Gem in your inventory, you will receive extra Pixels (up to +50%) based on your Mission Kommander\'s Missions completed.\nMissions completed: " + _root.withComma(_root.save.arenaKommanderComplete) + "\nPixel: <b>+" + erBonus + "%</b></font>";
   }
   else if(desc != undefined && desc != "")
   {
      _root.actiondescription += "\n\n<font color=\'#CCCCCC\'>" + desc + "</font>";
   }
   if(slot >= 801 && slot <= 900)
   {
      _root.actiondescription += "\n\nRetrieval cost: <font color=\'#FFFF00\'>" + _root.withComma(sell) + "</font> Pixels\nClick to retrieve this item";
   }
   else if(sell > 0)
   {
      _root.actiondescription += "\n\nSell for: <font color=\'#FFFF00\'>" + _root.withComma(sell) + "</font> Pixels";
   }
   if(guard == true)
   {
      _root.actiondescription += "\n<font color=\'#99FF00\'><b>Protected Item</b></font>";
   }
   else if(Key.isDown(16))
   {
      if(_root.save["arena" + xCate] == slot)
      {
         _root.actiondescription += "\n<font color=\'#FF6600\'>Cannot sell equipped items!</font>";
      }
      if((bonusPow >= 706 || sell >= 25000000 || typeS == true || typeI == true) && timeLeft > 0 || name == "GIGA PENDANT" || name == "GIGA EARRINGS" || slot >= 1401)
      {
         _root.actiondescription += "\n<font color=\'#FF6600\'>Shift + K + Click to sell!</font>";
      }
   }
   else if(Key.isDown(17))
   {
      if(_root.save["arena" + xCate] == slot)
      {
         _root.actiondescription += "\n<font color=\'#FF6600\'>Cannot move equipped items!</font>";
      }
   }
   else if(_root.enhancerToUse != 0 && type != "Enhancer" && _root.save["arena" + xCate] == slot)
   {
      _root.actiondescription += "\n<font color=\'#FF6600\'>Cannot enhance equipped items!</font>";
   }
   _root.actiondescription += "</font>";
   if(slot >= 1401)
   {
      _root.actiondescription += "\n\n<font color=\'#FFCC99\'>Collection Points: <b>+" + _root.museumValue[slot] + "</b></font>";
   }
   else if(_root.save.arenaLevel >= 50)
   {
      if(desc != "This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works.")
      {
         if(desc != "Thank you for your donation and your continued support!")
         {
            tmpName = name;
            if(tmpName.indexOf("Dragon Slayer Hat") != -1)
            {
               tmpName = "Dragon Slayer Hat";
            }
            if(tmpName.indexOf("Dragon Slayer Shirt") != -1)
            {
               tmpName = "Dragon Slayer Shirt";
            }
            if(tmpName.indexOf("Dragon Slayer Gloves") != -1)
            {
               tmpName = "Dragon Slayer Gloves";
            }
            if(tmpName.indexOf("Dragon Slayer Pants") != -1)
            {
               tmpName = "Dragon Slayer Pants";
            }
            if(tmpName.indexOf("Dragon Slayer Shoes") != -1)
            {
               tmpName = "Dragon Slayer Shoes";
            }
            if(tmpName.indexOf("Demon Slayer Hat") != -1)
            {
               tmpName = "Demon Slayer Hat";
            }
            if(tmpName.indexOf("Demon Slayer Shirt") != -1)
            {
               tmpName = "Demon Slayer Shirt";
            }
            if(tmpName.indexOf("Demon Slayer Gloves") != -1)
            {
               tmpName = "Demon Slayer Gloves";
            }
            if(tmpName.indexOf("Demon Slayer Pants") != -1)
            {
               tmpName = "Demon Slayer Pants";
            }
            if(tmpName.indexOf("Demon Slayer Shoes") != -1)
            {
               tmpName = "Demon Slayer Shoes";
            }
            if(tmpName.indexOf("[Event] [I] Mystery Enhancer Identifier") != -1)
            {
               tmpName = "[Event] Mystery Enhancer Identifier";
            }
            if(tmpName.indexOf("Armor Cleansing Rock") != -1)
            {
               tmpName = "Armor Cleansing Rock";
            }
            tmpSlot = 1400;
            var _loc2_ = 1401;
            while(_loc2_ <= 3000)
            {
               if(_root.museumItem[_loc2_] == tmpName)
               {
                  tmpSlot = _loc2_;
                  if(_root.save.inventoryExist[tmpSlot] != 1)
                  {
                     _loc2_ = 3001;
                  }
               }
               _loc2_ += 1;
            }
            if(tmpSlot != 1400)
            {
               if(_root.save.inventoryExist[tmpSlot] != 1)
               {
                  _root.actiondescription += "\n\n<font color=\'#FFCC99\'>Add this item to the Museum to gain <b>+" + _root.museumValue[tmpSlot] + "</b> CP!</font>";
               }
            }
         }
      }
   }
   _root.actiondescription2 = "";
   if(setID != 0)
   {
      _root.actiondescription2 += "<font color=\'#CC9900\'><b>" + _root.setArray[setID].setNameD + "</b></font>\n";
      _root.actiondescription2 += _root.displaySetItems(setID);
   }
}
if(!isNaN(iniSlot) && iniSlot < 60)
{
   slot = iniSlot + _root.invTab * 100;
}
cd = 0;
weaponRange = 0;
checkStat();
checkDelay = 0;
onEnterFrame = function()
{
   cd -= 1;
   if(_root.toCheck == true)
   {
      refr();
   }
};
onRollOver = function()
{
   refr();
   showText();
};
onRollOut = function()
{
   _root.actiondescription = "";
   _root.actiondescription2 = "";
};
onDragOver = function()
{
   refr();
   showText();
};
onDragOut = function()
{
   _root.actiondescription = "";
   _root.actiondescription2 = "";
};
onRelease = function()
{
   if(cd <= 0 && slot != 1331)
   {
      _root.house.arena.checkStat();
      storageSlot = false;
      if(slot >= 301 && slot <= 400)
      {
         storageSlot = true;
      }
      if(slot >= 801 && slot <= 900)
      {
         storageSlot = true;
      }
      if(slot >= 1101 && slot <= 1200)
      {
         storageSlot = true;
      }
      if(slot > 1300)
      {
         storageSlot = true;
      }
      if(Key.isDown(80) && exist == 1)
      {
         if(slot < 801 || slot > 900)
         {
            if(_root.save["arena" + xCate] != slot)
            {
               if(guard == true)
               {
                  guard = false;
                  _root.save.inventoryGuard[slot] = false;
               }
               else
               {
                  guard = true;
                  _root.save.inventoryGuard[slot] = true;
               }
            }
         }
      }
      else if(Key.isDown(16) && exist == 1)
      {
         if(slot < 801 || slot > 900)
         {
            if(_root.save["arena" + xCate] != slot && guard != true)
            {
               if(bonusPow <= 705 && sell < 25000000 && typeS != true && typeI != true && slot <= 1400 || Key.isDown(75) || timeLeft <= 0 && name != "GIGA PENDANT" && name != "GIGA EARRINGS" && slot <= 1400)
               {
                  _root.sellArenaItem(slot);
                  if(slot >= 1401)
                  {
                     _root.save.collectionPoint -= _root.museumValue[slot];
                     if(subtype == "Trophy")
                     {
                        _root.save.collectionPointTrophy -= 1;
                     }
                  }
                  _root.enhancerToUse = 0;
                  _parent.enhButton.gotoAndStop(2);
               }
            }
         }
      }
      else if(storageSlot == false)
      {
         if(Key.isDown(17) && exist == 1 || _root.arenaSwap1 != 0)
         {
            _root.enhancerToUse = 0;
            _parent.enhButton.gotoAndStop(2);
            if(_root.arenaSwap1 != 0 && _root.save["arena" + xCate] != slot)
            {
               _root.swapArenaItem(_root.arenaSwap1,slot);
            }
            else if(_root.save["arena" + xCate] != slot)
            {
               _root.arenaSwap1 = slot;
            }
            else
            {
               _root.arenaSwap1 = 0;
            }
         }
         else if(exist == 1)
         {
            if(_root.enhancerToUse == slot)
            {
               _root.enhancerToUse = 0;
               _parent.enhButton.gotoAndStop(2);
            }
            else if(_root.enhancerToUse != 0 && _root.save["arena" + xCate] != slot)
            {
               _root.enhanceArenaItem(_root.enhancerToUse,slot);
               _parent.enhButton.gotoAndStop(2);
            }
            else if(_root.enhancerToUse != 0 && _root.save["arena" + xCate] == slot)
            {
               _root.enhancerToUse = 0;
               _parent.enhButton.gotoAndStop(2);
            }
            else if(timeLeft > 0)
            {
               if(type == "Chip")
               {
                  if(!isNaN(_root.save.arenaAllyEXP[attack]) && _root.save.arenaAllyEXP[attack] >= 10000 || subtype == "Monster Chip (Kongpanion)")
                  {
                     if(_root.enemyList[attack].allyPassive3 == "" && _root.save.arenaAllyUpgrade[attack] == 10)
                     {
                        _root.save.arenaAllyUpgrade[attack] = 15;
                     }
                     if(subtype == "Monster Chip (Rare)")
                     {
                        if(_root.save.arenaAllyUpgrade[attack] < 10)
                        {
                           _root.save.arenaAllyUpgrade[attack] += 1;
                           _root.showPopup("Ally Upgraded","The Invisible Ally [#" + attack + "] " + _root.enemyList[attack].name + " has been successfully upgraded to +" + _root.save.arenaAllyUpgrade[attack] + ".");
                        }
                        else if(_root.enemyList[attack].allyPassive3 != "" && _root.save.arenaZone == 7 && _root.save.arenaHardcore == true && _root.apocalypse == true && _root.house.arena.enemy.enemyID == 0)
                        {
                           _root.labEnemy = attack + 1000;
                           _root.house.arena.enemy.approach = 0.1;
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                           _root.arenaCombo = 0;
                        }
                        else if(_root.enemyList[attack].allyPassive3 == "")
                        {
                           _root.save.arenaBestiary[attack] += 500;
                           _root.save.arenaBestiaryExtra[attack] += 500;
                           if(isNaN(_root.save.arenaBestiaryExtra[attack]))
                           {
                              _root.save.arenaBestiaryExtra[attack] = 500;
                           }
                           _root.showPopup("Kill Count Boosted","The kill count of [#" + attack + "] " + _root.enemyList[attack].name + " has been increased by 500.");
                        }
                        else
                        {
                           _root.save.arenaBestiary[attack] += 100;
                           _root.save.arenaBestiaryExtra[attack] += 100;
                           if(isNaN(_root.save.arenaBestiaryExtra[attack]))
                           {
                              _root.save.arenaBestiaryExtra[attack] = 100;
                           }
                           _root.showPopup("Kill Count Boosted","The kill count of [#" + attack + "] " + _root.enemyList[attack].name + " has been increased by 100.");
                        }
                     }
                     else if(subtype == "Monster Chip (Epic)")
                     {
                        if(_root.save.arenaAllyUpgrade[attack] < 10)
                        {
                           _root.save.arenaAllyUpgrade[attack] = 10;
                           _root.showPopup("Ally Upgraded","The Invisible Ally [#" + attack + "] " + _root.enemyList[attack].name + " has been successfully upgraded to +10.");
                        }
                        else if(_root.enemyList[attack].allyPassive3 != "" && _root.save.arenaZone == 7 && _root.save.arenaHardcore == true && _root.apocalypse == true && _root.house.arena.enemy.enemyID == 0)
                        {
                           _root.labEnemy = attack + 2000;
                           _root.house.arena.enemy.approach = 0.1;
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                        }
                        else if(_root.enemyList[attack].allyPassive3 == "")
                        {
                           _root.save.arenaBestiary[attack] += 5000;
                           _root.save.arenaBestiaryExtra[attack] += 5000;
                           if(isNaN(_root.save.arenaBestiaryExtra[attack]))
                           {
                              _root.save.arenaBestiaryExtra[attack] = 5000;
                           }
                           _root.showPopup("Kill Count Boosted","The kill count of [#" + attack + "] " + _root.enemyList[attack].name + " has been increased by 5,000.");
                        }
                        else
                        {
                           _root.save.arenaBestiary[attack] += 1000;
                           _root.save.arenaBestiaryExtra[attack] += 1000;
                           if(isNaN(_root.save.arenaBestiaryExtra[attack]))
                           {
                              _root.save.arenaBestiaryExtra[attack] = 1000;
                           }
                           _root.showPopup("Kill Count Boosted","The kill count of [#" + attack + "] " + _root.enemyList[attack].name + " has been increased by 1,000.");
                        }
                     }
                     else if(subtype == "Monster Chip (Ultra)")
                     {
                        if(_root.save.arenaAllyUpgrade[attack] < 15)
                        {
                           _root.save.arenaAllyUpgrade[attack] = 15;
                           _root.showPopup("Ally Upgraded","The Invisible Ally [#" + attack + "] " + _root.enemyList[attack].name + " is now an ULTRA ALLY!!");
                        }
                        else if(_root.enemyList[attack].allyPassive3 != "" && _root.save.arenaZone == 7 && _root.save.arenaHardcore == true && _root.apocalypse == true && _root.house.arena.enemy.enemyID == 0)
                        {
                           _root.labEnemy = attack + 3000;
                           _root.house.arena.enemy.approach = 0.1;
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                        }
                        else if(_root.enemyList[attack].allyPassive3 == "")
                        {
                           _root.save.arenaBestiary[attack] += 50000;
                           _root.save.arenaBestiaryExtra[attack] += 50000;
                           if(isNaN(_root.save.arenaBestiaryExtra[attack]))
                           {
                              _root.save.arenaBestiaryExtra[attack] = 50000;
                           }
                           _root.showPopup("Kill Count Boosted","The kill count of [#" + attack + "] " + _root.enemyList[attack].name + " has been increased by 50,000.");
                        }
                        else
                        {
                           _root.save.arenaBestiary[attack] += 10000;
                           _root.save.arenaBestiaryExtra[attack] += 10000;
                           if(isNaN(_root.save.arenaBestiaryExtra[attack]))
                           {
                              _root.save.arenaBestiaryExtra[attack] = 10000;
                           }
                           _root.showPopup("Kill Count Boosted","The kill count of [#" + attack + "] " + _root.enemyList[attack].name + " has been increased by 10,000.");
                        }
                     }
                     else if(subtype == "Monster Chip (Kongpanion)")
                     {
                        if(isNaN(_root.save.arenaAllyEXP[attack]) || _root.save.arenaAllyEXP[attack] < 10000)
                        {
                           _root.obtainAlly(attack);
                           _root.save.arenaAllyEXP[attack] = 10000;
                           _root.showPopup("Ally Tamed","The Invisible Ally [#" + attack + "] " + _root.enemyList[attack].name + " is now available for use! Use another Chip to upgrade it to a Shiny Kongpanion!");
                        }
                        else if(_root.save.arenaAllyUpgrade[attack] < 15)
                        {
                           _root.save.arenaAllyUpgrade[attack] = 15;
                           _root.showPopup("Ally Upgraded","The Invisible Ally [#" + attack + "] " + _root.enemyList[attack].name + " is now a Shiny Kongpanion!!");
                        }
                     }
                     _root.deleteArenaItem(slot);
                     _root.actiondescription = "";
                     _root.actiondescription2 = "";
                  }
                  else
                  {
                     _root.showPopup("Error","You must master the Invisible Ally before using this Monster Chip.");
                     _root.actiondescription = "";
                     _root.actiondescription2 = "";
                  }
               }
               else if(type == "Potion")
               {
                  if(subtype == "Power Buff Potion")
                  {
                     if(_root.save.arenaBuffType != 1 || _root.save.arenaBuffDuration < attack - 3)
                     {
                        _root.save.arenaBuffType = 1;
                        _root.save.arenaBuffDuration = attack;
                        _root.save.inventoryDefense[slot] -= 1;
                        if(_root.save.inventoryDefense[slot] <= 0)
                        {
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                        }
                     }
                  }
                  else if(subtype == "Master Buff Potion")
                  {
                     if(_root.save.arenaBuffType != 2 || _root.save.arenaBuffDuration < attack - 3)
                     {
                        _root.save.arenaBuffType = 2;
                        _root.save.arenaBuffDuration = attack;
                        _root.save.inventoryDefense[slot] -= 1;
                        if(_root.save.inventoryDefense[slot] <= 0)
                        {
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                        }
                     }
                  }
                  else if(subtype == "Reward Buff Potion")
                  {
                     if(_root.save.arenaBuffType != 3 || _root.save.arenaBuffDuration < attack - 3)
                     {
                        _root.save.arenaBuffType = 3;
                        _root.save.arenaBuffDuration = attack;
                        _root.save.inventoryDefense[slot] -= 1;
                        if(_root.save.inventoryDefense[slot] <= 0)
                        {
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                        }
                     }
                  }
                  else if(subtype == "Nightmare Potion")
                  {
                     if(_root.save.arenaBuffType != 4 || _root.save.arenaBuffDuration < attack - 3)
                     {
                        _root.save.arenaBuffType = 4;
                        _root.save.arenaBuffDuration = attack;
                        _root.save.inventoryDefense[slot] -= 1;
                        if(_root.save.inventoryDefense[slot] <= 0)
                        {
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                        }
                     }
                  }
                  else if(subtype == "Anti-Curse Potion")
                  {
                     if(_root.save.arenaBuffType != 8 || _root.save.arenaBuffDuration < attack - 3)
                     {
                        _root.save.arenaBuffType = 8;
                        _root.save.arenaBuffDuration = attack;
                        _root.save.inventoryDefense[slot] -= 1;
                        if(_root.save.inventoryDefense[slot] <= 0)
                        {
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                        }
                     }
                  }
                  else if(subtype == "Loot Magnet")
                  {
                     if(_root.save.arenaBuffType != 9 || _root.save.arenaBuffDuration < attack - 3)
                     {
                        _root.save.arenaBuffType = 9;
                        _root.save.arenaBuffDuration = attack;
                        _root.save.inventoryDefense[slot] -= 1;
                        if(_root.save.inventoryDefense[slot] <= 0)
                        {
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                        }
                     }
                  }
                  else if(subtype == "Monster Magnet")
                  {
                     if(_root.save.arenaBuffType != 10 || _root.save.arenaBuffDuration < attack - 3)
                     {
                        _root.save.arenaBuffType = 10;
                        _root.save.arenaBuffDuration = attack;
                        _root.save.inventoryDefense[slot] -= 1;
                        if(_root.save.inventoryDefense[slot] <= 0)
                        {
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                        }
                     }
                  }
                  else if(subtype == "Air Bubble")
                  {
                     if(_root.save.arenaBuffType != 11 || _root.save.arenaBuffDuration < attack - 3)
                     {
                        _root.save.arenaBuffType = 11;
                        _root.save.arenaBuffDuration = attack;
                        _root.save.inventoryDefense[slot] -= 1;
                        if(_root.save.inventoryDefense[slot] <= 0)
                        {
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                        }
                     }
                  }
                  else if(subtype == "Elixir of Greatness")
                  {
                     if(_root.save.arenaBuffType != 12 || _root.save.arenaBuffDuration < attack - 3)
                     {
                        _root.save.arenaBuffType = 12;
                        _root.save.arenaBuffDuration = attack;
                     }
                  }
                  else if(subtype == "Elixir of Greatness")
                  {
                     if(_root.save.arenaBuffType != 12 || _root.save.arenaBuffDuration < attack - 3)
                     {
                        _root.save.arenaBuffType = 12;
                        _root.save.arenaBuffDuration = attack;
                        _root.save.inventoryDefense[slot] -= 1;
                        if(_root.save.inventoryDefense[slot] <= 0)
                        {
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                        }
                     }
                  }
                  else if(subtype == "Rebirth Potion")
                  {
                     if(_root.save.arenaBuffType != 13 || _root.save.arenaBuffDuration < attack - 3)
                     {
                        if(_root.save.arenaLevel >= 500 && _root.save.arenaZone == 0 && _root.house._currentframe == 7 && _root.house.arena._currentframe == 1)
                        {
                           _root.house.arena.travel(79);
                           _root.save.arenaBuffType = 13;
                           _root.save.arenaBuffDuration = attack;
                           _root.save.inventoryDefense[slot] -= 1;
                           if(_root.save.inventoryDefense[slot] <= 0)
                           {
                              _root.deleteArenaItem(slot);
                              _root.actiondescription = "";
                              _root.actiondescription2 = "";
                           }
                        }
                     }
                  }
                  else if(subtype == "Potion of Regrets")
                  {
                     if(_root.save.bannedB >= 1 && _root.save.regretRem > 0)
                     {
                        _root.save.regretRem -= 1;
                        _root.save.arenaExp += 10000000000;
                        _root.save.robaconExp += 10000000000;
                        _root.save.inventoryDefense[slot] -= 1;
                        if(_root.save.inventoryDefense[slot] <= 0)
                        {
                           _root.deleteArenaItem(slot);
                           _root.actiondescription = "";
                           _root.actiondescription2 = "";
                        }
                     }
                     else
                     {
                        _root.showPopup("Sorry","You do not meet the requirements to use Potion of Regrets.");
                     }
                  }
               }
               else if(type == "Enhancer" && timeLeft > 0)
               {
                  _root.enhancerToUse = slot;
                  _parent.enhButton.gotoAndStop(1);
                  if(subtype.indexOf("Weapon") != -1)
                  {
                     _root.invTab = 0;
                  }
                  else if(subtype.indexOf("Armor") != -1)
                  {
                     _root.invTab = 1;
                  }
                  else if(subtype.indexOf("Accessory") != -1)
                  {
                     _root.invTab = 5;
                  }
                  else if(subtype.indexOf("Enhancer") != -1)
                  {
                     _root.invTab = 2;
                  }
               }
               else if(_root.save.arenaLevel >= reqRank && exist == 1 && timeLeft > 0)
               {
                  if(_root.arenaDelay <= 0 || _root.house.arena._currentframe != 1)
                  {
                     if(_root.save["arena" + xCate] != slot)
                     {
                        if(_root.house.arena.enemy.enemyID == 331)
                        {
                           _root.showPopup("Notice","You cannot change equipment when battling The Ascendant.");
                        }
                        else if(xCate == "Trinket" && name == "Worst Moon Gem" && _root.areaSafe != true && _root.house._currentframe == 7 && _root.house.arena._currentframe == 1)
                        {
                           _root.showPopup("Notice","This item can only be equipped/unequipped in safe zones.");
                        }
                        else if(xCate == "Trinket" && name == "Worst Moon Gem" && _root.house._currentframe == 7 && _root.house.arena._currentframe == 1 && _root.house.arena.enemy.enemyID != 0)
                        {
                           _root.showPopup("Notice","This item cannot be equipped during combat.");
                        }
                        else if(xCate == "Trinket" && _root.save.inventoryName[_root.save.arenaTrinket] == "Worst Moon Gem" && _root.areaSafe != true && _root.house._currentframe == 7 && _root.house.arena._currentframe == 1)
                        {
                           _root.showPopup("Notice","You must enter a safe zone in order to unequip Worst Moon Gem.");
                        }
                        else if(xCate == "Trinket" && _root.save.inventoryName[_root.save.arenaTrinket] == "Worst Moon Gem" && _root.house._currentframe == 7 && _root.house.arena._currentframe == 1 && _root.house.arena.enemy.enemyID != 0)
                        {
                           _root.showPopup("Notice","You must finish the current battle in order to unequip Worst Moon Gem.");
                        }
                        else if(name == "Gem of Constancy" || _root.save.inventoryName[_root.save.arenaTrinket] != "Gem of Constancy" || type == "Outfit")
                        {
                           _root.arenaStun += 0.5;
                           _root.save["arena" + xCate] = slot;
                           if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Constancy" && type != "Outfit")
                           {
                              _root.save.inventoryLevel[_root.save.arenaTrinket] = 1;
                              _root.save.inventoryExp[_root.save.arenaTrinket] = 0;
                              _root.save.inventoryAttack[_root.save.arenaTrinket] = 0;
                              _root.save.inventoryDefense[_root.save.arenaTrinket] = 0;
                              _root.save.inventoryCrit[_root.save.arenaTrinket] = 0;
                              _root.save.inventoryDexterity[_root.save.arenaTrinket] = 0;
                              _root.save.inventoryHealth[_root.save.arenaTrinket] = 0;
                              _root.save.inventoryBonusPow[_root.save.arenaTrinket] = 1;
                              _root.save.inventoryUnob[_root.save.arenaTrinket] = 10;
                              _root.save.inventoryFrame[_root.save.arenaTrinket] = 7;
                           }
                        }
                     }
                     else if(_root.house.arena.enemy.enemyID == 331)
                     {
                        _root.showPopup("Notice","You cannot change equipment when battling The Ascendant.");
                     }
                     else if(xCate == "Trinket" && name == "Worst Moon Gem" && _root.areaSafe != true && _root.house._currentframe == 7 && _root.house.arena._currentframe == 1)
                     {
                        _root.showPopup("Notice","This item can only be equipped/unequipped in safe zones.");
                     }
                     else if(name == "Gem of Constancy" || _root.save.inventoryName[_root.save.arenaTrinket] != "Gem of Constancy" || type == "Outfit")
                     {
                        if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Constancy" && type != "Outfit")
                        {
                           _root.save.inventoryLevel[_root.save.arenaTrinket] = 1;
                           _root.save.inventoryExp[_root.save.arenaTrinket] = 0;
                           _root.save.inventoryAttack[_root.save.arenaTrinket] = 0;
                           _root.save.inventoryDefense[_root.save.arenaTrinket] = 0;
                           _root.save.inventoryCrit[_root.save.arenaTrinket] = 0;
                           _root.save.inventoryDexterity[_root.save.arenaTrinket] = 0;
                           _root.save.inventoryHealth[_root.save.arenaTrinket] = 0;
                           _root.save.inventoryBonusPow[_root.save.arenaTrinket] = 1;
                           _root.save.inventoryUnob[_root.save.arenaTrinket] = 10;
                           _root.save.inventoryFrame[_root.save.arenaTrinket] = 7;
                        }
                        _root.save["arena" + xCate] = 0;
                     }
                  }
                  else
                  {
                     _root.dispNews(66,"You cannot equip/unequip items when attacking.");
                  }
               }
            }
         }
      }
      else
      {
         name = _root.save.inventoryName[slot];
         if(_root.arenaSwap1 != 0 && exist != 1 && slot < 1401)
         {
            _root.swapArenaItem(_root.arenaSwap1,slot);
         }
         else if(exist == 1)
         {
            retrievalCost = sell;
            if(slot < 801 || slot > 900)
            {
               retrievalCost = 0;
            }
            if(_root.save.arenaPixel >= retrievalCost)
            {
               if(type == "Weapon" && _root.emptyWeaponSlot >= 1)
               {
                  _root.getArenaWeapon(reqRank,subtype,frame,range,attack,speed,defense,crit,dexterity,health,maxLevel,expTNL,level,exp,enhance,bonusPow,bonus,ability,moreBonus,sell,expiry - _root.systemtimenow,noBonus,noLife,noFuse,noUnique,spirit,unob,name,desc,guard);
                  _root.deleteArenaItem(slot);
                  _root.save.arenaPixel -= retrievalCost;
                  if(slot >= 1401)
                  {
                     _root.save.collectionPoint -= _root.museumValue[slot];
                     if(subtype == "Trophy")
                     {
                        _root.save.collectionPointTrophy -= 1;
                     }
                  }
               }
               else if(type == "Armor" && _root.emptyArmorSlot >= 1)
               {
                  _root.getArenaArmor(reqRank,subtype,frame,attack,speed,defense,crit,dexterity,health,maxLevel,expTNL,level,exp,enhance,bonusPow,bonus,ability,moreBonus,sell,expiry - _root.systemtimenow,noBonus,noLife,noFuse,noUnique,spirit,unob,name,desc,guard);
                  _root.deleteArenaItem(slot);
                  _root.save.arenaPixel -= retrievalCost;
                  if(slot >= 1401)
                  {
                     _root.save.collectionPoint -= _root.museumValue[slot];
                  }
               }
               else if(type == "Accessory" && _root.emptyAccessorySlot >= 1)
               {
                  _root.getArenaAccessory(reqRank,subtype,frame,attack,speed,defense,crit,dexterity,health,maxLevel,expTNL,level,exp,enhance,bonusPow,bonus,ability,moreBonus,sell,expiry - _root.systemtimenow,noBonus,noLife,noUnique,spirit,unob,name,desc,guard);
                  _root.deleteArenaItem(slot);
                  _root.save.arenaPixel -= retrievalCost;
                  if(slot >= 1401)
                  {
                     _root.save.collectionPoint -= _root.museumValue[slot];
                  }
               }
               else if(type == "Enhancer" && _root.emptyEnhancerSlot >= 1)
               {
                  _root.getArenaEnhancer(subtype,frame,attack,speed,defense,bonus,ability,moreBonus,enhance,bonusPow,sell,expiry - _root.systemtimenow,name,desc,guard);
                  _root.deleteArenaItem(slot);
                  _root.save.arenaPixel -= retrievalCost;
                  if(slot >= 1401)
                  {
                     _root.save.collectionPoint -= _root.museumValue[slot];
                  }
               }
               else if(type == "Potion" && _root.emptyPotionSlot >= 1)
               {
                  _root.getArenaPotion(subtype,frame,attack,defense,enhance,bonusPow,sell,expiry - _root.systemtimenow,name,desc,guard);
                  _root.deleteArenaItem(slot);
                  _root.save.arenaPixel -= retrievalCost;
                  if(slot >= 1401)
                  {
                     _root.save.collectionPoint -= _root.museumValue[slot];
                  }
               }
               else if(type == "Outfit" && _root.emptyOutfitSlot >= 1)
               {
                  _root.getArenaOutfit(reqRank,subtype,frame,bonusPow,sell,name,desc,guard);
                  _root.deleteArenaItem(slot);
                  _root.save.arenaPixel -= retrievalCost;
                  if(slot >= 1401)
                  {
                     _root.save.collectionPoint -= _root.museumValue[slot];
                  }
               }
               else if(type == "Chip" && _root.emptyChipSlot >= 1)
               {
                  _root.getArenaChip(subtype,frame,attack,defense,enhance,bonusPow,sell,expiry - _root.systemtimenow,name,desc,guard);
                  _root.deleteArenaItem(slot);
                  _root.save.arenaPixel -= retrievalCost;
                  if(slot >= 1401)
                  {
                     _root.save.collectionPoint -= _root.museumValue[slot];
                  }
               }
            }
            _root.actiondescription = "";
            _root.actiondescription2 = "";
         }
         else if(slot == 400 && exist != 1)
         {
            if(_root.save.vegetarianMode == true)
            {
               _root.house.arena.popScreen.gotoAndStop(2);
               _root.showPopup("Give Robroccoli a weapon","Ctrl + Click a weapon in your inventory, then click this slot to give the weapon to Robroccoli. The weapon\'s Rank requirement cannot be higher than Robroccoli\'s Rank. You can take the weapon back later.");
            }
            else
            {
               _root.house.arena.popScreen.gotoAndStop(2);
               _root.showPopup("Give Robacon a weapon","Ctrl + Click a weapon in your inventory, then click this slot to give the weapon to Robacon. The weapon\'s Rank requirement cannot be higher than Robacon\'s Rank. You can take the weapon back later.");
            }
         }
         else if(slot < 801 || slot > 900)
         {
            _root.showPopup("Storage","Ctrl + Click an item in your inventory, then click this slot to move that item here.");
            _root.house.arena.popScreen.gotoAndStop(2);
         }
      }
      _root.toCheck = true;
      _root.house.arena.checkStat();
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.house.arena.wmDisp.checkFrame();
      showText();
   }
   cd = 2;
};
