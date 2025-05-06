//! status=pending
on(release){
   textToCopy = "";
   textToCopy += "## Stats\n\n";
   textToCopy += "\nPlayer Name: " + _root.save.displayName;
   textToCopy += "\nLv. **" + _root.withComma(_root.save.level) + "**";
   if(_root.save.banned > 0)
   {
      textToCopy += " [▲ +" + _root.save.banned + "]";
      if(_root.save.gDifficulty == 3)
      {
         textToCopy += " – IMPOSSIBLE";
      }
      else if(_root.save.gDifficulty == 2)
      {
         textToCopy += " – HARD";
      }
      else if(_root.save.gDifficulty == 1)
      {
         textToCopy += " – MEDIUM";
      }
   }
   textToCopy += "\nFighter Career: **Lv. " + _root.withComma(_root.save.careerLevel[3]) + "**";
   if(_root.save.careerActive[3] > 0 || _root.save.careerBoost[3] > 0)
   {
      textToCopy += " (ACTIVE)";
   }
   else
   {
      textToCopy += " (INACTIVE)";
   }
   textToCopy += "\nItem Maker Career: **Lv. " + _root.withComma(_root.save.careerLevel[4]) + "**";
   textToCopy += "\nRank: **" + _root.save.arenaLevel + "**";
   if(_root.save.bannedB > 0)
   {
      textToCopy += " [△ +" + _root.save.bannedB + "]";
   }
   textToCopy += "\nRobacon Rank: **" + _root.save.robaconLevel + "**";
   textToCopy += "\nBP: **" + _root.withComma(_root.save.battlePoint) + "**";
   textToCopy += "\nCP: **" + _root.withComma(_root.save.collectionPoint) + "**";
   textToCopy += "\n";
   ringArray = ["(No ring equipped)","Health","Mana","Power","Speed","Mastery","Critical","Defense","Reflection","Accuracy","Evasion","Leech","Chaos","Encounter","Experience","Greed","Protection","Luck","Combo","Chronos","Rage","Resistance","Cruelty"];
   buffArray = ["(No buff)","Power","Master","Reward","Nightmare","Enrage","Elemental Boost","Invincibility","Anti–Curse","Loot Magnet","Monster Magnet","Air Bubble","Elixir of Greatness","Rebirth"];
   textToCopy += "\nRing: **" + ringArray[_root.save.arenaRing] + "**";
   textToCopy += "\nBuff: **" + buffArray[_root.save.arenaBuffType] + "** (Effect: **" + _root.withComma(_root.buffMultiplier * 100) + "%**)";
   if(_root.save.arenaAlly != 0)
   {
      textToCopy += "\nInvisible Ally: [#" + _root.save.arenaAlly + "] **" + _root.enemyList[_root.save.arenaAlly].name + "** [+" + _root.save.arenaAllyUpgrade[_root.save.arenaAlly] + "]";
   }
   else
   {
      textToCopy += "\nInvisible Ally: **(No Invisible Ally equipped)**";
   }
   textToCopy += "\nRune of Health: **Lv. " + _root.withComma(_root.save.arenaRuneLevel[1]) + "**";
   if(_root.save.arenaRuneDuration[1] > 0)
   {
      textToCopy += " (ACTIVE)";
   }
   else
   {
      textToCopy += " (INACTIVE)";
   }
   textToCopy += "\nRune of Mana: **Lv. " + _root.withComma(_root.save.arenaRuneLevel[2]) + "**";
   if(_root.save.arenaRuneDuration[2] > 0)
   {
      textToCopy += " (ACTIVE)";
   }
   else
   {
      textToCopy += " (INACTIVE)";
   }
   textToCopy += "\nRune of Rage: **Lv. " + _root.withComma(_root.save.arenaRuneLevel[3]) + "**";
   if(_root.save.arenaRuneDuration[3] > 0)
   {
      textToCopy += " (ACTIVE)";
   }
   else
   {
      textToCopy += " (INACTIVE)";
   }
   textToCopy += "\nRune of Encounter: **Lv. " + _root.withComma(_root.save.arenaRuneLevel[4]) + "**";
   if(_root.save.arenaRuneDuration[4] > 0)
   {
      textToCopy += " (ACTIVE)";
   }
   else
   {
      textToCopy += " (INACTIVE)";
   }
   textToCopy += "\nRune of Experience: **Lv. " + _root.withComma(_root.save.arenaRuneLevel[5]) + "**";
   if(_root.save.arenaRuneDuration[5] > 0)
   {
      textToCopy += " (ACTIVE)";
   }
   else
   {
      textToCopy += " (INACTIVE)";
   }
   textToCopy += "\nRune of Greed: **Lv. " + _root.withComma(_root.save.arenaRuneLevel[6]) + "**";
   if(_root.save.arenaRuneDuration[6] > 0)
   {
      textToCopy += " (ACTIVE)";
   }
   else
   {
      textToCopy += " (INACTIVE)";
   }
   _root.attackPower = Math.floor((_root.save.arenaAttack + _root.abilIncAttack) * (1 + _root.save.arenaSkill[9] * 0.01 + Math.ceil(_root.save.arenaSkill[12] / 2) * 0.01 + _root.curCareerLevel[3] * 0.001 + _root.abilAttack * 0.01 + _root.allyAttack * 0.01));
   if(_root.save.arenaBuffType == 4)
   {
      _root.attackPower = Math.floor(_root.attackPower * 0.01);
   }
   tempDamage = Math.ceil((0.000007 * Math.pow(_root.save.arenaLevel,0.5) * Math.pow(_root.save.level,0.5) + 0.01) * _root.attackPower * _root.weaponAttack * 1 + _root.attackPower);
   if(_root.worstMoon == true)
   {
      tempDamage = Math.floor(Math.pow(tempDamage,0.95));
   }
   textToCopy += "\n";
   textToCopy += "\nATT: **" + _root.withComma(_root.attackPower) + " (" + _root.withComma(_root.save.arenaAttack) + ")**";
   textToCopy += "\nDEF: **" + _root.withComma(_root.defensePower) + " (" + _root.withComma(_root.save.arenaDefense) + ")**";
   textToCopy += "\nACC: **" + _root.accuracyPct + "% + " + _root.withComma(_root.accuracy) + " (" + _root.withComma(_root.save.arenaAccuracy) + ")**";
   textToCopy += "\nEVA: **" + _root.evasionPct + "% + " + _root.withComma(_root.evasion) + " (" + _root.withComma(_root.save.arenaEvasion) + ")**";
   textToCopy += "\nMaxHP: **" + _root.withComma(_root.maxHealth) + " (" + _root.withComma(_root.save.arenaMaxHealth) + ")**";
   textToCopy += "\nMaxMP: **" + _root.withComma(_root.maxMana) + " (" + _root.withComma(_root.save.arenaMaxMana) + ")**";
   textToCopy += "\nMax Spirit: **" + _root.withComma(_root.maxSpirit) + "**";
   textToCopy += "\n";
   textToCopy += "\nEquip ATT: **" + _root.withComma(_root.weaponAttack) + "**";
   textToCopy += "\nEquip DEF: **" + _root.withComma(_root.weaponDefense) + "**";
   textToCopy += "\n";
   textToCopy += "\nMax Damage: **" + _root.withComma(tempDamage) + "** (at 0 Combo + 0% Rage)";
   textToCopy += "\nMastery: **" + _root.withComma(_root.minMult) + "%**";
   textToCopy += "\nIgnore DEF: **" + _root.ignoreDefense + "%**";
   textToCopy += "\nDamage Resist: **" + _root.withComma(_root.damageResistPct) + "% + " + _root.withComma(_root.damageResist) + "**";
   textToCopy += "\nMagic Resist: **" + _root.withComma(_root.magicResist) + "%" + "**";
   textToCopy += "\nAttack Speed: **" + _root.withComma(_root.attackSpeed) + "**";
   textToCopy += "\nDouble Hit: **" + _root.withComma(_root.doubleHit) + "%**";
   textToCopy += "\nCrit. Chance: **" + _root.withComma(_root.criticalChance) + "%**";
   textToCopy += "\nCrit. Damage: **" + _root.withComma(_root.criticalDamage) + "%**";
   textToCopy += "\nReflect: **" + _root.withComma(_root.damageReflect) + "%**";
   textToCopy += "\nMagic Reflect: **" + _root.withComma(_root.magicReflect) + "%**";
   textToCopy += "\nInstant Kill: **" + _root.withComma(_root.instantKill) + "%**";
   textToCopy += "\nNon–Boss Damage: **" + _root.withComma(_root.nonBossDamage + 100) + "%**";
   textToCopy += "\nBoss Damage: **" + _root.withComma(_root.bossDamage + 100) + "%**";
   textToCopy += "\nPotion Efficiency: **" + _root.withComma(_root.potionEfficiency) + "%**";
   textToCopy += "\nNegate Effect: **" + _root.withComma(_root.negateEffect) + "%**";
   textToCopy += "\nRage Depletion: **" + _root.withComma(_root.rageDepletion) + "%**";
   textToCopy += "\nRage Power: **" + _root.withComma(_root.ragePowerMult) + "%**";
   textToCopy += "\nRage Speed: **" + _root.withComma(_root.rageSpeedMult) + "%**";
   textToCopy += "\nHP Regen: **" + _root.withComma(_root.hpRecover) + "** / 1 sec";
   textToCopy += "\nMP Regen: **" + _root.withComma(_root.mpRecover) + "** / 1 sec";
   textToCopy += "\nDrain: **Lv. " + _root.withComma(_root.lifeDrain) + "**";
   textToCopy += "\nMana Eater: **" + _root.withComma(_root.manaEater) + "** / kill";
   textToCopy += "\n";
   textToCopy += "\nPoison Chance: **" + _root.withComma(_root.poisonChance) + "%**";
   textToCopy += "\nPoison Damage: **" + _root.withComma(_root.poisonDamage) + "%**";
   textToCopy += "\nPoison Duration: **" + _root.withComma(_root.poisonDuration) + " sec**";
   textToCopy += "\nWeaken Chance: **" + _root.withComma(_root.weakenChance) + "%**";
   textToCopy += "\nWeaken Effect: **" + _root.withComma(_root.weakenPower) + "%**";
   textToCopy += "\nWeaken Duration: **" + _root.withComma(_root.weakenDuration) + " sec**";
   textToCopy += "\nBlind Chance: **" + _root.withComma(_root.blindChance) + "%**";
   textToCopy += "\nBlind Effect: **" + _root.withComma(_root.blindPower) + "%**";
   textToCopy += "\nBlind Duration: **" + _root.withComma(_root.blindDuration) + " sec**";
   textToCopy += "\nStun Chance: **" + _root.withComma(_root.stunChance) + "%**";
   textToCopy += "\n";
   textToCopy += "\nAutosteal: **Lv. " + _root.withComma(_root.autoSteal) + "**";
   textToCopy += "\nEXP: **" + _root.withComma(_root.arenaExpMult) + "%**";
   textToCopy += "\nCoin: **" + _root.withComma(_root.arenaCoinMult) + "%**";
   textToCopy += "\nPixel: **" + _root.withComma(_root.arenaPixelMult) + "%**";
   textToCopy += "\nDrop: **" + _root.withComma(_root.arenaDropRate) + "%**";
   textToCopy += "\nSpawn: **" + _root.withComma(_root.spawnSpeed) + "%**";
   textToCopy += "\nRare Rate: **" + _root.withComma(_root.arenaRareRate) + "%**";
   textToCopy += "\nEpic Rate: **" + _root.withComma(_root.arenaEpicRate) + "%**";
   textToCopy += "\n";
   textToCopy += "\nFire: **" + _root.withComma(_root.abilResistFire) + "%**";
   textToCopy += "\nIce: **" + _root.withComma(_root.abilResistIce) + "%**";
   textToCopy += "\nWind: **" + _root.withComma(_root.abilResistWind) + "%**";
   textToCopy += "\nEarth: **" + _root.withComma(_root.abilResistEarth) + "%**";
   textToCopy += "\nThunder: **" + _root.withComma(_root.abilResistThunder) + "%**";
   textToCopy += "\nWater: **" + _root.withComma(_root.abilResistWater) + "%**";
   textToCopy += "\nLight: **" + _root.withComma(_root.abilResistLight) + "%**";
   textToCopy += "\nDark: **" + _root.withComma(_root.abilResistDark) + "%**";
   textToCopy += "\n\n___\n\n## Resources\n";
   textToCopy += "\nPixel: **" + _root.withComma(_root.save.arenaPixel) + "**";
   textToCopy += "\nCrafting Material: **" + _root.withComma(_root.save.arenaCraft) + "**";
   textToCopy += "\nSuperior Crafting Material: **" + _root.withComma(_root.save.arenaSuperiorCraft) + "**";
   textToCopy += "\nUnobtainium: **" + _root.withComma(_root.save.arenaUnobtainium) + "**";
   textToCopy += "\nTukkonium: **" + _root.withComma(_root.save.arenaTukkonium) + "**";
   textToCopy += "\nEnhancer Fragment: **" + _root.withComma(_root.save.arenaEnhancerFragment) + "**";
   textToCopy += "\nChaotic Fragment of Chaos: **" + _root.withComma(_root.save.arenaChaoticFragment) + "**";
   textToCopy += "\nProof of Training: **" + _root.withComma(_root.save.arenaProofTraining) + "**";
   textToCopy += "\nProof of Mission: **" + _root.withComma(_root.save.arenaProofMission) + "**";
   textToCopy += "\nBacon: **" + _root.withComma(_root.save.arenaBacon) + " + " + _root.withComma(_root.save.robaconBacon) + "**";
   textToCopy += "\nCrystal of Rarity: **" + _root.withComma(_root.save.arenaCrystal1) + "**";
   textToCopy += "\nCrystal of Ultimate Rarity: **" + _root.withComma(_root.save.arenaCrystal2) + "**";
   textToCopy += "\n\n___\n\n## Equipment\n";
   i = 0;
   while(i <= 12)
   {
      if(i == 1)
      {
         tempType = "Weapon";
      }
      if(i == 2)
      {
         tempType = "SubWeapon";
      }
      if(i == 3)
      {
         tempType = "Hat";
      }
      if(i == 4)
      {
         tempType = "Shirt";
      }
      if(i == 5)
      {
         tempType = "Gloves";
      }
      if(i == 6)
      {
         tempType = "Pants";
      }
      if(i == 7)
      {
         tempType = "Shoes";
      }
      if(i == 8)
      {
         tempType = "Skin";
      }
      if(i == 9)
      {
         tempType = "Pendant";
      }
      if(i == 10)
      {
         tempType = "Earring";
      }
      if(i == 11)
      {
         tempType = "Trinket";
      }
      if(i == 12)
      {
         tempType = "Medal";
      }
      if(i == 0)
      {
         curEquipped = 400;
         if(curEquipped != 0 && _root.save.inventoryName[curEquipped] != undefined && _root.save.inventoryName[curEquipped] != undefined)
         {
            textToCopy += "\n\n### Robacon\'s Weapon";
            textToCopy += "\n**" + _root.save.inventoryName[curEquipped] + "** [+" + _root.save.inventoryEnhance[curEquipped] + "]";
            if(_root.save.inventorySpirit[curEquipped] == true)
            {
               textToCopy += " – SPIRIT";
            }
            if(_root.save.inventoryLevel[curEquipped] == 9999)
            {
               textToCopy += " – FINALIZED";
            }
            else if(_root.save.inventoryNoFuse[curEquipped] == true)
            {
               textToCopy += " – FUSED";
            }
            if(_root.save.inventoryNoBonus[curEquipped] == true && _root.save.inventoryLevel[curEquipped] != 9999)
            {
               textToCopy += " – BONUS LOCKED";
            }
            if(_root.save.inventoryExpiry[curEquipped] != Infinity)
            {
               textToCopy += " – TEMP.";
            }
            if(_root.save.inventoryName[curEquipped].indexOf("(Cursed)") != -1)
            {
               textToCopy += " – CURSED";
            }
            textToCopy += "\n\n* Rank: **" + _root.save.inventoryReqRank[curEquipped] + "** | Unob. Enhancement: **" + _root.save.inventoryUnob[curEquipped] + "**";
            if(_root.save.inventoryLevel[curEquipped] != 9999 && _root.save.inventoryMaxLevel[curEquipped] > 1)
            {
               textToCopy += "\n* Item Level: **" + _root.save.inventoryLevel[curEquipped] + " / " + _root.save.inventoryMaxLevel[curEquipped] + "**";
            }
            textToCopy += "\n* ATT: **" + _root.withComma(_root.save.inventoryAttack[curEquipped]) + "** | SPD: **" + _root.withComma(_root.save.inventorySpeed[curEquipped]) + "** | DEF: **" + _root.withComma(_root.save.inventoryDefense[curEquipped]) + "** | CRIT: **" + _root.withComma(_root.save.inventoryCrit[curEquipped]) + "** | DEX: **" + _root.withComma(_root.save.inventoryDexterity[curEquipped]) + "** | HP: **" + _root.withComma(_root.save.inventoryHealth[curEquipped]) + "**";
            textToCopy += "\n* Bonuses: [" + _root.save.inventoryBonus[curEquipped] + "] – [" + _root.save.inventoryAbility[curEquipped] + "] – [" + _root.save.inventoryMoreBonus[curEquipped] + "]";
         }
      }
      else if(i >= 1)
      {
         curEquipped = _root.save["arena" + tempType];
         if(curEquipped != 0 && _root.save.inventoryName[curEquipped] != undefined && _root.save.inventoryName[curEquipped] != undefined)
         {
            if(i == 2)
            {
               textToCopy += "\n\n### Secondary Weapon";
            }
            else
            {
               textToCopy += "\n\n### " + tempType + "";
            }
            textToCopy += "\n**" + _root.save.inventoryName[curEquipped] + "** [+" + _root.save.inventoryEnhance[curEquipped] + "]";
            if(_root.save.inventorySpirit[curEquipped] == true)
            {
               textToCopy += " – SPIRIT";
            }
            if(_root.save.inventoryLevel[curEquipped] == 9999)
            {
               textToCopy += " – FINALIZED";
            }
            else if(_root.save.inventoryNoFuse[curEquipped] == true)
            {
               textToCopy += " – FUSED";
            }
            if(_root.save.inventoryNoBonus[curEquipped] == true && _root.save.inventoryLevel[curEquipped] != 9999)
            {
               textToCopy += " – BONUS LOCKED";
            }
            if(_root.save.inventoryExpiry[curEquipped] != Infinity)
            {
               textToCopy += " – TEMP.";
            }
            if(_root.save.inventoryName[curEquipped].indexOf("(Cursed)") != -1)
            {
               textToCopy += " – CURSED";
            }
            textToCopy += "\n\n* Rank: **" + _root.save.inventoryReqRank[curEquipped] + "** | Unob. Enhancement: **" + _root.save.inventoryUnob[curEquipped] + "**";
            if(_root.save.inventoryLevel[curEquipped] != 9999 && _root.save.inventoryMaxLevel[curEquipped] > 1)
            {
               textToCopy += "\n* Item Level: **" + _root.save.inventoryLevel[curEquipped] + " / " + _root.save.inventoryMaxLevel[curEquipped] + "**";
            }
            textToCopy += "\n* ATT: **" + _root.withComma(_root.save.inventoryAttack[curEquipped]) + "** | SPD: **" + _root.withComma(_root.save.inventorySpeed[curEquipped]) + "** | DEF: **" + _root.withComma(_root.save.inventoryDefense[curEquipped]) + "** | CRIT: **" + _root.withComma(_root.save.inventoryCrit[curEquipped]) + "** | DEX: **" + _root.withComma(_root.save.inventoryDexterity[curEquipped]) + "** | HP: **" + _root.withComma(_root.save.inventoryHealth[curEquipped]) + "**";
            textToCopy += "\n* Bonuses: [" + _root.save.inventoryBonus[curEquipped] + "] – [" + _root.save.inventoryAbility[curEquipped] + "] – [" + _root.save.inventoryMoreBonus[curEquipped] + "]";
         }
      }
      i++;
   }
   textToCopy += "\n\n___\n\n## Skills\n\n";
   textToCopy += "**LOAD CODE:**\n\n";
   textToCopy += "```\n" + _parent.loadCode + "\n```";
   textToCopy += "\n\n";
   textToCopy += "**SKILLS:**\n\n```";
   i = 1;
   while(i <= 66)
   {
      tempLevel = _root.save.arenaSkill[i];
      if(tempLevel > 0)
      {
         tempMax = _root.save.arenaSkillMax[i];
         if(tempLevel < 10)
         {
            tempLevel = " " + tempLevel;
         }
         if(tempMax < 10)
         {
            tempMax = " " + tempMax;
         }
         textToCopy += "\nLv. " + tempLevel + " / " + tempMax + "  " + _root.arenaSkillNameF[i];
      }
      i++;
   }
   textToCopy += "\n";
   i = 1;
   while(i <= 66)
   {
      tempLevel = _root.save.arenaSkill[i];
      if(tempLevel == 0 && _root.arenaSkillNameF[i] != "")
      {
         tempMax = _root.save.arenaSkillMax[i];
         if(tempMax < 10)
         {
            tempMax = " " + tempMax;
         }
         textToCopy += "\nLv.  0 / " + tempMax + "  " + _root.arenaSkillNameF[i];
      }
      i++;
   }
   textToCopy += "\n```\n\n";
   textToCopy += "**TOTAL SP:** " + _root.withComma(_root.save.arenaLevel * 20 + _root.save.arenaUltimateSP * 10);
   textToCopy += "\n**REMAINING SP:** " + _root.withComma(_root.save.arenaSP);
   System.setClipboard(textToCopy);
}


