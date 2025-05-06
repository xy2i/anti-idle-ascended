//! status=pending
function showDamage(num, col, xLoc, yLoc)
{
   if(_root.cursoridle < 300)
   {
      if(!isNaN(num))
      {
         num = _root.withComma(num);
      }
      if(_root.save.damageFullDisplay == true || num == "MISS!!")
      {
         if(yLoc < 30)
         {
            yLoc = 30;
         }
         _root.incDt();
         stuffHolder.attachMovie("damagePop","damagePop" + _root.summonCount,_root.antiLag,{_x:xLoc,_y:yLoc + 10,damageNum:num,damageColor:col});
      }
   }
}
function subFunction1()
{
   if(_root.save.arenaZone == 79 && _root.save.arenaBuffType != 13)
   {
      _root.save.arenaZone = 0;
   }
   _root.abilIncEquipAttack = 0 + Math.floor(_root.save.collectionPoint / 10);
   _root.abilIncEquipDefense = 0 + Math.floor(_root.save.collectionPoint / 2);
   _root.abilIncAttack = 0;
   _root.abilIncDefense = 0;
   _root.abilIncHP = 0;
   _root.abilIncMP = 0;
   _root.abilIncAccuracy = 0;
   _root.abilIncEvasion = 0;
   _root.abilIncExpBoss = 0;
   _root.abilIncExpRare = 0;
   _root.abilIncExpEpic = 0;
   _root.abilIncPixelLoot = 0;
   _root.abilIncCraftLoot = 0;
   _root.abilResistFire = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilResistIce = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilResistWind = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilResistEarth = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilResistThunder = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilResistWater = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilResistLight = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilResistDark = 0 + _root.save.arenaSkill[56] * 1;
   if(_root.save.careerLevel[3] >= 200)
   {
      _root.abilResistFire += 30;
      _root.abilResistIce += 30;
      _root.abilResistWind += 30;
      _root.abilResistEarth += 30;
      _root.abilResistThunder += 30;
      _root.abilResistWater += 30;
      _root.abilResistLight += 30;
      _root.abilResistDark += 30;
   }
   _root.abilResistAll = 0;
   _root.abilPwnFire = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilPwnIce = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilPwnWind = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilPwnEarth = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilPwnThunder = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilPwnWater = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilPwnLight = 0 + _root.save.arenaSkill[56] * 1;
   _root.abilPwnDark = 0 + _root.save.arenaSkill[56] * 1;
   if(_root.save.careerLevel[3] >= 200)
   {
      _root.abilPwnFire += 30;
      _root.abilPwnIce += 30;
      _root.abilPwnWind += 30;
      _root.abilPwnEarth += 30;
      _root.abilPwnThunder += 30;
      _root.abilPwnWater += 30;
      _root.abilPwnLight += 30;
      _root.abilPwnDark += 30;
   }
   _root.abilPwnAll = 0;
   _root.abilExp = 0 + _root.setExpBonus;
   _root.abilCoin = 0 + _root.setCoinBonus;
   _root.abilPixel = 0 + _root.setPixelBonus;
   _root.abilDropRate = 0 + _root.setDropBonus + _root.save.collectionPointTrophy;
   _root.abilSpawnRate = 0 + _root.setSpawnBonus;
   _root.abilRareRate = 0 + Math.floor(_root.save.collectionPoint / 20) + _root.setRareBonus;
   _root.abilEpicRate = 0 + Math.floor(_root.save.collectionPoint / 50) + _root.setEpicBonus;
   _root.abilAttack = 0;
   _root.abilAttackSpeed = 0 + _root.setSpeedBonus;
   _root.abilIgnoreDefense = 0;
   _root.abilMastery = 0;
   _root.abilCriticalChance = 0;
   _root.abilCriticalDamage = 0;
   _root.abilDefense = 0 + _root.setDefenseBonus;
   _root.abilDamageTaken = 0;
   _root.abilReflect = 0;
   _root.abilAccuracy = 0 + _root.setAccuracyBonus;
   _root.abilHitChance = 0 + Math.floor(_root.save.arenaSkill[57] * 0.2);
   _root.abilEvasion = 0 + _root.setEvasionBonus;
   _root.abilDodgeChance = 0;
   _root.abilPoisonChance = 0;
   _root.abilWeakenChance = 0;
   _root.abilBlindChance = 0;
   _root.abilStunChance = 0;
   _root.abilSilenceChance = 0;
   _root.abilHP = 0 + _root.setHealthBonus;
   _root.abilMP = 0 + _root.setManaBonus;
   _root.abilHPRegen = 0;
   _root.abilMPRegen = 0;
   _root.abilRageDepletion = 0;
   _root.abilLifeDrain = 0;
   _root.abilManaEater = 0;
   _root.abilAutoSteal = 0;
   _root.abilDoubleHit = 0;
   _root.abilRageAttack = 0;
   _root.abilRageSpeed = 0;
   _root.abilPoisonDamage = 0;
   _root.abilPoisonDuration = 0;
   _root.abilWeakenEffect = 0;
   _root.abilWeakenDuration = 0;
   _root.abilBlindEffect = 0;
   _root.abilBlindDuration = 0;
   _root.abilPotionEfficiency = 0 + _root.save.arenaSkill[60] * 10;
   _root.abilBossDamage = 0 + _root.setDamageBonus + _root.save.arenaSkill[57] * 2;
   _root.abilNonBossDamage = 0 + _root.setDamageBonus;
   _root.abilMagicResist = 0 + _root.save.arenaSkill[58] * 1;
   _root.abilInstantKill = 0 + Math.floor(_root.save.arenaSkill[57] * 0.2);
   _root.abilNegateEffect = 0 + _root.save.arenaSkill[58] * 1;
   _root.abilExtraCombo = 0;
   _root.abilMagicReflect = 0;
   _root.abilNullifyPenalty = 0;
   _root.abilBuffEffect = 0;
   _root.abilMaxSpirit = 0;
   _root.abilIgnoreEpicWeapon = 0;
   _root.abilIgnoreBonusRock = 0;
   _root.abilIgnorePendant = 0;
   _root.abilIgnoreFinalizer = 0;
   _root.abilIgnoreOutfit = 0;
   if(_root.spiritUnleash > 0)
   {
      if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Sword")
      {
         _root.abilAttack += 10;
         _root.abilCriticalDamage += 30;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Dagger")
      {
         _root.abilAttack += 10;
         _root.abilAttackSpeed += 20;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Spear")
      {
         _root.abilAttack += 10;
         _root.abilIgnoreDefense += 10;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Axe")
      {
         _root.abilAttack += 10;
         _root.abilStunChance += 5;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Hammer")
      {
         _root.abilStunChance += 20;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Polearm" || _root.save.inventorySubtype[_root.save.arenaWeapon] == "Polearm (Stab)")
      {
         _root.abilAttack += 10;
         _root.abilMastery += 10;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Bow")
      {
         _root.abilAccuracy += 40;
         _root.abilInstantKill += 5;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Crossbow")
      {
         _root.abilHitChance += 10;
         _root.abilInstantKill += 5;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Wand" || _root.save.inventorySubtype[_root.save.arenaWeapon] == "Staff")
      {
         _root.abilMastery += 20;
         _root.abilResistFire += 10;
         _root.abilResistIce += 10;
         _root.abilResistWind += 10;
         _root.abilResistEarth += 10;
         _root.abilResistThunder += 10;
         _root.abilResistWater += 10;
         _root.abilResistLight += 10;
         _root.abilResistDark += 10;
         _root.abilPwnFire += 10;
         _root.abilPwnIce += 10;
         _root.abilPwnWind += 10;
         _root.abilPwnEarth += 10;
         _root.abilPwnThunder += 10;
         _root.abilPwnWater += 10;
         _root.abilPwnLight += 10;
         _root.abilPwnDark += 10;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Gun")
      {
         _root.abilCriticalDamage += 60;
         _root.abilDoubleHit += 25;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Claw")
      {
         _root.abilCriticalChance += 30;
         _root.abilNonBossDamage += 20;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Slingshot")
      {
         _root.abilCriticalChance += 30;
         _root.abilBossDamage += 20;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Cannon")
      {
         _root.abilCriticalChance += 30;
         _root.abilBossDamage += 20;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Grenades")
      {
         _root.abilExp += 40;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Trophy")
      {
         _root.abilExp += 20;
         _root.abilCoin += 40;
      }
      else if(_root.save.inventorySubtype[_root.save.arenaWeapon] == "Mining Tool")
      {
         _root.abilCoin += 40;
         _root.abilPixel += 40;
      }
   }
   if(_root.specPierce > 0)
   {
      _root.abilIgnoreDefense += 10 + _root.save.arenaSkill[3];
   }
   if(_root.specPolearm > 0)
   {
      _root.abilIncEquipAttack += 250 + 25 * _root.save.arenaSkill[3];
      _root.abilIncEquipDefense += 500 + 50 * _root.save.arenaSkill[3];
      _root.abilHP += 100 + 10 * _root.save.arenaSkill[3];
   }
   if(_root.specTrueshot > 0)
   {
      _root.abilHitChance += 10 + _root.save.arenaSkill[3];
   }
   if(_root.save.arenaRuneDuration[1] > 0)
   {
      _root.abilHP += Math.floor((50 + 1 * _root.save.arenaRuneLevel[1]) * runeMult);
      _root.abilDefense += Math.floor((50 + 1 * _root.save.arenaRuneLevel[1]) * runeMult);
      _root.abilHPRegen += Math.floor((2500 + 25 * _root.save.arenaRuneLevel[1]) * runeMult);
   }
   if(_root.save.arenaRuneDuration[2] > 0)
   {
      _root.abilMP += Math.floor((50 + 0.5 * _root.save.arenaRuneLevel[2]) * runeMult);
      _root.abilMaxSpirit += Math.floor((100 + 1 * _root.save.arenaRuneLevel[2]) * runeMult);
      _root.abilMPRegen += Math.floor((2500 + 25 * _root.save.arenaRuneLevel[2]) * runeMult);
   }
   if(_root.save.arenaRuneDuration[3] > 0)
   {
      _root.abilRageAttack += Math.floor((5 + 0.05 * _root.save.arenaRuneLevel[3]) * runeMult);
      _root.abilRageSpeed += Math.floor((10 + 0.1 * _root.save.arenaRuneLevel[3]) * runeMult);
   }
   if(_root.save.arenaRuneDuration[4] > 0)
   {
      _root.abilSpawnRate += Math.floor((10 + 0.1 * _root.save.arenaRuneLevel[4]) * runeMult);
   }
   if(_root.save.arenaRuneDuration[5] > 0)
   {
      _root.abilExp += Math.floor((30 + 0.3 * _root.save.arenaRuneLevel[5]) * runeMult);
   }
   if(_root.save.arenaRuneDuration[6] > 0)
   {
      _root.abilCoin += Math.floor((20 + 0.2 * _root.save.arenaRuneLevel[6]) * runeMult);
      _root.abilPixel += Math.floor((20 + 0.2 * _root.save.arenaRuneLevel[6]) * runeMult);
      _root.abilDropRate += Math.floor((50 + 0.5 * _root.save.arenaRuneLevel[6]) * runeMult);
   }
   if(_root.spiritHeal > 0)
   {
      _root.abilDefense += 100 + _root.save.arenaSkill[5] * 10;
   }
   dilStack = 0;
   domStack = 0;
   megStack = 0;
   komStack = 0;
   var _loc2_ = 501;
   while(_loc2_ <= 530)
   {
      if(_root.save.inventoryName[_loc2_] == "Perfect Attendance" && _root.save.inventoryExist[_loc2_] == 1 && dilStack < 2 && _root.save.inventoryExpiry[_loc2_] > _root.systemtimenow && _root.save.inventoryDesc[_loc2_] != "This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works." && _root.save.inventoryDesc[_loc2_] != "Thank you for your donation and your continued support!")
      {
         dilStack += 1;
         _root.abilPixel += 10;
         _root.abilHP += 10;
         _root.abilMP += 10;
      }
      if(_root.save.inventoryName[_loc2_] == "Dominator Gem" && _root.save.inventoryExist[_loc2_] == 1 && domStack < 1 && _root.save.inventoryDesc[_loc2_] != "This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works." && _root.save.inventoryDesc[_loc2_] != "Thank you for your donation and your continued support!")
      {
         domStack += 1;
         _root.abilCoin += Math.floor(Math.min(_root.save.arenaSpookyScore / 500,50));
      }
      if(_root.save.inventoryName[_loc2_] == "Mega Triangle Gem" && _root.save.inventoryExist[_loc2_] == 1 && megStack < 1 && _root.save.inventoryDesc[_loc2_] != "This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works." && _root.save.inventoryDesc[_loc2_] != "Thank you for your donation and your continued support!")
      {
         megStack += 1;
         _root.abilExp += Math.floor(Math.min(_root.save.arenaTriangleScore / 50,50));
      }
      if(_root.save.inventoryName[_loc2_] == "Mission Kommander\'s Gem" && _root.save.inventoryExist[_loc2_] == 1 && komStack < 1 && _root.save.inventoryDesc[_loc2_] != "This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works." && _root.save.inventoryDesc[_loc2_] != "Thank you for your donation and your continued support!")
      {
         komStack += 1;
         _root.abilPixel += Math.floor(Math.min(Math.sqrt(_root.save.arenaKommanderComplete),50));
      }
      _loc2_ += 1;
   }
   if(_root.save.arenaBuffType == 1 && _root.arenaPotionBlock <= 0)
   {
      _root.abilAttack += Math.floor(50 * _root.buffMultiplier);
      _root.abilDefense += Math.floor(50 * _root.buffMultiplier);
      _root.abilHP += Math.floor(150 * _root.buffMultiplier);
      _root.abilMP += Math.floor(250 * _root.buffMultiplier);
      _root.abilAccuracy += Math.floor(75 * _root.buffMultiplier);
      _root.abilEvasion += Math.floor(75 * _root.buffMultiplier);
   }
   if(_root.save.arenaBuffType == 2 && _root.arenaPotionBlock <= 0)
   {
      _root.abilMastery += Math.floor(50 * _root.buffMultiplier);
      _root.abilDamageTaken += Math.floor(20 * _root.buffMultiplier);
      _root.abilHPRegen += Math.floor(2500 * _root.buffMultiplier);
      _root.abilMPRegen += Math.floor(1250 * _root.buffMultiplier);
      _root.abilHitChance += Math.floor(20 * _root.buffMultiplier);
      _root.abilDodgeChance += Math.floor(20 * _root.buffMultiplier);
   }
   if(_root.save.arenaBuffType == 3 && _root.arenaPotionBlock <= 0)
   {
      _root.abilExp += Math.floor(50 * _root.buffMultiplier);
      _root.abilCoin += Math.floor(50 * _root.buffMultiplier);
      _root.abilPixel += Math.floor(50 * _root.buffMultiplier);
      _root.abilDropRate += Math.floor(100 * _root.buffMultiplier);
   }
   if(_root.save.arenaBuffType == 4 && _root.arenaPotionBlock <= 0)
   {
      _root.abilExp += Math.floor(100 * _root.buffMultiplier);
      _root.abilCoin += Math.floor(100 * _root.buffMultiplier);
      _root.abilPixel += Math.floor(100 * _root.buffMultiplier);
      _root.abilDropRate += Math.floor(200 * _root.buffMultiplier);
   }
   if(_root.save.arenaBuffType == 5 || _root.spiritEnrage > 0)
   {
      _root.abilRageDepletion += Math.floor(30 * _root.buffMultiplier);
      _root.abilRageAttack += Math.floor(60 * _root.buffMultiplier);
      _root.abilRageSpeed += Math.floor(90 * _root.buffMultiplier);
      _root.abilNonBossDamage += Math.floor(60 * _root.buffMultiplier);
      _root.abilBossDamage += Math.floor(60 * _root.buffMultiplier);
   }
   if(_root.save.arenaBuffType == 6 || _root.spiritBoost > 0)
   {
      _root.abilExp += Math.floor(50 * _root.buffMultiplier);
      _root.abilResistFire += Math.floor(150 * _root.buffMultiplier);
      _root.abilResistIce += Math.floor(150 * _root.buffMultiplier);
      _root.abilResistWind += Math.floor(150 * _root.buffMultiplier);
      _root.abilResistEarth += Math.floor(150 * _root.buffMultiplier);
      _root.abilResistThunder += Math.floor(150 * _root.buffMultiplier);
      _root.abilResistWater += Math.floor(150 * _root.buffMultiplier);
      _root.abilResistLight += Math.floor(150 * _root.buffMultiplier);
      _root.abilResistDark += Math.floor(150 * _root.buffMultiplier);
      _root.abilPwnFire += Math.floor(150 * _root.buffMultiplier);
      _root.abilPwnIce += Math.floor(150 * _root.buffMultiplier);
      _root.abilPwnWind += Math.floor(150 * _root.buffMultiplier);
      _root.abilPwnEarth += Math.floor(150 * _root.buffMultiplier);
      _root.abilPwnThunder += Math.floor(150 * _root.buffMultiplier);
      _root.abilPwnWater += Math.floor(150 * _root.buffMultiplier);
      _root.abilPwnLight += Math.floor(150 * _root.buffMultiplier);
      _root.abilPwnDark += Math.floor(150 * _root.buffMultiplier);
   }
   if(_root.save.arenaBuffType == 9)
   {
      _root.abilDropRate += Math.floor(50 * _root.buffMultiplier);
      _root.abilRareRate += Math.floor(100 * _root.buffMultiplier);
      _root.abilEpicRate += Math.floor(100 * _root.buffMultiplier);
   }
   if(_root.save.arenaBuffType == 10)
   {
      _root.abilSpawnRate += Math.floor(50 * _root.buffMultiplier);
   }
   if(_root.save.arenaRing == 1)
   {
      _root.abilHP += 300;
      _root.abilHPRegen += 5000;
   }
   else if(_root.save.arenaRing == 2)
   {
      _root.abilMP += 250;
      _root.abilMPRegen += 5000;
   }
   else if(_root.save.arenaRing == 3)
   {
      _root.abilAttack += 75;
      _root.abilIgnoreDefense += 75;
   }
   else if(_root.save.arenaRing == 4)
   {
      _root.abilAttackSpeed += 160;
      _root.abilDoubleHit += 80;
      _root.abilAttack += 30;
   }
   else if(_root.save.arenaRing == 5)
   {
      _root.abilMastery += 90;
      _root.abilIgnoreDefense += 20;
      _root.abilHitChance += 20;
      _root.abilDodgeChance += 20;
   }
   else if(_root.save.arenaRing == 6)
   {
      _root.abilCriticalChance += 50;
      _root.abilCriticalDamage += 250;
   }
   else if(_root.save.arenaRing == 7)
   {
      _root.abilDefense += 150;
      _root.abilDamageTaken += 50;
   }
   else if(_root.save.arenaRing == 8)
   {
      _root.abilReflect += 4500;
      _root.abilAttack += 30;
      _root.abilDefense += 45;
   }
   else if(_root.save.arenaRing == 9)
   {
      _root.abilAccuracy += 150;
      _root.abilHitChance += 50;
   }
   else if(_root.save.arenaRing == 10)
   {
      _root.abilEvasion += 200;
      _root.abilDodgeChance += 50;
   }
   else if(_root.save.arenaRing == 11)
   {
      _root.abilLifeDrain += 100;
      _root.abilManaEater += 25000;
      _root.abilHP += 150;
   }
   else if(_root.save.arenaRing == 12)
   {
      _root.abilPoisonChance += 50;
      _root.abilWeakenChance += 50;
      _root.abilBlindChance += 50;
      _root.abilStunChance += 10;
   }
   else if(_root.save.arenaRing == 13)
   {
      _root.abilSpawnRate += 20;
   }
   else if(_root.save.arenaRing == 14)
   {
      _root.abilExp += 50;
   }
   else if(_root.save.arenaRing == 15)
   {
      _root.abilCoin += 50;
      _root.abilPixel += 50;
   }
   else if(_root.save.arenaRing == 16)
   {
      _root.abilDefense += 75;
      _root.abilDamageTaken += 25;
      _root.abilEvasion += 100;
      _root.abilDodgeChance += 25;
      _root.abilNullifyPenalty += 100;
   }
   else if(_root.save.arenaRing == 17)
   {
      _root.abilDropRate += 100;
      _root.abilRareRate += 100;
      _root.abilEpicRate += 100;
   }
   else if(_root.save.arenaRing == 20)
   {
      _root.abilRageDepletion += 30;
      _root.abilRageAttack += 60;
      _root.abilRageSpeed += 125;
   }
   else if(_root.save.arenaRing == 21)
   {
      _root.abilMagicResist += 60;
      _root.abilNegateEffect += 80;
   }
   else if(_root.save.arenaRing == 22)
   {
      _root.abilBossDamage += 120;
      _root.abilInstantKill += 30;
   }
   _root.allyExp = 0;
   _root.allyCoin = 0;
   _root.allyPixel = 0;
   _root.allyDropRate = 0;
   _root.allySpawnRate = 0;
   _root.allyAttack = 0;
   _root.allyDefense = 0;
   _root.allyHP = 0;
   _root.allyMP = 0;
   _root.allyAccuracy = 0;
   _root.allyEvasion = 0;
   _root.allyEquipAttack = 0;
   _root.allyEquipDefense = 0;
   _root.allyAttackSpeed = 0;
   _root.allyAttackSpeedRaw = 0;
   _root.allyMastery = 0;
   _root.allyDamageTaken = 0;
   _root.allyHitChance = 0;
   _root.allyDodgeChance = 0;
   _root.allyCriticalChance = 0;
   _root.allyCriticalDamage = 0;
   _root.allyReflect = 0;
   _root.allyMagicResist = 0;
   _root.allyDoubleHit = 0;
   _root.allyInstantKill = 0;
   _root.allyBossDamage = 0;
   _root.allyNonBossDamage = 0;
   _root.allyIgnoreDefense = 0;
   _root.allyNegateEffect = 0;
   _root.allyPotionEfficiency = 0;
   if(isNaN(_root.save.arenaAllyUpgrade[_root.save.arenaAlly]))
   {
      _root.save.arenaAllyUpgrade[_root.save.arenaAlly] = 0;
   }
   _root.allyPassive1 = _root.enemyList[_root.save.arenaAlly].allyPassive1;
   _root.allyPassive1X = Math.floor(_root.enemyList[_root.save.arenaAlly].allyPassive1X * (1 + _root.save.arenaAllyUpgrade[_root.save.arenaAlly] / 10));
   _root.allyPassive2 = _root.enemyList[_root.save.arenaAlly].allyPassive2;
   _root.allyPassive2X = Math.floor(_root.enemyList[_root.save.arenaAlly].allyPassive2X * (1 + _root.save.arenaAllyUpgrade[_root.save.arenaAlly] / 10));
   _root.allyPassive3 = _root.enemyList[_root.save.arenaAlly].allyPassive3;
   _root.allyPassive3X = _root.enemyList[_root.save.arenaAlly].allyPassive3X;
   if(_root.save.arenaAllyUpgrade[_root.save.arenaAlly] < 15)
   {
      _root.allyPassive3X = 0;
   }
   _root.allyActive1 = _root.enemyList[_root.save.arenaAlly].allyActive1;
   _root.allyActive1X = _root.enemyList[_root.save.arenaAlly].allyActive1X;
   _root.allyActive1Y = _root.enemyList[_root.save.arenaAlly].allyActive1Y;
   _root.allyActive1Z = _root.enemyList[_root.save.arenaAlly].allyActive1Z;
   _root.allyActive2 = _root.enemyList[_root.save.arenaAlly].allyActive2;
   _root.allyActive2X = _root.enemyList[_root.save.arenaAlly].allyActive2X;
   _root.allyActive2Y = _root.enemyList[_root.save.arenaAlly].allyActive2Y;
   _root.allyActive2Z = _root.enemyList[_root.save.arenaAlly].allyActive2Z;
   _root.allyActive3 = _root.enemyList[_root.save.arenaAlly].allyActive3;
   _root.allyActive3X = _root.enemyList[_root.save.arenaAlly].allyActive3X;
   _root.allyActive3Y = _root.enemyList[_root.save.arenaAlly].allyActive3Y;
   _root.allyActive3Z = _root.enemyList[_root.save.arenaAlly].allyActive3Z;
   _loc2_ = 1;
   while(_loc2_ <= 3)
   {
      if(_root["allyPassive" + _loc2_] == "Reward")
      {
         _root.allyExp += _root["allyPassive" + _loc2_ + "X"];
         _root.allyCoin += _root["allyPassive" + _loc2_ + "X"];
         _root.allyPixel += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "EXP")
      {
         _root.allyExp += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Coin")
      {
         _root.allyCoin += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Pixel")
      {
         _root.allyPixel += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Reflect")
      {
         _root.allyReflect += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Drop Rate")
      {
         _root.allyDropRate += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Spawn Rate")
      {
         _root.allySpawnRate += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Attack %")
      {
         _root.allyAttack += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Defense %")
      {
         _root.allyDefense += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "MaxHP %")
      {
         _root.allyHP += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "MaxMP %")
      {
         _root.allyMP += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Accuracy %")
      {
         _root.allyAccuracy += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Evasion %")
      {
         _root.allyEvasion += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Equipment Attack")
      {
         _root.allyEquipAttack += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Equipment Defense")
      {
         _root.allyEquipDefense += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Attack Speed")
      {
         _root.allyAttackSpeedRaw += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Attack Speed %")
      {
         _root.allyAttackSpeed += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Mastery")
      {
         _root.allyMastery += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Resist")
      {
         _root.allyDamageTaken += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Hit Chance")
      {
         _root.allyHitChance += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Dodge Chance")
      {
         _root.allyDodgeChance += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Critical Chance")
      {
         _root.allyCriticalChance += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Critical Damage")
      {
         _root.allyCriticalDamage += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Magic Resist")
      {
         _root.allyMagicResist += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Double Hit Chance")
      {
         _root.allyDoubleHit += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Instant Kill")
      {
         _root.allyInstantKill += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Boss Damage")
      {
         _root.allyBossDamage += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Non-Boss Damage")
      {
         _root.allyNonBossDamage += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Damage")
      {
         _root.allyNonBossDamage += _root["allyPassive" + _loc2_ + "X"];
         _root.allyBossDamage += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Ignore Defense")
      {
         _root.allyIgnoreDefense += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Potion Efficiency")
      {
         _root.allyPotionEfficiency += _root["allyPassive" + _loc2_ + "X"];
      }
      else if(_root["allyPassive" + _loc2_] == "Negate Effect")
      {
         _root.allyNegateEffect += _root["allyPassive" + _loc2_ + "X"];
      }
      _loc2_ += 1;
   }
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      _root.spiritCount += 1;
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "Dark Ruler")
      {
         _root.save.inventorySpirit[_root.save.arenaWeapon] = false;
      }
   }
   if(_root.save.inventorySpirit[_root.save.arenaHat] == true)
   {
      _root.spiritCount += 1;
   }
   if(_root.save.inventorySpirit[_root.save.arenaShirt] == true)
   {
      _root.spiritCount += 1;
   }
   if(_root.save.inventorySpirit[_root.save.arenaGloves] == true)
   {
      _root.spiritCount += 1;
   }
   if(_root.save.inventorySpirit[_root.save.arenaPants] == true)
   {
      _root.spiritCount += 1;
   }
   if(_root.save.inventorySpirit[_root.save.arenaShoes] == true)
   {
      _root.spiritCount += 1;
   }
   if(_root.save.inventorySpirit[_root.save.arenaSkin] == true)
   {
      _root.spiritCount += 1;
   }
   if(_root.save.inventorySpirit[_root.save.arenaMedal] == true)
   {
      _root.spiritCount += 1;
   }
   if(_root.save.inventorySpirit[_root.save.arenaPendant] == true)
   {
      _root.spiritCount += 1;
   }
   if(_root.save.inventorySpirit[_root.save.arenaEarring] == true)
   {
      _root.spiritCount += 1;
   }
   if(_root.save.inventorySpirit[_root.save.arenaTrinket] == true)
   {
      _root.spiritCount += 1;
   }
   if(_root.save.inventoryExist[_root.save.arenaWeapon] != 1)
   {
      _root.save.arenaWeapon = 0;
   }
   if(_root.save.inventoryExist[_root.save.arenaHat] != 1)
   {
      _root.save.arenaHat = 0;
   }
   if(_root.save.inventoryExist[_root.save.arenaShirt] != 1)
   {
      _root.save.arenaShirt = 0;
   }
   if(_root.save.inventoryExist[_root.save.arenaGloves] != 1)
   {
      _root.save.arenaGloves = 0;
   }
   if(_root.save.inventoryExist[_root.save.arenaPants] != 1)
   {
      _root.save.arenaPants = 0;
   }
   if(_root.save.inventoryExist[_root.save.arenaShoes] != 1)
   {
      _root.save.arenaShoes = 0;
   }
   if(_root.save.inventoryExist[_root.save.arenaSkin] != 1)
   {
      _root.save.arenaSkin = 0;
   }
   if(_root.save.inventoryExist[_root.save.arenaMedal] != 1)
   {
      _root.save.arenaMedal = 0;
   }
   if(_root.save.inventoryExist[_root.save.arenaPendant] != 1)
   {
      _root.save.arenaPendant = 0;
   }
   if(_root.save.inventoryExist[_root.save.arenaEarring] != 1)
   {
      _root.save.arenaEarring = 0;
   }
   if(_root.save.inventoryExist[_root.save.arenaTrinket] != 1)
   {
      _root.save.arenaTrinket = 0;
   }
}
function travel(destination)
{
   if(enemy.enemyID == 0)
   {
      _root.actiondescription = "";
      _root.save.arenaZone = destination;
      _root.arenaCombo = 0;
      enemy.approach = 10;
      _root.save.arenaZoneFound[destination] = 1;
      if(_root.save.arenaZone == 7 || _root.save.arenaZone == 24 || _root.save.arenaZone == 52 || _root.save.arenaZone == 54 || _root.save.arenaZone == 56 || _root.save.arenaZone == 59 || _root.save.arenaZone == 61 || _root.save.arenaZone == 68 || _root.save.arenaZone == 78 || _root.save.arenaZone == 82)
      {
         if(cgtHP._currentframe != 2)
         {
            cgtHP.gotoAndStop(2);
         }
      }
      else if(cgtHP._currentframe != 1)
      {
         cgtHP.gotoAndStop(1);
      }
   }
}
function checkMagnet()
{
   _root.lootMagnet = false;
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Dark Ruler")
   {
      _root.lootMagnet = true;
   }
   else if(_root.save.arenaBuffType == 9)
   {
      _root.lootMagnet = true;
   }
   else if(_root.save.arenaZone == 20 || _root.save.arenaZone == 69)
   {
      _root.lootMagnet = true;
   }
   else if(_root.save.inventoryName[_root.save.arenaPendant] == "TERA PENDANT" && _root.save.inventoryName[_root.save.arenaEarring] == "TERA EARRINGS")
   {
      _root.lootMagnet = true;
   }
   else if(_root.save.inventoryName[_root.save.arenaPendant] == "GIGA PENDANT" && _root.save.inventoryName[_root.save.arenaEarring] == "GIGA EARRINGS")
   {
      _root.lootMagnet = true;
   }
   else if(_root.save.inventoryName[_root.save.arenaPendant] == "MEGA PENDANT" && _root.save.inventoryName[_root.save.arenaEarring] == "MEGA EARRINGS" && _root.save.inventoryName[_root.save.arenaGloves] == "MEGA WINGS")
   {
      _root.lootMagnet = true;
   }
   else if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Constancy" && _root.save.inventoryLevel[_root.save.arenaTrinket] == 500)
   {
      _root.lootMagnet = true;
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Ultimate Weapon" && _root.save.inventoryName[_root.save.arenaHat] == "Ultimate Hat" && _root.save.inventoryName[_root.save.arenaShirt] == "Ultimate Shirt" && _root.save.inventoryName[_root.save.arenaGloves] == "Ultimate Gloves" && _root.save.inventoryName[_root.save.arenaPants] == "Ultimate Pants" && _root.save.inventoryName[_root.save.arenaShoes] == "Ultimate Shoes" && _root.save.inventoryName[_root.save.arenaPendant] == "Ultimate Pendant" && _root.save.inventoryName[_root.save.arenaEarring] == "Ultimate Earrings" && (_root.save.inventoryName[_root.save.arenaTrinket] == "Ultimate Trinket" || _root.apocalypse == true))
   {
      _root.lootMagnet = true;
      _root.manaLeech = _root.save.banned + _root.save.bannedHard * 2 + _root.save.bannedImpossible * 4;
      if(_root.manaLeech > 3000)
      {
         _root.manaLeech = 3000;
      }
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Reincarnation Weapon" && _root.save.inventoryName[_root.save.arenaHat] == "Reincarnation Hat" && _root.save.inventoryName[_root.save.arenaShirt] == "Reincarnation Shirt" && _root.save.inventoryName[_root.save.arenaGloves] == "Reincarnation Gloves" && _root.save.inventoryName[_root.save.arenaPants] == "Reincarnation Pants" && _root.save.inventoryName[_root.save.arenaShoes] == "Reincarnation Shoes" && _root.save.inventoryName[_root.save.arenaPendant] == "Reincarnation Pendant" && _root.save.inventoryName[_root.save.arenaEarring] == "Reincarnation Earrings" && (_root.save.inventoryName[_root.save.arenaTrinket] == "Reincarnation Trinket" || _root.apocalypse == true))
   {
      _root.lootMagnet = true;
      _root.autoExp = _root.save.bannedB;
   }
   _root.monsterMagnet = false;
   if(_root.save.arenaBuffType == 10)
   {
      _root.monsterMagnet = true;
   }
}
function checkItemLevelUp()
{
   if(_root.save.inventoryExp[400] >= _root.save.inventoryExpTNL[400] && _root.save.inventoryLevel[400] < _root.save.inventoryMaxLevel[400])
   {
      _root.save.inventoryExp[400] = 0;
      _root.save.inventoryLevel[400] += 1;
      if(_root.save.inventoryName[400] == "Pirate Sword" && _root.save.inventoryLevel[400] == 300)
      {
         _root.save.inventorySpeed[400] += 3;
         if(_root.save.vegetarianMode == true)
         {
            _root.save.inventoryDesc[400] = "Congratulations! You have mastered the pirate language (for this particular sword, at least), and as a result, you can attack twice as fast with this Pirate Sword equipped!\n\nActually, you just let Robroccoli do the job for you, but the same still applies.";
         }
         else
         {
            _root.save.inventoryDesc[400] = "Congratulations! You have mastered the pirate language (for this particular sword, at least), and as a result, you can attack twice as fast with this Pirate Sword equipped!\n\nActually, you just let Robacon do the job for you, but the same still applies.";
         }
      }
      if(_root.save.inventoryAttack[400] > 0)
      {
         statToGain = 4 + random(3);
         _root.save.inventoryAttack[400] += statToGain;
         _root.save.inventoryBonusPow[400] += statToGain;
         if(_root.save.inventoryLevel[400] % 2 == 0)
         {
            _root.save.inventoryDefense[400] += 2;
            _root.save.inventoryBonusPow[400] += 2;
         }
         if(_root.save.inventoryLevel[400] % 3 == 0)
         {
            _root.save.inventoryDexterity[400] += 1;
            _root.save.inventoryBonusPow[400] += 10;
         }
         if(_root.save.inventoryLevel[400] % 4 == 0)
         {
            _root.save.inventoryHealth[400] += 1;
            _root.save.inventoryBonusPow[400] += 5;
         }
         if(_root.save.inventoryLevel[400] % 5 == 0)
         {
            _root.save.inventoryCrit[400] += 1;
            _root.save.inventoryBonusPow[400] += 10;
         }
      }
      else
      {
         _root.save.inventorySpeed[400] += 1;
         _root.save.inventoryBonusPow[400] += 10;
         if(_root.save.inventoryLevel[400] % 2 == 0)
         {
            _root.save.inventoryDefense[400] += 2;
            _root.save.inventoryBonusPow[400] += 2;
         }
         if(_root.save.inventoryLevel[400] % 3 == 0)
         {
            _root.save.inventoryDexterity[400] += 1;
            _root.save.inventoryBonusPow[400] += 10;
         }
         if(_root.save.inventoryLevel[400] % 4 == 0)
         {
            _root.save.inventoryHealth[400] += 1;
            _root.save.inventoryBonusPow[400] += 5;
         }
         if(_root.save.inventoryLevel[400] % 5 == 0)
         {
            _root.save.inventoryCrit[400] += 1;
            _root.save.inventoryBonusPow[400] += 10;
         }
      }
      _root.dispNews(62,"Item Level Up! [" + _root.save.inventoryName[400] + "] is now Level " + _root.save.inventoryLevel[400] + ".");
   }
   if(_root.save.inventoryExp[_root.save.arenaWeapon] >= _root.save.inventoryExpTNL[_root.save.arenaWeapon] && _root.save.inventoryLevel[_root.save.arenaWeapon] < _root.save.inventoryMaxLevel[_root.save.arenaWeapon])
   {
      _root.save.inventoryExp[_root.save.arenaWeapon] = 0;
      _root.save.inventoryLevel[_root.save.arenaWeapon] += 1;
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "Pirate Sword" && _root.save.inventoryLevel[_root.save.arenaWeapon] == 300)
      {
         _root.save.inventorySpeed[_root.save.arenaWeapon] += 3;
         _root.save.inventoryDesc[_root.save.arenaWeapon] = "Congratulations! You have mastered the pirate language (for this particular sword, at least), and as a result, you can attack twice as fast with this Pirate Sword equipped!";
      }
      if(_root.save.inventoryAttack[_root.save.arenaWeapon] > 0)
      {
         statToGain = 4 + random(3);
         _root.save.inventoryAttack[_root.save.arenaWeapon] += statToGain;
         _root.save.inventoryBonusPow[_root.save.arenaWeapon] += statToGain;
         if(_root.save.inventoryLevel[_root.save.arenaWeapon] % 2 == 0)
         {
            _root.save.inventoryDefense[_root.save.arenaWeapon] += 2;
            _root.save.inventoryBonusPow[_root.save.arenaWeapon] += 2;
         }
         if(_root.save.inventoryLevel[_root.save.arenaWeapon] % 3 == 0)
         {
            _root.save.inventoryDexterity[_root.save.arenaWeapon] += 1;
            _root.save.inventoryBonusPow[_root.save.arenaWeapon] += 10;
         }
         if(_root.save.inventoryLevel[_root.save.arenaWeapon] % 4 == 0)
         {
            _root.save.inventoryHealth[_root.save.arenaWeapon] += 1;
            _root.save.inventoryBonusPow[_root.save.arenaWeapon] += 10;
         }
         if(_root.save.inventoryLevel[_root.save.arenaWeapon] % 5 == 0)
         {
            _root.save.inventoryCrit[_root.save.arenaWeapon] += 1;
            _root.save.inventoryBonusPow[_root.save.arenaWeapon] += 10;
         }
      }
      else
      {
         _root.save.inventorySpeed[_root.save.arenaWeapon] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaWeapon] += 10;
         if(_root.save.inventoryLevel[_root.save.arenaWeapon] % 2 == 0)
         {
            _root.save.inventoryDefense[_root.save.arenaWeapon] += 2;
            _root.save.inventoryBonusPow[_root.save.arenaWeapon] += 2;
         }
         if(_root.save.inventoryLevel[_root.save.arenaWeapon] % 3 == 0)
         {
            _root.save.inventoryDexterity[_root.save.arenaWeapon] += 1;
            _root.save.inventoryBonusPow[_root.save.arenaWeapon] += 10;
         }
         if(_root.save.inventoryLevel[_root.save.arenaWeapon] % 4 == 0)
         {
            _root.save.inventoryHealth[_root.save.arenaWeapon] += 1;
            _root.save.inventoryBonusPow[_root.save.arenaWeapon] += 10;
         }
         if(_root.save.inventoryLevel[_root.save.arenaWeapon] % 5 == 0)
         {
            _root.save.inventoryCrit[_root.save.arenaWeapon] += 1;
            _root.save.inventoryBonusPow[_root.save.arenaWeapon] += 10;
         }
      }
      _root.dispNews(62,"Item Level Up! [" + _root.save.inventoryName[_root.save.arenaWeapon] + "] is now Level " + _root.save.inventoryLevel[_root.save.arenaWeapon] + ".");
   }
   if(_root.save.inventoryExp[_root.save.arenaHat] >= _root.save.inventoryExpTNL[_root.save.arenaHat] && _root.save.inventoryLevel[_root.save.arenaHat] < _root.save.inventoryMaxLevel[_root.save.arenaHat])
   {
      _root.save.inventoryExp[_root.save.arenaHat] = 0;
      _root.save.inventoryLevel[_root.save.arenaHat] += 1;
      statToGain = 2 + random(2);
      _root.save.inventoryDefense[_root.save.arenaHat] += statToGain;
      _root.save.inventoryBonusPow[_root.save.arenaHat] += statToGain;
      if(_root.save.inventoryLevel[_root.save.arenaHat] % 2 == 0)
      {
         _root.save.inventoryAttack[_root.save.arenaHat] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaHat] += 4;
      }
      if(_root.save.inventoryLevel[_root.save.arenaHat] % 3 == 0)
      {
         _root.save.inventoryDexterity[_root.save.arenaHat] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaHat] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaHat] % 4 == 0)
      {
         _root.save.inventoryHealth[_root.save.arenaHat] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaHat] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaHat] % 5 == 0)
      {
         _root.save.inventoryCrit[_root.save.arenaHat] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaHat] += 10;
      }
      _root.dispNews(62,"Item Level Up! [" + _root.save.inventoryName[_root.save.arenaHat] + "] is now Level " + _root.save.inventoryLevel[_root.save.arenaHat] + ".");
   }
   if(_root.save.inventoryExp[_root.save.arenaShirt] >= _root.save.inventoryExpTNL[_root.save.arenaShirt] && _root.save.inventoryLevel[_root.save.arenaShirt] < _root.save.inventoryMaxLevel[_root.save.arenaShirt])
   {
      _root.save.inventoryExp[_root.save.arenaShirt] = 0;
      _root.save.inventoryLevel[_root.save.arenaShirt] += 1;
      statToGain = 2 + random(2);
      _root.save.inventoryDefense[_root.save.arenaShirt] += statToGain;
      _root.save.inventoryBonusPow[_root.save.arenaShirt] += statToGain;
      if(_root.save.inventoryLevel[_root.save.arenaShirt] % 2 == 0)
      {
         _root.save.inventoryAttack[_root.save.arenaShirt] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaShirt] += 4;
      }
      if(_root.save.inventoryLevel[_root.save.arenaShirt] % 3 == 0)
      {
         _root.save.inventoryDexterity[_root.save.arenaShirt] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaShirt] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaShirt] % 4 == 0)
      {
         _root.save.inventoryHealth[_root.save.arenaShirt] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaShirt] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaShirt] % 5 == 0)
      {
         _root.save.inventoryCrit[_root.save.arenaShirt] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaShirt] += 10;
      }
      _root.dispNews(62,"Item Level Up! [" + _root.save.inventoryName[_root.save.arenaShirt] + "] is now Level " + _root.save.inventoryLevel[_root.save.arenaShirt] + ".");
   }
   if(_root.save.inventoryExp[_root.save.arenaGloves] >= _root.save.inventoryExpTNL[_root.save.arenaGloves] && _root.save.inventoryLevel[_root.save.arenaGloves] < _root.save.inventoryMaxLevel[_root.save.arenaGloves])
   {
      _root.save.inventoryExp[_root.save.arenaGloves] = 0;
      _root.save.inventoryLevel[_root.save.arenaGloves] += 1;
      if(_root.save.inventoryFrame[_root.save.arenaGloves] >= 141 && _root.save.inventoryFrame[_root.save.arenaGloves] <= 145)
      {
         _root.save.inventoryFrame[_root.save.arenaGloves] -= 1;
         _root.save.inventorySpeed[_root.save.arenaGloves] += 2;
         _root.save.inventoryBonusPow[_root.save.arenaGloves] += 80;
         if(_root.save.inventoryFrame[_root.save.arenaGloves] == 140)
         {
            _root.save.inventoryName[_root.save.arenaGloves] = "Fairy Godmother Gloves";
            _root.save.inventorySet[_root.save.arenaGloves] = _root.checkArenaSet("Fairy Godmother Gloves");
            _root.save.inventoryNoFuse[_root.save.arenaGloves] = false;
            _root.save.inventoryEnhance[_root.save.arenaGloves] = -2;
            _root.save.inventoryAttack[_root.save.arenaGloves] += 60;
            _root.save.inventorySpeed[_root.save.arenaGloves] += 4;
            _root.save.inventoryDefense[_root.save.arenaGloves] += 160;
            _root.save.inventoryCrit[_root.save.arenaGloves] += 20;
            _root.save.inventoryDexterity[_root.save.arenaGloves] += 20;
            _root.save.inventoryHealth[_root.save.arenaGloves] += 20;
            _root.save.inventoryBonusPow[_root.save.arenaGloves] += 1320;
         }
         _root.toCheck = true;
         _root.gCheck = true;
      }
      if(_root.save.inventoryFrame[_root.save.arenaGloves] >= 153 && _root.save.inventoryFrame[_root.save.arenaGloves] <= 154)
      {
         _root.save.inventoryFrame[_root.save.arenaGloves] -= 1;
         _root.save.inventoryAttack[_root.save.arenaGloves] += 50;
         _root.save.inventoryBonusPow[_root.save.arenaGloves] += 200;
         if(_root.save.inventoryFrame[_root.save.arenaGloves] == 152)
         {
            _root.save.inventoryName[_root.save.arenaGloves] = "CHAOS GLOVES";
            _root.save.inventorySet[_root.save.arenaGloves] = _root.checkArenaSet("CHAOS GLOVES");
            _root.save.inventoryNoFuse[_root.save.arenaGloves] = false;
            _root.save.inventoryEnhance[_root.save.arenaGloves] = 0;
            _root.save.inventoryAttack[_root.save.arenaGloves] += 100;
            _root.save.inventoryCrit[_root.save.arenaGloves] += 50;
            _root.save.inventoryHealth[_root.save.arenaGloves] += 50;
            _root.save.inventoryBonusPow[_root.save.arenaGloves] += 1400;
         }
         _root.toCheck = true;
         _root.gCheck = true;
      }
      else
      {
         statToGain = 2 + random(2);
         _root.save.inventoryDefense[_root.save.arenaGloves] += statToGain;
         _root.save.inventoryBonusPow[_root.save.arenaGloves] += statToGain;
         if(_root.save.inventoryLevel[_root.save.arenaGloves] % 2 == 0)
         {
            _root.save.inventoryAttack[_root.save.arenaGloves] += 1;
            _root.save.inventoryBonusPow[_root.save.arenaGloves] += 4;
         }
         if(_root.save.inventoryLevel[_root.save.arenaGloves] % 3 == 0)
         {
            _root.save.inventoryDexterity[_root.save.arenaGloves] += 1;
            _root.save.inventoryBonusPow[_root.save.arenaGloves] += 10;
         }
         if(_root.save.inventoryLevel[_root.save.arenaGloves] % 4 == 0)
         {
            _root.save.inventoryHealth[_root.save.arenaGloves] += 1;
            _root.save.inventoryBonusPow[_root.save.arenaGloves] += 10;
         }
         if(_root.save.inventoryLevel[_root.save.arenaGloves] % 5 == 0)
         {
            _root.save.inventoryCrit[_root.save.arenaGloves] += 1;
            _root.save.inventoryBonusPow[_root.save.arenaGloves] += 10;
         }
      }
      _root.dispNews(62,"Item Level Up! [" + _root.save.inventoryName[_root.save.arenaGloves] + "] is now Level " + _root.save.inventoryLevel[_root.save.arenaGloves] + ".");
   }
   if(_root.save.inventoryExp[_root.save.arenaPants] >= _root.save.inventoryExpTNL[_root.save.arenaPants] && _root.save.inventoryLevel[_root.save.arenaPants] < _root.save.inventoryMaxLevel[_root.save.arenaPants])
   {
      _root.save.inventoryExp[_root.save.arenaPants] = 0;
      _root.save.inventoryLevel[_root.save.arenaPants] += 1;
      statToGain = 2 + random(2);
      _root.save.inventoryDefense[_root.save.arenaPants] += statToGain;
      _root.save.inventoryBonusPow[_root.save.arenaPants] += statToGain;
      if(_root.save.inventoryLevel[_root.save.arenaPants] % 2 == 0)
      {
         _root.save.inventoryAttack[_root.save.arenaPants] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaPants] += 4;
      }
      if(_root.save.inventoryLevel[_root.save.arenaPants] % 3 == 0)
      {
         _root.save.inventoryDexterity[_root.save.arenaPants] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaPants] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaPants] % 4 == 0)
      {
         _root.save.inventoryHealth[_root.save.arenaPants] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaPants] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaPants] % 5 == 0)
      {
         _root.save.inventoryCrit[_root.save.arenaPants] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaPants] += 10;
      }
      _root.dispNews(62,"Item Level Up! [" + _root.save.inventoryName[_root.save.arenaPants] + "] is now Level " + _root.save.inventoryLevel[_root.save.arenaPants] + ".");
   }
   if(_root.save.inventoryExp[_root.save.arenaShoes] >= _root.save.inventoryExpTNL[_root.save.arenaShoes] && _root.save.inventoryLevel[_root.save.arenaShoes] < _root.save.inventoryMaxLevel[_root.save.arenaShoes])
   {
      _root.save.inventoryExp[_root.save.arenaShoes] = 0;
      _root.save.inventoryLevel[_root.save.arenaShoes] += 1;
      statToGain = 2 + random(2);
      _root.save.inventoryDefense[_root.save.arenaShoes] += statToGain;
      _root.save.inventoryBonusPow[_root.save.arenaShoes] += statToGain;
      if(_root.save.inventoryLevel[_root.save.arenaShoes] % 2 == 0)
      {
         _root.save.inventoryAttack[_root.save.arenaShoes] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaShoes] += 4;
      }
      if(_root.save.inventoryLevel[_root.save.arenaShoes] % 3 == 0)
      {
         _root.save.inventoryDexterity[_root.save.arenaShoes] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaShoes] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaShoes] % 4 == 0)
      {
         _root.save.inventoryHealth[_root.save.arenaShoes] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaShoes] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaShoes] % 5 == 0)
      {
         _root.save.inventoryCrit[_root.save.arenaShoes] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaShoes] += 10;
      }
      _root.dispNews(62,"Item Level Up! [" + _root.save.inventoryName[_root.save.arenaShoes] + "] is now Level " + _root.save.inventoryLevel[_root.save.arenaShoes] + ".");
   }
   if(_root.save.inventoryExp[_root.save.arenaSkin] >= _root.save.inventoryExpTNL[_root.save.arenaSkin] && _root.save.inventoryLevel[_root.save.arenaSkin] < _root.save.inventoryMaxLevel[_root.save.arenaSkin])
   {
      _root.save.inventoryExp[_root.save.arenaSkin] = 0;
      _root.save.inventoryLevel[_root.save.arenaSkin] += 1;
      statToGain = 2 + random(2);
      _root.save.inventoryDefense[_root.save.arenaSkin] += statToGain;
      _root.save.inventoryBonusPow[_root.save.arenaSkin] += statToGain;
      if(_root.save.inventoryLevel[_root.save.arenaSkin] % 2 == 0)
      {
         _root.save.inventoryAttack[_root.save.arenaSkin] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaSkin] += 4;
      }
      if(_root.save.inventoryLevel[_root.save.arenaSkin] % 3 == 0)
      {
         _root.save.inventoryDexterity[_root.save.arenaSkin] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaSkin] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaSkin] % 4 == 0)
      {
         _root.save.inventoryHealth[_root.save.arenaSkin] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaSkin] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaSkin] % 5 == 0)
      {
         _root.save.inventoryCrit[_root.save.arenaSkin] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaSkin] += 10;
      }
      _root.dispNews(62,"Item Level Up! [" + _root.save.inventoryName[_root.save.arenaSkin] + "] is now Level " + _root.save.inventoryLevel[_root.save.arenaSkin] + ".");
   }
   if(_root.save.inventoryExp[_root.save.arenaMedal] >= _root.save.inventoryExpTNL[_root.save.arenaMedal] && _root.save.inventoryLevel[_root.save.arenaMedal] < _root.save.inventoryMaxLevel[_root.save.arenaMedal])
   {
      _root.save.inventoryExp[_root.save.arenaMedal] = 0;
      _root.save.inventoryLevel[_root.save.arenaMedal] += 1;
      _root.save.inventoryReqRank[_root.save.arenaMedal] = Math.round(_root.save.inventoryReqRank[_root.save.arenaMedal] / 10 + 1) * 10;
      if(_root.save.inventoryReqRank[_root.save.arenaMedal] > 500)
      {
         _root.save.inventoryReqRank[_root.save.arenaMedal] = 500;
      }
      _root.save.inventoryCrit[_root.save.arenaMedal] += 5;
      _root.save.inventoryDexterity[_root.save.arenaMedal] += 5;
      _root.save.inventoryHealth[_root.save.arenaMedal] += 5;
      _root.save.inventoryBonusPow[_root.save.arenaMedal] += 150;
      _root.dispNews(62,"Item Level Up! [" + _root.save.inventoryName[_root.save.arenaMedal] + "] is now Level " + _root.save.inventoryLevel[_root.save.arenaMedal] + ".");
   }
   if(_root.save.inventoryExp[_root.save.arenaPendant] >= _root.save.inventoryExpTNL[_root.save.arenaPendant] && _root.save.inventoryLevel[_root.save.arenaPendant] < _root.save.inventoryMaxLevel[_root.save.arenaPendant])
   {
      _root.save.inventoryExp[_root.save.arenaPendant] = 0;
      _root.save.inventoryLevel[_root.save.arenaPendant] += 1;
      statToGain = 2 + random(2);
      _root.save.inventoryDefense[_root.save.arenaPendant] += statToGain;
      _root.save.inventoryBonusPow[_root.save.arenaPendant] += statToGain;
      if(_root.save.inventoryLevel[_root.save.arenaPendant] % 2 == 0)
      {
         _root.save.inventoryAttack[_root.save.arenaPendant] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaPendant] += 4;
      }
      if(_root.save.inventoryLevel[_root.save.arenaPendant] % 3 == 0)
      {
         _root.save.inventoryDexterity[_root.save.arenaPendant] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaPendant] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaPendant] % 4 == 0)
      {
         _root.save.inventoryHealth[_root.save.arenaPendant] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaPendant] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaPendant] % 5 == 0)
      {
         _root.save.inventoryCrit[_root.save.arenaPendant] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaPendant] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaPendant] % 6 == 0)
      {
         _root.save.inventorySpeed[_root.save.arenaPendant] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaPendant] += 40;
      }
      _root.dispNews(62,"Item Level Up! [" + _root.save.inventoryName[_root.save.arenaPendant] + "] is now Level " + _root.save.inventoryLevel[_root.save.arenaPendant] + ".");
   }
   if(_root.save.inventoryExp[_root.save.arenaEarring] >= _root.save.inventoryExpTNL[_root.save.arenaEarring] && _root.save.inventoryLevel[_root.save.arenaEarring] < _root.save.inventoryMaxLevel[_root.save.arenaEarring])
   {
      _root.save.inventoryExp[_root.save.arenaEarring] = 0;
      _root.save.inventoryLevel[_root.save.arenaEarring] += 1;
      statToGain = 2 + random(2);
      _root.save.inventoryDefense[_root.save.arenaEarring] += statToGain;
      _root.save.inventoryBonusPow[_root.save.arenaEarring] += statToGain;
      if(_root.save.inventoryLevel[_root.save.arenaEarring] % 2 == 0)
      {
         _root.save.inventoryAttack[_root.save.arenaEarring] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaEarring] += 4;
      }
      if(_root.save.inventoryLevel[_root.save.arenaEarring] % 3 == 0)
      {
         _root.save.inventoryDexterity[_root.save.arenaEarring] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaEarring] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaEarring] % 4 == 0)
      {
         _root.save.inventoryHealth[_root.save.arenaEarring] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaEarring] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaEarring] % 5 == 0)
      {
         _root.save.inventoryCrit[_root.save.arenaEarring] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaEarring] += 10;
      }
      if(_root.save.inventoryLevel[_root.save.arenaEarring] % 6 == 0)
      {
         _root.save.inventorySpeed[_root.save.arenaEarring] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaEarring] += 40;
      }
      _root.dispNews(62,"Item Level Up! [" + _root.save.inventoryName[_root.save.arenaEarring] + "] is now Level " + _root.save.inventoryLevel[_root.save.arenaEarring] + ".");
   }
   if(_root.save.inventoryExp[_root.save.arenaTrinket] >= _root.save.inventoryExpTNL[_root.save.arenaTrinket] && _root.save.inventoryLevel[_root.save.arenaTrinket] < _root.save.inventoryMaxLevel[_root.save.arenaTrinket])
   {
      _root.save.inventoryExp[_root.save.arenaTrinket] = 0;
      _root.save.inventoryLevel[_root.save.arenaTrinket] += 1;
      if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Constancy")
      {
         if(_root.save.inventoryLevel[_root.save.arenaTrinket] % 10 == 0)
         {
            _root.save.inventoryBonusPow[_root.save.arenaTrinket] += 10;
            _root.save.inventoryUnob[_root.save.arenaTrinket] += 1;
         }
         if(_root.save.inventoryReqRank[_root.save.arenaTrinket] == 500)
         {
            _root.save.inventoryBonusPow[_root.save.arenaTrinket] += 250;
            _root.save.inventoryUnob[_root.save.arenaTrinket] = 60;
         }
         _root.save.inventoryAttack[_root.save.arenaTrinket] += 1;
         _root.save.inventoryDefense[_root.save.arenaTrinket] += 1;
         _root.save.inventoryBonusPow[_root.save.arenaTrinket] += 5;
         if(_root.save.inventoryLevel[_root.save.arenaTrinket] == 500)
         {
            _root.save.inventoryAttack[_root.save.arenaTrinket] = 1000;
            _root.save.inventoryDefense[_root.save.arenaTrinket] = 1000;
            _root.save.inventoryCrit[_root.save.arenaTrinket] = 100;
            _root.save.inventoryDexterity[_root.save.arenaTrinket] = 100;
            _root.save.inventoryHealth[_root.save.arenaTrinket] = 100;
            _root.save.inventoryFrame[_root.save.arenaTrinket] = 8;
            _root.save.inventoryBonusPow[_root.save.arenaTrinket] += 2500;
         }
      }
      else
      {
         if(_root.save.inventoryLevel[_root.save.arenaTrinket] % 10 == 0)
         {
            _root.save.inventoryBonusPow[_root.save.arenaTrinket] += 10;
            _root.save.inventoryUnob[_root.save.arenaTrinket] += 1;
         }
         if(_root.save.inventoryReqRank[_root.save.arenaTrinket] == 500)
         {
            _root.save.inventoryBonusPow[_root.save.arenaTrinket] += 250;
            _root.save.inventoryUnob[_root.save.arenaTrinket] = 60;
         }
      }
      _root.dispNews(62,"Item Level Up! [" + _root.save.inventoryName[_root.save.arenaTrinket] + "] is now Level " + _root.save.inventoryLevel[_root.save.arenaTrinket] + ".");
   }
}
function checkItemExpiration()
{
   if(_root.save.inventoryExpiry[_root.save.arenaHat] < _root.systemtimenow)
   {
      _root.save.arenaHat = 0;
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.dispNews(63,"Hat expired!");
   }
   if(_root.save.inventoryExpiry[_root.save.arenaShirt] < _root.systemtimenow)
   {
      _root.save.arenaShirt = 0;
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.dispNews(63,"Shirt expired!");
   }
   if(_root.save.inventoryExpiry[_root.save.arenaGloves] < _root.systemtimenow)
   {
      _root.save.arenaGloves = 0;
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.dispNews(63,"Gloves expired!");
   }
   if(_root.save.inventoryExpiry[_root.save.arenaPants] < _root.systemtimenow)
   {
      _root.save.arenaPants = 0;
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.dispNews(63,"Pants expired!");
   }
   if(_root.save.inventoryExpiry[_root.save.arenaShoes] < _root.systemtimenow)
   {
      _root.save.arenaShoes = 0;
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.dispNews(63,"Shoes expired!");
   }
   if(_root.save.inventoryExpiry[_root.save.arenaSkin] < _root.systemtimenow)
   {
      _root.save.arenaSkin = 0;
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.dispNews(63,"Skin expired!");
   }
   if(_root.save.inventoryExpiry[_root.save.arenaWeapon] < _root.systemtimenow)
   {
      _root.save.arenaWeapon = 0;
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.dispNews(63,"Weapon expired!");
   }
   if(_root.save.inventoryExpiry[_root.save.arenaSubWeapon] < _root.systemtimenow)
   {
      _root.save.arenaSubWeapon = 0;
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.dispNews(63,"Secondary Weapon expired!");
   }
   if(_root.save.inventoryExpiry[_root.save.arenaMedal] < _root.systemtimenow)
   {
      _root.save.arenaMedal = 0;
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.dispNews(63,"Medal expired!");
   }
   if(_root.save.inventoryExpiry[_root.save.arenaPendant] < _root.systemtimenow)
   {
      _root.save.arenaPendant = 0;
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.dispNews(63,"Pendant expired!");
   }
   if(_root.save.inventoryExpiry[_root.save.arenaEarring] < _root.systemtimenow)
   {
      _root.save.arenaEarring = 0;
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.dispNews(63,"Earring expired!");
   }
   if(_root.save.inventoryExpiry[_root.save.arenaTrinket] < _root.systemtimenow)
   {
      _root.save.arenaTrinket = 0;
      _root.checkSetBonus();
      _root.gCheck = true;
      _root.dispNews(63,"Trinket expired!");
   }
}
function checkBonuses()
{
   itemTier = new Array();
   itemBonus = new Array();
   itemAbility = new Array();
   itemMoreBonus = new Array();
   itemTier[1] = Math.ceil(_root.save.inventoryReqRank[_root.save.arenaWeapon] / 10);
   itemTier[2] = Math.ceil(_root.save.inventoryReqRank[_root.save.arenaHat] / 10);
   itemTier[3] = Math.ceil(_root.save.inventoryReqRank[_root.save.arenaShirt] / 10);
   itemTier[4] = Math.ceil(_root.save.inventoryReqRank[_root.save.arenaGloves] / 10);
   itemTier[5] = Math.ceil(_root.save.inventoryReqRank[_root.save.arenaPants] / 10);
   itemTier[6] = Math.ceil(_root.save.inventoryReqRank[_root.save.arenaShoes] / 10);
   itemTier[7] = Math.ceil(_root.save.inventoryReqRank[_root.save.arenaMedal] / 10);
   itemTier[8] = Math.ceil(_root.save.inventoryReqRank[_root.save.arenaPendant] / 10);
   itemTier[9] = Math.ceil(_root.save.inventoryReqRank[_root.save.arenaEarring] / 10);
   itemTier[10] = Math.ceil(_root.save.inventoryReqRank[_root.save.arenaTrinket] / 10);
   itemTier[11] = Math.ceil(_root.save.inventoryReqRank[_root.save.arenaSkin] / 10);
   itemTier[12] = Math.ceil(_root.save.inventoryReqRank[_root.save.arenaSubWeapon] / 10);
   itemTier[13] = Math.ceil(_root.save.inventoryReqRank[400] / 10);
   itemTier[1] += Math.ceil(_root.save.inventoryUnob[_root.save.arenaWeapon]);
   itemTier[2] += Math.ceil(_root.save.inventoryUnob[_root.save.arenaHat]);
   itemTier[3] += Math.ceil(_root.save.inventoryUnob[_root.save.arenaShirt]);
   itemTier[4] += Math.ceil(_root.save.inventoryUnob[_root.save.arenaGloves]);
   itemTier[5] += Math.ceil(_root.save.inventoryUnob[_root.save.arenaPants]);
   itemTier[6] += Math.ceil(_root.save.inventoryUnob[_root.save.arenaShoes]);
   itemTier[7] += Math.ceil(_root.save.inventoryUnob[_root.save.arenaMedal]);
   itemTier[8] += Math.ceil(_root.save.inventoryUnob[_root.save.arenaPendant]);
   itemTier[9] += Math.ceil(_root.save.inventoryUnob[_root.save.arenaEarring]);
   itemTier[10] += Math.ceil(_root.save.inventoryUnob[_root.save.arenaTrinket]);
   itemTier[11] += Math.ceil(_root.save.inventoryUnob[_root.save.arenaSkin]);
   itemTier[12] += Math.ceil(_root.save.inventoryUnob[_root.save.arenaSubWeapon]);
   itemTier[13] += Math.ceil(_root.save.inventoryUnob[400]);
   var _loc2_ = 1;
   while(_loc2_ <= 13)
   {
      if(_loc2_ == 1 && _root.save.arenaSkill[59] > 0)
      {
         itemTier[_loc2_] += Math.floor(_root.save.arenaSkill[59] / 5);
      }
      if(_loc2_ == 12 && _root.save.arenaSkill[59] > 0)
      {
         itemTier[_loc2_] += Math.floor(_root.save.arenaSkill[59] / 5);
      }
      if(_loc2_ == 13 && _root.save.arenaSkill[59] > 0)
      {
         itemTier[_loc2_] += Math.floor(_root.save.arenaSkill[59] / 5);
      }
      if(isNaN(itemTier[_loc2_]))
      {
         itemTier[_loc2_] = 0;
      }
      if(_root.save.arenaZone >= 70 && _root.save.arenaZone <= 77)
      {
         itemTier[_loc2_] = 0;
      }
      if(_root.save.arenaZone == 82)
      {
         if(_root.save.arenaEvent == 1)
         {
            itemTier[_loc2_] = 0;
         }
      }
      _loc2_ += 1;
   }
   itemBonus[1] = _root.save.inventoryBonus[_root.save.arenaWeapon];
   itemBonus[2] = _root.save.inventoryBonus[_root.save.arenaHat];
   itemBonus[3] = _root.save.inventoryBonus[_root.save.arenaShirt];
   itemBonus[4] = _root.save.inventoryBonus[_root.save.arenaGloves];
   itemBonus[5] = _root.save.inventoryBonus[_root.save.arenaPants];
   itemBonus[6] = _root.save.inventoryBonus[_root.save.arenaShoes];
   itemBonus[7] = _root.save.inventoryBonus[_root.save.arenaMedal];
   itemBonus[8] = _root.save.inventoryBonus[_root.save.arenaPendant];
   itemBonus[9] = _root.save.inventoryBonus[_root.save.arenaEarring];
   itemBonus[10] = _root.save.inventoryBonus[_root.save.arenaTrinket];
   itemBonus[11] = _root.save.inventoryBonus[_root.save.arenaSkin];
   itemBonus[12] = _root.save.inventoryBonus[_root.save.arenaSubWeapon];
   itemBonus[13] = _root.save.inventoryBonus[400];
   itemAbility[1] = _root.save.inventoryAbility[_root.save.arenaWeapon];
   itemAbility[2] = _root.save.inventoryAbility[_root.save.arenaHat];
   itemAbility[3] = _root.save.inventoryAbility[_root.save.arenaShirt];
   itemAbility[4] = _root.save.inventoryAbility[_root.save.arenaGloves];
   itemAbility[5] = _root.save.inventoryAbility[_root.save.arenaPants];
   itemAbility[6] = _root.save.inventoryAbility[_root.save.arenaShoes];
   itemAbility[7] = _root.save.inventoryAbility[_root.save.arenaMedal];
   itemAbility[8] = _root.save.inventoryAbility[_root.save.arenaPendant];
   itemAbility[9] = _root.save.inventoryAbility[_root.save.arenaEarring];
   itemAbility[10] = _root.save.inventoryAbility[_root.save.arenaTrinket];
   itemAbility[11] = _root.save.inventoryAbility[_root.save.arenaSkin];
   itemAbility[12] = _root.save.inventoryAbility[_root.save.arenaSubWeapon];
   itemAbility[13] = _root.save.inventoryAbility[400];
   itemMoreBonus[1] = _root.save.inventoryMoreBonus[_root.save.arenaWeapon];
   itemMoreBonus[2] = _root.save.inventoryMoreBonus[_root.save.arenaHat];
   itemMoreBonus[3] = _root.save.inventoryMoreBonus[_root.save.arenaShirt];
   itemMoreBonus[4] = _root.save.inventoryMoreBonus[_root.save.arenaGloves];
   itemMoreBonus[5] = _root.save.inventoryMoreBonus[_root.save.arenaPants];
   itemMoreBonus[6] = _root.save.inventoryMoreBonus[_root.save.arenaShoes];
   itemMoreBonus[7] = _root.save.inventoryMoreBonus[_root.save.arenaMedal];
   itemMoreBonus[8] = _root.save.inventoryMoreBonus[_root.save.arenaPendant];
   itemMoreBonus[9] = _root.save.inventoryMoreBonus[_root.save.arenaEarring];
   itemMoreBonus[10] = _root.save.inventoryMoreBonus[_root.save.arenaTrinket];
   itemMoreBonus[11] = _root.save.inventoryMoreBonus[_root.save.arenaSkin];
   itemMoreBonus[12] = _root.save.inventoryMoreBonus[_root.save.arenaSubWeapon];
   itemMoreBonus[13] = _root.save.inventoryMoreBonus[400];
   TMI = 12;
   if(_root.robaconActive == true)
   {
      TMI = 13;
   }
   var _loc3_ = 1;
   while(_loc3_ <= TMI)
   {
      if(itemMoreBonus[_loc3_] == "Equipment Attack")
      {
         _root.abilIncEquipAttack += Math.ceil(0.15 * itemTier[_loc3_] * itemTier[_loc3_]);
      }
      else if(itemMoreBonus[_loc3_] == "Equipment Defense")
      {
         _root.abilIncEquipDefense += Math.ceil(1 * itemTier[_loc3_] * itemTier[_loc3_]);
      }
      else if(itemMoreBonus[_loc3_] == "Attack Power")
      {
         _root.abilIncAttack += Math.ceil(4 * itemTier[_loc3_] * itemTier[_loc3_]);
      }
      else if(itemMoreBonus[_loc3_] == "Defense Power")
      {
         _root.abilIncDefense += Math.ceil(8 * itemTier[_loc3_] * itemTier[_loc3_]);
      }
      else if(itemMoreBonus[_loc3_] == "MaxHP")
      {
         _root.abilIncHP += Math.ceil(250 * itemTier[_loc3_] * itemTier[_loc3_]);
      }
      else if(itemMoreBonus[_loc3_] == "MaxMP")
      {
         _root.abilIncMP += Math.ceil(100 * itemTier[_loc3_] * itemTier[_loc3_]);
      }
      else if(itemMoreBonus[_loc3_] == "Accuracy")
      {
         _root.abilIncAccuracy += Math.ceil(4 * itemTier[_loc3_] * itemTier[_loc3_]);
      }
      else if(itemMoreBonus[_loc3_] == "Evasion")
      {
         _root.abilIncEvasion += Math.ceil(8 * itemTier[_loc3_] * itemTier[_loc3_]);
      }
      else if(itemMoreBonus[_loc3_] == "EXP / Boss Kill")
      {
         _root.abilIncExpBoss += Math.ceil(2 * itemTier[_loc3_] * itemTier[_loc3_]);
      }
      else if(itemMoreBonus[_loc3_] == "EXP / Rare Kill")
      {
         _root.abilIncExpRare += Math.ceil(2 * itemTier[_loc3_] * itemTier[_loc3_]);
      }
      else if(itemMoreBonus[_loc3_] == "EXP / Epic Kill")
      {
         _root.abilIncExpEpic += Math.ceil(10 * itemTier[_loc3_] * itemTier[_loc3_]);
      }
      if(_loc3_ == 1 && _root.spiritUnleash > 0)
      {
         itemTier[1] += 10;
      }
      if(itemBonus[_loc3_] == "Reward")
      {
         _root.abilExp += Math.ceil(itemTier[_loc3_] * 0.25);
         _root.abilCoin += Math.ceil(itemTier[_loc3_] * 0.5);
         _root.abilPixel += Math.ceil(itemTier[_loc3_] * 0.5);
      }
      else if(itemBonus[_loc3_] == "EXP")
      {
         _root.abilExp += Math.ceil(itemTier[_loc3_] * 0.5);
      }
      else if(itemBonus[_loc3_] == "Coin")
      {
         _root.abilCoin += itemTier[_loc3_] * 1;
      }
      else if(itemBonus[_loc3_] == "Pixel")
      {
         _root.abilPixel += itemTier[_loc3_] * 1;
      }
      else if(itemBonus[_loc3_] == "Drop Rate")
      {
         _root.abilDropRate += itemTier[_loc3_] * 1;
      }
      else if(itemBonus[_loc3_] == "Spawn Rate")
      {
         _root.abilSpawnRate += Math.ceil(itemTier[_loc3_] * 0.2);
      }
      else if(itemBonus[_loc3_] == "Rare Monster Rate")
      {
         _root.abilRareRate += Math.ceil(itemTier[_loc3_] * 2.5);
      }
      else if(itemBonus[_loc3_] == "Epic Monster Rate")
      {
         _root.abilEpicRate += Math.ceil(itemTier[_loc3_] * 2.5);
      }
      else if(itemBonus[_loc3_] == "Fire Element")
      {
         _root.abilResistFire += itemTier[_loc3_] * 1;
         _root.abilPwnIce += itemTier[_loc3_] * 1;
      }
      else if(itemBonus[_loc3_] == "Ice Element")
      {
         _root.abilResistIce += itemTier[_loc3_] * 1;
         _root.abilPwnWind += itemTier[_loc3_] * 1;
      }
      else if(itemBonus[_loc3_] == "Wind Element")
      {
         _root.abilResistWind += itemTier[_loc3_] * 1;
         _root.abilPwnEarth += itemTier[_loc3_] * 1;
      }
      else if(itemBonus[_loc3_] == "Earth Element")
      {
         _root.abilResistEarth += itemTier[_loc3_] * 1;
         _root.abilPwnThunder += itemTier[_loc3_] * 1;
      }
      else if(itemBonus[_loc3_] == "Thunder Element")
      {
         _root.abilResistThunder += itemTier[_loc3_] * 1;
         _root.abilPwnWater += itemTier[_loc3_] * 1;
      }
      else if(itemBonus[_loc3_] == "Water Element")
      {
         _root.abilResistWater += itemTier[_loc3_] * 1;
         _root.abilPwnFire += itemTier[_loc3_] * 1;
      }
      else if(itemBonus[_loc3_] == "Light Element")
      {
         _root.abilResistLight += itemTier[_loc3_] * 1;
         _root.abilPwnDark += itemTier[_loc3_] * 1;
      }
      else if(itemBonus[_loc3_] == "Dark Element")
      {
         _root.abilResistDark += itemTier[_loc3_] * 1;
         _root.abilPwnLight += itemTier[_loc3_] * 1;
      }
      else if(itemBonus[_loc3_] == "Ignore Epic Weapons")
      {
         _root.abilIgnoreEpicWeapon += itemTier[_loc3_] * 50000;
      }
      else if(itemBonus[_loc3_] == "Ignore Bonus Rocks")
      {
         _root.abilIgnoreBonusRock += itemTier[_loc3_] * 5000;
      }
      else if(itemBonus[_loc3_] == "Ignore Pendants")
      {
         _root.abilIgnorePendant += itemTier[_loc3_] * 5000;
      }
      else if(itemBonus[_loc3_] == "Ignore Finalizers")
      {
         _root.abilIgnoreFinalizer += itemTier[_loc3_] * 25000;
      }
      else if(itemBonus[_loc3_] == "Ignore Outfit Items")
      {
         _root.abilIgnoreOutfit += itemTier[_loc3_] * 25000;
      }
      if(itemAbility[_loc3_] == "Attack")
      {
         _root.abilAttack += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Attack Speed")
      {
         _root.abilAttackSpeed += itemTier[_loc3_] * 2;
      }
      else if(itemAbility[_loc3_] == "Ignore Defense")
      {
         _root.abilIgnoreDefense += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Mastery")
      {
         _root.abilMastery += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Critical Chance")
      {
         _root.abilCriticalChance += Math.ceil(itemTier[_loc3_] * 1.5);
      }
      else if(itemAbility[_loc3_] == "Critical Damage")
      {
         _root.abilCriticalDamage += itemTier[_loc3_] * 3;
      }
      else if(itemAbility[_loc3_] == "Defense")
      {
         _root.abilDefense += itemTier[_loc3_] * 2;
      }
      else if(itemAbility[_loc3_] == "Damage Taken")
      {
         _root.abilDamageTaken += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Reflect")
      {
         _root.abilReflect += itemTier[_loc3_] * 50;
      }
      else if(itemAbility[_loc3_] == "Accuracy")
      {
         _root.abilAccuracy += itemTier[_loc3_] * 2;
      }
      else if(itemAbility[_loc3_] == "Hit Chance")
      {
         _root.abilHitChance += Math.ceil(itemTier[_loc3_] * 0.5);
      }
      else if(itemAbility[_loc3_] == "Evasion")
      {
         _root.abilEvasion += itemTier[_loc3_] * 4;
      }
      else if(itemAbility[_loc3_] == "Dodge Chance")
      {
         _root.abilDodgeChance += Math.ceil(itemTier[_loc3_] * 0.5);
      }
      else if(itemAbility[_loc3_] == "Poison Chance")
      {
         _root.abilPoisonChance += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Weaken Chance")
      {
         _root.abilWeakenChance += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Blind Chance")
      {
         _root.abilBlindChance += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Stun Chance")
      {
         _root.abilStunChance += Math.ceil(itemTier[_loc3_] * 0.5);
      }
      else if(itemAbility[_loc3_] == "Silence Chance")
      {
         _root.abilSilenceChance += itemTier[_loc3_] * 2;
      }
      else if(itemAbility[_loc3_] == "HP")
      {
         _root.abilHP += itemTier[_loc3_] * 5;
      }
      else if(itemAbility[_loc3_] == "MP")
      {
         _root.abilMP += itemTier[_loc3_] * 5;
      }
      else if(itemAbility[_loc3_] == "HP Regen")
      {
         _root.abilHPRegen += itemTier[_loc3_] * 100;
      }
      else if(itemAbility[_loc3_] == "MP Regen")
      {
         _root.abilMPRegen += itemTier[_loc3_] * 50;
      }
      else if(itemAbility[_loc3_] == "Rage Depletion")
      {
         _root.abilRageDepletion += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Drain")
      {
         _root.abilLifeDrain += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Mana Eater")
      {
         _root.abilManaEater += itemTier[_loc3_] * 500;
      }
      else if(itemAbility[_loc3_] == "Autosteal")
      {
         _root.abilAutoSteal += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Double Hit Chance")
      {
         _root.abilDoubleHit += Math.ceil(itemTier[_loc3_] * 2.5);
      }
      else if(itemAbility[_loc3_] == "Rage Attack")
      {
         _root.abilRageAttack += Math.ceil(itemTier[_loc3_] * 1.5);
      }
      else if(itemAbility[_loc3_] == "Rage Speed")
      {
         _root.abilRageSpeed += Math.ceil(itemTier[_loc3_] * 2.5);
      }
      else if(itemAbility[_loc3_] == "Poison Damage")
      {
         _root.abilPoisonDamage += itemTier[_loc3_] * 25;
      }
      else if(itemAbility[_loc3_] == "Weaken Effect")
      {
         _root.abilWeakenEffect += Math.ceil(itemTier[_loc3_] * 0.5);
      }
      else if(itemAbility[_loc3_] == "Blind Effect")
      {
         _root.abilBlindEffect += Math.ceil(itemTier[_loc3_] * 0.5);
      }
      else if(itemAbility[_loc3_] == "Poison Duration")
      {
         _root.abilPoisonDuration += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Weaken Duration")
      {
         _root.abilWeakenDuration += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Blind Duration")
      {
         _root.abilBlindDuration += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Potion Efficiency")
      {
         _root.abilPotionEfficiency += itemTier[_loc3_] * 10;
      }
      else if(itemAbility[_loc3_] == "Boss Damage")
      {
         _root.abilBossDamage += itemTier[_loc3_] * 2;
      }
      else if(itemAbility[_loc3_] == "Magic Resist")
      {
         _root.abilMagicResist += Math.ceil(itemTier[_loc3_] * 1.5);
      }
      else if(itemAbility[_loc3_] == "Instant Kill")
      {
         _root.abilInstantKill += Math.ceil(itemTier[_loc3_] * 0.5);
      }
      else if(itemAbility[_loc3_] == "Negate Effect")
      {
         _root.abilNegateEffect += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Non-Boss Damage")
      {
         _root.abilNonBossDamage += itemTier[_loc3_] * 2;
      }
      else if(itemAbility[_loc3_] == "Damage")
      {
         _root.abilNonBossDamage += Math.ceil(itemTier[_loc3_] * 1.5);
         _root.abilBossDamage += Math.ceil(itemTier[_loc3_] * 1.5);
      }
      else if(itemAbility[_loc3_] == "Extra Combo")
      {
         _root.abilExtraCombo += itemTier[_loc3_] * 1;
      }
      else if(itemAbility[_loc3_] == "Magic Reflect")
      {
         _root.abilMagicReflect += itemTier[_loc3_] * 10;
      }
      else if(itemAbility[_loc3_] == "Nullify Death Penalty")
      {
         _root.abilNullifyPenalty += 100;
      }
      else if(itemAbility[_loc3_] == "Buff Effect")
      {
         _root.abilBuffEffect += Math.ceil(itemTier[_loc3_] * 0.5);
      }
      else if(itemAbility[_loc3_] == "All Elements")
      {
         _root.abilResistFire += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilResistIce += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilResistWind += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilResistEarth += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilResistThunder += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilResistWater += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilResistLight += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilResistDark += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilPwnFire += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilPwnIce += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilPwnWind += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilPwnEarth += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilPwnThunder += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilPwnWater += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilPwnLight += Math.ceil(itemTier[_loc3_] * 1);
         _root.abilPwnDark += Math.ceil(itemTier[_loc3_] * 1);
      }
      else if(itemAbility[_loc3_] == "Max Spirit")
      {
         _root.abilMaxSpirit += itemTier[_loc3_] * 10;
      }
      _loc3_ += 1;
   }
}
function checkRankUpReq()
{
   if(_root.save.arenaLevel >= 1 && _root.save.arenaLevel < 12)
   {
      _root.arenaReqExp = _root.save.arenaLevel * 200;
   }
   else if(_root.save.arenaLevel >= 12 && _root.save.arenaLevel < 30)
   {
      _root.arenaReqExp = Math.ceil(_root.save.arenaLevel * (_root.save.arenaLevel + 1) * 50);
   }
   else if(_root.save.arenaLevel >= 30 && _root.save.arenaLevel < 70)
   {
      _root.arenaReqExp = Math.ceil(_root.save.arenaLevel * (_root.save.arenaLevel + 1) * 70) - 15000;
   }
   else if(_root.save.arenaLevel >= 70 && _root.save.arenaLevel < 120)
   {
      _root.arenaReqExp = Math.ceil(_root.save.arenaLevel * (_root.save.arenaLevel + 1) * 100) - 150000;
   }
   else if(_root.save.arenaLevel >= 120 && _root.save.arenaLevel < 180)
   {
      _root.arenaReqExp = Math.ceil(_root.save.arenaLevel * (_root.save.arenaLevel + 1) * 150) - 500000;
   }
   else if(_root.save.arenaLevel >= 180 && _root.save.arenaLevel < 250)
   {
      _root.arenaReqExp = Math.ceil(_root.save.arenaLevel * (_root.save.arenaLevel + 1) * 250) - 2500000;
   }
   else if(_root.save.arenaLevel >= 250 && _root.save.arenaLevel < 500)
   {
      _root.arenaReqExp = Math.ceil(_root.save.arenaLevel * (_root.save.arenaLevel + 1) * 400) - 10000000;
   }
   else if(_root.save.arenaLevel >= 500)
   {
      _root.arenaReqExp = 100000000;
   }
   if(_root.saveid == 22)
   {
      _root.arenaReqExp = Math.floor(_root.arenaReqExp * 0.5);
   }
   if(_root.save.robaconLevel >= 1 && _root.save.robaconLevel < 30)
   {
      _root.robaconReqExp = Math.ceil(_root.save.robaconLevel * (_root.save.robaconLevel + 1) * 50);
   }
   else if(_root.save.robaconLevel >= 30 && _root.save.robaconLevel < 70)
   {
      _root.robaconReqExp = Math.ceil(_root.save.robaconLevel * (_root.save.robaconLevel + 1) * 70) - 15000;
   }
   else if(_root.save.robaconLevel >= 70 && _root.save.robaconLevel < 120)
   {
      _root.robaconReqExp = Math.ceil(_root.save.robaconLevel * (_root.save.robaconLevel + 1) * 100) - 150000;
   }
   else if(_root.save.robaconLevel >= 120 && _root.save.robaconLevel < 180)
   {
      _root.robaconReqExp = Math.ceil(_root.save.robaconLevel * (_root.save.robaconLevel + 1) * 150) - 500000;
   }
   else if(_root.save.robaconLevel >= 180 && _root.save.robaconLevel < 250)
   {
      _root.robaconReqExp = Math.ceil(_root.save.robaconLevel * (_root.save.robaconLevel + 1) * 250) - 2500000;
   }
   else if(_root.save.robaconLevel >= 250 && _root.save.robaconLevel < 500)
   {
      _root.robaconReqExp = Math.ceil(_root.save.robaconLevel * (_root.save.robaconLevel + 1) * 400) - 10000000;
   }
   else if(_root.save.robaconLevel >= 500)
   {
      _root.robaconReqExp = 99999999;
   }
}
function checkStat()
{
   if(_root.saveid == 24 && _root.save.arenaZone > 13)
   {
      _root.save.arenaZone = 0;
   }
   _root.worstMoon = false;
   _root.apocalypse = false;
   if(_root.save.arenaAlly == 1)
   {
      _root.worstMoon = true;
   }
   if(_root.save.inventoryName[_root.save.arenaTrinket] == "Worst Moon Gem")
   {
      if(_root.worstMoon == true)
      {
         _root.apocalypse = true;
      }
      else
      {
         _root.worstMoon = true;
      }
   }
   if(_root.saveid == 26)
   {
      _root.apocalypse = true;
      _root.worstMoon = true;
   }
   if(_root.save.arenaTurnBased == true && _root.save.autoFight == false && _root.save.inventoryName[_root.save.arenaWeapon] != "Dark Ruler" && _root.save.inventoryName[_root.save.arenaWeapon] != "CHAOS AURA" && _root.save.arenaZone != 24 && _root.save.arenaZone != 34 && _root.save.arenaZone != 35)
   {
      _root.turnBased = true;
   }
   else
   {
      _root.turnBased = false;
   }
   _root.autoExp = 0;
   _root.manaLeech = 0;
   checkMagnet();
   _root.robaconActive = false;
   if(_root.save.inventoryType[400] == "Weapon" && _root.save.inventoryReqRank[400] <= _root.save.robaconLevel && _root.save.robaconBacon > 0 && _root.save.inventoryExpiry[400] >= _root.systemtimenow)
   {
      if(_root.save.arenaZone != 44 && _root.save.arenaZone != 47)
      {
         _root.robaconActive = true;
      }
   }
   _root.spiritCount = 0;
   subFunction1();
   if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 3)
   {
      _root.save.arenaWeapon = 0;
      _root.checkSetBonus();
   }
   if(_root.save.arenaSubWeapon != 0)
   {
      if(_root.save.arenaWeapon == 0)
      {
         _root.save.arenaSubWeapon = 0;
      }
      if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] == 280 || _root.save.inventoryFrame[_root.save.arenaSubWeapon] == 281)
      {
         if(_root.save.inventorySubtype[_root.save.arenaWeapon] != "Bow" && _root.save.inventorySubtype[_root.save.arenaWeapon] != "Crossbow")
         {
            _root.save.arenaSubWeapon = 0;
         }
      }
      if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] == 282)
      {
         if(_root.save.inventorySubtype[_root.save.arenaWeapon] != "Gun")
         {
            _root.save.arenaSubWeapon = 0;
         }
      }
      if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] == 283)
      {
         if(_root.save.inventorySubtype[_root.save.arenaWeapon] != "Claw")
         {
            _root.save.arenaSubWeapon = 0;
         }
      }
      if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] >= 284 && _root.save.inventoryFrame[_root.save.arenaSubWeapon] <= 291)
      {
         if(_root.save.inventoryRange[_root.save.arenaWeapon] == true || _root.save.inventoryName[_root.save.arenaWeapon] == "Ultimate Weapon" || _root.save.inventoryName[_root.save.arenaWeapon] == "Reincarnation Weapon")
         {
            _root.save.arenaSubWeapon = 0;
         }
      }
      if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] >= 351 && _root.save.inventoryFrame[_root.save.arenaSubWeapon] <= 358)
      {
         if(_root.save.inventorySubtype[_root.save.arenaWeapon] != "Wand" && _root.save.inventorySubtype[_root.save.arenaWeapon] != "Staff")
         {
            _root.save.arenaSubWeapon = 0;
         }
      }
      _root.checkSetBonus();
   }
   checkItemLevelUp();
   checkItemExpiration();
   checkBonuses();
   if(_root.specSphere > 0)
   {
      _root.abilResistFire += Math.floor(0.3 * _root.abilResistFire);
      _root.abilResistIce += Math.floor(0.3 * _root.abilResistIce);
      _root.abilResistWind += Math.floor(0.3 * _root.abilResistWind);
      _root.abilResistEarth += Math.floor(0.3 * _root.abilResistEarth);
      _root.abilResistThunder += Math.floor(0.3 * _root.abilResistThunder);
      _root.abilResistWater += Math.floor(0.3 * _root.abilResistWater);
      _root.abilResistLight += Math.floor(0.3 * _root.abilResistLight);
      _root.abilResistDark += Math.floor(0.3 * _root.abilResistDark);
      _root.abilPwnFire += Math.floor(0.3 * _root.abilPwnFire);
      _root.abilPwnIce += Math.floor(0.3 * _root.abilPwnIce);
      _root.abilPwnWind += Math.floor(0.3 * _root.abilPwnWind);
      _root.abilPwnEarth += Math.floor(0.3 * _root.abilPwnEarth);
      _root.abilPwnThunder += Math.floor(0.3 * _root.abilPwnThunder);
      _root.abilPwnWater += Math.floor(0.3 * _root.abilPwnWater);
      _root.abilPwnLight += Math.floor(0.3 * _root.abilPwnLight);
      _root.abilPwnDark += Math.floor(0.3 * _root.abilPwnDark);
   }
   _root.buffMultiplier = (100 + _root.abilBuffEffect + Math.floor(_root.save.arenaSkill[62] * 1)) / 100;
   checkRankUpReq();
   _root.rageDepletion = 100 - Math.floor(_root.save.arenaSkill[31] * 1.5 + _root.abilRageDepletion * 1);
   if(_root.worstMoon == true)
   {
      _root.rageDepletion += 100;
   }
   if(_root.rageDepletion < 10)
   {
      _root.rageDepletion = 10;
   }
   if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Eternal Rage")
   {
      _root.rageDepletion = -50;
   }
   _root.maxHealth = Math.floor((_root.save.arenaMaxHealth + _root.abilIncHP) * (1 + _root.save.arenaSkill[22] * 0.03 + _root.save.arenaSkill[60] * 0.02 + _root.curCareerLevel[3] * 0.001 + (_root.save.inventoryHealth[_root.save.arenaHat] + _root.save.inventoryHealth[_root.save.arenaShirt] + _root.save.inventoryHealth[_root.save.arenaGloves] + _root.save.inventoryHealth[_root.save.arenaPants] + _root.save.inventoryHealth[_root.save.arenaShoes] + _root.save.inventoryHealth[_root.save.arenaSkin] + _root.save.inventoryHealth[_root.save.arenaMedal] + _root.save.inventoryHealth[_root.save.arenaPendant] + _root.save.inventoryHealth[_root.save.arenaEarring] + _root.save.inventoryHealth[_root.save.arenaTrinket]) * 0.01 + _root.abilHP * 0.01 + _root.allyHP * 0.01));
   _root.maxMana = Math.floor((_root.save.arenaMaxMana + _root.abilIncMP) * (1 + _root.save.arenaSkill[25] * 0.05 + _root.curCareerLevel[3] * 0.001 + _root.abilMP * 0.01 + _root.allyMP * 0.01) * (1 + _root.spiritCount * -0.1));
   if(_root.maxMana < 1)
   {
      _root.maxMana = 1;
   }
   if(_root.worstMoon == true)
   {
      _root.maxHealth = Math.floor(Math.pow(_root.maxHealth,0.98));
      _root.maxMana = Math.floor(Math.pow(_root.maxMana,0.98));
   }
   if(_root.apocalypse == true)
   {
      _root.maxHealth = Math.floor(_root.maxHealth * 0.9);
      _root.maxMana = Math.floor(_root.maxMana * 0.9);
   }
   if(_root.saveid == 22 && _root.save.arenaZone <= 13)
   {
      _root.maxHealth = Math.floor(_root.maxHealth * 2);
   }
   if(_root.maxMana < 1)
   {
      _root.maxMana = 1;
   }
   _root.maxSpirit = _root.spiritCount * 250 + _root.save.arenaSkill[25] * 20 + _root.save.arenaSkill[58] * 10 + _root.abilMaxSpirit;
   if(_root.manaPower == true)
   {
      _root.maxSpirit += 50;
   }
   if(_root.apocalypse == true)
   {
      _root.maxSpirit = Math.ceil(_root.maxSpirit * 0.6);
   }
   else if(_root.worstMoon == true)
   {
      _root.maxSpirit = Math.ceil(_root.maxSpirit * 0.8);
   }
   _root.qolManaToGain = 0;
   _root.qolSpiritToGain = 0;
   if(_root.maxHealth > 19999999)
   {
      if(_root.manaPower == true)
      {
         _root.qolManaToGain = Math.floor((_root.maxHealth - 19999999) / 50);
         _root.qolSpiritToGain = Math.floor((_root.maxHealth - 19999999) / 500000);
         _root.maxMana += _root.qolManaToGain;
         _root.maxSpirit += _root.qolSpiritToGain;
      }
      _root.maxHealth = 19999999;
   }
   if(_root.maxMana > 19999999)
   {
      _root.maxMana = 19999999;
   }
   if(_root.specInfinity > 0)
   {
      _root.save.arenaMana = _root.maxMana;
   }
   if(isNaN(_root.maxHealth))
   {
      _root.maxHealth = 100;
   }
   _root.hpRecover = Math.floor((4000 + _root.maxHealth / 25) * (1 + _root.save.arenaSkill[21] * 0.5 + _root.abilHPRegen * 0.01 + _root.save.inventoryHealth[_root.save.arenaWeapon] * 0.25));
   _root.mpRecover = Math.floor((400 + _root.maxMana / 250) * (1 + _root.save.arenaSkill[24] * 0.25 + _root.abilMPRegen * 0.01) * (1 + Math.min(_root.spiritCount,10) * -0.1));
   if(_root.worstMoon == true)
   {
      _root.hpRecover = Math.floor(Math.pow(_root.hpRecover,0.95));
      _root.mpRecover = Math.floor(Math.pow(_root.mpRecover,0.95));
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Dark Ruler")
   {
      _root.mpRecover = Math.floor(1 + _root.save.arenaSkill[24] * 0.4 + _root.abilMPRegen * 0.01);
   }
   if(_root.spiritHeal > 0)
   {
      _root.hpRecover *= 3;
   }
   if(_root.save.arenaZone == 24)
   {
      _root.maxHealth = 200;
      _root.hpRecover = 0;
   }
   if(_root.save.arenaZone >= 30 && _root.save.arenaZone <= 43)
   {
      _root.maxHealth = 9001;
      _root.hpRecover = 100;
   }
   _root.hpRecover = Math.floor(_root.hpRecover / 10) * 10;
   _root.mpRecover = Math.floor(_root.mpRecover / 10) * 10;
   _root.attackPower = Math.floor((_root.save.arenaAttack + _root.abilIncAttack) * (1 + _root.save.arenaSkill[9] * 0.01 + Math.ceil(_root.save.arenaSkill[12] / 2) * 0.01 + _root.curCareerLevel[3] * 0.001 + _root.abilAttack * 0.01 + _root.allyAttack * 0.01));
   tempCombo = Math.floor(_root.arenaCombo / 10);
   if(_root.save.arenaRing == 18)
   {
      if(tempCombo > _root.save.arenaSkill[27] * 2 + 30)
      {
         tempCombo = _root.save.arenaSkill[27] * 2 + 30;
      }
   }
   else if(tempCombo > _root.save.arenaSkill[27] * 2)
   {
      tempCombo = _root.save.arenaSkill[27] * 2;
   }
   if(tempCombo < 0 || isNaN(tempCombo))
   {
      tempCombo = 0;
   }
   _root.attackPower = Math.floor(_root.attackPower * (100 + tempCombo * 1) / 100);
   _root.defensePower = Math.floor((_root.save.arenaDefense + _root.abilIncDefense) * (1 + _root.save.arenaSkill[9] * 0.01 + _root.save.arenaSkill[11] * 0.01 + _root.save.arenaSkill[23] * 0.01 + _root.curCareerLevel[3] * 0.001 + _root.abilDefense * 0.01 + _root.allyDefense * 0.01));
   if(_root.save.arenaBuffType == 4 && _root.arenaPotionBlock <= 0)
   {
      _root.attackPower = Math.floor(_root.attackPower * 0.01);
      _root.defensePower = Math.floor(_root.defensePower * 0.01);
   }
   _root.ragePowerMult = 100 * (0.4 + _root.save.arenaSkill[32] * 0.02 + _root.abilRageAttack / 100);
   _root.rageSpeedMult = 100 * (0 + _root.save.arenaSkill[33] * 0.03 + _root.abilRageSpeed / 100);
   if(_root.save.inventoryName[_root.save.arenaTrinket] == "Gem of Eternal Rage")
   {
      _root.ragePowerMult = Math.floor(_root.ragePowerMult * 1.2);
   }
   if(_root.save.arenaRage > 100)
   {
      _root.save.arenaRage = 100;
   }
   _root.ragePower = 100 + Math.round(_root.save.arenaRage) * _root.ragePowerMult / 100;
   _root.rageSpeed = 100 + Math.round(_root.save.arenaRage) * _root.rageSpeedMult / 100;
   _root.ignoreDefense = _root.save.arenaSkill[20] + Math.floor(_root.save.arenaSkill[59] * 0.4) + _root.abilIgnoreDefense + _root.allyIgnoreDefense;
   if(_root.save.arenaZone == 52)
   {
      _root.ignoreDefense -= Math.floor(_root.areaSpookyKill / 100);
      if(_root.ignoreDefense < 0)
      {
         _root.ignoreDefense = 0;
      }
   }
   if(_root.save.arenaZone == 78)
   {
      _root.ignoreDefense -= _root.endlessFloor;
      if(_root.ignoreDefense < 0)
      {
         _root.ignoreDefense = 0;
      }
   }
   if(_root.ignoreDefense > 95 && _root.spiritBreak <= 0)
   {
      _root.ignoreDefense = 95;
   }
   else if(_root.ignoreDefense > 97)
   {
      _root.ignoreDefense = 97;
   }
   if(_root.arenaSoap > 0 && _root.save.inventoryName[_root.save.arenaWeapon] == "Censor Sword")
   {
      if(_root.save.inventoryName[_root.save.arenaHat] == "Censor Hat" && _root.save.inventoryName[_root.save.arenaShirt] == "Censor Shirt" && _root.save.inventoryName[_root.save.arenaGloves] == "Censor Gloves" && _root.save.inventoryName[_root.save.arenaPants] == "Censor Pants" && _root.save.inventoryName[_root.save.arenaShoes] == "Censor Shoes")
      {
         _root.ignoreDefense = 100;
      }
   }
   if(_root.save.arenaZone == 14 && (_root.save.inventoryName[_root.save.arenaWeapon] == "Burned Rope" || _root.save.inventoryName[_root.save.arenaWeapon] == "[O] Burned Rope"))
   {
      _root.ignoreDefense = 100;
   }
   if(_root.save.arenaZone >= 23 && _root.save.arenaZone <= 25 && (_root.save.inventoryName[_root.save.arenaWeapon] == "Special Wand" || _root.save.inventoryName[_root.save.arenaWeapon] == "[O] Special Wand"))
   {
      _root.ignoreDefense = 100;
   }
   if(enemy.name == "Secret Crystal" && _root.save.inventorySubtype[_root.save.arenaWeapon] == "Mining Tool")
   {
      _root.ignoreDefense = 100;
   }
   if(enemy.defense >= 999999999999 && _root.ignoreDefense > 100)
   {
      _root.ignoreDefense = 100;
   }
   _root.weaponDefense = _root.save.inventoryDefense[_root.save.arenaWeapon] + _root.save.inventoryDefense[_root.save.arenaHat] + _root.save.inventoryDefense[_root.save.arenaShirt] + _root.save.inventoryDefense[_root.save.arenaGloves] + _root.save.inventoryDefense[_root.save.arenaPants] + _root.save.inventoryDefense[_root.save.arenaShoes] + _root.save.inventoryDefense[_root.save.arenaSkin] + _root.save.inventoryDefense[_root.save.arenaMedal] + _root.save.inventoryDefense[_root.save.arenaPendant] + _root.save.inventoryDefense[_root.save.arenaEarring] + _root.save.inventoryDefense[_root.save.arenaTrinket] + _root.save.arenaSkill[11] * 30 + _root.allyEquipDefense + _root.abilIncEquipDefense;
   _root.weaponAttack = _root.save.inventoryAttack[_root.save.arenaWeapon] + _root.save.inventoryAttack[_root.save.arenaHat] + _root.save.inventoryAttack[_root.save.arenaShirt] + _root.save.inventoryAttack[_root.save.arenaGloves] + _root.save.inventoryAttack[_root.save.arenaPants] + _root.save.inventoryAttack[_root.save.arenaShoes] + _root.save.inventoryAttack[_root.save.arenaSkin] + _root.save.inventoryAttack[_root.save.arenaMedal] + _root.save.inventoryAttack[_root.save.arenaPendant] + _root.save.inventoryAttack[_root.save.arenaEarring] + _root.save.inventoryAttack[_root.save.arenaTrinket] + _root.save.arenaSkill[12] * 10 + _root.save.arenaSkill[59] * 2 + _root.allyEquipAttack + _root.abilIncEquipAttack;
   _root.attackSpeed = Math.floor((_root.save.inventorySpeed[_root.save.arenaWeapon] * (1 + (_root.save.inventorySpeed[_root.save.arenaHat] + _root.save.inventorySpeed[_root.save.arenaShirt] + _root.save.inventorySpeed[_root.save.arenaGloves] + _root.save.inventorySpeed[_root.save.arenaPants] + _root.save.inventorySpeed[_root.save.arenaShoes] + _root.save.inventorySpeed[_root.save.arenaSkin] + _root.save.inventorySpeed[_root.save.arenaMedal] + _root.save.inventorySpeed[_root.save.arenaPendant] + _root.save.inventorySpeed[_root.save.arenaEarring] + _root.save.inventorySpeed[_root.save.arenaTrinket]) * 0.05) + _root.allyAttackSpeedRaw) * (1 + 0.02 * _root.save.arenaSkill[16] + _root.abilAttackSpeed * 0.01 + _root.allyAttackSpeed * 0.01) * (_root.rageSpeed / 100));
   if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 1 && _root.attackSpeed > 12)
   {
      _root.attackSpeed = 12;
   }
   if(isNaN(_root.attackSpeed))
   {
      _root.attackSpeed = 1;
   }
   _root.doubleHit = Math.floor(_root.save.arenaSkill[55] * 1.5) + _root.abilDoubleHit + _root.allyDoubleHit;
   if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 1)
   {
      _root.doubleHit = 0;
   }
   if(_root.attackSpeed > 25)
   {
      _root.doubleHit += _root.attackSpeed - 25;
      _root.attackSpeed = 25;
   }
   if(_root.worstMoon == true)
   {
      _root.doubleHit = Math.floor(_root.doubleHit / 2);
   }
   if(_root.apocalypse == true)
   {
      _root.doubleHit = Math.floor(_root.doubleHit / 2);
   }
   if(_root.attackSpeed < 1)
   {
      _root.attackSpeed = 1;
   }
   if(_root.doubleHit > 95 && _root.spiritBreak <= 0)
   {
      _root.doubleHit = 95;
   }
   else if(_root.doubleHit > 97)
   {
      _root.doubleHit = 97;
   }
   if(_root.arenaSlow > 0)
   {
      _root.attackSpeed = Math.ceil(_root.attackSpeed * 0.4);
   }
   _root.minMult = 5 + _root.save.arenaSkill[15] + _root.abilMastery + _root.allyMastery;
   if(_root.minMult > 95 && _root.spiritBreak <= 0)
   {
      _root.minMult = 95;
   }
   else if(_root.minMult > 97)
   {
      _root.minMult = 97;
   }
   _root.maxDamage = Math.ceil((0.000007 * Math.pow(_root.save.arenaLevel,0.5) * Math.pow(_root.save.level,0.5) + 0.01) * _root.attackPower * _root.weaponAttack * (_root.ragePower / 100) * (1 + _root["abilPwn" + enemy.element] * 0.01) + _root.attackPower);
   if(_currentframe != 1)
   {
      _root.maxDamage = Math.ceil((0.000007 * Math.pow(_root.save.arenaLevel,0.5) * Math.pow(_root.save.level,0.5) + 0.01) * _root.attackPower * _root.weaponAttack * (_root.ragePower / 100) * 1 + _root.attackPower);
   }
   if(_root.save.level < 100)
   {
      _root.maxDamage = Math.ceil(_root.maxDamage * _root.save.level / 100);
   }
   if(_root.worstMoon == true)
   {
      _root.maxDamage = Math.floor(Math.pow(_root.maxDamage,0.95) * 0.5);
   }
   if(_root.apocalypse == true)
   {
      _root.maxDamage = Math.floor(_root.maxDamage * 0.9);
   }
   if(_root.save.arenaZone == 14)
   {
      _root.maxDamage = 500;
      _root.minMult = 100;
   }
   if(_root.save.arenaZone == 56)
   {
      _root.maxDamage = Math.floor(Math.pow(_root.maxDamage,0.8) * 10);
   }
   if(_root.save.arenaZone >= 23 && _root.save.arenaZone <= 25)
   {
      _root.maxDamage = Math.ceil(Math.min(_root.save.level,4000) / 4 + _root.save.arenaLevel + 1000);
      _root.minMult = 100;
   }
   if(_root.specInfinity > 0)
   {
      _root.minMult = 100;
   }
   _root.minDamage = Math.ceil(_root.minMult * _root.maxDamage / 100);
   _root.accuracy = Math.floor((_root.save.arenaAccuracy + _root.abilIncAccuracy) * (1 + _root.save.arenaSkill[14] * 0.01 + Math.floor(_root.save.arenaSkill[10] * 1.5) * 0.01 + _root.curCareerLevel[3] * 0.001 + _root.save.inventoryDexterity[_root.save.arenaWeapon] * 0.01 + _root.abilAccuracy * 0.01 + _root.allyAccuracy * 0.01));
   tempCombo = Math.floor(_root.arenaCombo / 10);
   if(_root.save.arenaRing == 18)
   {
      if(tempCombo > _root.save.arenaSkill[29] * 2 + 30)
      {
         tempCombo = _root.save.arenaSkill[29] * 2 + 30;
      }
   }
   else if(tempCombo > _root.save.arenaSkill[29] * 2)
   {
      tempCombo = _root.save.arenaSkill[29] * 2;
   }
   if(tempCombo < 0 || isNaN(tempCombo))
   {
      tempCombo = 0;
   }
   _root.accuracy = Math.floor(_root.accuracy * (1 + tempCombo * 0.02));
   _root.accuracyPct = Math.floor(_root.save.arenaSkill[14] + _root.abilHitChance + _root.allyHitChance);
   if(_root.save.arenaZone == 52)
   {
      _root.accuracyPct -= Math.floor(_root.areaSpookyKill / 100);
      if(_root.accuracyPct < 0)
      {
         _root.accuracyPct = 0;
      }
   }
   if(_root.save.arenaZone == 78)
   {
      _root.accuracyPct -= _root.endlessFloor;
      if(_root.accuracyPct < 0)
      {
         _root.accuracyPct = 0;
      }
   }
   if(_root.worstMoon == true)
   {
      _root.accuracyPct = Math.floor(_root.accuracyPct * 0.5);
   }
   if(_root.apocalypse == true)
   {
      _root.accuracyPct = Math.floor(_root.accuracyPct * 0.5);
   }
   if(_root.accuracyPct > 90 && _root.spiritBreak <= 0)
   {
      _root.accuracyPct = 90;
   }
   else if(_root.accuracyPct > 94)
   {
      _root.accuracyPct = 94;
   }
   _root.evasion = Math.floor((_root.save.arenaEvasion + _root.abilIncEvasion) * (1 + _root.save.arenaSkill[13] * 0.01 + Math.floor(_root.save.arenaSkill[10] * 1.5) * 0.01 + (_root.save.inventoryDexterity[_root.save.arenaHat] + _root.save.inventoryDexterity[_root.save.arenaShirt] + _root.save.inventoryDexterity[_root.save.arenaGloves] + _root.save.inventoryDexterity[_root.save.arenaPants] + _root.save.inventoryDexterity[_root.save.arenaShoes] + _root.save.inventoryDexterity[_root.save.arenaSkin] + _root.save.inventoryDexterity[_root.save.arenaMedal] + _root.save.inventoryDexterity[_root.save.arenaPendant] + _root.save.inventoryDexterity[_root.save.arenaEarring] + _root.save.inventoryDexterity[_root.save.arenaTrinket]) * 0.01 + _root.curCareerLevel[3] * 0.001 + _root.abilEvasion * 0.01 + _root.allyEvasion * 0.01));
   tempCombo = Math.floor(_root.arenaCombo / 10);
   if(_root.save.arenaRing == 18)
   {
      if(tempCombo > _root.save.arenaSkill[28] * 2 + 30)
      {
         tempCombo = _root.save.arenaSkill[28] * 2 + 30;
      }
   }
   else if(tempCombo > _root.save.arenaSkill[28] * 2)
   {
      tempCombo = _root.save.arenaSkill[28] * 2;
   }
   if(tempCombo < 0 || isNaN(tempCombo))
   {
      tempCombo = 0;
   }
   _root.evasion = Math.floor(_root.evasion * (1 + tempCombo * 0.02));
   _root.evasionPct = Math.floor(_root.save.arenaSkill[13] * 1 + Math.floor(_root.save.arenaSkill[61] / 2) + _root.abilDodgeChance + _root.allyDodgeChance);
   if(_root.save.arenaZone == 52)
   {
      _root.evasionPct -= Math.floor(_root.areaSpookyKill / 100);
      if(_root.evasionPct < 0)
      {
         _root.evasionPct = 0;
      }
   }
   if(_root.save.arenaZone == 78)
   {
      _root.evasionPct -= _root.endlessFloor;
      if(_root.evasionPct < 0)
      {
         _root.evasionPct = 0;
      }
   }
   if(_root.worstMoon == true)
   {
      _root.evasionPct = Math.floor(_root.evasionPct * 0.5);
   }
   if(_root.apocalypse == true)
   {
      _root.evasionPct = Math.floor(_root.evasionPct * 0.5);
   }
   if(_root.save.arenaZone == 24)
   {
      _root.evasion = 1;
      _root.evasionPct = 0;
   }
   if(_root.evasionPct > 90 && _root.spiritBreak <= 0)
   {
      _root.evasionPct = 90;
   }
   else if(_root.evasionPct > 94)
   {
      _root.evasionPct = 94;
   }
   if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 2)
   {
      if(_root.evasionPct > 14)
      {
         _root.evasionPct = 14;
      }
   }
   if(_root.arenaBlind > 0)
   {
      _root.accuracy = Math.floor(_root.accuracy * 0.6);
      _root.accuracyPct = Math.floor(_root.accuracyPct * 0.8);
      _root.evasion = Math.floor(_root.evasion * 0.6);
      _root.evasionPct = Math.floor(_root.evasionPct * 0.8);
   }
   if(_root.save.arenaBuffType == 7 || _root.spiritInvincibility > 0)
   {
      _root.evasionPct = 100;
   }
   _root.criticalChance = Math.floor(_root.accuracy / 1000) + _root.save.inventoryCrit[_root.save.arenaWeapon] + _root.save.arenaSkill[19] + _root.abilCriticalChance + _root.allyCriticalChance;
   _root.criticalDamage = 100 + (_root.save.inventoryCrit[_root.save.arenaHat] + _root.save.inventoryCrit[_root.save.arenaShirt] + _root.save.inventoryCrit[_root.save.arenaGloves] + _root.save.inventoryCrit[_root.save.arenaPants] + _root.save.inventoryCrit[_root.save.arenaShoes] + _root.save.inventoryCrit[_root.save.arenaSkin] + _root.save.inventoryCrit[_root.save.arenaMedal] + _root.save.inventoryCrit[_root.save.arenaPendant] + _root.save.inventoryCrit[_root.save.arenaEarring] + _root.save.inventoryCrit[_root.save.arenaTrinket]) + _root.save.arenaSkill[18] * 2 + _root.save.arenaSkill[20] * 1 + _root.abilCriticalDamage + _root.allyCriticalDamage;
   tempCombo = Math.floor(_root.arenaCombo / 10);
   if(_root.save.arenaRing == 18)
   {
      if(tempCombo > _root.save.arenaSkill[29] * 2 + 30)
      {
         tempCombo = _root.save.arenaSkill[29] * 2 + 30;
      }
   }
   else if(tempCombo > _root.save.arenaSkill[29] * 2)
   {
      tempCombo = _root.save.arenaSkill[29] * 2;
   }
   if(tempCombo < 0 || isNaN(tempCombo))
   {
      tempCombo = 0;
   }
   _root.criticalChance += tempCombo;
   _root.criticalDamage += tempCombo * 2;
   if(_root.worstMoon == true)
   {
      _root.criticalChance = Math.floor(_root.criticalChance / 2);
      _root.criticalDamage = Math.floor((_root.criticalDamage - 100) / 4) + 100;
   }
   if(_root.apocalypse == true)
   {
      _root.criticalChance = Math.floor(_root.criticalChance / 2);
      _root.criticalDamage = Math.floor((_root.criticalDamage - 100) / 4) + 100;
   }
   if(_root.criticalChance > 95 && _root.spiritBreak <= 0)
   {
      _root.criticalChance = 95;
   }
   else if(_root.criticalChance > 97)
   {
      _root.criticalChance = 97;
   }
   if(_root.criticalDamage > 1000)
   {
      _root.criticalDamage = 1000;
   }
   _root.damageResist = Math.floor((7e-7 * Math.pow(_root.save.arenaLevel,0.5) * Math.pow(_root.save.level,0.5) + 0.002) * _root.defensePower * _root.weaponDefense * (1 + _root["abilResist" + enemy.element] * 0.01) + _root.defensePower + _root.save.arenaMana * _root.save.arenaSkill[61] / 50);
   if(_currentframe != 1)
   {
      _root.damageResist = Math.floor((7e-7 * Math.pow(_root.save.arenaLevel,0.5) * Math.pow(_root.save.level,0.5) + 0.002) * _root.defensePower * _root.weaponDefense + _root.defensePower + _root.save.arenaMana * _root.save.arenaSkill[61] / 50);
   }
   tempCombo = Math.floor(_root.arenaCombo / 10);
   if(_root.save.arenaRing == 18)
   {
      if(tempCombo > _root.save.arenaSkill[28] * 2 + 30)
      {
         tempCombo = _root.save.arenaSkill[28] * 2 + 30;
      }
   }
   else if(tempCombo > _root.save.arenaSkill[28] * 2)
   {
      tempCombo = _root.save.arenaSkill[28] * 2;
   }
   if(tempCombo < 0 || isNaN(tempCombo))
   {
      tempCombo = 0;
   }
   _root.damageResist = Math.floor(_root.damageResist * (1 + tempCombo * 0.02));
   _root.damageResistPct = Math.floor(_root.weaponDefense / 200) + Math.floor(_root.save.arenaSkill[61] * 1) + _root.abilDamageTaken + _root.allyDamageTaken;
   if(_root.save.arenaZone == 52)
   {
      _root.damageResistPct -= Math.floor(_root.areaSpookyKill / 100);
      if(_root.damageResistPct < 0)
      {
         _root.damageResistPct = 0;
      }
   }
   if(_root.save.arenaZone == 78)
   {
      _root.damageResistPct -= _root.endlessFloor;
      if(_root.damageResistPct < 0)
      {
         _root.damageResistPct = 0;
      }
   }
   if(_root.worstMoon == true)
   {
      _root.damageResist = Math.floor(Math.pow(_root.damageResist,0.95));
      _root.damageResistPct = Math.floor(_root.damageResistPct / 2);
   }
   if(_root.apocalypse == true)
   {
      _root.damageResist = Math.floor(_root.damageResist * 0.9);
      _root.damageResistPct = Math.floor(_root.damageResistPct / 2);
   }
   if(_root.save.arenaZone == 24)
   {
      _root.damageResist = 0;
      _root.damageResistPct = 0;
   }
   if(_root.damageResistPct > 90 && _root.spiritBreak <= 0)
   {
      _root.damageResistPct = 90;
   }
   else if(_root.damageResistPct > 94)
   {
      _root.damageResistPct = 94;
   }
   if(_root.save.arenaZone == 29)
   {
      _root.damageResistPct = 80 + Math.floor(_root.damageResistPct / 10);
   }
   if(_root.manaPower == true)
   {
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] != true)
      {
         _root.damageResist = Math.floor(_root.damageResist + _root.maxMana * 0.2);
      }
      _root.damageResistPct += Math.floor(50 - _root.damageResistPct / 2);
   }
   if(_root.save.arenaZone >= 30 && _root.save.arenaZone <= 43)
   {
      _root.damageResist = Math.floor(Math.pow(_root.damageResist,0.45));
   }
   if(_root.save.arenaZone == 50)
   {
      _root.damageResist = Math.floor(_root.damageResist * 0.5);
   }
   if(_root.arenaWeaken > 0)
   {
      _root.maxDamage = Math.floor(_root.maxDamage * 0.6);
      _root.minDamage = Math.floor(_root.minDamage * 0.6);
      _root.damageResist = Math.floor(_root.damageResist * 0.6);
      _root.damageResistPct = Math.floor(_root.damageResistPct * 0.8);
   }
   if(enemy.enemyID == 331)
   {
      _root.maxDamage = Math.floor(_root.maxDamage * 0.4);
      _root.minDamage = Math.floor(_root.minDamage * 0.4);
      _root.damageResist = Math.floor(_root.damageResist * 0.7);
      _root.damageResistPct = Math.floor(_root.damageResistPct * 0.7);
   }
   if(_root.saveid == 22)
   {
      _root.save.arenaDefense = 65000;
      _root.damageResist = 0;
      _root.damageResistPct = 0;
   }
   if(_root.damageResist > 1999999999)
   {
      _root.damageResist = 1999999999;
   }
   _root.damageReflect = 50 + _root.attackSpeed * 2 + _root.save.arenaSkill[51] * 50 + _root.abilReflect + _root.allyReflect;
   _root.magicReflect = Math.ceil(Math.min(_root.damageReflect,5000) * (_root.save.arenaSkill[52] * 0.05 + _root.abilMagicReflect * 0.01));
   _root.negateEffect = _root.abilNegateEffect + _root.allyNegateEffect;
   _root.bossDamage = _root.abilBossDamage + _root.allyBossDamage;
   _root.nonBossDamage = _root.abilNonBossDamage + _root.allyNonBossDamage;
   if(_root.save.arenaZone == 24)
   {
      _root.bossDamage += 200;
      _root.nonBossDamage += 200;
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Epic Fire Staff")
   {
      if(enemy.element == "Ice")
      {
         _root.bossDamage += 40;
         _root.nonBossDamage += 40;
      }
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Epic Ice Staff")
   {
      if(enemy.element == "Wind")
      {
         _root.bossDamage += 40;
         _root.nonBossDamage += 40;
      }
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Epic Wind Staff")
   {
      if(enemy.element == "Earth")
      {
         _root.bossDamage += 40;
         _root.nonBossDamage += 40;
      }
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Epic Earth Staff")
   {
      if(enemy.element == "Thunder")
      {
         _root.bossDamage += 40;
         _root.nonBossDamage += 40;
      }
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Epic Thunder Staff")
   {
      if(enemy.element == "Water")
      {
         _root.bossDamage += 40;
         _root.nonBossDamage += 40;
      }
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Epic Water Staff")
   {
      if(enemy.element == "Fire")
      {
         _root.bossDamage += 40;
         _root.nonBossDamage += 40;
      }
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Light Glaive")
   {
      if(enemy.element == "Dark")
      {
         _root.bossDamage += 30;
         _root.nonBossDamage += 30;
      }
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Dark Glaive")
   {
      if(enemy.element == "Light")
      {
         _root.bossDamage += 30;
         _root.nonBossDamage += 30;
      }
   }
   _root.instantKill = _root.abilInstantKill + _root.allyInstantKill;
   _root.magicResist = _root.abilMagicResist + _root.allyMagicResist;
   _root.potionEfficiency = 100 + _root.abilPotionEfficiency + _root.allyPotionEfficiency;
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Fairy Godmother Wand")
   {
      _root.magicResist += 15;
      _root.negateEffect += 15;
      if(_root.save.inventoryName[_root.save.arenaHat] == "Fairy Godmother Hat" && _root.save.inventoryName[_root.save.arenaShirt] == "Fairy Godmother Shirt" && _root.save.inventoryName[_root.save.arenaGloves] == "Fairy Godmother Gloves" && _root.save.inventoryName[_root.save.arenaPants] == "Fairy Godmother Pants" && _root.save.inventoryName[_root.save.arenaShoes] == "Fairy Godmother Shoes")
      {
         _root.potionEfficiency += 500;
      }
   }
   if(_root.manaPower == true)
   {
      _root.magicResist += 15;
   }
   if(_root.worstMoon == true)
   {
      _root.damageReflect = Math.floor(_root.damageReflect / 5);
      _root.magicReflect = Math.floor(_root.magicReflect / 5);
      _root.negateEffect = Math.floor(_root.negateEffect / 2);
      _root.bossDamage = Math.floor(_root.bossDamage / 2);
      _root.nonBossDamage = Math.floor(_root.nonBossDamage / 2);
      _root.instantKill = Math.floor(_root.instantKill / 2);
      _root.magicResist = Math.floor(_root.magicResist / 2);
      _root.potionEfficiency = Math.floor(_root.potionEfficiency / 2);
   }
   if(_root.apocalypse == true)
   {
      _root.damageReflect = Math.floor(_root.damageReflect / 5);
      _root.magicReflect = Math.floor(_root.magicReflect / 5);
      _root.negateEffect = Math.floor(_root.negateEffect / 2);
      _root.bossDamage = Math.floor(_root.bossDamage / 2);
      _root.nonBossDamage = Math.floor(_root.nonBossDamage / 2);
      _root.instantKill = Math.floor(_root.instantKill / 2);
      _root.magicResist = Math.floor(_root.magicResist / 2);
      _root.potionEfficiency = Math.floor(_root.potionEfficiency / 2);
   }
   if(_root.damageReflect > 5000)
   {
      _root.damageReflect = 5000;
   }
   if(_root.negateEffect > 80 && _root.spiritBreak <= 0)
   {
      _root.negateEffect = 80;
   }
   else if(_root.negateEffect > 88)
   {
      _root.negateEffect = 88;
   }
   if(_root.instantKill > 80)
   {
      _root.instantKill = 80;
   }
   if(_root.magicResist > 80 && _root.spiritBreak <= 0)
   {
      _root.magicResist = 80;
   }
   else if(_root.magicResist > 88)
   {
      _root.magicResist = 88;
   }
   if(_root.specDispel > 0)
   {
      _root.negateEffect = 100;
   }
   if(_root.save.arenaZone == 35)
   {
      _root.instantKill = 0;
   }
   _root.silenceChance = _root.abilSilenceChance;
   _root.poisonChance = Math.floor(_root.save.arenaSkill[39] * 1 + _root.abilPoisonChance);
   _root.weakenChance = Math.floor(_root.save.arenaSkill[41] * 1 + _root.abilWeakenChance);
   _root.blindChance = Math.floor(_root.save.arenaSkill[43] * 1 + _root.abilBlindChance);
   _root.stunChance = Math.ceil(_root.save.arenaSkill[45] * 0.4) + _root.abilStunChance;
   if(_root.worstMoon == true)
   {
      _root.poisonChance = Math.floor(_root.poisonChance / 2);
      _root.weakenChance = Math.floor(_root.weakenChance / 2);
      _root.blindChance = Math.floor(_root.blindChance / 2);
      _root.stunChance = Math.floor(_root.stunChance / 2);
   }
   if(_root.poisonChance > 100)
   {
      _root.poisonChance = 100;
   }
   if(_root.weakenChance > 100)
   {
      _root.weakenChance = 100;
   }
   if(_root.blindChance > 100)
   {
      _root.blindChance = 100;
   }
   if(_root.stunChance > 100)
   {
      _root.stunChance = 100;
   }
   if(_root.save.arenaZone == 24 || _root.save.arenaZone >= 30 && _root.save.arenaZone <= 43)
   {
      _root.poisonChance = 0;
   }
   _root.poisonDuration = 5 + _root.save.arenaSkill[40] * 0.2 + _root.abilPoisonDuration;
   _root.poisonDamage = 500 + _root.save.arenaSkill[40] * 25 + _root.abilPoisonDamage;
   _root.weakenDuration = 5 + _root.save.arenaSkill[42] * 0.2 + _root.abilWeakenDuration;
   _root.weakenPower = 30 + Math.ceil(_root.save.arenaSkill[42] * 0.5) + _root.abilWeakenEffect;
   _root.blindDuration = 5 + _root.save.arenaSkill[44] * 0.2 + _root.abilBlindDuration;
   _root.blindPower = 30 + Math.ceil(_root.save.arenaSkill[44] * 0.5) + _root.abilBlindEffect;
   _root.stunDuration = 0.5;
   if(_root.worstMoon == true)
   {
      _root.poisonDamage = Math.floor(_root.poisonDamage / 5);
      _root.weakenPower = Math.floor(_root.weakenPower / 2);
      _root.blindPower = Math.floor(_root.blindPower / 2);
   }
   if(_root.poisonDamage > 5000)
   {
      _root.poisonDamage = 5000;
   }
   if(_root.weakenPower > 70)
   {
      _root.weakenPower = 70;
   }
   if(_root.blindPower > 70)
   {
      _root.blindPower = 70;
   }
   _root.lifeDrain = _root.save.arenaSkill[36] + _root.abilLifeDrain;
   _root.manaEater = _root.save.arenaSkill[37] * 500 + _root.abilManaEater;
   if(_root.save.arenaZone == 24)
   {
      _root.lifeDrain = 0;
   }
   if(_root.save.arenaZone == 29)
   {
      _root.lifeDrain = 0;
   }
   if(_root.save.arenaZone >= 30 && _root.save.arenaZone <= 43)
   {
      _root.lifeDrain = 0;
   }
   _root.autoSteal = _root.save.arenaSkill[53] + _root.abilAutoSteal;
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Pirate Sword")
   {
      if(_root.save.inventoryLevel[_root.save.arenaWeapon] > 300)
      {
         _root.autoSteal += 300;
      }
      else
      {
         _root.autoSteal += _root.save.inventoryLevel[_root.save.arenaWeapon];
      }
   }
   if(_root.lifeDrain > 250)
   {
      _root.lifeDrain = 250;
   }
   if(_root.autoSteal > 500)
   {
      _root.autoSteal = 500;
   }
   _root.arenaRareRate = 100 + _root.save.arenaSkill[50] * 2 + _root.abilRareRate;
   _root.arenaEpicRate = 100 + _root.save.arenaSkill[50] * 2 + _root.abilEpicRate;
   _root.arenaExpMult = 100 + Math.floor(_root.save.arenaSkill[34] * 1) + Math.floor(_root.abilExp) + _root.allyExp;
   _root.arenaCoinMult = 100 + _root.save.arenaSkill[35] * 1 + _root.abilCoin + _root.allyCoin;
   _root.arenaPixelMult = 100 + _root.save.arenaSkill[35] * 1 + _root.abilPixel + _root.allyPixel;
   if(_root.save.careerLevel[3] >= 100)
   {
      _root.arenaExpMult += 10;
      _root.arenaCoinMult += 10;
      _root.arenaPixelMult += 10;
   }
   if(_root.specPolearm > 0)
   {
      _root.arenaExpMult += 10 + 1 * _root.save.arenaSkill[3];
      _root.arenaCoinMult += 10 + 1 * _root.save.arenaSkill[3];
   }
   if(_root.specSphere > 0)
   {
      _root.arenaExpMult += 60;
   }
   tempCombo = Math.floor(_root.arenaCombo / 10);
   if(_root.save.arenaRing == 18)
   {
      if(tempCombo > _root.save.arenaSkill[30] * 2 + 30)
      {
         tempCombo = _root.save.arenaSkill[30] * 2 + 30;
      }
   }
   else if(tempCombo > _root.save.arenaSkill[30] * 2)
   {
      tempCombo = _root.save.arenaSkill[30] * 2;
   }
   if(tempCombo < 0 || isNaN(tempCombo))
   {
      tempCombo = 0;
   }
   _root.arenaExpMult += tempCombo;
   _root.arenaCoinMult += tempCombo;
   _root.arenaPixelMult += tempCombo;
   _root.arenaDropRate = 100 + _root.save.arenaSkill[50] * 1 + _root.abilDropRate + _root.allyDropRate + _root.curCareerLevel[4];
   _root.spawnSpeed = 100 + _root.abilSpawnRate + _root.allySpawnRate;
   if(_root.challengeZone == _root.save.arenaZone && _root.challengeDuration > 0)
   {
      _root.spawnSpeed += 50;
      _root.arenaRareRate *= 2;
      _root.arenaEpicRate *= 2;
   }
   if(_root.challengeZone == _root.save.arenaZone && _root.challengeDuration <= 0 && _root.challengeDuration > -60)
   {
      _root.spawnSpeed += Math.min(_root.challengeKill,Math.floor(_root.challengeMaxDuration / 2));
   }
   if(_root.spiritInsta > 0)
   {
      _root.spawnSpeed += 200;
   }
   if(_root.worstMoon == true)
   {
      _root.arenaExpMult = Math.floor(_root.arenaExpMult * 1.3);
      _root.arenaCoinMult = Math.floor(_root.arenaCoinMult * 1.6);
      _root.arenaPixelMult = Math.floor(_root.arenaPixelMult * 1.6);
      _root.arenaDropRate = Math.floor(_root.arenaDropRate * 1.6);
   }
   if(_root.apocalypse == true)
   {
      _root.arenaExpMult = Math.floor(_root.arenaExpMult * 1.15);
      _root.arenaCoinMult = Math.floor(_root.arenaCoinMult * 1.3);
      _root.arenaPixelMult = Math.floor(_root.arenaPixelMult * 1.3);
      _root.arenaDropRate = Math.floor(_root.arenaDropRate * 1.3);
   }
   if(_root.saveid == 24)
   {
      _root.arenaPixelMult = Math.floor(_root.arenaPixelMult * 0.1);
   }
   var _loc2_ = 1;
   while(_loc2_ <= 30)
   {
      if(_root.save.inventoryFrame[_loc2_] >= 319 && _root.save.inventoryFrame[_loc2_] <= 328 && _root.save.inventoryExist[_loc2_] == 1)
      {
         _root.arenaDropRate += 1;
      }
      if(_root.save.inventoryFrame[_loc2_] >= 360 && _root.save.inventoryFrame[_loc2_] <= 379 && _root.save.inventoryExist[_loc2_] == 1)
      {
         _root.arenaDropRate += 1;
      }
      _loc2_ += 1;
   }
   var _loc3_ = 1;
   while(_loc3_ <= _root.todayEvent)
   {
      yy = _root.clock_year % 10;
      mm = _root.clock_month;
      dd = _root.clock_date;
      if(_root.eventList[yy][mm][dd][_loc3_] == "Gain 1.5x EXP from The Corruption area in Battle Arena" && _root.save.arenaZone == 50)
      {
         _root.arenaExpMult = Math.floor(_root.arenaExpMult * 1.5);
      }
      if(_root.eventList[yy][mm][dd][_loc3_] == "Gain 1.5x EXP from The Corruption area in Battle Arena" && _root.save.arenaZone == 59)
      {
         _root.arenaExpMult = Math.floor(_root.arenaExpMult * 1.5);
      }
      if(_root.eventList[yy][mm][dd][_loc3_] == "Gain 1.5x EXP from Secret Dungeon area in Battle Arena" && _root.save.arenaZone == 53)
      {
         _root.arenaExpMult = Math.floor(_root.arenaExpMult * 1.5);
      }
      if(_root.eventList[yy][mm][dd][_loc3_] == "Gain 1.5x EXP from Secret Dungeon area in Battle Arena" && _root.save.arenaZone == 54)
      {
         _root.arenaExpMult = Math.floor(_root.arenaExpMult * 1.5);
      }
      if(_root.eventList[yy][mm][dd][_loc3_] == "Gain 1.5x EXP from Endless Dungeon area in Battle Arena" && _root.save.arenaZone == 78)
      {
         _root.arenaExpMult = Math.floor(_root.arenaExpMult * 1.5);
      }
      if(_root.eventList[yy][mm][dd][_loc3_] == "4x Drop Rate in Battle Arena")
      {
         _root.arenaDropRate = Math.floor(_root.arenaDropRate * 4);
      }
      if(_root.eventList[yy][mm][dd][_loc3_] == "3x Drop Rate in Battle Arena")
      {
         _root.arenaDropRate = Math.floor(_root.arenaDropRate * 3);
      }
      if(_root.eventList[yy][mm][dd][_loc3_] == "2.5x Drop Rate in Battle Arena")
      {
         _root.arenaDropRate = Math.floor(_root.arenaDropRate * 2.5);
      }
      if(_root.eventList[yy][mm][dd][_loc3_] == "2x Drop Rate in Battle Arena")
      {
         _root.arenaDropRate = Math.floor(_root.arenaDropRate * 2);
      }
      if(_root.eventList[yy][mm][dd][_loc3_] == "1.5x Drop Rate in Battle Arena")
      {
         _root.arenaDropRate = Math.floor(_root.arenaDropRate * 1.5);
      }
      _loc3_ += 1;
   }
   if(_root.saveid == 21)
   {
      _root.spawnSpeed += 50;
   }
   if(_root.saveid == 26)
   {
      _root.arenaExpMult += 700;
      _root.arenaCoinMult += 700;
      _root.arenaPixelMult += 700;
      _root.arenaDropRate += 700;
      _root.arenaRareRate += 700;
      _root.arenaEpicRate += 700;
      _root.spawnSpeed += 300;
   }
   if(_root.arenaExpMult > 1000)
   {
      _root.arenaExpMult = 1000;
   }
   if(_root.arenaCoinMult > 2000)
   {
      _root.arenaCoinMult = 2000;
   }
   if(_root.arenaPixelMult > 2000)
   {
      _root.arenaPixelMult = 2000;
   }
   if(_root.arenaDropRate > 5000)
   {
      _root.arenaDropRate = 5000;
   }
   if(_root.spawnSpeed > 500)
   {
      _root.spawnSpeed = 500;
   }
   if(_root.saveid == 22)
   {
      _root.arenaPixelMult = Math.floor(_root.arenaPixelMult * 2);
   }
   if(_root.save.arenaZone == 20 || _root.save.arenaZone == 52 || _root.save.arenaZone == 56 || _root.save.arenaZone == 68)
   {
      _root.arenaDropRate = 0;
   }
   if(_root.save.arenaZone >= 31 && _root.save.arenaZone <= 42)
   {
      _root.spawnSpeed = 100;
   }
   _root.trackZoneKill();
}
function regen()
{
   _root.labCooldown -= 1;
   _root.challengeDuration -= 1;
   if(_root.challengeDuration == 0)
   {
      if(_root.save.arenaZoneChallenge[_root.challengeZone] < _root.challengeKill)
      {
         _root.save.arenaZoneChallenge[_root.challengeZone] = _root.challengeKill;
         _root.fightStat = "NEW RECORD!";
      }
      else
      {
         _root.fightStat = "Challenge Complete!";
      }
      _root.fightStat2 = "Spawn Rate +" + Math.min(_root.challengeKill,Math.floor(_root.challengeMaxDuration / 2)) + "% for 60 seconds";
   }
   if(_root.challengeDuration == -60)
   {
      _root.challengeZone = -1;
   }
   if(_root.autoExp > 0)
   {
      etg = Math.floor(_root.autoExp * _root.save.boost * Math.pow(_root.save.level,0.6) * 0.04);
      if(etg > Math.ceil(_root.save.level * _root.save.level / 5))
      {
         etg = Math.ceil(_root.save.level * _root.save.level / 5);
      }
      _root.gainEXP(etg);
   }
   if(_root.save.bannedB > 0)
   {
      etg2 = Math.floor((_root.autoExp * 3 + _root.save.bannedB) * Math.sqrt(_root.save.arenaLevel) * 2);
      if(_root.save.arenaLevel == 500)
      {
         etg2 = Math.floor(etg2 * 0.25);
      }
      if(_root.autoExp > 0)
      {
         if(etg2 > 100000 + _root.save.arenaLevel * 200)
         {
            etg2 = 100000 + _root.save.arenaLevel * 200;
         }
      }
      else if(etg2 > 25000 + _root.save.arenaLevel * 50)
      {
         etg2 = 25000 + _root.save.arenaLevel * 50;
      }
      _root.save.arenaExp += etg2;
   }
   if(_root.autoStealCoin > 0)
   {
      _root.gainCoin(_root.autoStealCoin);
      _root.autoStealCoin = 0;
   }
   var _loc2_ = 1;
   while(_loc2_ <= 3)
   {
      _root["allyCooldown" + _loc2_] -= 1;
      if(_root["allyCooldown" + _loc2_] <= 0)
      {
         tempActive = _root["allyActive" + _loc2_];
         tempActiveX = _root["allyActive" + _loc2_ + "X"];
         tempActiveY = _root["allyActive" + _loc2_ + "Y"];
         tempActiveZ = _root["allyActive" + _loc2_ + "Z"];
         if(enemy.enemyID != 0 && enemy.skill != "Self-Destruct")
         {
            if(tempActive == "Attack: Regular")
            {
               dealDamage(tempActiveX,0,"Invisible Ally");
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Attack: Knockback")
            {
               dealDamage(tempActiveX,tempActiveY,"Invisible Ally");
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Attack: Poison")
            {
               dealDamage(tempActiveX,0,"Invisible Ally");
               enemy.poison += tempActiveY;
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Attack: Weaken")
            {
               dealDamage(tempActiveX,0,"Invisible Ally");
               enemy.weaken += tempActiveY;
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Attack: Blind")
            {
               dealDamage(tempActiveX,0,"Invisible Ally");
               enemy.blind += tempActiveY;
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Attack: Stun")
            {
               dealDamage(tempActiveX,0,"Invisible Ally");
               enemy.stun += tempActiveY;
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Attack: Power Down")
            {
               dealDamage(tempActiveX,0,"Invisible Ally");
               if(enemy.allyDownCount1 < 2)
               {
                  enemy.allyDownCount1 += 1;
                  enemy.attack = Math.ceil(enemy.attack * (100 - tempActiveY) / 100);
               }
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Attack: Defense Down")
            {
               dealDamage(tempActiveX,0,"Invisible Ally");
               if(enemy.allyDownCount2 < 2)
               {
                  enemy.allyDownCount2 += 1;
                  enemy.defense = Math.ceil(enemy.defense * (100 - tempActiveY) / 100);
               }
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Attack: Accuracy Down")
            {
               dealDamage(tempActiveX,0,"Invisible Ally");
               if(enemy.allyDownCount3 < 2)
               {
                  enemy.allyDownCount3 += 1;
                  enemy.accuracy = Math.ceil(enemy.accuracy * (100 - tempActiveY) / 100);
               }
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Attack: Evasion Down")
            {
               dealDamage(tempActiveX,0,"Invisible Ally");
               if(enemy.allyDownCount4 < 2)
               {
                  enemy.allyDownCount4 += 1;
                  enemy.evasion = Math.ceil(enemy.evasion * (100 - tempActiveY) / 100);
               }
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Attack: Silence")
            {
               dealDamage(tempActiveX,0,"Invisible Ally");
               if(Math.random() < tempActiveY / 100 && enemy.boss != true && enemy.ultra != true && enemy.skillLevel >= 0)
               {
                  enemy.rampagePct = 0;
                  enemy.explodeDamage = 1;
                  enemy.skill = "None";
                  enemy.skillLevel = -1;
                  enemy.rangeDamage = 0;
                  showDamage("SILENCED",16777215,enemy._x + enemy._width / 2,40);
               }
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Attack: Ignore Defense")
            {
               dealDamage(tempActiveX,0,"Invisible Ally - Ignore Defense");
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
         }
         if(_root.save.arenaBuffType == 0)
         {
            if(tempActive == "Buff: Power")
            {
               _root.save.arenaBuffType = 1;
               _root.save.arenaBuffDuration = tempActiveX;
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Buff: Master")
            {
               _root.save.arenaBuffType = 2;
               _root.save.arenaBuffDuration = tempActiveX;
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Buff: Reward")
            {
               _root.save.arenaBuffType = 3;
               _root.save.arenaBuffDuration = tempActiveX;
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Buff: Enrage")
            {
               _root.save.arenaBuffType = 5;
               _root.save.arenaBuffDuration = tempActiveX;
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Buff: Elemental Boost")
            {
               _root.save.arenaBuffType = 6;
               _root.save.arenaBuffDuration = tempActiveX;
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
            else if(tempActive == "Buff: Invincibility")
            {
               _root.save.arenaBuffType = 7;
               _root.save.arenaBuffDuration = tempActiveX;
               _root["allyCooldown" + _loc2_] = tempActiveZ;
            }
         }
         if(tempActive == "HP Recovery" && _root.save.arenaZone != 24 && (_root.save.arenaZone < 30 || _root.save.arenaZone > 43))
         {
            _root.save.arenaHealth += Math.floor(_root.maxHealth * tempActiveX / 100);
            _root["allyCooldown" + _loc2_] = tempActiveZ;
         }
         else if(tempActive == "Heal" && _root.save.arenaZone != 24 && (_root.save.arenaZone < 30 || _root.save.arenaZone > 43))
         {
            if(_root.arenaZombify <= 0)
            {
               _root.save.arenaHealth += Math.floor(_root.maxHealth * tempActiveX / 100);
            }
            if(enemy.zombie == true && enemy.enemyID != 0)
            {
               _root.house.arena.dealDamage(tempActiveY,0,"Invisible Ally - Ignore Defense");
            }
            _root["allyCooldown" + _loc2_] = tempActiveZ;
         }
         else if(tempActive == "MP Recovery")
         {
            _root.save.arenaMana += Math.floor(_root.maxMana * tempActiveX / 100);
            _root["allyCooldown" + _loc2_] = tempActiveZ;
         }
         else if(tempActive == "Spirit Recovery")
         {
            _root.save.arenaSpirit += tempActiveX;
            _root["allyCooldown" + _loc2_] = tempActiveZ;
         }
         else if(tempActive == "Buff Extension" && _root.save.arenaBuffType != 0 && _root.save.arenaBuffDuration > 0 && _root.save.arenaBuffDuration < 5999)
         {
            _root.save.arenaBuffDuration += tempActiveX;
            if(_root.save.arenaBuffDuration > 5999)
            {
               _root.save.arenaBuffDuration = 5999;
            }
            _root["allyCooldown" + _loc2_] = tempActiveZ;
         }
         else if(tempActive == "Produce Loot: Coin")
         {
            _root.incDt2();
            stuffHolder.attachMovie("newLoot1","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200 + Math.random() * 100,y:150,lootValue:Math.floor(tempActiveX * _root.arenaCoinMult / 100 * _root.save.boost / 100 * (0.9 + Math.random() * 0.2))});
            _root["allyCooldown" + _loc2_] = tempActiveZ;
         }
         else if(tempActive == "Produce Loot: Pixel")
         {
            _root.incDt2();
            stuffHolder.attachMovie("newLoot7","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200 + Math.random() * 100,y:150,lootValue:Math.floor(tempActiveX * _root.arenaPixelMult / 100 * (0.9 + Math.random() * 0.2))});
            _root["allyCooldown" + _loc2_] = tempActiveZ;
         }
         else if(tempActive == "Produce Loot: Material")
         {
            _root.incDt2();
            stuffHolder.attachMovie("newLoot6","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200 + Math.random() * 100,y:150,lootValue:Math.floor(tempActiveX * _root.arenaPixelMult / 100 * (0.9 + Math.random() * 0.2))});
            _root["allyCooldown" + _loc2_] = tempActiveZ;
         }
         else if(tempActive == "Produce Loot: Stat")
         {
            _root.incDt2();
            stuffHolder.attachMovie("newLoot4","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200 + Math.random() * 100,y:150,lootValue:1});
            _root["allyCooldown" + _loc2_] = tempActiveZ;
         }
         else if(tempActive == "Produce Loot: Rare Item")
         {
            if(Math.random() < 0.02)
            {
               _root.incDt2();
               stuffHolder.attachMovie("newLoot16","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200 + Math.random() * 100,y:150,lootValue:1});
            }
            else if(Math.random() < 0.05)
            {
               _root.incDt2();
               stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200 + Math.random() * 100,y:150,lootValue:2});
            }
            else if(Math.random() < 0.1)
            {
               _root.incDt2();
               stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200 + Math.random() * 100,y:150,lootValue:1});
            }
            else if(Math.random() < 0.25)
            {
               _root.incDt2();
               stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200 + Math.random() * 100,y:150,lootValue:1});
            }
            else
            {
               _root.incDt2();
               stuffHolder.attachMovie("newLoot3","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:200 + Math.random() * 100,y:150,lootValue:20});
            }
            _root["allyCooldown" + _loc2_] = tempActiveZ;
         }
      }
      _loc2_ += 1;
   }
   if(_root.save.arenaBuffDuration > 0)
   {
      if(_root.save.arenaBuffType >= 1 && _root.save.arenaBuffType <= 3)
      {
         _root.save.arenaBuffDuration -= 1 / _root.potionEfficiency * 100;
      }
      else
      {
         _root.save.arenaBuffDuration -= 1;
      }
   }
   else
   {
      _root.save.arenaBuffDuration = 0;
      _root.save.arenaBuffType = 0;
      if(_root.save.inventoryName[_root.save.arenaTrinket] == "Auto Buff Gem")
      {
         _root.save.arenaBuffDuration = 15 + random(16);
         _root.save.arenaBuffType = 1 + random(3);
         if(Math.random() < 0.4)
         {
            _root.save.arenaBuffType = 5 + random(2);
            _root.save.arenaBuffDuration = 15 + random(16);
         }
      }
   }
   if(_root.save.inventoryName[_root.save.arenaPendant] == "Cursed Pendant")
   {
      _root.save.arenaBuffDuration = 1;
      _root.save.arenaBuffType = 4;
   }
   if(_root.save.inventoryName[_root.save.arenaTrinket] == "Auto Buff Gem" && _root.save.inventoryBonus[_root.save.arenaTrinket] != "Auto Buff - Random" && _root.save.inventoryBonus[_root.save.arenaTrinket] != "" && _root.save.arenaBuffType != 13)
   {
      _root.save.arenaBuffDuration = 1;
      _root.save.arenaBuffType = 0;
      if(_root.save.inventoryBonus[_root.save.arenaTrinket] == "Auto Buff - Power")
      {
         _root.save.arenaBuffType = 1;
      }
      if(_root.save.inventoryBonus[_root.save.arenaTrinket] == "Auto Buff - Master")
      {
         _root.save.arenaBuffType = 2;
      }
      if(_root.save.inventoryBonus[_root.save.arenaTrinket] == "Auto Buff - Reward")
      {
         _root.save.arenaBuffType = 3;
      }
      if(_root.save.inventoryBonus[_root.save.arenaTrinket] == "Auto Buff - Enrage")
      {
         _root.save.arenaBuffType = 5;
      }
      if(_root.save.inventoryBonus[_root.save.arenaTrinket] == "Auto Buff - Boost")
      {
         _root.save.arenaBuffType = 6;
      }
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA")
   {
      _root.save.arenaMana = 0;
      _root.save.arenaSpirit = 0;
   }
   else if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      if(Math.random() < _root.save.arenaSkill[24] * 0.01)
      {
         _root.save.arenaSpirit += 2;
      }
      if(_root.save.arenaRuneDuration[2] > 0)
      {
         _root.save.arenaSpirit += 2;
      }
      _root.save.arenaMana = 0;
      _root.save.arenaFury = 0;
   }
   else
   {
      _root.save.arenaSpirit = 0;
      _root.save.arenaFury = 0;
   }
   if(_root.save.arenaSkill[49] < 1 && _root.save.inventoryName[_root.save.arenaWeapon] != "CHAOS AURA")
   {
      _root.manaPower = false;
   }
   if(_root.areaUnderwater == true)
   {
      _root.save.arenaOxygenPenalty += 1;
      if(_root.save.arenaZone == 78 && enemy.enemyid != 0)
      {
         if(enemy.lifespan >= 300)
         {
            _root.save.arenaOxygenPenalty += 99;
         }
         else if(enemy.lifespan >= 180)
         {
            _root.save.arenaOxygenPenalty += 29;
         }
         else if(enemy.lifespan >= 90)
         {
            _root.save.arenaOxygenPenalty += 9;
         }
         else if(enemy.lifespan >= 30)
         {
            _root.save.arenaOxygenPenalty += 2;
         }
      }
      if(_root.save.arenaOxygenPenalty > 30 && _root.save.arenaBuffType != 11)
      {
         if(_root.save.arenaZone != 59)
         {
            takeDamage(Math.ceil((_root.save.arenaOxygenPenalty - 30) * (_root.save.arenaOxygenPenalty - 20) / 5),"Drown");
         }
         else
         {
            takeDamage((_root.save.arenaOxygenPenalty - 30) * 900,"Drown");
         }
      }
   }
   else
   {
      _root.save.arenaOxygenPenalty = 0;
   }
   if(_root.save.arenaRage > _root.rageDepletion / 100)
   {
      _root.save.arenaRage -= _root.rageDepletion / 100;
   }
   else
   {
      _root.save.arenaRage = 0;
   }
   if(_root.save.arenaRuneDuration[3] > 0)
   {
      _root.save.arenaRage = 100;
   }
   if(_root.arenaPoison > 0)
   {
      poisonDamage = Math.floor(_root.save.arenaHealth / 5);
      if(poisonDamage > _root.save.arenaHealth - 1)
      {
         poisonDamage = _root.save.arenaHealth - 1;
      }
      if(poisonDamage > 1000000)
      {
         poisonDamage = 1000000;
      }
      _root.save.arenaHealth -= poisonDamage;
      _root.arenaPoison -= 1;
   }
   if(_root.chargeX < 4)
   {
      _root.chargeX += 1;
   }
   if(_root.chargeC < 4)
   {
      _root.chargeC += 1;
   }
   if(_root.chargeV < 4)
   {
      _root.chargeV += 1;
   }
   if(_root.chargeB < 4)
   {
      _root.chargeB += 1;
   }
   if(_root.spiritHeal > 0)
   {
      _root.spiritHeal -= 1;
   }
   if(_root.spiritDouble > 0)
   {
      _root.spiritDouble -= 1;
   }
   if(_root.spiritCrit > 0)
   {
      _root.spiritCrit -= 1;
   }
   if(_root.spiritInsta > 0)
   {
      _root.spiritInsta -= 1;
   }
   if(_root.spiritEnrage > 0)
   {
      _root.spiritEnrage -= 1;
   }
   if(_root.spiritBoost > 0)
   {
      _root.spiritBoost -= 1;
   }
   if(_root.spiritInvincibility > 0)
   {
      _root.spiritInvincibility -= 1;
   }
   if(_root.spiritBreak > 0)
   {
      _root.spiritBreak -= 1;
   }
   if(_root.spiritUnleash > 0)
   {
      _root.spiritUnleash -= 1;
      if(_root.save.arenaZone != 24)
      {
         _root.save.arenaHealth = Math.ceil(_root.save.arenaHealth * 0.9);
      }
   }
   if(_root.arenaWeaken > 0)
   {
      _root.arenaWeaken -= 1;
   }
   if(_root.arenaBlind > 0)
   {
      _root.arenaBlind -= 1;
   }
   if(_root.arenaSlow > 0)
   {
      _root.arenaSlow -= 1;
   }
   if(_root.arenaPotionBlock > 0)
   {
      _root.arenaPotionBlock -= 1;
   }
   if(_root.arenaZombify > 0)
   {
      _root.arenaZombify -= 1;
   }
   if(_root.arenaSoap > 0)
   {
      _root.arenaSoap -= 1;
   }
   if(_root.save.arenaAutoTime > 0)
   {
      _root.save.arenaAutoTime -= 1;
   }
   else
   {
      _root.save.arenaAuto = 0;
   }
   runeMult = 1;
   if(_root.save.permaBanPenalty[27] == 3)
   {
      runeMult = 1.5;
   }
   else if(_root.save.permaBanPenalty[27] == 2)
   {
      runeMult = 1.3;
   }
   else if(_root.save.permaBanPenalty[27] == 1)
   {
      runeMult = 1.2;
   }
   if(_root.save.arenaZone != 0)
   {
      _loc2_ = 1;
      while(_loc2_ <= 6)
      {
         if(_root.save.arenaRuneDuration[_loc2_] > 0)
         {
            _root.save.arenaRuneDuration[_loc2_] -= 1;
         }
         if(_root.save.arenaRuneDuration[_loc2_] <= 30 && _root.save.arenaRuneAuto[_loc2_] == true)
         {
            if(_loc2_ <= 3)
            {
               if(_root.save.arenaCrystal1 >= 500)
               {
                  _root.save.arenaCrystal1 -= 500;
                  _root.save.arenaRuneDuration[_loc2_] += Math.floor((600 + _root.save.arenaRuneLevel[_loc2_] * 6) * runeMult);
               }
            }
            else if(_root.save.arenaCrystal2 >= 500)
            {
               _root.save.arenaCrystal2 -= 500;
               _root.save.arenaRuneDuration[_loc2_] += Math.floor((600 + _root.save.arenaRuneLevel[_loc2_] * 6) * runeMult);
            }
         }
         _loc2_ += 1;
      }
   }
   _root.noSpec = false;
   if(_root.specInfinity > 0)
   {
      _root.specInfinity -= 1;
      specDisp.gotoAndStop(2);
   }
   else if(_root.specPierce > 0)
   {
      _root.specPierce -= 1;
      specDisp.gotoAndStop(3);
   }
   else if(_root.specPolearm > 0)
   {
      _root.specPolearm -= 1;
      specDisp.gotoAndStop(4);
   }
   else if(_root.specTrueshot > 0)
   {
      _root.specTrueshot -= 1;
      specDisp.gotoAndStop(5);
   }
   else if(_root.specSphere > 0)
   {
      _root.specSphere -= 1;
      specDisp.gotoAndStop(6);
   }
   else if(_root.specDispel > 0)
   {
      _root.specDispel -= 1;
      specDisp.gotoAndStop(7);
   }
   else if(_root.specGlory > 0)
   {
      _root.specGlory -= 1;
      specDisp.gotoAndStop(8);
   }
   else
   {
      _root.noSpec = true;
   }
   if(_root.reviveCooldown > 0)
   {
      _root.reviveCooldown -= 1;
      if(_root.reviveCooldown % 10 == 1 && _root.maxHealth == 19999999)
      {
         _root.reviveCooldown -= 1;
      }
   }
   if(_root.save.arenaZone == 24)
   {
      _root.reviveCooldown = 240 - _root.save.arenaSkill[64] * 4;
   }
   if(_root.save.arenaZone == 7 || _root.save.arenaZone == 24 || _root.save.arenaZone == 52 || _root.save.arenaZone == 54 || _root.save.arenaZone == 56 || _root.save.arenaZone == 59 || _root.save.arenaZone == 61 || _root.save.arenaZone == 68 || _root.save.arenaZone == 78 || _root.save.arenaZone == 82)
   {
      if(cgtHP._currentframe != 2)
      {
         cgtHP.gotoAndStop(2);
      }
   }
   else if(cgtHP._currentframe != 1)
   {
      cgtHP.gotoAndStop(1);
   }
}
function actualRegen()
{
   if(enemy.enemyID != 0)
   {
      if(_root.specSphere > 0)
      {
         dealDamage(200 + _root.save.arenaSkill[3] * 10,0,"");
      }
      if(_root.specGlory > 0)
      {
         dealDamage(400 + _root.save.arenaSkill[3] * 20,0,"");
      }
   }
   if(_root.save.inventoryName[_root.save.arenaTrinket] == "Yellow Madness Gem")
   {
      if(Math.random() < 0.05)
      {
         lootValueYMG = Math.floor(100000 * _root.arenaCoinMult * _root.save.boost / 10000 * (0.9 + Math.random() * 0.2));
         _root.incDt2();
         stuffHolder.attachMovie("newLoot1","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:150 + Math.random() * 200,y:-50,lootValue:lootValueYMG});
      }
   }
   if(_root.specGlory > 0)
   {
      if(Math.random() < 0.1)
      {
         _root.incDt2();
         stuffHolder.attachMovie("newLoot10","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:150 + Math.random() * 200,y:-50,lootValue:5});
      }
      if(Math.random() < 0.05)
      {
         _root.incDt2();
         stuffHolder.attachMovie("newLoot16","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:150 + Math.random() * 200,y:-50,lootValue:2});
      }
      if(Math.random() < 0.02)
      {
         _root.incDt2();
         stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:150 + Math.random() * 200,y:-50,lootValue:1});
      }
      if(Math.random() < 0.005)
      {
         _root.incDt2();
         stuffHolder.attachMovie("newLoot11","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:150 + Math.random() * 200,y:-50,lootValue:2});
      }
   }
   if((_root.save.arenaRuneDuration[1] <= 0 || enemy.enemyID == 0) && _root.save.arenaHealth > 0)
   {
      _root.save.arenaHealth += Math.floor(_root.hpRecover / 10);
   }
   if(_root.save.arenaRuneDuration[2] <= 0 || enemy.enemyID == 0)
   {
      _root.save.arenaMana += Math.floor(_root.mpRecover / 10);
   }
}
function dealDamage(skillPower, knockBack, special)
{
   if(_root.specInfinity > 0)
   {
      _root.save.arenaMana = _root.maxMana;
   }
   if(_root.arenaBot > 48000)
   {
      _root.showPopup("Exhaustion","You can no longer attack as you are exhausted. Release the attack key and take a short break.");
   }
   else if(_root.arenaBot > 24000)
   {
      _root.showPopup("Exhaustion","Release the attack key and take a short break. Active skills will stop working in " + _root.withComma((48000 - _root.arenaBot) / 40) + " sec.");
   }
   if(_root.save.arenaZone == 24)
   {
      knockBack *= 0.1;
   }
   if(_root.save.arenaZone >= 31 && _root.save.arenaZone <= 42)
   {
      knockBack *= 0.1;
   }
   if(_root.save.arenaZone == 52)
   {
      knockBack *= 0.1;
   }
   if(_root.save.arenaZone == 56 && special != "Poison")
   {
      _root.areaRevengeRage += 1;
      if(_root.areaRevengeRage >= 150)
      {
         takeDamage(99999999999,"Cannot Dodge");
      }
      _root.areaRevengeCalm = 0;
   }
   hitChancePenalty = 0 + Math.floor((enemy.level - _root.save.level) / 100);
   if(hitChancePenalty > 30)
   {
      hitChancePenalty = 30;
   }
   if(_root.save.arenaZone == 82 && (_root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA" || _root.save.inventoryName[_root.save.arenaWeapon] == "Dark Ruler"))
   {
      hitChancePenalty = 999;
   }
   if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 3 && _root.setHighest >= 2)
   {
      hitChancePenalty = 999;
      _root.fightStat2 = "You have 2+ items of the same set equipped!";
   }
   if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 3 && _root.save.arenaWeapon != 0)
   {
      hitChancePenalty = 999;
   }
   if(enemy.level > _root.save.level && _root.save.level < 8999)
   {
      hitChancePenalty += 10;
      if(_root.save.gDifficulty >= 3)
      {
         hitChancePenalty += 20;
      }
      else if(_root.save.gDifficulty >= 2)
      {
         hitChancePenalty += 10;
      }
   }
   if(_root.worstMoon == true)
   {
      hitChancePenalty += 5;
   }
   finalEvasion = enemy.evasion;
   if(enemy.blind > 0)
   {
      finalEvasion = enemy.evasion * (100 - _root.blindPower) / 100;
   }
   if(Math.random() > hitChancePenalty / 100 && (Math.random() < _root.accuracy / finalEvasion - 0.1 || Math.random() < _root.accuracyPct / 100) || special == "Ignore Evasion")
   {
      enemy.crescendo += 1;
      if(enemy.crescendo <= _root.save.arenaSkill[63])
      {
         enemy.crescendoMult *= 1.02;
      }
      finalIgnoreDef = _root.ignoreDefense;
      if(enemy.weaken > 0)
      {
         finalIgnoreDef = _root.ignoreDefense + (100 - _root.ignoreDefense) * _root.weakenPower / 100;
      }
      if(special == "Ignore Defense")
      {
         finalIgnoreDef = 100;
      }
      if(special == "Pierce" && enemy.defense < 99999999999)
      {
         finalIgnoreDef = 100;
      }
      damageDealt = Math.ceil(((_root.minDamage + random(_root.maxDamage - _root.minDamage + 1)) * (skillPower / 100) - enemy.defense * (100 - finalIgnoreDef) / 100) * (_root.areaDamagePct / 100));
      if(special == "Pierce" && damageDealt < 50)
      {
         damageDealt = 50;
      }
      if(enemy.crescendo == 1)
      {
         enemy.defense = Math.ceil(enemy.defense * (1 - _root.save.arenaSkill[63] * 0.005));
         enemy.evasion = Math.ceil(enemy.evasion * (1 - _root.save.arenaSkill[63] * 0.005));
      }
      if(special == "Heal")
      {
         damageDealt = Math.ceil((_root.minDamage + random(_root.maxDamage - _root.minDamage + 1)) * (skillPower / 100) * (_root.areaDamagePct / 100));
      }
      if(special == "Invisible Ally - Ignore Defense")
      {
         damageDealt = Math.ceil((_root.minDamage + random(_root.maxDamage - _root.minDamage + 1)) * (skillPower / 100) * (_root.areaDamagePct / 100));
         allyDamageMult = 1 + (_root.enemyList[_root.save.arenaAlly].level - enemy.level) / 100;
         if(allyDamageMult > 3)
         {
            allyDamageMult = 3;
         }
         if(allyDamageMult < 0.5)
         {
            allyDamageMult = 0.5;
         }
         damageDealt = Math.floor(damageDealt * allyDamageMult);
      }
      if(special == "Invisible Ally")
      {
         allyDamageMult = 1 + (_root.enemyList[_root.save.arenaAlly].level - enemy.level) / 100;
         if(allyDamageMult > 3)
         {
            allyDamageMult = 3;
         }
         if(allyDamageMult < 0.5)
         {
            allyDamageMult = 0.5;
         }
         damageDealt = Math.floor(damageDealt * allyDamageMult);
      }
      if(special == "Roundhouse Kick")
      {
         damageDealt = Math.ceil((_root.minDamage + random(_root.maxDamage - _root.minDamage + 1)) * (skillPower / 100) * (_root.areaDamagePct / 100));
         rangedAttack._alpha = 100;
         rangedAttack.gotoAndStop(10);
      }
      if(special == "Bacon")
      {
         rangedAttack._alpha = 100;
         if(_root.save.vegetarianMode == true)
         {
            rangedAttack.gotoAndStop(12);
         }
         else
         {
            rangedAttack.gotoAndStop(11);
         }
      }
      if(_root.save.arenaZone == 52)
      {
         damageDealt = Math.ceil(Math.pow(damageDealt,0.8) * 40);
         if(isNaN(damageDealt))
         {
            damageDealt = 50;
         }
      }
      if(_root.manaPower == true)
      {
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA")
         {
            damageDealt = Math.ceil(damageDealt * (2 + _root.save.arenaFury / 100));
            _root.save.arenaFury -= 1;
            if(_root.save.arenaFury <= 0)
            {
               _root.save.arenaFury = 0;
               _root.manaPower = false;
            }
         }
         else if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
         {
            if(_root.save.arenaSpirit >= _root.maxSpirit - 10)
            {
               spiritToConsume = _root.save.arenaSpirit + 10 - _root.maxSpirit;
               if(spiritToConsume < 0)
               {
                  spiritToConsume = 0;
               }
               if(spiritToConsume > 10)
               {
                  spiritToConsume = 10;
               }
            }
            else
            {
               spiritToConsume = 0;
            }
            _root.save.arenaSpirit -= spiritToConsume;
            damageDealt = Math.ceil(damageDealt * (1 + spiritToConsume / 10));
         }
         else
         {
            manaToConsume = Math.ceil(_root.save.arenaMana / 50);
            if(_root.save.arenaMana > 5000000)
            {
               manaToConsume = 100000 + Math.ceil((_root.save.arenaMana - 5000000) / 100);
            }
            if(_root.save.arenaMana > 10000000)
            {
               manaToConsume = 150000 + Math.ceil((_root.save.arenaMana - 10000000) / 200);
            }
            if(manaToConsume > _root.save.arenaMana)
            {
               manaToConsume = _root.save.arenaMana;
            }
            _root.save.arenaMana -= manaToConsume;
            if(_root.specInfinity > 0)
            {
               _root.save.arenaMana = _root.maxMana;
            }
            damageDealt = Math.ceil(damageDealt * (1 + manaToConsume / 50000));
         }
      }
      damagePenalty = 40 + (Math.pow(enemy.level,1.12) / (_root.save.level + _root.save.arenaLevel * 10 + 999) - 1) * 50;
      if(_root.save.gDifficulty >= 3 && _root.save.level < 8999)
      {
         damagePenalty += (8999 - _root.save.level) / 450;
      }
      if(damagePenalty < 0)
      {
         damagePenalty = 0;
      }
      if(enemy.level > _root.save.level && _root.save.level < 8999)
      {
         damagePenalty += 10;
         if(_root.save.gDifficulty >= 3)
         {
            damagePenalty += 20;
         }
         else if(_root.save.gDifficulty >= 2)
         {
            damagePenalty += 10;
         }
      }
      if(_root.worstMoon == true)
      {
         damagePenalty += 5;
      }
      if(enemy.boss == true)
      {
         damagePenalty += 20;
      }
      if(enemy.zombie == true && special != "Heal" && _root.save.arenaZone != 20)
      {
         damagePenalty += 70;
      }
      if(_root.save.gDifficulty >= 3 && _root.save.level < 8999 && damagePenalty > 95)
      {
         if(damagePenalty > 97.5)
         {
            damagePenalty = 97.5;
         }
      }
      else if(damagePenalty > 95)
      {
         damagePenalty = 95;
      }
      if(_root.apocalypse == true)
      {
         damagePenalty += (100 - damagePenalty) / 2;
      }
      if(enemy.enemyID == 331 && _root.save.level < 9000)
      {
         damagePenalty = 100;
      }
      if(enemy.ultra != true)
      {
         if(_root.save.inventoryName[_root.save.arenaHat] == "ULTRA HAT" || _root.save.inventoryName[_root.save.arenaShirt] == "ULTRA SHIRT" || _root.save.inventoryName[_root.save.arenaGloves] == "ULTRA GLOVES" || _root.save.inventoryName[_root.save.arenaPants] == "ULTRA PANTS" || _root.save.inventoryName[_root.save.arenaShoes] == "ULTRA SHOES")
         {
            damagePenalty = 100;
         }
      }
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "Sword of Ascendant" && enemy.enemyID != 331)
      {
         damagePenalty = 100;
      }
      if(_root.save.inventoryName[_root.save.arenaWeapon] != "Sword of Ascendant" && enemy.enemyID == 331)
      {
         damagePenalty = 100;
      }
      damageDealt = Math.floor(damageDealt * (100 - damagePenalty) / 100);
      if(enemy.name == "Secret Crystal" && _root.save.inventorySubtype[_root.save.arenaWeapon] == "Mining Tool" && damagePenalty < 100)
      {
         damageDealt = 2000;
         if(_root.challengeZone == _root.save.arenaZone && _root.save.arenaZone && _root.challengeDuration > 0)
         {
            damageDealt = 1;
         }
      }
      if(enemy.name == "Pirate Gem" && _root.save.inventorySubtype[_root.save.arenaWeapon] == "Mining Tool" && damagePenalty < 100)
      {
         damageDealt = 6;
      }
      if(_root.save.arenaZone == 21 && _root.save.inventorySubtype[_root.save.arenaWeapon] == "Mining Tool" && damagePenalty < 100)
      {
         damageDealt = 4;
      }
      if(_root.save.arenaZone >= 23 && _root.save.arenaZone <= 25 && damagePenalty < 100)
      {
         if(_root.save.inventoryName[_root.save.arenaWeapon] == "Special Wand")
         {
            damageDealt = Math.ceil((Math.min(_root.save.level,5000) / 10 + _root.save.arenaLevel + 500) * skillPower / 100);
            if(_root.arenaWeaken > 0)
            {
               damageDealt = Math.floor(damageDealt * 0.6);
            }
            if(_root.save.inventorySpirit[_root.save.arenaWeapon] == false)
            {
               damageDealt = Math.floor(damageDealt * 1.5);
            }
         }
         if(enemy.name == "DON\'T ATTACK!!!")
         {
            damageDealt = 1;
         }
      }
      if(enemy.boss == true)
      {
         damageDealt = Math.ceil(damageDealt * (1 + _root.bossDamage / 100));
      }
      else
      {
         damageDealt = Math.ceil(damageDealt * (1 + _root.nonBossDamage / 100));
      }
      damageDealt = Math.ceil(damageDealt * enemy.crescendoMult);
      if(_root.turnBased == true)
      {
         damageDealt = Math.ceil(damageDealt * 0.99);
      }
      if((enemy.enemyID == 0 || enemy.tankMode == true) && _root.save.arenaZone != 24 && (_root.save.arenaZone < 30 || _root.save.arenaZone > 43))
      {
         damageDealt = Math.ceil(damageDealt * 0.2);
      }
      if(_root.save.arenaZone == 20)
      {
         damageDealt += Math.floor(Math.min(Math.sqrt((_root.minDamage + random(_root.maxDamage - _root.minDamage)) / 1000),100) * skillPower * 2 / 100);
         if(_root.setCount[67] >= 3)
         {
            damageDealt = Math.floor(damageDealt * 1.25);
         }
         if(_root.setCount[67] >= 2)
         {
            damageDealt = Math.floor(damageDealt * 1.2);
         }
      }
      if(_root.save.arenaZone == 47 && _root.setCount[32] >= 6)
      {
         damageDealt = Math.floor(damageDealt * 1.2);
      }
      if(_root.save.arenaZone == 54 && _root.setCount[72] >= 2)
      {
         damageDealt = Math.floor(damageDealt * 1.2);
      }
      if(_root.save.arenaZone == 78 && (_root.setCount[53] >= 6 || _root.setCount[54] >= 6))
      {
         damageDealt = Math.floor(damageDealt * 1.2);
      }
      if(_root.setCount[74] >= 7)
      {
         damageDealt = Math.floor(damageDealt * 1.2);
      }
      if(_root.save.arenaZone == 54 && _root.setCount[76] >= 2)
      {
         damageDealt = Math.floor(damageDealt * 1.5);
      }
      if(_root.save.arenaZone == 78 && _root.setCount[76] >= 2)
      {
         damageDealt = Math.floor(damageDealt * 1.5);
      }
      if(damageDealt < 1 || isNaN(damageDealt))
      {
         damageDealt = 1;
      }
      if(_root.save.arenaZone == 54)
      {
         if(_root.arenaChaosPhase == 2)
         {
            damageDealt = 1;
         }
         if(_root.arenaChaosPhase == 5 || _root.arenaChaosPhase == 6)
         {
            _root.save.arenaHealth = Math.ceil(_root.save.arenaHealth * 0.7);
         }
      }
      if(hero.Xalpha == 30)
      {
         damageDealt = 0;
      }
      critHit = false;
      coupBonus = 0;
      if(enemy.hp < enemy.maxhp)
      {
         if(enemy.poison > 0)
         {
            coupBonus += _root.save.arenaSkill[38] * 0.002;
         }
         if(enemy.weaken > 0)
         {
            coupBonus += _root.save.arenaSkill[38] * 0.002;
         }
         if(enemy.blind > 0)
         {
            coupBonus += _root.save.arenaSkill[38] * 0.002;
         }
         if(enemy.stun > 0)
         {
            coupBonus += _root.save.arenaSkill[38] * 0.002;
         }
         if(enemy.slow > 0)
         {
            coupBonus += _root.save.arenaSkill[38] * 0.002;
         }
      }
      damageDealt += Math.ceil(damageDealt * coupBonus);
      damageDealt += Math.ceil(damageDealt * nextAttack);
      if(_root.save.restTime > 0)
      {
         damageDealt = Math.floor(damageDealt * (1.1 + _root.save.restEfficiency[4] * 0.01));
      }
      if(special != "Poison" && special != "Reflect")
      {
         if(_root.save.arenaRing == 18)
         {
            _root.arenaCombo += 1;
         }
         if(Math.random() < _root.abilExtraCombo / 100)
         {
            _root.arenaCombo += 3;
         }
      }
      if(_root.spiritCrit > 0)
      {
         _root.arenaCombo += 1;
         damageDealt = Math.ceil(damageDealt * _root.criticalDamage / 40);
         critHit = true;
      }
      else if(special == "Reflect" && _root.save.arenaRing == 8 || special == "Rapid Fire")
      {
         _root.arenaCombo += 1;
         damageDealt = Math.ceil(damageDealt * _root.criticalDamage / 100);
         critHit = true;
      }
      else if(enemy.enemyID != 0 && enemy.hp / enemy.maxhp <= _root.save.arenaSkill[38] * 0.01)
      {
         _root.arenaCombo += 1;
         damageDealt = Math.ceil(damageDealt * _root.criticalDamage / 100);
         critHit = true;
      }
      else if(_root.save.arenaZone == 81 && 100 - enemy.explodeCount / 36 <= _root.save.arenaSkill[38])
      {
         _root.arenaCombo += 1;
         damageDealt = Math.ceil(damageDealt * _root.criticalDamage / 100);
         critHit = true;
      }
      else if(special == "Bacon" && _root.save.robaconLevel >= 125 && _root.worstMoon != true)
      {
         _root.arenaCombo += 1;
         damageDealt = Math.ceil(damageDealt * _root.criticalDamage / 100);
         critHit = true;
      }
      else if(special == "Explosive" && _root.worstMoon != true)
      {
         _root.arenaCombo += 1;
         damageDealt = Math.ceil(damageDealt * _root.criticalDamage / 100);
         critHit = true;
      }
      else if(Math.random() * 100 < _root.criticalChance)
      {
         if(_root.worstMoon != true)
         {
            _root.arenaCombo += 1;
         }
         damageDealt = Math.ceil(damageDealt * _root.criticalDamage / 100);
         critHit = true;
      }
      _root.incDt();
      if(enemy.immune == true)
      {
         damageDealt = 1;
      }
      if(_root.save.arenaZone == 78)
      {
         if(enemy.lifespan >= 300)
         {
            damageDealt = Math.floor(damageDealt * 100);
         }
         else if(enemy.lifespan >= 180)
         {
            damageDealt = Math.floor(damageDealt * 30);
         }
         else if(enemy.lifespan >= 90)
         {
            damageDealt = Math.floor(damageDealt * 10);
         }
         else if(enemy.lifespan >= 30)
         {
            damageDealt = Math.floor(damageDealt * 3);
         }
      }
      else if(_root.save.arenaZone == 52 || _root.save.arenaZone == 68)
      {
         if(enemy.lifespan >= 100)
         {
            damageDealt = Math.floor(damageDealt * 100);
         }
         else if(enemy.lifespan >= 30)
         {
            damageDealt = Math.floor(damageDealt * 30);
         }
         else if(enemy.lifespan >= 10)
         {
            damageDealt = Math.floor(damageDealt * 10);
         }
         else if(enemy.lifespan >= 3)
         {
            damageDealt = Math.floor(damageDealt * 3);
         }
      }
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "Eric\'s Gun-Shovel" || _root.save.inventoryName[_root.save.arenaWeapon] == "Eric\'s Shovel")
      {
         if(damageDealt > 8888888888)
         {
            damageDealt = 8888888888;
         }
         else if(damageDealt > 888888888)
         {
            damageDealt = 888888888;
         }
         else if(damageDealt > 88888888)
         {
            damageDealt = 88888888;
         }
         else if(damageDealt > 8888888)
         {
            damageDealt = 8888888;
         }
         else if(damageDealt > 888888)
         {
            damageDealt = 888888;
         }
         else if(damageDealt > 88888)
         {
            damageDealt = 88888;
         }
         else if(damageDealt > 8888)
         {
            damageDealt = 8888;
         }
         else if(damageDealt > 888)
         {
            damageDealt = 888;
         }
         else if(damageDealt > 88)
         {
            damageDealt = 88;
         }
         else if(damageDealt > 8)
         {
            damageDealt = 8;
         }
      }
      if(_root.save.arenaZone >= 23 && _root.save.arenaZone <= 25)
      {
         if(damageDealt > 999999)
         {
            damageDealt = 999999;
         }
      }
      if(enemy.enemyID == 440)
      {
         if(enemy.ultra == true)
         {
            if(damageDealt > 5000000000)
            {
               damageDealt = 5000000000 + Math.ceil(Math.pow(damageDealt - 5000000000,0.94));
            }
            if(damageDealt > 500000000 && enemy.lifespan < 30)
            {
               damageDealt = 500000000;
            }
         }
         else
         {
            if(damageDealt > 1000000000)
            {
               damageDealt = 1000000000 + Math.ceil(Math.pow(damageDealt - 1000000000,0.94));
            }
            if(_root.save.arenaHardcore == true && damageDealt > 250000000)
            {
               damageDealt = 250000000 + Math.ceil(Math.pow(damageDealt - 250000000,0.97));
            }
            if(damageDealt > 100000000 && enemy.lifespan < 30)
            {
               damageDealt = 100000000;
            }
         }
      }
      if(_root.challengeZone == _root.save.arenaZone && _root.challengeDuration > 0)
      {
         if(boss == true)
         {
            damageSoftCap = Math.ceil(enemy.maxhp * 0.01 * Math.min(skillPower,10000) / 2000);
         }
         else
         {
            damageSoftCap = Math.ceil(enemy.maxhp * 0.05 * Math.min(skillPower,10000) / 2000);
         }
         if(enemy.lifespan < 1)
         {
            damageSoftCap = Math.ceil(damageSoftCap * 0.5);
         }
         damagePow = Math.max(0.9 - _root.challengeKill * 0.001,0.7);
         if(damageDealt > damageSoftCap)
         {
            damageDealt = damageSoftCap + Math.ceil(Math.pow(damageDealt - damageSoftCap,damagePow));
         }
         if(damageDealt > damageSoftCap * 50)
         {
            damageDealt = damageSoftCap * 50 + Math.ceil(Math.pow(damageDealt - damageSoftCap * 10,0.5));
         }
      }
      if(enemyImmune.fr == 3)
      {
         if(special == "Z" && enemyImmune.timeZ < 0)
         {
            damageDealt = 0;
            if(enemyImmune.timeZ > -999999)
            {
               takeDamage(2 + random(2),"Cannot Dodge");
            }
         }
         if(special == "X" && enemyImmune.timeX < 0)
         {
            damageDealt = 0;
            if(enemyImmune.timeX > -999999)
            {
               takeDamage(2 + random(2),"Cannot Dodge");
            }
         }
         if(special == "Quick Attack" && enemyImmune.timeX < 0)
         {
            damageDealt = 0;
         }
         if(special == "Quick Attack 1" && enemyImmune.timeX < 0)
         {
            damageDealt = 0;
         }
         if(special == "Quick Attack 2" && enemyImmune.timeX < 0)
         {
            damageDealt = 0;
         }
         if(special == "Quick Attack 3" && enemyImmune.timeX < 0)
         {
            damageDealt = 0;
         }
         if(special == "Quick Attack 4" && enemyImmune.timeX < 0)
         {
            damageDealt = 0;
         }
         if(special == "C" && enemyImmune.timeC < 0)
         {
            if(enemyImmune.timeC > -999999)
            {
               takeDamage(2 + random(2),"Cannot Dodge");
            }
            damageDealt = 0;
         }
      }
      if(_root.save.arenaMaxDamage < damageDealt)
      {
         _root.save.arenaMaxDamage = damageDealt;
      }
      if(special == "Poison")
      {
         showDamage(damageDealt,10092288,enemy._x + enemy._width / 2,40);
      }
      else if(special == "Quick Attack")
      {
         if(critHit == true)
         {
            showDamage(damageDealt,14496512,enemy._x + enemy._width / 2,80);
         }
         else
         {
            showDamage(damageDealt,14522624,enemy._x + enemy._width / 2,80);
         }
      }
      else if(special == "Quick Attack 2")
      {
         if(critHit == true)
         {
            showDamage(damageDealt,14496512,enemy._x + enemy._width / 2,70);
         }
         else
         {
            showDamage(damageDealt,14522624,enemy._x + enemy._width / 2,70);
         }
      }
      else if(special == "Quick Attack 3")
      {
         if(critHit == true)
         {
            showDamage(damageDealt,14496512,enemy._x + enemy._width / 2,60);
         }
         else
         {
            showDamage(damageDealt,14522624,enemy._x + enemy._width / 2,60);
         }
      }
      else if(special == "Quick Attack 4")
      {
         if(critHit == true)
         {
            showDamage(damageDealt,14496512,enemy._x + enemy._width / 2,50);
         }
         else
         {
            showDamage(damageDealt,14522624,enemy._x + enemy._width / 2,50);
         }
      }
      else if(special == "Rapid Fire")
      {
         showDamage(damageDealt,14496512,enemy._x + enemy._width / 2,40);
      }
      else if(special == "Ultimate Attack")
      {
         _root.arenaCombo += 3;
         if(critHit == true)
         {
            showDamage(_root.withComma(damageDealt) + " x 4",14496512,enemy._x + enemy._width / 2,50);
         }
         else
         {
            showDamage(_root.withComma(damageDealt) + " x 4",14522624,enemy._x + enemy._width / 2,50);
         }
         damageDealt *= 4;
      }
      else if(special == "Double Hit")
      {
         if(critHit == true)
         {
            showDamage(damageDealt,14496512,enemy._x + enemy._width / 2,100);
         }
         else
         {
            showDamage(damageDealt,14522624,enemy._x + enemy._width / 2,100);
         }
      }
      else if(special == "Explosive")
      {
         showDamage(damageDealt,16777215,enemy._x + enemy._width / 2,40);
      }
      else if(critHit == true)
      {
         showDamage(damageDealt,14496512,enemy._x + enemy._width / 2,90);
      }
      else
      {
         showDamage(damageDealt,14522624,enemy._x + enemy._width / 2,90);
      }
      if(_root.autoSteal > 0 && !isNaN(_root.autoSteal) && damageDealt > 0 && !isNaN(damageDealt))
      {
         damagePct = damageDealt / enemy.maxhp * 100;
         if(damagePct > enemy.stealable)
         {
            damagePct = enemy.stealable;
         }
         if(damagePct < 0)
         {
            damagePct = 0;
         }
         if(isNaN(damagePct))
         {
            damagePct = 0;
         }
         enemy.stealable -= damagePct;
         _root.autoStealCoin += Math.ceil(damagePct * _root.autoSteal * enemy.coin * _root.save.boost / 1250000);
         _root.save.arenaPixel += Math.ceil(damagePct * _root.autoSteal * enemy.pixel / 12500);
      }
      enemy.hp -= damageDealt;
      if(_root.save.arenaZone == 54)
      {
         if(_root.arenaChaosPhase == 3 || _root.arenaChaosPhase == 6)
         {
            enemy.hp += damageDealt * 3;
         }
      }
      if(_root.save.arenaZone == 81)
      {
         enemy.hp += damageDealt;
         _root.areaDamage += Math.floor(damageDealt / 90000000);
         _root.areaDamageRemainder += damageDealt % 90000000;
         if(_root.areaDamageRemainder >= 90000000)
         {
            _root.areaDamageRemainder -= 90000000;
            _root.areaDamage += 1;
         }
      }
      if(_root.save.arenaZone == 84)
      {
         enemy.hp += damageDealt;
         _root.areaDamage += damageDealt;
      }
      instantKillChance = _root.instantKill / 100;
      if(enemy.boss == true)
      {
         instantKillChance = 0;
      }
      if(enemy.hp > enemy.maxhp * 0.5)
      {
         instantKillChance = 0;
      }
      if(Math.random() < instantKillChance || _root.spiritInsta > 0 || special == "Headshot")
      {
         if(_root.save.arenaZone != 52 && enemy.boss != true && enemy.ultra != true && enemy.hp <= enemy.maxhp * 0.99)
         {
            enemy.hp = 0;
            showDamage("Instant Kill",13421772,enemy._x + enemy._width / 2,40);
         }
      }
      if(_root.save.arenaZone == 20)
      {
         _root.raidDamage += damageDealt;
      }
      if(damageDealt > 0)
      {
         toDrain = Math.ceil(Math.pow(damageDealt,0.4) * _root.lifeDrain * 10);
         maxDrain = Math.floor(_root.maxHealth * _root.lifeDrain / 500);
         if(toDrain > maxDrain)
         {
            toDrain = maxDrain;
         }
         if(_root.save.arenaZone >= 30 && _root.save.arenaZone <= 43)
         {
            toDrain = Math.floor(toDrain / 10);
         }
         if(_root.save.arenaHealth <= 0)
         {
            toDrain = 0;
         }
         if(special != "Poison" && special != "Reflect")
         {
            _root.save.arenaHealth += toDrain;
         }
         if(special == "Absorb")
         {
            _root.save.arenaHealth += Math.floor(_root.maxHealth * Math.floor(_root.save.arenaSkill[3] * 1 + 10) / 100);
            _root.save.arenaMana += Math.floor(_root.maxMana * Math.floor(_root.save.arenaSkill[3] * 0.5 + 5) / 100);
         }
         if(special == "Threaten")
         {
            enemy.stun = 3;
            if(enemy.threatCount < 1)
            {
               enemy.threatCount = 1;
               enemy.attack = Math.ceil(enemy.attack * (0.88 - _root.save.arenaSkill[3] * 0.006));
               enemy.rangeDamage = Math.ceil(enemy.rangeDamage * (0.88 - _root.save.arenaSkill[3] * 0.006));
            }
            else if(enemy.threatCount < 10)
            {
               enemy.threatCount += 1;
               enemy.attack = Math.ceil(enemy.attack * (0.98 - _root.save.arenaSkill[3] * 0.001));
               enemy.rangeDamage = Math.ceil(enemy.rangeDamage * (0.98 - _root.save.arenaSkill[3] * 0.001));
            }
         }
         if(special == "Hamstring")
         {
            if(Math.random() < 0.05 + _root.save.arenaSkill[3] / 200 && enemy.slow <= -0.5)
            {
               enemy.slow = 1;
               showDamage("SLOW",10092543,enemy._x + enemy._width / 2,40);
            }
         }
         if(special == "Hyper Cannonball")
         {
            enemy.stun = 4;
         }
         if(special == "Hyper EXPlosion")
         {
            if(enemy.exp >= 100000)
            {
               enemy.exp += Math.floor(120000 + _root.save.arenaSkill[3] * 6000);
            }
            else
            {
               enemy.exp = Math.floor(enemy.exp * (2.2 + _root.save.arenaSkill[3] * 0.06));
            }
            enemy.stun = 3;
         }
         _root.save.arenaMana += Math.floor(_root.manaLeech * 25);
         if(enemy.boss == true && Math.random() < _root.save.arenaSkill[37] * 0.01)
         {
            _root.save.arenaSpirit += 3;
         }
      }
      if(damageDealt > 0 && enemy.speed > 0)
      {
         if(enemy.boss == true)
         {
            knockBack = Math.ceil(knockBack * 0.7);
         }
         if(knockBack > 0 && enemy.curSpeed > knockBack * -1)
         {
            enemy.curSpeed = knockBack * -1;
         }
         if(special == "Magnetic")
         {
            enemy.magImmune = 15;
            enemy.magnetCount += 1;
            magEff = random(100) + 1;
            trace(magEff);
            if(magEff <= 70 || enemy.magnetCount > 10)
            {
               lootValue = Math.floor((1000 + _root.arenaSkillSpecLevel * 100) * _root.arenaCoinMult * _root.save.boost / 10000 * (0.9 + Math.random() * 0.2));
               if(_root.save.permaBanPenalty[11] == 3)
               {
                  lootValue = Math.floor(lootValue * 2);
               }
               else if(_root.save.permaBanPenalty[11] == 2)
               {
                  lootValue = Math.floor(lootValue * 1.6);
               }
               else if(_root.save.permaBanPenalty[11] == 1)
               {
                  lootValue = Math.floor(lootValue * 1.4);
               }
               _root.incDt2();
               stuffHolder.attachMovie("newLoot1","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:enemy._x + enemy._width / 2,y:150,lootValue:lootValue});
            }
            else if(magEff <= 90)
            {
               lootValue = 700;
               if(_root.save.permaBanPenalty[11] == 3)
               {
                  lootValue = Math.floor(lootValue * 2);
               }
               else if(_root.save.permaBanPenalty[11] == 2)
               {
                  lootValue = Math.floor(lootValue * 1.6);
               }
               else if(_root.save.permaBanPenalty[11] == 1)
               {
                  lootValue = Math.floor(lootValue * 1.4);
               }
               _root.incDt2();
               stuffHolder.attachMovie("newLoot2","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:enemy._x + enemy._width / 2,y:150,lootValue:lootValue});
            }
            else if(magEff <= 99 || _root.save.wcDropToday >= 25000 || Math.random() < 0.7)
            {
               lootValue = 7;
               if(_root.save.permaBanPenalty[11] == 3)
               {
                  lootValue = Math.floor(lootValue * 2);
               }
               else if(_root.save.permaBanPenalty[11] == 2)
               {
                  lootValue = Math.floor(lootValue * 1.6);
               }
               else if(_root.save.permaBanPenalty[11] == 1)
               {
                  lootValue = Math.floor(lootValue * 1.4);
               }
               _root.incDt2();
               stuffHolder.attachMovie("newLoot3","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:enemy._x + enemy._width / 2,y:150,lootValue:lootValue});
            }
            else if(_root.save.wcDropToday < 25000)
            {
               _root.save.wcDropToday += 1;
               lootValue = 1;
               _root.incDt2();
               stuffHolder.attachMovie("newLoot20","newLoot" + _root.summonCount,_root.antiLag2 + 500,{x:enemy._x + enemy._width / 2,y:150,lootValue:lootValue});
            }
         }
      }
      _root.arenaCombo += 1;
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         _root.save.arenaSpirit += 1;
         if(_root.manaPower == true)
         {
            if(_root.save.inventoryName[_root.save.arenaWeapon] == "Ultimate Weapon" || _root.save.inventoryName[_root.save.arenaWeapon] == "Reincarnation Weapon")
            {
               _root.save.arenaSpirit += 1;
            }
            else
            {
               _root.save.arenaSpirit += 4;
            }
         }
         if(_root.save.arenaRing == 11 && Math.random() < 0.5)
         {
            _root.save.arenaSpirit += 1;
         }
      }
      if(enemy.rampagePct != 0 || enemy.skill != "None" || enemy.skillLevel != 0 || enemy.rangeDamage != 0)
      {
         if(Math.random() < _root.silenceChance / 100 && enemy.boss != true && enemy.skillLevel >= 0)
         {
            enemy.rampagePct = 0;
            enemy.explodeDamage = 1;
            enemy.skill = "None";
            enemy.skillLevel = -1;
            enemy.rangeDamage = 0;
            showDamage("SILENCED",16777215,enemy._x + enemy._width / 2,40);
         }
      }
      nextAttack = 0;
      if(_root.save.arenaRing == 19 && Math.random() < 0.05)
      {
         if(enemy.slow <= -0.5)
         {
            enemy.slow = 1;
         }
      }
      if(Math.random() < _root.poisonChance / 100)
      {
         if(enemy.poison <= -0.5)
         {
            enemy.poison = _root.poisonDuration;
         }
         else if(enemy.poison > 0)
         {
            nextAttack += _root.save.arenaSkill[39] * 0.005;
         }
      }
      if(Math.random() < _root.weakenChance / 100)
      {
         if(enemy.weaken <= -0.5)
         {
            enemy.weaken = _root.weakenDuration;
         }
         else if(enemy.weaken > 0)
         {
            nextAttack += _root.save.arenaSkill[41] * 0.005;
         }
      }
      if(Math.random() < _root.blindChance / 100)
      {
         if(enemy.blind <= -0.5)
         {
            enemy.blind = _root.blindDuration;
         }
         else if(enemy.blind > 0)
         {
            nextAttack += _root.save.arenaSkill[43] * 0.005;
         }
      }
      if(Math.random() < _root.stunChance / 100 && enemy.stun <= -0.5 && special != "Explosive")
      {
         enemy.stun = _root.stunDuration;
         if(_root.save.arenaSkill[45] > 0)
         {
            dealDamage(_root.save.arenaSkill[45] * 20,0,"Explosive");
         }
      }
   }
   else
   {
      if(_root.save.arenaZone == 50)
      {
         if(_root.save.arenaCorruptEvasion > 1000)
         {
            _root.save.arenaCorruptEvasion -= 20;
         }
         else if(_root.save.arenaCorruptEvasion > 200)
         {
            _root.save.arenaCorruptEvasion -= 10;
         }
         else if(_root.save.arenaCorruptEvasion > 50)
         {
            _root.save.arenaCorruptEvasion -= 1;
         }
      }
      showDamage("MISS!!",10066329,enemy._x + enemy._width / 2,80);
   }
}
function takeDamage(damageTemp, special)
{
   if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 2)
   {
      if(isNaN(tmpHealth))
      {
         tmpHealth = _root.save.arenaHealth;
      }
      if(enemy.enemyID != 0)
      {
         if(_root.save.arenaHealth > tmpHealth)
         {
            _root.save.arenaHealth = tmpHealth;
         }
      }
      tmpHealth = _root.save.arenaHealth;
   }
   if((_root.save.arenaZone >= 62 && _root.save.arenaZone <= 67 || _root.save.arenaZone >= 86 && _root.save.arenaZone <= 91) && _root.areaFairyPerformance > 0)
   {
      _root.areaFairyPerformance -= 1;
   }
   finalAccuracy = enemy.accuracy;
   if(enemy.blind > 0)
   {
      finalAccuracy = enemy.accuracy * (100 - _root.blindPower) / 100;
   }
   noDodgeChance = finalAccuracy / _root.evasion - 0.1;
   if(noDodgeChance < 0.1)
   {
      noDodgeChance = 0.1;
   }
   if(hero.Xalpha == 30)
   {
      noDodgeChance = 0;
   }
   if(_root.save.arenaZone == 24 || _root.save.arenaZone == 38)
   {
      dodgeCombo = 0;
   }
   if(Math.random() < noDodgeChance && Math.random() > _root.evasionPct / 100 || dodgeCombo >= 10 || special == "Drown" || special == "Cannot Dodge" || special == "Apocalypse")
   {
      if(special != "Heal" && special != "Drown" && special != "Cannot Dodge" && special != "Apocalypse")
      {
         dodgeCombo = 0;
      }
      tempDEF = _root.damageResist;
      if(enemy.enemyID != 0)
      {
         tempDEF = Math.floor(tempDEF * (1 + (_root.save.level - enemy.level) / 6000));
         if(enemy.level > _root.save.level && _root.save.level < 8999)
         {
            if(_root.save.gDifficulty >= 3)
            {
               tempDEF = Math.floor(tempDEF * 0.6);
            }
            else
            {
               tempDEF = Math.floor(tempDEF * 0.8);
            }
         }
      }
      if(tempDEF < 0)
      {
         tempDEF = 0;
      }
      if(tempDEF > Math.floor(_root.damageResist * 2))
      {
         tempDEF = Math.floor(_root.damageResist * 2);
      }
      damageTaken = Math.ceil((damageTemp - tempDEF) * (100 - _root.damageResistPct) / 100);
      if(enemy.weaken > 0)
      {
         damageTaken -= Math.floor(damageTemp * _root.weakenPower * (100 - _root.damageResistPct) / 10000);
      }
      if(special == "Heal")
      {
         damageTaken = Math.ceil(damageTemp * -1);
      }
      if(special == "Drown")
      {
         damageTaken = Math.ceil((damageTemp - _root.damageResist / 3) * (100 - _root.damageResistPct / 3) / 100);
      }
      if(special == "Magic")
      {
         if(damageTaken < 1)
         {
            damageTaken = 1;
         }
         plusDamage = Math.ceil(enemy.rangeDamage * 0.2 * (0.9 + Math.random() * 0.2) * (100 - _root.damageResistPct) / 100);
         if(plusDamage > 10001024)
         {
            plusDamage = Math.ceil(10000000 + Math.pow(plusDamage - 10000000,0.9) * 2);
         }
         damageTaken += plusDamage;
         damageTaken = Math.ceil(damageTaken * (1 - _root.magicResist / 100));
      }
      if(special == "Ignore Defense")
      {
         damageTaken = Math.ceil(damageTemp);
      }
      if(special == "Apocalypse")
      {
         damageTaken = Math.ceil(damageTemp);
      }
      if(_root.save.arenaZone == 56)
      {
         damageTaken = Math.ceil(damageTaken * (1 + _root.areaRevengeRage * 0.01));
      }
      if(_root.save.arenaZone == 53 || _root.save.arenaZone == 54)
      {
         if(_root.dungeonAntiCurse == true)
         {
            damageTaken = Math.ceil(damageTaken * 0.3);
         }
      }
      if(_root.turnBased == true)
      {
         damageTaken = Math.ceil(damageTaken * 1.01);
      }
      if(damageTaken < 1 && special != "Heal")
      {
         damageTaken = 1;
      }
      if(_root.save.arenaZone == 54)
      {
         if(_root.arenaChaosPhase == 4 || _root.arenaChaosPhase == 6)
         {
            damageTaken = Math.ceil(damageTaken * 2);
            if(damageTaken < 666666 && damageTaken > 0)
            {
               damageTaken = 666666;
            }
         }
      }
      if(_root.save.arenaHealth >= _root.maxHealth)
      {
         damageTaken = Math.ceil(damageTaken * (1 - _root.lifeDrain * 0.002));
      }
      if(_root.save.restTime > 0)
      {
         damageTaken = Math.ceil(damageTaken * (0.9 - _root.save.restEfficiency[5] * 0.01));
      }
      if(_root.save.arenaHealth < damageTaken && _root.save.arenaSkill[23] > 0 && enemy.tankMode != true)
      {
         if((_root.reviveCooldown > 0 || _root.save.arenaSkill[64] <= 0) && _root.save.arenaZone != 24 && (_root.save.arenaZone < 30 || _root.save.arenaZone > 43))
         {
            _root.save.arenaHealth = _root.maxHealth;
            enemy.tankMode = true;
         }
      }
      if((enemy.enemyID == 0 || enemy.tankMode == true) && _root.save.arenaZone != 24 && (_root.save.arenaZone < 30 || _root.save.arenaZone > 43))
      {
         damageTaken = Math.ceil(damageTaken * (1 - _root.save.arenaSkill[23] * 0.01));
      }
      if(_root.save.arenaZone == 24 && _root.save.inventorySpirit[_root.save.arenaWeapon] == true)
      {
         damageTaken = Math.ceil(damageTaken * 2.5);
      }
      _root.save.arenaHealth -= damageTaken;
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA" && special != "Apocalypse" && damageTaken > 0)
      {
         _root.save.arenaFury += Math.floor(Math.log(damageTaken));
      }
      if(_root.manaPower == true && special != "Ignore Defense" && special != "Apocalypse" && damageTaken > 0)
      {
         if(_root.save.inventoryName[_root.save.arenaWeapon] != "CHAOS AURA")
         {
            if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
            {
               if(_root.save.arenaSpirit >= Math.floor(damageTaken / 50000))
               {
                  _root.save.arenaSpirit -= Math.floor(damageTaken / 50000);
               }
               else
               {
                  extraDamage = damageTaken - _root.save.arenaSpirit * 50000;
                  damageTaken += extraDamage;
                  _root.save.arenaHealth -= extraDamage;
                  _root.save.arenaSpirit = 0;
               }
            }
            else if(_root.save.arenaMana >= damageTaken)
            {
               _root.save.arenaMana -= damageTaken;
            }
            else
            {
               extraDamage = damageTaken - _root.save.arenaMana;
               damageTaken += extraDamage;
               _root.save.arenaHealth -= extraDamage;
               _root.save.arenaMana = 0;
            }
         }
      }
      if(_root.save.arenaZone == 50)
      {
         if(_root.save.arenaCorruptAttack < 1000 && damageTaken == 1)
         {
            _root.save.arenaCorruptAttack += 10;
         }
         else if(_root.save.arenaCorruptAttack < 1000 && damageTaken < _root.maxHealth * 0.04)
         {
            _root.save.arenaCorruptAttack += 2;
         }
         else if(_root.save.arenaCorruptAttack < 2000 && damageTaken < _root.maxHealth * 0.1)
         {
            _root.save.arenaCorruptAttack += 1;
         }
         else if(_root.save.arenaCorruptAttack > 200 && damageTaken > _root.maxHealth * 0.2)
         {
            _root.save.arenaCorruptAttack -= 10;
         }
         else if(_root.save.arenaCorruptAttack > 50 && damageTaken > _root.maxHealth * 0.2)
         {
            _root.save.arenaCorruptAttack -= 1;
         }
         if(_root.save.arenaCorruptAccuracy > 200)
         {
            _root.save.arenaCorruptAccuracy -= 10;
         }
         else if(_root.save.arenaCorruptAccuracy > 50)
         {
            _root.save.arenaCorruptAccuracy -= 1;
         }
      }
      damageColorX = 10027229;
      if(damageTaken > 0 && special != "Apocalypse")
      {
         if(_root.save.arenaZone != 47)
         {
            damageMult = 1 + Math.pow(damageTaken,0.2);
            comboMult = 1 + _root.arenaCombo / 125;
            if(damageMult > 20 || isNaN(damageMult))
            {
               damageMult = 20;
            }
            if(comboMult > 5 || isNaN(comboMult))
            {
               comboMult = 5;
            }
            _root.save.arenaRage += Math.ceil(damageMult * comboMult);
            if(damageTaken >= 2)
            {
               _root.save.arenaRage += Math.ceil(_root.save.arenaSkill[65] * 0.5);
            }
         }
         else
         {
            _root.save.arenaRage += 1;
         }
      }
      if(special == "Magic")
      {
         comboToLose = Math.ceil(_root.arenaCombo / 2);
         if(comboToLose > 200)
         {
            comboToLose = 200;
         }
         damageColorX = 12255453;
         _root.arenaCombo -= comboToLose;
         if(enemy.element == "Fire")
         {
            fr = 3;
         }
         else if(enemy.element == "Ice")
         {
            fr = 4;
         }
         else if(enemy.element == "Wind")
         {
            fr = 5;
         }
         else if(enemy.element == "Earth")
         {
            fr = 6;
         }
         else if(enemy.element == "Thunder")
         {
            fr = 7;
         }
         else if(enemy.element == "Water")
         {
            fr = 8;
         }
         else if(enemy.element == "Dark")
         {
            fr = 1;
         }
         else if(enemy.element == "Light")
         {
            fr = 2;
         }
         else
         {
            fr = 9;
         }
         rangedAttack.gotoAndStop(fr);
         rangedAttack._alpha = 100;
      }
      else if(special == "Drown")
      {
         comboToLose = Math.ceil(_root.arenaCombo / 2);
         if(comboToLose > 1)
         {
            comboToLose = 1;
         }
         damageColorX = 10027229;
         _root.arenaCombo -= comboToLose;
      }
      else if(special == "Heal")
      {
         damageColorX = 39423;
      }
      else if(special == "Explode")
      {
         comboToLose = Math.ceil(_root.arenaCombo / 1.5);
         if(comboToLose > 500)
         {
            comboToLose = 500;
         }
         damageColorX = 10027229;
         _root.arenaCombo -= comboToLose;
         rangedAttack.gotoAndStop(3);
         rangedAttack._alpha = 100;
      }
      else if(special != "Apocalypse")
      {
         if(_root.save.arenaRing == 18)
         {
            _root.arenaCombo = Math.floor(_root.arenaCombo / 10);
         }
         else
         {
            _root.arenaCombo = 0;
         }
      }
      if(Math.random() > _root.negateEffect / 100 && damageTaken > 0 && special != "Apocalypse" && special != "Drown")
      {
         if((enemy.skill == "Throw Soap" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.05 && _root.arenaSoap <= 0)
         {
            _root.arenaSoap = Math.ceil(enemy.skillLevel / 2);
            _root.dispNews(66,"The monster threw some SOAP at you!");
         }
         if((enemy.skill == "Poison" || enemy.skill == "All" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.05 && _root.arenaPoison <= 0)
         {
            _root.arenaPoison = enemy.skillLevel;
            showDamage("Poison",16750848,62.5,50);
         }
         if((enemy.skill == "Weaken" || enemy.skill == "All" || enemy.skill == "ULTRA") && Math.random() < 0.05 && _root.arenaWeaken <= 0)
         {
            _root.arenaWeaken = enemy.skillLevel;
            showDamage("Weaken",16750848,62.5,50);
         }
         if((enemy.skill == "Blind" || enemy.skill == "All" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.05 && _root.arenaBlind <= 0)
         {
            _root.arenaBlind = enemy.skillLevel;
            showDamage("Blind",16750848,62.5,50);
         }
         if((enemy.skill == "Slow" || enemy.skill == "All" || enemy.skill == "Doom" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.05 && _root.arenaSlow <= 0)
         {
            _root.arenaSlow = enemy.skillLevel;
            showDamage("Slow",16750848,62.5,50);
         }
         if((enemy.skill == "Stun" || enemy.skill == "All" || enemy.skill == "Doom" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.05 && _root.arenaStun <= 0 && _root.arenaPotionBlock <= 0)
         {
            _root.arenaStun = Math.ceil(enemy.skillLevel / 2);
            showDamage("Stun",16750848,62.5,50);
         }
         if((enemy.skill == "Potion Block" || enemy.skill == "All" || enemy.skill == "Doom" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.05 && _root.arenaZombify <= 0 && _root.arenaStun <= 0 && _root.arenaPotionBlock <= 0)
         {
            _root.arenaPotionBlock = enemy.skillLevel;
            showDamage("Potion Block",16750848,62.5,50);
         }
         if((enemy.skill == "Zombify" || enemy.skill == "All" || enemy.skill == "Doom" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.05 && _root.arenaZombify <= 0 && _root.arenaPotionBlock <= 0)
         {
            _root.arenaZombify = enemy.skillLevel;
            showDamage("Zombify",16750848,62.5,50);
         }
         if((enemy.skill == "Health Drain" || enemy.skill == "Doom" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.1)
         {
            healthToDrain = Math.floor(Math.pow(damageTaken,1.3) * enemy.skillLevel);
            if(_root.save.arenaZone == 47)
            {
               healthToDrain = Math.floor(healthToDrain * 0.15);
            }
            if(healthToDrain > enemy.maxhp - enemy.hp)
            {
               healthToDrain = enemy.maxhp - enemy.hp;
            }
            enemy.hp += healthToDrain;
            showDamage(healthToDrain,39423,enemy._x + enemy._width / 2,40);
         }
         if((enemy.skill == "Mana Drain" || enemy.skill == "Doom" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.1)
         {
            manaToDrain = Math.floor(damageTaken / 10 * enemy.skillLevel);
            if(manaToDrain > _root.save.arenaMana)
            {
               manaToDrain = _root.save.arenaMana;
            }
            if(manaToDrain > 0)
            {
               _root.save.arenaMana -= manaToDrain;
               showDamage("MP -" + _root.withComma(manaToDrain),16750848,62.5,50);
            }
         }
         if((enemy.skill == "Attack UP" || enemy.skill == "Stat UP" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.07)
         {
            if(_root.save.arenaZone == 78 && enemy.lifespan >= 30)
            {
               if(enemy.lifespan >= 300)
               {
                  enemy.attack = Math.floor(enemy.attack * (100 + enemy.skillLevel * 100) / 100);
                  enemy.rangeDamage = Math.floor(enemy.rangeDamage * (100 + enemy.skillLevel * 100) / 100);
                  showDamage("Attack +" + enemy.skillLevel * 100 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
               else if(enemy.lifespan >= 180)
               {
                  enemy.attack = Math.floor(enemy.attack * (100 + enemy.skillLevel * 30) / 100);
                  enemy.rangeDamage = Math.floor(enemy.rangeDamage * (100 + enemy.skillLevel * 30) / 100);
                  showDamage("Attack +" + enemy.skillLevel * 30 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
               else if(enemy.lifespan >= 90)
               {
                  enemy.attack = Math.floor(enemy.attack * (100 + enemy.skillLevel * 10) / 100);
                  enemy.rangeDamage = Math.floor(enemy.rangeDamage * (100 + enemy.skillLevel * 10) / 100);
                  showDamage("Attack +" + enemy.skillLevel * 10 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
               else
               {
                  enemy.attack = Math.floor(enemy.attack * (100 + enemy.skillLevel * 3) / 100);
                  enemy.rangeDamage = Math.floor(enemy.rangeDamage * (100 + enemy.skillLevel * 3) / 100);
                  showDamage("Attack +" + enemy.skillLevel * 3 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
            }
            else
            {
               enemy.attack = Math.floor(enemy.attack * (100 + enemy.skillLevel) / 100);
               enemy.rangeDamage = Math.floor(enemy.rangeDamage * (100 + enemy.skillLevel) / 100);
               showDamage("Attack +" + enemy.skillLevel + "%",16711680,enemy._x + enemy._width / 2,40);
            }
         }
         if((enemy.skill == "Defense UP" || enemy.skill == "Stat UP" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.07)
         {
            if(_root.save.arenaZone == 78 && enemy.lifespan >= 30)
            {
               if(enemy.lifespan >= 300)
               {
                  enemy.defense = Math.floor(enemy.defense * (100 + enemy.skillLevel * 100) / 100);
                  showDamage("Defense +" + enemy.skillLevel * 100 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
               else if(enemy.lifespan >= 180)
               {
                  enemy.defense = Math.floor(enemy.defense * (100 + enemy.skillLevel * 30) / 100);
                  showDamage("Defense +" + enemy.skillLevel * 30 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
               else if(enemy.lifespan >= 90)
               {
                  enemy.defense = Math.floor(enemy.defense * (100 + enemy.skillLevel * 10) / 100);
                  showDamage("Defense +" + enemy.skillLevel * 10 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
               else
               {
                  enemy.defense = Math.floor(enemy.defense * (100 + enemy.skillLevel * 3) / 100);
                  showDamage("Defense +" + enemy.skillLevel * 3 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
            }
            else
            {
               enemy.defense = Math.floor(enemy.defense * (100 + enemy.skillLevel) / 100);
               showDamage("Defense +" + enemy.skillLevel + "%",16711680,enemy._x + enemy._width / 2,40);
            }
         }
         if((enemy.skill == "Accuracy UP" || enemy.skill == "Stat UP" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.08)
         {
            if(_root.save.arenaZone == 78 && enemy.lifespan >= 30)
            {
               if(enemy.lifespan >= 300)
               {
                  enemy.accuracy = Math.floor(enemy.accuracy * (100 + enemy.skillLevel * 100) / 100);
                  showDamage("Accuracy +" + enemy.skillLevel * 100 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
               else if(enemy.lifespan >= 180)
               {
                  enemy.accuracy = Math.floor(enemy.accuracy * (100 + enemy.skillLevel * 30) / 100);
                  showDamage("Accuracy +" + enemy.skillLevel * 30 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
               else if(enemy.lifespan >= 90)
               {
                  enemy.accuracy = Math.floor(enemy.accuracy * (100 + enemy.skillLevel * 10) / 100);
                  showDamage("Accuracy +" + enemy.skillLevel * 10 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
               else
               {
                  enemy.accuracy = Math.floor(enemy.accuracy * (100 + enemy.skillLevel * 3) / 100);
                  showDamage("Accuracy +" + enemy.skillLevel * 3 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
            }
            else
            {
               enemy.accuracy = Math.floor(enemy.accuracy * (100 + enemy.skillLevel) / 100);
               showDamage("Accuracy +" + enemy.skillLevel + "%",16711680,enemy._x + enemy._width / 2,40);
            }
         }
         if((enemy.skill == "Evasion UP" || enemy.skill == "Stat UP" || enemy.skill == "Chaos" || enemy.skill == "ULTRA") && Math.random() < 0.08)
         {
            if(_root.save.arenaZone == 78 && enemy.lifespan >= 30)
            {
               if(enemy.lifespan >= 300)
               {
                  enemy.evasion = Math.floor(enemy.evasion * (100 + enemy.skillLevel * 100) / 100);
                  showDamage("Evasion +" + enemy.skillLevel * 100 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
               else if(enemy.lifespan >= 180)
               {
                  enemy.evasion = Math.floor(enemy.evasion * (100 + enemy.skillLevel * 30) / 100);
                  showDamage("Evasion +" + enemy.skillLevel * 30 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
               else if(enemy.lifespan >= 90)
               {
                  enemy.evasion = Math.floor(enemy.evasion * (100 + enemy.skillLevel * 10) / 100);
                  showDamage("Evasion +" + enemy.skillLevel * 10 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
               else
               {
                  enemy.evasion = Math.floor(enemy.evasion * (100 + enemy.skillLevel * 3) / 100);
                  showDamage("Evasion +" + enemy.skillLevel * 3 + "%",16711680,enemy._x + enemy._width / 2,40);
               }
            }
            else
            {
               enemy.evasion = Math.floor(enemy.evasion * (100 + enemy.skillLevel) / 100);
               showDamage("Evasion +" + enemy.skillLevel + "%",16711680,enemy._x + enemy._width / 2,40);
            }
         }
      }
      if(special == "Heal")
      {
         damageTaken = Math.ceil(damageTaken * -1);
      }
      if(_root.save.arenaRing == 16 && _root.save.arenaBuffType == 0 && Math.random() < 0.2)
      {
         _root.save.arenaBuffType = 7;
         _root.save.arenaBuffDuration = 3;
      }
      showDamage(damageTaken,damageColorX,62.5,70);
   }
   else
   {
      if(_root.evasionPct < 100)
      {
         dodgeCombo += 1;
      }
      if(_root.save.arenaZone == 50)
      {
         if(_root.save.arenaCorruptAccuracy < 200)
         {
            _root.save.arenaCorruptAccuracy += 10;
         }
         else if(_root.save.arenaCorruptAccuracy < 1000)
         {
            _root.save.arenaCorruptAccuracy += 5;
         }
         else if(_root.save.arenaCorruptAccuracy < 2000)
         {
            _root.save.arenaCorruptAccuracy += 1;
         }
      }
      showDamage("MISS!!",10066329,62.5,70);
   }
   if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 2)
   {
      if(isNaN(tmpHealth))
      {
         tmpHealth = _root.save.arenaHealth;
      }
      if(enemy.enemyID != 0)
      {
         if(_root.save.arenaHealth > tmpHealth)
         {
            _root.save.arenaHealth = tmpHealth;
         }
      }
      tmpHealth = _root.save.arenaHealth;
   }
}
function getPlayerHitChance()
{
   hitChancePenalty = 0 + Math.floor((enemy.level - _root.save.bestLevel) / 100);
   if(hitChancePenalty > 30)
   {
      hitChancePenalty = 30;
   }
   if(_root.save.arenaZone == 82 && (_root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA" || _root.save.inventoryName[_root.save.arenaWeapon] == "Dark Ruler"))
   {
      hitChancePenalty = 999;
   }
   if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 3 && _root.setHighest >= 2)
   {
      hitChancePenalty = 999;
      _root.fightStat2 = "You have 2+ items of the same set equipped!";
   }
   if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 3 && _root.save.arenaWeapon != 0)
   {
      hitChancePenalty = 999;
   }
   if(enemy.level > _root.save.bestLevel)
   {
      hitChancePenalty += 10;
   }
   if(_root.worstMoon == true)
   {
      hitChancePenalty += 5;
   }
   if(_root.dungeonDiff == 5 && _root.save.arenaZone >= 53 && _root.save.arenaZone <= 54)
   {
      hitChancePenalty += (9050 - _root.save.level) * 2;
   }
   finalEvasion = enemy.evasion;
   if(enemy.blind > 0)
   {
      finalEvasion = enemy.evasion * (100 - _root.blindPower) / 100;
   }
   hitChancePenalty = Math.max(0,Math.min(1,hitChancePenalty / 100));
   missAccChance = 1 - Math.max(0,Math.min(1,_root.accuracy / finalEvasion - 0.1));
   missHitChance = 1 - Math.max(0,Math.min(1,_root.accuracyPct / 100));
   chanceToHit = (1 - hitChancePenalty) * (1 - missAccChance * missHitChance);
   return chanceToHit;
}
function getEnemyHitChance()
{
   finalAccuracy = enemy.accuracy;
   if(enemy.blind > 0)
   {
      finalAccuracy = enemy.accuracy * (100 - _root.blindPower) / 100;
   }
   noEvadeChance = finalAccuracy / _root.evasion - 0.1;
   if(noEvadeChance < 0.1)
   {
      noEvadeChance = 0.1;
   }
   if(hero.Xalpha == 30)
   {
      noEvadeChance = 0;
   }
   noEvadeChance = Math.max(0,Math.min(1,noEvadeChance));
   noDodgeChance = 1 - Math.max(0,Math.min(1,_root.evasionPct / 100));
   chanceToBeHit = noEvadeChance * noDodgeChance;
   return chanceToBeHit;
}
stop();
runeMult = 1;
if(_root.save.permaBanPenalty[27] == 3)
{
   runeMult = 1.5;
}
else if(_root.save.permaBanPenalty[27] == 2)
{
   runeMult = 1.3;
}
else if(_root.save.permaBanPenalty[27] == 1)
{
   runeMult = 1.2;
}
_root.meleeHit = true;
_root.damageNumCount = 0;
_root.checkSetBonus();
_root.arenaSwap1 = 0;
_root.save.arenaZoneFound[0] = 1;
_root.turnBased = false;
_root.autoStealCoin = 0;
_root.reviveCooldown = 240 - _root.save.arenaSkill[64] * 4;
_root.robaconActive = false;
_root.worstMoon = false;
_root.apocalypse = false;
_root.killedChaos = false;
_root.manaPower = false;
_root.chargeX = 4;
_root.chargeC = 4;
_root.chargeV = 4;
_root.chargeB = 4;
_root.arenaStrike = 0;
_root.spiritDouble = 0;
_root.spiritCrit = 0;
_root.spiritInsta = 0;
_root.spiritEnrage = 0;
_root.spiritBoost = 0;
_root.spiritInvincibility = 0;
_root.spiritBreak = 0;
_root.spiritUnleash = 0;
_root.spiritHeal = 0;
_root.specPolearmCD = 0;
_root.specMine = 0;
_root.specInfinity = 0;
_root.specPierce = 0;
_root.specPolearm = 0;
_root.specTrueshot = 0;
_root.specSphere = 0;
_root.specDispel = 0;
_root.specGlory = 0;
_root.allyCooldown1 = _root.enemyList[_root.save.arenaAlly].allyActive1Z;
_root.allyCooldown2 = _root.enemyList[_root.save.arenaAlly].allyActive2Z;
_root.allyCooldown3 = _root.enemyList[_root.save.arenaAlly].allyActive3Z;
nextAttack = 0;
dodgeCombo = 0;
_root.challengeKill = 0;
_root.challengeDuration = -60;
_root.challengeMaxDuration = 180;
_root.challengeZone = -1;
if(_root.save.arenaZone == 20)
{
   _root.save.arenaZone = 7;
}
else if(_root.save.arenaZone == 24)
{
   _root.save.arenaZone = 23;
}
else if(_root.save.arenaZone == 29)
{
   _root.save.arenaZone = 46;
}
else if(_root.save.arenaZone >= 53 && _root.save.arenaZone <= 55)
{
   _root.save.arenaZone = 51;
}
else if(_root.save.arenaZone >= 31 && _root.save.arenaZone <= 43)
{
   _root.save.arenaZone = 30;
}
else if(_root.save.arenaZone == 47)
{
   _root.save.arenaZone = 44;
}
else if(_root.save.arenaZone == 50)
{
   _root.save.arenaZone = _root.save.arenaZoneOrig;
}
else if(_root.save.arenaZone == 56)
{
   _root.save.arenaZone = _root.save.arenaZoneOrig;
}
else if(_root.save.arenaZone == 58)
{
   _root.save.arenaZone = 9;
}
else if(_root.save.arenaZone == 59)
{
   _root.save.arenaZone = _root.save.arenaZoneOrig;
}
else if(_root.save.arenaZone == 69)
{
   _root.save.arenaZone = 8;
}
else if(_root.save.arenaZone == 78)
{
   _root.save.arenaZone = 0;
}
else if(_root.save.arenaZone == 80 || _root.save.arenaZone == 81)
{
   _root.save.arenaZone = 1;
}
if(_root.save.arenaZone == 83 || _root.save.arenaZone == 84 || _root.save.arenaZone == 93 || _root.save.arenaZone == 94)
{
   _root.save.arenaZone = _root.save.arenaZoneOrig;
}
enemy.element = "All";
checkDelay = 0;
regenDelay = 0;
regenDelay2 = 0;
_root.arenaDelay = 0;
_root.arenaCombo = 0;
_root.arenaBot = 0;
_root.arenaPoison = 0;
_root.arenaWeaken = 0;
_root.arenaBlind = 0;
_root.arenaSlow = 0;
_root.arenaStun = 0;
_root.arenaZombify = 0;
_root.arenaPotionBlock = 0;
_root.arenaSoap = 0;
_root.save.inventoryAttack[0] = 0;
_root.save.inventorySpeed[0] = 0;
_root.save.inventoryDefense[0] = 0;
_root.save.inventoryBonus[0] = "";
_root.save.inventoryAbility[0] = "";
_root.save.inventoryMoreBonus[0] = "";
_root.save.inventoryCrit[0] = 0;
_root.save.inventoryDexterity[0] = 0;
_root.save.inventoryHealth[0] = 0;
if(_root.save.arenaHardcore == true)
{
   _root.fightStat2 = "You\'re currently playing on HARDCORE difficulty!";
}
else
{
   _root.fightStat2 = "You\'re currently playing on CASUAL difficulty!";
}
checkStat();
checkStat();
_root.gCheck = true;
_root.gCheckDel = 0;
onEnterFrame = function()
{
   if(_root.gCheck == true)
   {
      _root.gCheckDel += 1;
      if(_root.gCheckDel > 2)
      {
         _root.gCheckDel = 0;
         _root.gCheck = false;
      }
   }
   if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] >= 284 && _root.save.inventoryFrame[_root.save.arenaSubWeapon] <= 291)
   {
      if(_root.arenaStrike > 0 && _root.arenaStrike < 30)
      {
         if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] == 284)
         {
            v1 = 300;
            v2 = 0.4;
         }
         if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] == 285)
         {
            v1 = 200;
            v2 = 0.8;
         }
         if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] == 286)
         {
            v1 = 200;
            v2 = 1.2;
         }
         if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] == 287)
         {
            v1 = 300;
            v2 = 0.4;
         }
         if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] == 288)
         {
            v1 = 150;
            v2 = 0.4;
         }
         if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] == 289)
         {
            v1 = 300;
            v2 = 0.4;
         }
         if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] == 290)
         {
            v1 = 150;
            v2 = 0.8;
         }
         if(_root.save.inventoryFrame[_root.save.arenaSubWeapon] == 291)
         {
            v1 = 200;
            v2 = 0.4;
         }
         _root.incDt();
         stuffHolder.attachMovie("missile","missile" + _root.summonCount,_root.antiLag + 2000,{_x:100 + _root.arenaStrike * 10,_y:150,missilePower:v1,missileKnockBack:0,missileQuickAttack:false});
         _root.arenaStrike += 4 + random(2);
      }
   }
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] != true || _root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA" || _root.save.inventoryName[_root.save.arenaWeapon] == "Dark Ruler")
   {
      _root.spiritDouble = 0;
      _root.spiritCrit = 0;
      _root.spiritInsta = 0;
      _root.spiritEnrage = 0;
      _root.spiritBoost = 0;
      _root.spiritInvincibility = 0;
   }
   if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true || _root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA" || _root.save.inventoryName[_root.save.arenaWeapon] == "Dark Ruler")
   {
      _root.spiritBreak = 0;
      _root.spiritUnleash = 0;
   }
   if(_root.arenaCombo > 99999)
   {
      _root.arenaCombo = 99999;
   }
   if(_root.save.arenaMaxCombo < _root.arenaCombo)
   {
      _root.save.arenaMaxCombo = _root.arenaCombo;
   }
   checkDelay += 1;
   if(checkDelay >= 40)
   {
      checkDelay = 0;
      checkStat();
   }
   if(enemy.enemyID == 0)
   {
      regenDelay += 40 / _root.fps;
      regenDelay2 += 40 / _root.fps;
      if(_root.arenaStun > 0)
      {
         if(_root.arenaStun > 4)
         {
            _root.arenaStun = 4;
         }
         _root.arenaStun -= 1 / _root.fps;
         if(_root.save.arenaRing == 4)
         {
            _root.arenaStun -= 1 / _root.fps;
         }
         if(_root.arenaStun < 0)
         {
            _root.arenaStun = 0;
         }
      }
   }
   else if(enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
   {
      regenDelay += 1;
      regenDelay2 += 1;
      if(_root.save.arenaRuneDuration[1] > 0)
      {
         if(!isNaN(_root.hpRecover) && _root.hpRecover > 0 && _root.save.arenaHealth > 0 && !isNaN(_root.maxHealth))
         {
            _root.save.arenaHealth += Math.floor(_root.hpRecover / 40);
            if(_root.save.arenaHealth > _root.maxHealth)
            {
               _root.save.arenaHealth = _root.maxHealth;
            }
         }
      }
      if(_root.save.arenaRuneDuration[2] > 0)
      {
         if(!isNaN(_root.mpRecover) && _root.mpRecover > 0 && !isNaN(_root.maxMana))
         {
            _root.save.arenaMana += Math.floor(_root.mpRecover / 40);
            if(_root.save.arenaMana > _root.maxMana)
            {
               _root.save.arenaMana = _root.maxMana;
            }
         }
      }
      if(_root.arenaStun > 0)
      {
         if(_root.arenaStun > 4)
         {
            _root.arenaStun = 4;
         }
         _root.arenaStun -= 0.025;
         if(_root.save.arenaRing == 4)
         {
            _root.arenaStun -= 0.025;
         }
         if(_root.arenaStun < 0)
         {
            _root.arenaStun = 0;
         }
      }
      if(_root.save.arenaRing == 1 || _root.save.arenaRing == 21)
      {
         _root.arenaPoison = 0;
      }
      if(_root.save.arenaRing == 3 || _root.save.arenaRing == 5 || _root.save.arenaRing == 7 || _root.save.arenaRing == 21)
      {
         _root.arenaWeaken = 0;
      }
      if(_root.save.arenaRing == 5 || _root.save.arenaRing == 9 || _root.save.arenaRing == 10 || _root.save.arenaRing == 21)
      {
         _root.arenaBlind = 0;
      }
      if(_root.save.arenaRing == 4 || _root.save.arenaRing == 21)
      {
         _root.arenaSlow = 0;
      }
      if(_root.save.arenaRing == 1 || _root.save.arenaRing == 2)
      {
         _root.arenaPotionBlock = 0;
      }
      if(_root.save.arenaRing == 1)
      {
         _root.arenaZombify = 0;
      }
   }
   if(regenDelay >= 40)
   {
      regenDelay -= 40;
      regen();
   }
   if(regenDelay2 >= 4)
   {
      regenDelay2 -= 4;
      actualRegen();
   }
   if(_root.arenaDelay > 0)
   {
      if(_root.arenaSkillSpec == "Magnetic Stab")
      {
         if(enemy.curX > 110 && enemy.magImmune <= 0)
         {
            if(enemy.curSpeed < 0)
            {
               enemy.curSpeed = 0;
            }
            enemy.curX -= _root.attackSpeed;
            if(enemy.curX < 110)
            {
               enemy.curX = 110;
            }
         }
      }
      _root.arenaDelay -= _root.attackSpeed;
      if(_root.arenaDelay <= 0)
      {
         _root.arenaDelay = 0;
      }
   }
   else
   {
      _root.arenaDelay = -1;
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA" || _root.save.inventoryName[_root.save.arenaWeapon] == "Dark Ruler")
   {
      _root.arenaBot = 0;
   }
   if(_root.isMouseDown == true || Key.isDown(_root.saveGlobal.keyArenaZ) || Key.isDown(_root.saveGlobal.keyArenaX) || Key.isDown(_root.saveGlobal.keyArenaC) || Key.isDown(_root.saveGlobal.keyArenaV) || Key.isDown(_root.saveGlobal.keyArenaB) || Key.isDown(_root.saveGlobal.keyArenaA) || Key.isDown(_root.saveGlobal.keyArenaS) || Key.isDown(_root.saveGlobal.keyArenaD) || Key.isDown(_root.saveGlobal.keyArenaF) || Key.isDown(_root.saveGlobal.keyArenaQ) || Key.isDown(_root.saveGlobal.keyArenaW))
   {
      _root.arenaBot += 1;
   }
   else
   {
      _root.arenaBot = 0;
   }
   if(_root.save.arenaZone == 82 && _root.save.arenaEvent == 2)
   {
      if(isNaN(tmpHealth))
      {
         tmpHealth = _root.save.arenaHealth;
      }
      if(enemy.enemyID != 0)
      {
         if(_root.save.arenaHealth > tmpHealth)
         {
            _root.save.arenaHealth = tmpHealth;
         }
      }
      tmpHealth = _root.save.arenaHealth;
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "CHAOS AURA")
   {
      _root.save.arenaMana = 0;
      _root.save.arenaSpirit = 0;
   }
   else if(_root.save.inventorySpirit[_root.save.arenaWeapon] == true)
   {
      _root.save.arenaMana = 0;
      _root.save.arenaFury = 0;
   }
   else
   {
      _root.save.arenaSpirit = 0;
      _root.save.arenaFury = 0;
   }
   if(_root.save.arenaRage > 100)
   {
      _root.save.arenaRage = 100;
   }
   if(_root.save.arenaHealth > _root.maxHealth)
   {
      _root.save.arenaHealth = _root.maxHealth;
   }
   if(_root.save.arenaMana > _root.maxMana)
   {
      _root.save.arenaMana = _root.maxMana;
   }
   if(_root.save.arenaSpirit > _root.maxSpirit)
   {
      _root.save.arenaSpirit = _root.maxSpirit;
   }
   if(_root.save.arenaFury > 100)
   {
      _root.save.arenaFury = 100;
   }
   if(_root.save.arenaMana < 0)
   {
      _root.save.arenaMana = 0;
   }
   if(_root.save.arenaSpirit < 0)
   {
      _root.save.arenaSpirit = 0;
   }
   if(_root.save.arenaFury < 0)
   {
      _root.save.arenaFury = 0;
   }
   if(_root.save.arenaHealth <= 0)
   {
      if(_root.reviveCooldown <= 0 && _root.save.arenaSkill[64] > 0 && _root.save.arenaZone != 24)
      {
         _root.save.arenaHealth = Math.ceil(_root.maxHealth * _root.save.arenaSkill[64] / 50);
         _root.reviveCooldown = 240 - _root.save.arenaSkill[64] * 4;
         _root.arenaPoison = 0;
         _root.arenaWeaken = 0;
         _root.arenaBlind = 0;
         _root.arenaSlow = 0;
         _root.arenaStun = 0;
         _root.arenaZombify = 0;
         _root.arenaPotionBlock = 0;
         _root.arenaCombo = 0;
      }
      else
      {
         _root.save.arenaHealth = _root.maxHealth;
         if(_root.areaSafe != true)
         {
            if(_root.save.arenaZone == 56)
            {
               _root.areaRevengeKill = 0;
               _root.dispNews(65,"Better luck next time!");
               _root.save.arenaZone = _root.save.arenaZoneOrig;
            }
            else if(_root.save.arenaZone == 52)
            {
               if(_root.save.inventoryName[_root.save.arenaPendant] != "Anti-Checkpoint Pendant")
               {
                  _root.areaSpookyKill = Math.floor(_root.save.arenaSpookyToday / 200) * 200;
               }
               else
               {
                  _root.areaSpookyKill = 0;
               }
            }
            else if(_root.save.arenaZone == 82)
            {
               _root.eventConsecKill = 0;
            }
            else if(_root.save.arenaZone == 68)
            {
               _root.areaTriangleKill = 0;
            }
            else if(Math.random() < _root.save.arenaSkill[61] * 0.02 + _root.abilNullifyPenalty * 0.01 || _root.save.arenaZone == 78)
            {
               _root.dispNews(65,"Death penalty nullified.");
               _root.save.arenaZone = 0;
            }
            else
            {
               _root.save.arenaExp -= Math.floor(_root.arenaReqExp / 5);
               if(_root.save.arenaExp < 0)
               {
                  _root.save.arenaExp = 0;
               }
               _root.save.arenaRing = 0;
               _root.gCheck = true;
               _root.save.arenaRingOwned = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
               _root.dispNews(65,"A monster killed you and stole all of your Rings!");
               _root.save.arenaZone = 0;
            }
         }
         _root.arenaPoison = 0;
         _root.arenaWeaken = 0;
         _root.arenaBlind = 0;
         _root.arenaSlow = 0;
         _root.arenaStun = 0;
         _root.arenaZombify = 0;
         _root.arenaPotionBlock = 0;
         _root.arenaCombo = 0;
         _root.save.arenaDeath += 1;
         enemy.enemyID = 0;
         enemy.approach = 10;
         enemy.approachCompensation = 0;
         enemy.zombie = false;
      }
   }
   if(isNaN(_root.save.arenaExp))
   {
      _root.save.arenaExp = 0;
   }
   if(isNaN(_root.save.arenaLevel) || _root.save.arenaLevel > 500)
   {
      _root.save.arenaLevel = 1;
   }
   if(_root.save.arenaExp >= _root.arenaReqExp)
   {
      _root.save.arenaExpTotal += _root.arenaReqExp;
      _root.save.arenaExp -= _root.arenaReqExp;
      if(_root.save.arenaLevel < 500)
      {
         _root.save.arenaLevel += 1;
         _root.save.arenaSP += 20;
         _root.dispNews(25,"Arena Rank UP! You are now Rank " + _root.save.arenaLevel + "!");
         _root.fightStat2 = "Rank UP! You are now Rank " + _root.save.arenaLevel + "!";
         _root.save.arenaMaxHealth += 250 + Math.floor(_root.save.arenaLevel * 5);
         _root.save.arenaMaxMana += 100 + Math.floor(_root.save.arenaLevel * 2);
         _root.save.arenaAttack += 25 + Math.floor(_root.save.arenaLevel * 0.5);
         _root.save.arenaDefense += 25 + Math.floor(_root.save.arenaLevel * 0.5);
         _root.save.arenaAccuracy += 10 + Math.floor(_root.save.arenaLevel * 0.2);
         _root.save.arenaEvasion += 10 + Math.floor(_root.save.arenaLevel * 0.2);
         _root.save.arenaPixel += 100 * _root.save.arenaLevel * _root.save.arenaLevel;
         _root.save.arenaCraft += 10 * _root.save.arenaLevel * _root.save.arenaLevel;
      }
      else
      {
         _root.save.battlePoint += 4;
         _root.save.arenaExpExcess += 1;
         _root.save.arenaPixel += 25000000;
         _root.save.arenaCraft += 2500000;
      }
      _root.save.battlePoint += 1;
      _root.gainCareerEXP(3,_root.save.arenaLevel * 5,true);
      checkStat();
   }
   if(_root.save.robaconExp >= _root.robaconReqExp && _root.save.robaconLevel < 500)
   {
      _root.save.robaconExpTotal += _root.robaconReqExp;
      _root.save.robaconExp -= _root.robaconReqExp;
      _root.save.robaconLevel += 1;
      checkStat();
      if(_root.save.vegetarianMode == true)
      {
         _root.dispNews(26,"Robroccoli Rank UP! Robroccoli is now Rank " + _root.save.robaconLevel + "!");
         _root.fightStat2 = "Robroccoli Rank UP! Robroccoli is now Rank " + _root.save.robaconLevel + "!";
      }
      else
      {
         _root.dispNews(26,"Robacon Rank UP! Robacon is now Rank " + _root.save.robaconLevel + "!");
         _root.fightStat2 = "Robacon Rank UP! Robacon is now Rank " + _root.save.robaconLevel + "!";
      }
   }
   if(_root.antiLag > 400)
   {
      _root.antiLag = 0;
   }
   if(_root.damageNumCount > 1000000000)
   {
      _root.damageNumCount = 0;
   }
   if(_root.antiLag2 > 400)
   {
      _root.antiLag2 = 0;
   }
   if(_root.save.inventoryName[_root.save.arenaWeapon] == "Dark Ruler" && _root.save.arenaZone != 82)
   {
      _root.save.autoFight = false;
      _root.maxMana = 100;
      if(enemy.enemyID != 0)
      {
         if(_root.arenaPotionBlock <= 0)
         {
            if(_root.save.arenaMana < 80 && _root.save.arenaPixel >= 500)
            {
               if(_root.save.arenaSkill[26] > 0)
               {
                  _root.save.arenaPixel -= 100;
               }
               else
               {
                  _root.save.arenaPixel -= 500;
               }
               _root.save.arenaMana += 1 * Math.ceil(_root.potionEfficiency / 100);
            }
            if(_root.save.arenaHealth < Math.floor(_root.maxHealth / 2) && _root.save.arenaPixel >= 10000 && (_root.save.arenaZone < 31 || _root.save.arenaZone > 43))
            {
               if(_root.save.arenaSkill[26] > 0)
               {
                  _root.save.arenaPixel -= 2000;
               }
               else
               {
                  _root.save.arenaPixel -= 10000;
               }
               _root.save.arenaHealth += Math.floor((500000 + _root.save.arenaSkill[21] * 100000) * _root.potionEfficiency / 100);
            }
         }
         if(_root.arenaDelay <= 0 && _root.arenaStun <= 0)
         {
            if(_root.arenaZombify <= 0 && (_root.save.arenaZone < 31 || _root.save.arenaZone > 43))
            {
               if((_root.save.arenaHealth < _root.maxHealth || _root.arenaPoison > 0 || _root.arenaWeaken > 0 || _root.arenaBlind > 0 || _root.arenaSlow > 0 || enemy.zombie == true && enemy.enemyID != 0) && _root.save.arenaMana >= 10)
               {
                  _root.save.arenaMana -= 10;
                  _root.save.arenaHealth = _root.maxHealth;
                  _root.arenaPoison = 0;
                  _root.arenaWeaken = 0;
                  _root.arenaBlind = 0;
                  _root.arenaSlow = 0;
                  if(enemy.zombie == true && enemy.enemyID != 0)
                  {
                     tempHealDamage = 750 + Math.floor(_root.totalCareerLevel * 250 / 2400);
                     damageMult = 1;
                     if(_root.save.permaBanPenalty[15] == 3)
                     {
                        damageMult = 1.25;
                     }
                     else if(_root.save.permaBanPenalty[15] == 2)
                     {
                        damageMult = 1.15;
                     }
                     else if(_root.save.permaBanPenalty[15] == 1)
                     {
                        damageMult = 1.1;
                     }
                     dealDamage(Math.floor(tempHealDamage * damageMult),0,"Heal");
                     if(Math.random() < _root.doubleHit / 100)
                     {
                        _root.house.arena.dealDamage(Math.floor(tempHealDamage * damageMult),0,"Double Hit");
                     }
                  }
                  if(_root.save.questType == "Use Skill")
                  {
                     if(_root.save.questSubtype == "Heal")
                     {
                        _root.save.questCount += 1;
                     }
                  }
                  _root.arenaDelay = 125;
                  _root.arenaDelay2 = 125;
               }
            }
            if(_root.save.arenaMana >= 5 && (enemy.lifespan < 0.5 || enemy.defense >= 9999999999) && _root.arenaDelay <= 0)
            {
               _root.arenaDelay = 100;
               _root.arenaDelay2 = 49;
               _root.arenaSkillPower = 50 + Math.floor(_root.totalCareerLevel * 150 / 2400);
               damageMult = 1;
               if(_root.save.permaBanPenalty[15] == 3)
               {
                  damageMult = 1.25;
               }
               else if(_root.save.permaBanPenalty[15] == 2)
               {
                  damageMult = 1.15;
               }
               else if(_root.save.permaBanPenalty[15] == 1)
               {
                  damageMult = 1.1;
               }
               _root.arenaSkillPower = Math.floor(_root.arenaSkillPower * damageMult);
               _root.arenaKnockBack = 0;
               _root.arenaQuickAttack = true;
               _root.save.arenaMana -= 5;
               if(_root.save.questType == "Use Skill")
               {
                  if(_root.save.questSubtype == "Quick Attack")
                  {
                     _root.save.questCount += 1;
                  }
               }
            }
            if(_root.save.arenaMana >= 20 && _root.arenaDelay <= 0)
            {
               _root.arenaDelay = 150;
               _root.arenaDelay2 = 74;
               _root.arenaSkillPower = 550 + Math.floor(_root.totalCareerLevel * 1050 / 2400);
               damageMult = 1;
               if(_root.save.permaBanPenalty[15] == 3)
               {
                  damageMult = 1.25;
               }
               else if(_root.save.permaBanPenalty[15] == 2)
               {
                  damageMult = 1.15;
               }
               else if(_root.save.permaBanPenalty[15] == 1)
               {
                  damageMult = 1.1;
               }
               _root.arenaSkillPower = Math.floor(_root.arenaSkillPower * damageMult);
               _root.arenaKnockBack = 0;
               _root.save.arenaMana -= 20;
               if(_root.save.questType == "Use Skill")
               {
                  if(_root.save.questSubtype == "Power Attack")
                  {
                     _root.save.questCount += 1;
                  }
               }
            }
         }
      }
      else
      {
         _root.save.arenaMana = 100;
      }
   }
};
