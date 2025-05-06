//! status=pending
on(dragOver,rollOver){
   if(_root.save.arenaLevel >= 70 && skillName != "")
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>" + skillName + "</font></b> [Lv. " + skillLevel + "]\nMP Cost: <font color=\'#FFFF00\'>" + _root.withComma(mpCost) + "</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font>\nCooldown: <font color=\'#FFFF00\'>" + coolDownMax + " seconds</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\n" + skillDesc;
      if(_root.save.arenaAuto == 4)
      {
         _root.actiondescription += "\n\nShift + Click to cancel automatic skill usage";
      }
      else
      {
         _root.actiondescription += "\n\nCtrl + Click to automatically use this skill for 30 minutes";
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(tempWeapon != _root.save.arenaWeapon)
   {
      reloadSkill();
   }
   if(isNaN(coolDown))
   {
      coolDown = coolDownMax;
   }
   if(skillName == "Polearm Spirit" && _root.specPolearmCD > 0 && !isNaN(_root.specPolearmCD))
   {
      coolDown -= _root.specPolearmCD;
      _root.specPolearmCD = 0;
   }
   if(_root.save.arenaZone == 24 && coolDown < 1)
   {
      coolDown = 1;
   }
   if(_root.save.arenaZone >= 31 && _root.save.arenaZone <= 42 && coolDown < 1)
   {
      coolDown = 1;
   }
   if(skillName == "MINE!!!!1!" && _root.house.arena.enemy.enemyID != 0 && _root.house.arena.enemy.enemyID != 322 && _root.house.arena.enemy.enemyID != 435 && coolDown < 1)
   {
      coolDown = 1;
   }
   if(coolDown > 0)
   {
      if(_root.house.arena.enemy.enemyID != 0)
      {
         if(_root.house.arena.enemy.lifespan == 0 || _root.turnBased == false || _root.arenaDelay > -1 || _root.arenaStun > 0)
         {
            coolDown -= 0.025;
         }
      }
      else
      {
         coolDown -= 1 / _root.fps;
      }
   }
   if(_root.save.arenaLevel < 70)
   {
      fr = 1;
   }
   else if(coolDown > 0)
   {
      fr = 5;
   }
   else if(_root.arenaDelay > 0)
   {
      fr = 2;
   }
   else if(_root.save.arenaMana < mpCost)
   {
      fr = 3;
   }
   else
   {
      fr = 4;
   }
   if(skillName == "Infinity")
   {
      currentDuration = _root.specInfinity;
   }
   else if(skillName == "Pierce")
   {
      currentDuration = _root.specPierce;
   }
   else if(skillName == "Polearm Spirit")
   {
      currentDuration = _root.specPolearm;
   }
   else if(skillName == "Trueshot")
   {
      currentDuration = _root.specTrueshot;
   }
   else if(skillName == "Elemental Sphere")
   {
      currentDuration = _root.specSphere;
   }
   else if(skillName == "Dispel")
   {
      currentDuration = _root.specDispel;
   }
   else if(skillName == "Field of Glory")
   {
      currentDuration = _root.specGlory;
   }
   else if(skillName == "Threaten")
   {
      if(_root.house.arena.enemy.hp > 0)
      {
         currentDuration = _root.house.arena.enemy.threatCount;
      }
      else
      {
         currentDuration = 0;
      }
   }
   if(_root.save.arenaAuto == 4 || Key.isDown(_root.saveGlobal.keyArenaV) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
      {
         if(Key.isDown(17))
         {
            _root.save.arenaAuto = 4;
            _root.save.arenaAutoTime = 1800;
         }
         if(Key.isDown(16) && _root.save.arenaAuto == 4)
         {
            _root.save.arenaAuto = 0;
            _root.save.arenaAutoTime = 0;
         }
      }
      if(_root.arenaDelay <= 0 && _root.save.arenaMana >= mpCost && coolDown <= 0 && _root.save.arenaLevel >= 70 && _root.arenaStun <= 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower;
         _root.arenaKnockBack = knockBack;
         _root.arenaSkillSpec = skillName;
         _root.arenaSkillSpecLevel = skillLevel;
         if(_root.chargeV >= 4 && (_root.house.arena.enemy.enemyID != 0 || _root.areaFirstPyr == true && _root.save.arenaZone == 20))
         {
            _root.arenaSkillPower = Math.ceil(_root.arenaSkillPower * (1 + _root.save.arenaSkill[65] * 0.06));
            _root.save.arenaRage += Math.ceil(_root.save.arenaSkill[65] * 0.1);
         }
         if(_root.house.arena.enemy.enemyID != 0 || _root.areaFirstPyr == true && _root.save.arenaZone == 20)
         {
            _root.chargeV = 0;
         }
         coolDown = coolDownMax;
         _root.save.arenaMana -= mpCost;
         if(skillName == "Infinity")
         {
            _root.specInfinity = Math.floor(skillLevel * 0.5 + 5);
            _root.house.arena.checkStat();
         }
         else if(skillName == "Pierce")
         {
            _root.specPierce = 4;
         }
         else if(skillName == "Polearm Spirit")
         {
            _root.specPolearm = 60;
            _root.house.arena.checkStat();
         }
         else if(skillName == "Trueshot")
         {
            _root.specTrueshot = 4;
         }
         else if(skillName == "Elemental Sphere")
         {
            _root.specSphere = Math.floor(skillLevel * 0.5 + 5);
            _root.house.arena.checkStat();
         }
         else if(skillName == "Dispel")
         {
            _root.save.arenaHealth = _root.maxHealth;
            _root.specDispel = 7;
            _root.arenaPoison = 0;
            _root.arenaWeaken = 0;
            _root.arenaBlind = 0;
            _root.arenaSlow = 0;
            _root.arenaStun = 0;
            _root.arenaZombify = 0;
            _root.arenaPotionBlock = 0;
            _root.house.arena.checkStat();
         }
         else if(skillName == "MINE!!!!1!")
         {
            if(_root.house.arena.enemy.enemyID == 322 || _root.house.arena.enemy.enemyID == 435)
            {
               _root.specMine = 1;
               _root.house.arena.enemy.hp = 0;
            }
         }
         else if(skillName == "Field of Glory")
         {
            _root.specGlory = Math.floor(skillLevel * 1 + 10);
         }
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "Super Knockback")
            {
               _root.save.questCount += 1;
            }
            if(_root.save.questSubtype == skillName)
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
   if(_root.save.arenaAuto == 4)
   {
      currentDurationAuto = _root.save.arenaAutoTime;
   }
   else
   {
      currentDurationAuto = 0;
   }
}


onClipEvent(load){
   function reloadSkill()
   {
      _root.specInfinity = 0;
      _root.specPierce = 0;
      _root.specPolearm = 0;
      _root.specTrueshot = 0;
      _root.specSphere = 0;
      _root.specDispel = 0;
      _root.specGlory = 0;
      tempWeapon = _root.save.arenaWeapon;
      weaponType = _root.save.inventorySubtype[_root.save.arenaWeapon];
      if(_root.save.inventoryName[_root.save.arenaWeapon] == "Ultimate Weapon" || _root.save.inventoryName[_root.save.arenaWeapon] == "Reincarnation Weapon")
      {
         skillName = "Infinity";
         skillDesc = "Deal extreme damage and for " + Math.floor(skillLevel * 0.5 + 5) + " seconds, you will always deal maximum damage, your MP will remain at maximum and all monsters that spawn will be epic!";
         mpCost = 0;
         damagePower = Math.floor(12000 + skillLevel * 100);
         knockBack = 8;
         skillDelay = Math.floor(700 - skillLevel * 10);
         coolDownMax = 180;
      }
      else if(weaponType == "Sword")
      {
         skillName = "Multislash";
         skillDesc = "Deal damage to the monster 3 times. If used multiple times in a row on the same monster, the 2nd use will hit 4 times and the 3rd use onwards will hit 5 times! If used more than 3 times in a row, wait time to charge Power Attack skill will be shortened!";
         mpCost = Math.floor(3500 + skillLevel * 50);
         damagePower = Math.floor(750 + skillLevel * 5);
         knockBack = 0;
         skillDelay = Math.floor(235 - skillLevel * 2);
         coolDownMax = 0;
      }
      else if(weaponType == "Dagger")
      {
         skillName = "Magnetic Stab";
         skillDesc = "Draw the monster closer to you if it is far away, and " + Math.floor(5 + skillLevel / 2) + "% chance to knock it back if the attack hits! If knockback effect is triggered, the attack also deals 7 times as much damage and the monster will instantly drop a random-colored coin! Knockback chance is halved against boss monsters. Cannot activate against immobile monsters.";
         mpCost = Math.floor(3500 + skillLevel * 50);
         damagePower = Math.floor(1200 + skillLevel * 10);
         knockBack = 16;
         skillDelay = Math.floor(235 - skillLevel * 2);
         coolDownMax = 0;
      }
      else if(weaponType == "Spear")
      {
         skillName = "Pierce";
         skillDesc = "Deal damage to the monster, completely ignoring its DEF. Against maximum DEF monsters, deal 50x damage instead. For 4 seconds, ignore an additional " + Math.floor(skillLevel * 1 + 10) + "% of monster DEF.";
         mpCost = Math.floor(14000 + skillLevel * 200);
         damagePower = Math.floor(2750 + skillLevel * 25);
         knockBack = 4;
         skillDelay = Math.floor(700 - skillLevel * 10);
         coolDownMax = Math.ceil(40 - skillLevel * 1);
      }
      else if(weaponType == "Axe")
      {
         skillName = "Threaten";
         skillDesc = "A powerful attack that stuns the monster for 3 seconds and permanently reduces its Attack and Magic Attack by " + Math.floor(skillLevel * 0.6 + 12) + "%. If used multiple times on the same monster, the monster\'s Attack and Magic Attack will only be lowered by " + Math.floor(skillLevel * 0.1 + 2) + "% starting from 2nd use. Stacks up to 10 times on each monster. The attack must hit for the effect to trigger.";
         mpCost = Math.floor(14000 + skillLevel * 200);
         damagePower = Math.floor(5500 + skillLevel * 50);
         knockBack = 4;
         skillDelay = Math.floor(700 - skillLevel * 10);
         coolDownMax = Math.ceil(80 - skillLevel * 2);
      }
      else if(weaponType == "Hammer")
      {
         skillName = "Silence Hammer";
         skillDesc = "A powerful attack that permanently silences non-boss, non-ULTRA monsters, stopping them from using skills, magic attacks and removing their ability to rampage or explode! Against silenced monsters, bosses and ULTRA monsters, deal three times as much damage! The monster will be silenced even if it dodges the attack.";
         mpCost = Math.floor(14000 + skillLevel * 200);
         damagePower = Math.floor(6000 + skillLevel * 50);
         knockBack = 4;
         skillDelay = Math.floor(700 - skillLevel * 10);
         coolDownMax = Math.ceil(40 - skillLevel * 1);
      }
      else if(weaponType == "Polearm" || weaponType == "Polearm (Stab)")
      {
         skillName = "Polearm Spirit";
         skillDesc = "Deal massive damage and for 60 seconds, MaxHP +" + Math.floor(skillLevel * 10 + 100) + "%, Equipment Attack +" + _root.withComma(skillLevel * 25 + 250) + ", Equipment Defense +" + _root.withComma(skillLevel * 50 + 500) + ", EXP +" + Math.floor(skillLevel * 1 + 10) + "%, Coin +" + Math.floor(skillLevel * 1 + 10) + "%. Each time a monster is killed, the cooldown time for this skill is reduced by 3 seconds!";
         mpCost = Math.floor(14000 + skillLevel * 200);
         damagePower = Math.floor(12000 + skillLevel * 100);
         knockBack = 4;
         skillDelay = Math.floor(700 - skillLevel * 10);
         coolDownMax = Math.ceil(420 - skillLevel * 4);
      }
      else if(weaponType == "Bow")
      {
         skillName = "Hamstring";
         skillDesc = "Shoot an arrow with a " + Math.floor(5 + skillLevel / 2) + "% chance to temporarily slow the monster down, reducing their movement speed by 50% and stopping them from dealing ranged damage for 1 second! After the effect wears off, the monster cannot be slowed again for 0.5 seconds. The attack must hit for the effect to trigger.";
         mpCost = Math.floor(3500 + skillLevel * 50);
         damagePower = Math.floor(1200 + skillLevel * 10);
         knockBack = 0;
         skillDelay = Math.floor(260 - skillLevel * 2);
         coolDownMax = 0;
      }
      else if(weaponType == "Crossbow")
      {
         skillName = "Trueshot";
         skillDesc = "Deal damage to the monster. Guaranteed to hit, no matter how high the monster\'s Evasion is! For 4 seconds, Hit Chance +" + Math.floor(skillLevel * 1 + 10) + "%.";
         mpCost = Math.floor(14000 + skillLevel * 200);
         damagePower = Math.floor(4000 + skillLevel * 50);
         knockBack = 4;
         skillDelay = Math.floor(700 - skillLevel * 10);
         coolDownMax = Math.ceil(40 - skillLevel * 1);
      }
      else if(weaponType == "Wand")
      {
         skillName = "Elemental Sphere";
         skillDesc = "Deal very high damage and summon an elemental sphere, rapidly dealing " + Math.floor(skillLevel * 10 + 200) + "% damage to monsters, temporarily multiplying all of your elemental stats by 1.3x and giving you +60% EXP. The elemental sphere lasts " + Math.floor(skillLevel * 0.5 + 5) + " seconds.";
         mpCost = Math.floor(14000 + skillLevel * 200);
         damagePower = Math.floor(12000 + skillLevel * 100);
         knockBack = 4;
         skillDelay = Math.floor(700 - skillLevel * 10);
         coolDownMax = 90;
      }
      else if(weaponType == "Staff")
      {
         skillName = "Dispel";
         skillDesc = "Deal very high damage, fully recover HP and recover from all status effects! In addition, monsters will be unable to cast magic attacks and use special abilities (status effects, HP/MP drain, stat increasing abilities) for 7 seconds.";
         mpCost = Math.floor(14000 + skillLevel * 200);
         damagePower = Math.floor(12000 + skillLevel * 100);
         knockBack = 4;
         skillDelay = Math.floor(700 - skillLevel * 10);
         coolDownMax = Math.ceil(50 - skillLevel * 1);
      }
      else if(weaponType == "Gun")
      {
         skillName = "Rapid Fire";
         skillDesc = "Fire bullets rapidly, dealing damage to the monster 6 times! The sixth hit is guaranteed to deal critical damage if it does not miss.";
         mpCost = Math.floor(1750 + skillLevel * 25);
         damagePower = Math.floor(300 + skillLevel * 5);
         knockBack = 0;
         skillDelay = Math.floor(160 - skillLevel * 2);
         coolDownMax = 0;
      }
      else if(weaponType == "Claw")
      {
         skillName = "Absorption Shuriken";
         skillDesc = "Throw a special shuriken that absorbs HP and MP from the monster! If the attack hits, you recover " + Math.floor(skillLevel * 1 + 10) + "% HP and " + Math.floor(skillLevel * 0.5 + 5) + "% MP.";
         mpCost = Math.floor(3500 + skillLevel * 50);
         damagePower = Math.floor(1200 + skillLevel * 10);
         knockBack = 0;
         skillDelay = Math.floor(235 - skillLevel * 2);
         coolDownMax = 0;
      }
      else if(weaponType == "Slingshot")
      {
         skillName = "Headshot";
         skillDesc = "Instantly kill a non-boss, non-ULTRA monster if its remaining HP is 99% or below. Bosses and ULTRA monsters will take a gigantic amount of damage. The attack must hit for the effect to trigger.";
         mpCost = Math.floor(14000 + skillLevel * 200);
         damagePower = Math.floor(14000 + skillLevel * 200);
         knockBack = 8;
         skillDelay = Math.floor(700 - skillLevel * 10);
         coolDownMax = Math.ceil(90 - skillLevel * 2);
      }
      else if(weaponType == "Cannon")
      {
         skillName = "Hyper Cannonball";
         skillDesc = "A charged shot that knocks the monster back an extreme distance and stuns the monster for 4 seconds!";
         mpCost = Math.floor(14000 + skillLevel * 200);
         damagePower = Math.floor(12000 + skillLevel * 100);
         knockBack = 20;
         skillDelay = Math.floor(700 - skillLevel * 10);
         coolDownMax = Math.ceil(50 - skillLevel * 1);
      }
      else if(weaponType == "Grenades")
      {
         skillName = "Hyper EXPlosion";
         skillDesc = "Consume an extreme amount of MP to deal high damage and greatly increase EXP gain for the current monster! The attack must hit for the effect to trigger.";
         mpCost = Math.floor(70000 + skillLevel * 1000);
         damagePower = Math.floor(7000 + skillLevel * 100);
         knockBack = 8;
         skillDelay = Math.floor(1400 - skillLevel * 20);
         coolDownMax = Math.ceil(40 - skillLevel * 1);
      }
      else if(weaponType == "Trophy")
      {
         skillName = "Field of Glory";
         skillDesc = "Deal massive damage and turn the battlefield into a special Field of Glory for " + Math.floor(skillLevel * 1 + 10) + " seconds, rapidly dealing " + Math.floor(skillLevel * 20 + 400) + "% damage to monsters and causing items to fall from the sky!";
         mpCost = Math.floor(70000 + skillLevel * 1000);
         damagePower = Math.floor(12000 + skillLevel * 100);
         knockBack = 8;
         skillDelay = Math.floor(1400 - skillLevel * 20);
         coolDownMax = 90;
      }
      else if(weaponType == "Mining Tool")
      {
         skillName = "MINE!!!!1!";
         skillDesc = "It\'s all yours!!!!1! Instantly kill a Secret Crystal and greatly increase Drop Rate for that Secret Crystal!";
         mpCost = 0;
         damagePower = 100;
         knockBack = 0;
         skillDelay = Math.floor(1400 - skillLevel * 20);
         coolDownMax = Math.ceil(120 - skillLevel * 2);
      }
      else
      {
         skillName = "";
         mpCost = 99999999;
         damagePower = 0;
         knockBack = 0;
         skillDelay = 125;
         coolDownMax = 99999999;
      }
      if(_root.save.arenaSkill[8] >= 1)
      {
         damagePower = Math.floor(damagePower * 1.2);
         coolDownMax = Math.ceil(coolDownMax * 0.5);
      }
      coolDown = coolDownMax;
   }
   skillID = 3;
   skillLevel = _root.save.arenaSkill[skillID];
   tempWeapon = -1;
   reloadSkill();
}


