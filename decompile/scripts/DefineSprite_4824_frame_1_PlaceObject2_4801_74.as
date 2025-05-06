//! status=pending
on(dragOver,rollOver){
   if(skillLevel > 0)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Unleash</font></b> [Lv. " + skillLevel + "]\nCooldown: <font color=\'#FFFF00\'>" + (60 - skillLevel) + " seconds</font>\nPower: <font color=\'#FFFF00\'>" + damagePower + "%</font>\nDelay: <font color=\'#FFFF00\'>" + Math.ceil(skillDelay / _root.attackSpeed) + " frames</font>\n\nFor 10 sec, consume 10% of remaining HP every second to unleash the hidden potential of your weapon, allowing you to gain stat bonuses depending on the type as well as bonuses of your currently equipped weapon.\n";
      tier = 10;
      weaponType = _root.save.inventorySubtype[_root.save.arenaWeapon];
      bonus = _root.save.inventoryBonus[_root.save.arenaWeapon];
      ability = _root.save.inventoryAbility[_root.save.arenaWeapon];
      if(weaponType == "Sword")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Attack: <b>+10%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Critical Damage: <b>+30%</b></font>";
      }
      else if(weaponType == "Dagger")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Attack: <b>+10%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Attack Speed: <b>+20%</b></font>";
      }
      else if(weaponType == "Spear")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Attack: <b>+10%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Ignore <b>10%</b> of monster DEF</font>";
      }
      else if(weaponType == "Axe")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Attack: <b>+10%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Stun Chance: <b>+5%</b></font>";
      }
      else if(weaponType == "Hammer")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Stun Chance: <b>+20%</b></font>";
      }
      else if(weaponType == "Polearm" || weaponType == "Polearm (Stab)")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Attack: <b>+10%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Mastery: <b>+10%</b></font>";
      }
      else if(weaponType == "Bow")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Accuracy: <b>+40%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'><b>5%</b> chance to instantly kill a non-boss monster if its HP is below 50%</font>";
      }
      else if(weaponType == "Crossbow")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Hit Chance: <b>+10%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'><b>5%</b> chance to instantly kill a non-boss monster if its HP is below 50%</font>";
      }
      else if(weaponType == "Wand" || weaponType == "Staff")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Mastery: <b>+20%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'>All Elements: <b>+10%</b></font>";
      }
      else if(weaponType == "Gun")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Critical Damage: <b>+60%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Double Hit Chance: <b>+25%</b></font>";
      }
      else if(weaponType == "Claw")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Critical Chance: <b>+30%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Damage vs. Non-Bosses: <b>+20%</b></font>";
      }
      else if(weaponType == "Slingshot")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Critical Chance: <b>+30%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Damage vs. Bosses: <b>+20%</b></font>";
      }
      else if(weaponType == "Cannon")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Critical Damage: <b>+60%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Damage vs. Bosses: <b>+20%</b></font>";
      }
      else if(weaponType == "Grenades")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>EXP: <b>+40%</b></font>";
      }
      else if(weaponType == "Trophy")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>EXP: <b>+20%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Coin: <b>+40%</b></font>";
      }
      else if(weaponType == "Mining Tool")
      {
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Coin: <b>+40%</b></font>";
         _root.actiondescription += "\n<font color=\'#66FFCC\'>Pixel: <b>+40%</b></font>";
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
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   skillLevel = _root.save.arenaSkill[skillID];
   damagePower = Math.floor(4000 + skillLevel * 200);
   currentDuration = _root.spiritUnleash;
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
   if(skillLevel <= 0)
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
   else
   {
      fr = 4;
   }
   if(Key.isDown(_root.saveGlobal.keyArenaD) || _root.isMouseDown == true && _xmouse >= 0 && _xmouse <= 40 && _ymouse >= 0 && _ymouse <= 30 && _root.optionsScreen._currentframe == 1)
   {
      if(_root.arenaDelay <= 0 && coolDown <= 0 && skillLevel > 0 && _root.arenaStun <= 0 && _root.arenaBot < 48000)
      {
         _root.arenaDelay = skillDelay;
         _root.arenaDelay2 = skillDelay / 2 - 1;
         _root.arenaSkillPower = damagePower;
         _root.arenaKnockBack = 4;
         _root.spiritUnleash = 10;
         _root.house.arena.checkStat();
         coolDown = 60 - skillLevel;
         if(_root.save.questType == "Use Skill")
         {
            if(_root.save.questSubtype == "OM NOM NOM")
            {
               _root.save.questCount += 1;
            }
         }
      }
   }
}


onClipEvent(load){
   skillID = 102;
   skillLevel = _root.save.arenaSkill[skillID];
   coolDown = 60 - skillLevel;
   damagePower = Math.floor(4000 + skillLevel * 200);
   skillDelay = 275;
}


