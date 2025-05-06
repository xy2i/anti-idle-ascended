//! status=pending
on(release){
   if(_root.save.inventoryAbility[1301] != "" && _root.save.inventoryAbility[1301] != undefined && _root.save.inventoryNoBonus[1301] != true && _root.save.inventoryExist[1301] == 1 && _root.save.arenaBonusChange > 0)
   {
      _root.save.arenaBonusChange -= 1;
      bonusToGet = random(25) + 1;
      if(_root.save.inventoryType[1301] == "Weapon" || _root.save.inventorySubtype[1301] == "Weapon Bonus Adder")
      {
         bonusToGet = random(47) + 1;
      }
      if(bonusToGet == 1)
      {
         tempBonus = "Attack";
      }
      if(bonusToGet == 2)
      {
         tempBonus = "Attack Speed";
      }
      if(bonusToGet == 3)
      {
         tempBonus = "Ignore Defense";
      }
      if(bonusToGet == 4)
      {
         tempBonus = "Mastery";
      }
      if(bonusToGet == 5)
      {
         tempBonus = "Critical Chance";
      }
      if(bonusToGet == 6)
      {
         tempBonus = "Critical Damage";
      }
      if(bonusToGet == 7)
      {
         tempBonus = "Defense";
      }
      if(bonusToGet == 8)
      {
         tempBonus = "Damage Taken";
      }
      if(bonusToGet == 9)
      {
         tempBonus = "Reflect";
      }
      if(bonusToGet == 10)
      {
         tempBonus = "Accuracy";
      }
      if(bonusToGet == 11)
      {
         tempBonus = "Hit Chance";
      }
      if(bonusToGet == 12)
      {
         tempBonus = "Evasion";
      }
      if(bonusToGet == 13)
      {
         tempBonus = "Dodge Chance";
      }
      if(bonusToGet == 14)
      {
         tempBonus = "Poison Chance";
      }
      if(bonusToGet == 15)
      {
         tempBonus = "Weaken Chance";
      }
      if(bonusToGet == 16)
      {
         tempBonus = "Blind Chance";
      }
      if(bonusToGet == 17)
      {
         tempBonus = "Stun Chance";
      }
      if(bonusToGet == 18)
      {
         tempBonus = "HP";
      }
      if(bonusToGet == 19)
      {
         tempBonus = "MP";
      }
      if(bonusToGet == 20)
      {
         tempBonus = "HP Regen";
      }
      if(bonusToGet == 21)
      {
         tempBonus = "MP Regen";
      }
      if(bonusToGet == 22)
      {
         tempBonus = "Rage Depletion";
      }
      if(bonusToGet == 23)
      {
         tempBonus = "Drain";
      }
      if(bonusToGet == 24)
      {
         tempBonus = "Mana Eater";
      }
      if(bonusToGet == 25)
      {
         tempBonus = "Autosteal";
      }
      if(bonusToGet == 26)
      {
         tempBonus = "Double Hit Chance";
      }
      if(bonusToGet == 27)
      {
         tempBonus = "Rage Attack";
      }
      if(bonusToGet == 28)
      {
         tempBonus = "Rage Speed";
      }
      if(bonusToGet == 29)
      {
         tempBonus = "Poison Damage";
      }
      if(bonusToGet == 30)
      {
         tempBonus = "Poison Duration";
      }
      if(bonusToGet == 31)
      {
         tempBonus = "Weaken Effect";
      }
      if(bonusToGet == 32)
      {
         tempBonus = "Weaken Duration";
      }
      if(bonusToGet == 33)
      {
         tempBonus = "Blind Effect";
      }
      if(bonusToGet == 34)
      {
         tempBonus = "Blind Duration";
      }
      if(bonusToGet == 35)
      {
         tempBonus = "Potion Efficiency";
      }
      if(bonusToGet == 36)
      {
         tempBonus = "Boss Damage";
      }
      if(bonusToGet == 37)
      {
         tempBonus = "Magic Resist";
      }
      if(bonusToGet == 38)
      {
         tempBonus = "Instant Kill";
      }
      if(bonusToGet == 39)
      {
         tempBonus = "Negate Effect";
      }
      if(bonusToGet == 40)
      {
         tempBonus = "Non-Boss Damage";
      }
      if(bonusToGet == 41)
      {
         tempBonus = "Damage";
      }
      if(bonusToGet == 42)
      {
         tempBonus = "Extra Combo";
      }
      if(bonusToGet == 43)
      {
         tempBonus = "Magic Reflect";
      }
      if(bonusToGet == 44)
      {
         tempBonus = "Nullify Death Penalty";
      }
      if(bonusToGet == 45)
      {
         tempBonus = "Buff Effect";
      }
      if(bonusToGet == 46)
      {
         tempBonus = "All Elements";
      }
      if(bonusToGet == 47)
      {
         tempBonus = "Max Spirit";
      }
      if(_root.save.inventoryType[1301] == "Weapon" || _root.save.inventorySubtype[1301] == "Weapon Bonus Adder")
      {
         if(_root.save.arenaAbilityPreference1 != "None" && _root.save.inventoryAbility[1301] != _root.save.arenaAbilityPreference1 && Math.random() < 0.2)
         {
            tempBonus = _root.save.arenaAbilityPreference1;
         }
         else if(_root.save.arenaAbilityPreference2 != "None" && _root.save.inventoryAbility[1301] != _root.save.arenaAbilityPreference2 && Math.random() < 0.1)
         {
            tempBonus = _root.save.arenaAbilityPreference2;
         }
         else if(_root.save.arenaAbilityPreference3 != "None" && _root.save.inventoryAbility[1301] != _root.save.arenaAbilityPreference3 && Math.random() < 0.05)
         {
            tempBonus = _root.save.arenaAbilityPreference3;
         }
      }
      else if(_root.save.arenaAbilityPreference2 != "None" && _root.save.inventoryAbility[1301] != _root.save.arenaAbilityPreference2 && Math.random() < 0.2)
      {
         tempBonus = _root.save.arenaAbilityPreference2;
      }
      else if(_root.save.arenaAbilityPreference3 != "None" && _root.save.inventoryAbility[1301] != _root.save.arenaAbilityPreference3 && Math.random() < 0.07)
      {
         tempBonus = _root.save.arenaAbilityPreference3;
      }
      if(_root.save.inventoryAbility[1301] != tempBonus)
      {
         _root.save.inventoryAbility[1301] = tempBonus;
      }
      else
      {
         _root.save.arenaBonusChange += 4;
         _root.showPopup("Jackpot!","You got the exact same bonus as before. You can use the machine a few extra times today!");
      }
   }
}


