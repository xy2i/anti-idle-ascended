//! status=pending
if(_root.killedChaos == true)
{
   score1.text = _root.dungeonMobDefeat;
   score2.text = _root.dungeonBossDefeat;
   score3.text = _root.dungeonChestOpen;
   score4.text = _root.withComma(_root.dungeonTimeLeft);
   if(_root.dungeonDiff == 3)
   {
      finalScore = Math.floor((_root.dungeonMobDefeat * 3 + _root.dungeonBossDefeat * 11) * (_root.dungeonTimeLeft / 360 + _root.dungeonChestOpen));
   }
   else
   {
      finalScore = Math.floor((_root.dungeonMobDefeat * 3 + _root.dungeonBossDefeat * 10) * (_root.dungeonTimeLeft / 180 + _root.dungeonChestOpen));
   }
   if(_root.dungeonAntiCurse == true)
   {
      finalScore = Math.floor(finalScore * 0.2);
   }
   else if(_root.dungeonDiff == 3)
   {
      finalScore += _root.dungeonChestOpen * 100;
   }
   else
   {
      finalScore += _root.dungeonChestOpen * 20;
   }
   finalScore += 1000;
   if(_root.save.arenaHardcore == true)
   {
      finalScore += 300;
   }
   if(_root.worstMoon == true)
   {
      finalScore += 700;
   }
   if(_root.apocalypse == true)
   {
      finalScore += 300;
   }
   if(_root.dungeonDiff == 3)
   {
      finalScore += 200;
   }
   if(isNaN(finalScore))
   {
      finalScore = 3000;
   }
   if(_root.save.raidDungeon < finalScore)
   {
      _root.save.raidDungeon = finalScore;
   }
   score5.text = _root.withComma(finalScore);
   if(_root.save.questType == "Special")
   {
      if(_root.save.questSubtype == "Secret Dungeon Score")
      {
         if(_root.save.questCount < finalScore)
         {
            _root.save.questCount = finalScore;
         }
      }
   }
   reward1 = "";
   reward2 = "";
   reward3 = "";
   if(finalScore >= 6000)
   {
      reward1 = "CHAOS AURA [-10]";
      _root.getArenaWeapon(318,"Aura",276,true,0,100,0,0,0,0,1,0,1,0,-10,150,"Dark Element","Boss Damage","Equipment Attack",10000000,Infinity,false,false,true,false,false,0,"CHAOS AURA","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".\n\nWhen equipped, the power of CHAOS will overtake you, causing you to lose control of yourself.",false,true);
   }
   else if(finalScore >= 5500)
   {
      reward1 = "CHAOS AURA [-9]";
      _root.getArenaWeapon(318,"Aura",276,true,0,100,0,0,0,0,1,0,1,0,-9,150,"Dark Element","Boss Damage","Equipment Attack",10000000,Infinity,false,false,true,false,false,0,"CHAOS AURA","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".\n\nWhen equipped, the power of CHAOS will overtake you, causing you to lose control of yourself.",false,true);
   }
   else if(finalScore >= 5000)
   {
      reward1 = "CHAOS AURA [-8]";
      _root.getArenaWeapon(318,"Aura",276,true,0,100,0,0,0,0,1,0,1,0,-8,150,"Dark Element","Boss Damage","Equipment Attack",10000000,Infinity,false,false,true,false,false,0,"CHAOS AURA","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".\n\nWhen equipped, the power of CHAOS will overtake you, causing you to lose control of yourself.",false,true);
   }
   else if(finalScore >= 4500)
   {
      reward1 = "CHAOS AURA [-7]";
      _root.getArenaWeapon(318,"Aura",276,true,0,100,0,0,0,0,1,0,1,0,-7,150,"Dark Element","Boss Damage","Equipment Attack",10000000,Infinity,false,false,true,false,false,0,"CHAOS AURA","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".\n\nWhen equipped, the power of CHAOS will overtake you, causing you to lose control of yourself.",false,true);
   }
   else if(finalScore >= 4000)
   {
      reward1 = "CHAOS AURA [-6]";
      _root.getArenaWeapon(318,"Aura",276,true,0,100,0,0,0,0,1,0,1,0,-6,150,"Dark Element","Boss Damage","Equipment Attack",10000000,Infinity,false,false,true,false,false,0,"CHAOS AURA","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".\n\nWhen equipped, the power of CHAOS will overtake you, causing you to lose control of yourself.",false,true);
   }
   else if(finalScore >= 3500)
   {
      reward1 = "CHAOS AURA [-5]";
      _root.getArenaWeapon(318,"Aura",276,true,0,100,0,0,0,0,1,0,1,0,-5,150,"Dark Element","Boss Damage","Equipment Attack",10000000,Infinity,false,false,true,false,false,0,"CHAOS AURA","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".\n\nWhen equipped, the power of CHAOS will overtake you, causing you to lose control of yourself.",false,true);
   }
   else if(finalScore >= 2800)
   {
      itemPow = Math.ceil(finalScore / 28);
      rewardToGet = random(5) + 1;
      if(rewardToGet == 1)
      {
         reward1 = "Chaos Hat";
         _root.getArenaArmor(298,"Hat",134,50,1,355 + itemPow,10,0,30,40,176000000,1,0,0,itemPow,"Dark Element","Weaken Duration","",10000000,Infinity,false,false,false,false,false,0,"Chaos Hat","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".",false,true);
      }
      if(rewardToGet == 2)
      {
         reward1 = "Chaos Shirt";
         _root.getArenaArmor(298,"Shirt",134,50,1,381 + itemPow,10,30,0,40,176000000,1,0,0,itemPow,"Dark Element","Weaken Duration","",10000000,Infinity,false,false,false,false,false,0,"Chaos Shirt","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".",false,true);
      }
      if(rewardToGet == 3)
      {
         reward1 = "Chaos Gloves";
         _root.getArenaArmor(298,"Gloves",134,60,7,303 + itemPow,30,0,0,40,176000000,1,0,0,itemPow,"Dark Element","Weaken Duration","",10000000,Infinity,false,false,false,false,false,0,"Chaos Gloves","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".",false,true);
      }
      if(rewardToGet == 4)
      {
         reward1 = "Chaos Pants";
         _root.getArenaArmor(298,"Pants",134,50,1,381 + itemPow,10,30,0,40,176000000,1,0,0,itemPow,"Dark Element","Weaken Duration","",10000000,Infinity,false,false,false,false,false,0,"Chaos Pants","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".",false,true);
      }
      if(rewardToGet == 5)
      {
         reward1 = "Chaos Shoes";
         _root.getArenaArmor(298,"Shoes",134,60,3,303 + itemPow,30,0,0,40,176000000,1,0,0,itemPow,"Dark Element","Weaken Duration","",10000000,Infinity,false,false,false,false,false,0,"Chaos Shoes","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".",false,true);
      }
   }
   else if(finalScore >= 2100)
   {
      itemPow = Math.ceil(finalScore / 21);
      rewardToGet = random(5) + 1;
      if(rewardToGet == 1)
      {
         reward1 = "Dark Angel Hat";
         _root.getArenaArmor(278,"Hat",129,40,1,235 + itemPow,10,0,30,25,44000000,1,0,0,itemPow,"Dark Element","Weaken Duration","",10000000,Infinity,false,false,false,false,false,0,"Dark Angel Hat","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".",false,true);
      }
      if(rewardToGet == 2)
      {
         reward1 = "Dark Angel Shirt";
         _root.getArenaArmor(278,"Shirt",129,40,1,259 + itemPow,10,30,0,25,44000000,1,0,0,itemPow,"Dark Element","Weaken Duration","",10000000,Infinity,false,false,false,false,false,0,"Dark Angel Shirt","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".",false,true);
      }
      if(rewardToGet == 3)
      {
         reward1 = "Dark Angel Gloves";
         _root.getArenaArmor(278,"Gloves",129,50,7,187 + itemPow,30,0,0,25,44000000,1,0,0,itemPow,"Dark Element","Weaken Duration","",10000000,Infinity,false,false,false,false,false,0,"Dark Angel Gloves","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".",false,true);
      }
      if(rewardToGet == 4)
      {
         reward1 = "Dark Angel Pants";
         _root.getArenaArmor(278,"Pants",129,40,1,259 + itemPow,10,30,0,25,44000000,1,0,0,itemPow,"Dark Element","Weaken Duration","",10000000,Infinity,false,false,false,false,false,0,"Dark Angel Pants","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".",false,true);
      }
      if(rewardToGet == 5)
      {
         reward1 = "Dark Angel Shoes";
         _root.getArenaArmor(278,"Shoes",129,50,3,187 + itemPow,30,0,0,25,44000000,1,0,0,itemPow,"Dark Element","Weaken Duration","",10000000,Infinity,false,false,false,false,false,0,"Dark Angel Shoes","Awarded for clearing Secret Dungeon with a score of " + _root.withComma(finalScore) + ".",false,true);
      }
   }
   if(finalScore >= 7000 && _root.dungeonDiff == 3 && Math.random() < (finalScore - 7000) / 500)
   {
      itemPow = Math.floor((finalScore - 3000) / 4);
      if(itemPow > 1250)
      {
         itemPow = 1250;
      }
      reward2 = "TERA EARRINGS (Attack: " + itemPow + ")";
      _root.getArenaAccessory(50,"Earring",15,itemPow,15,3000,0,0,0,75,750000000,1,0,0,100000,"Random","Random","Random",75000000,0,false,true,false,false,70,"TERA EARRINGS","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
   }
   else if(finalScore >= 5000 && _root.dungeonDiff == 3)
   {
      itemPow = Math.floor((finalScore - 5000) / 2);
      if(itemPow > 1000)
      {
         itemPow = 1000;
      }
      reward2 = "GIGA EARRINGS (Attack: " + itemPow + ")";
      _root.getArenaAccessory(250,"Earring",13,itemPow,15,0,0,0,0,75,750000000,1,0,0,Math.floor(itemPow * 5 / 2),"Random","Random","Random",75000000,0,false,true,false,false,50,"GIGA EARRINGS","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
   }
   else if(finalScore >= 4200 && _root.dungeonDiff == 2)
   {
      _root.save.arenaUniqueStock -= 1;
      rewardToGet = random(4) + 1;
      if(rewardToGet == 1)
      {
         reward2 = "Weapon Unique Enhancer Lv. 5";
         _root.getArenaEnhancer("Weapon Unique Enhancer",395,5,0,100,"","","",0,706,0,172800000,"Weapon Unique Enhancer Lv. 5","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      else if(rewardToGet == 2)
      {
         reward2 = "Accessory Unique Enhancer Lv. 5";
         _root.getArenaEnhancer("Accessory Unique Enhancer",415,5,0,100,"","","",0,706,0,172800000,"Accessory Unique Enhancer Lv. 5","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      else
      {
         reward2 = "Armor Unique Enhancer Lv. 5";
         _root.getArenaEnhancer("Armor Unique Enhancer",405,5,0,100,"","","",0,706,0,172800000,"Armor Unique Enhancer Lv. 5","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
   }
   else if(finalScore >= 3700 && _root.dungeonDiff == 2)
   {
      _root.save.arenaUniqueStock -= 1;
      rewardToGet = random(4) + 1;
      if(rewardToGet == 1)
      {
         reward2 = "Weapon Unique Enhancer Lv. 4";
         _root.getArenaEnhancer("Weapon Unique Enhancer",394,4,0,100,"","","",0,406,0,172800000,"Weapon Unique Enhancer Lv. 4","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      else if(rewardToGet == 2)
      {
         reward2 = "Accessory Unique Enhancer Lv. 4";
         _root.getArenaEnhancer("Accessory Unique Enhancer",414,4,0,100,"","","",0,406,0,172800000,"Accessory Unique Enhancer Lv. 4","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      else
      {
         reward2 = "Armor Unique Enhancer Lv. 4";
         _root.getArenaEnhancer("Armor Unique Enhancer",404,4,0,100,"","","",0,406,0,172800000,"Armor Unique Enhancer Lv. 4","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
   }
   else if(finalScore >= 3200 && _root.dungeonDiff == 2)
   {
      _root.save.arenaUniqueStock -= 1;
      rewardToGet = random(4) + 1;
      if(rewardToGet == 1)
      {
         reward2 = "Weapon Unique Enhancer Lv. 3";
         _root.getArenaEnhancer("Weapon Unique Enhancer",393,3,0,100,"","","",0,256,0,172800000,"Weapon Unique Enhancer Lv. 3","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      else if(rewardToGet == 2)
      {
         reward2 = "Accessory Unique Enhancer Lv. 3";
         _root.getArenaEnhancer("Accessory Unique Enhancer",413,3,0,100,"","","",0,256,0,172800000,"Accessory Unique Enhancer Lv. 3","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      else
      {
         reward2 = "Armor Unique Enhancer Lv. 3";
         _root.getArenaEnhancer("Armor Unique Enhancer",403,3,0,100,"","","",0,256,0,172800000,"Armor Unique Enhancer Lv. 3","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
   }
   else if(finalScore >= 2700 && _root.dungeonDiff == 2)
   {
      _root.save.arenaUniqueStock -= 1;
      rewardToGet = random(4) + 1;
      if(rewardToGet == 1)
      {
         reward2 = "Weapon Unique Enhancer Lv. 2";
         _root.getArenaEnhancer("Weapon Unique Enhancer",392,2,0,100,"","","",0,156,0,172800000,"Weapon Unique Enhancer Lv. 2","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      else if(rewardToGet == 2)
      {
         reward2 = "Accessory Unique Enhancer Lv. 2";
         _root.getArenaEnhancer("Accessory Unique Enhancer",412,2,0,100,"","","",0,156,0,172800000,"Accessory Unique Enhancer Lv. 2","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      else
      {
         reward2 = "Armor Unique Enhancer Lv. 2";
         _root.getArenaEnhancer("Armor Unique Enhancer",402,2,0,100,"","","",0,156,0,172800000,"Armor Unique Enhancer Lv. 2","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
   }
   else if(finalScore >= 2200 && _root.dungeonDiff == 2)
   {
      _root.save.arenaUniqueStock -= 1;
      rewardToGet = random(4) + 1;
      if(rewardToGet == 1)
      {
         reward2 = "Weapon Unique Enhancer Lv. 1";
         _root.getArenaEnhancer("Weapon Unique Enhancer",391,1,0,100,"","","",0,106,0,172800000,"Weapon Unique Enhancer Lv. 1","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      else if(rewardToGet == 2)
      {
         reward2 = "Accessory Unique Enhancer Lv. 1";
         _root.getArenaEnhancer("Accessory Unique Enhancer",411,1,0,100,"","","",0,106,0,172800000,"Accessory Unique Enhancer Lv. 1","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      else
      {
         reward2 = "Armor Unique Enhancer Lv. 1";
         _root.getArenaEnhancer("Armor Unique Enhancer",401,1,0,100,"","","",0,106,0,172800000,"Armor Unique Enhancer Lv. 1","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
   }
   else if(finalScore >= 4000)
   {
      rewardToGet = random(2) + 1;
      if(rewardToGet == 1)
      {
         reward2 = "Weapon Mystery Rock Lv. 10";
         _root.getArenaEnhancer("Weapon Mystery Enhancer",100,12,0,1000,"","","",0,0,3000000,172800000,"Weapon Mystery Rock Lv. 10","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      if(rewardToGet == 2)
      {
         reward2 = "Armor Mystery Rock Lv. 10";
         _root.getArenaEnhancer("Armor Mystery Enhancer",200,12,0,1000,"","","",0,0,3000000,172800000,"Armor Mystery Rock Lv. 10","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
   }
   else if(finalScore >= 2500)
   {
      rewardToGet = random(2) + 1;
      if(rewardToGet == 1)
      {
         reward2 = "Weapon Mystery Rock Lv. 9";
         _root.getArenaEnhancer("Weapon Mystery Enhancer",99,11,0,1000,"","","",0,0,1000000,172800000,"Weapon Mystery Rock Lv. 9","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      if(rewardToGet == 2)
      {
         reward2 = "Armor Mystery Rock Lv. 9";
         _root.getArenaEnhancer("Armor Mystery Enhancer",199,11,0,1000,"","","",0,0,1000000,172800000,"Armor Mystery Rock Lv. 9","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
   }
   else if(finalScore >= 1000)
   {
      rewardToGet = random(2) + 1;
      if(rewardToGet == 1)
      {
         reward2 = "Weapon Mystery Rock Lv. 8";
         _root.getArenaEnhancer("Weapon Mystery Enhancer",98,10,0,1000,"","","",0,0,300000,172800000,"Weapon Mystery Rock Lv. 8","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
      if(rewardToGet == 2)
      {
         reward2 = "Armor Mystery Rock Lv. 8";
         _root.getArenaEnhancer("Armor Mystery Enhancer",198,10,0,1000,"","","",0,0,300000,172800000,"Armor Mystery Rock Lv. 8","An item awarded for reaching a score of " + _root.withComma(finalScore) + " in Secret Dungeon.",false,true);
      }
   }
   if(_root.dungeonDiff == 3)
   {
      tukkoniumChance = finalScore * finalScore / 100000000;
      tukkoniumAmount = 1;
      if(_root.dungeonChestOpen == 20)
      {
         tukkoniumChance = 1;
         tukkoniumAmount = 20;
      }
      else if(_root.dungeonChestOpen == 19)
      {
         tukkoniumAmount = 10;
      }
      else if(_root.dungeonChestOpen == 18)
      {
         tukkoniumAmount = 5;
      }
      else if(_root.dungeonChestOpen == 17)
      {
         tukkoniumAmount = 3;
      }
      else if(_root.dungeonChestOpen == 16)
      {
         tukkoniumAmount = 2;
      }
      else if(_root.dungeonChestOpen == 15)
      {
         tukkoniumChance /= 10;
      }
      else
      {
         tukkoniumChance /= 100;
      }
      if(Math.random() < tukkoniumChance)
      {
         _root.save.arenaTukkonium += tukkoniumAmount;
         reward3 = _root.withComma(tukkoniumAmount) + " Tukkonium";
      }
      else
      {
         molybdenumToGet = Math.ceil(finalScore / 4) + _root.dungeonChestOpen * 150;
         _root.save.arenaChaoticFragment += molybdenumToGet;
         reward3 = _root.withComma(molybdenumToGet) + " Chaotic Fragments of Chaos";
      }
   }
   else if(_root.worstMoon == true)
   {
      molybdenumToGet = Math.ceil(finalScore / 50) + _root.dungeonChestOpen * 10;
      _root.save.arenaUnobtainium += molybdenumToGet;
      reward3 = molybdenumToGet + " Unobtainium";
   }
   else
   {
      molybdenumToGet = Math.ceil(finalScore / 50) + _root.dungeonChestOpen * 10;
      _root.save.arenaSuperiorCraft += molybdenumToGet;
      reward3 = molybdenumToGet + " Superior Crafting Material";
   }
   score6.text = reward3;
   score7.text = reward1;
   score8.text = reward2;
}
