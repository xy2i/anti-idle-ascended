//! status=pending
on(release){
   if(_root.save.questCount >= _root.save.questNeed)
   {
      _root.save.questToken += _root.save.questRewardToken;
      if(_root.eventName == "Random Quest Day")
      {
         _root.gainEventToken(_root.save.questRewardToken);
      }
      _root.gainBlueCoin(_root.save.questRewardBlueCoin);
      if(_root.save.questReward == "Awesome Crate")
      {
         _root.save.mysteryBox[7] += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Explosion Crate")
      {
         _root.save.mysteryBox[1] += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Chaos Crate")
      {
         _root.save.mysteryBox[8] += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Gambler\'s Box")
      {
         _root.save.mysteryBox[2] += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Pixelated Mystery Box")
      {
         _root.save.mysteryBox[3] += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Legendary Box")
      {
         _root.save.mysteryBox[4] += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Progress Box")
      {
         _root.save.mysteryBox[5] += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Fertilizer")
      {
         _root.save.gardenFertilizer += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Mega Fertilizer")
      {
         _root.save.gardenMegaFertilizer += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Crystal of Rarity")
      {
         _root.save.arenaCrystal1 += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Crystal of Ultimate Rarity")
      {
         _root.save.arenaCrystal2 += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Superior Crafting Material")
      {
         _root.save.arenaSuperiorCraft += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Unobtainium")
      {
         _root.save.arenaUnobtainium += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Enhancer Fragment")
      {
         _root.save.arenaEnhancerFragment += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Pirate Sword")
      {
         i = 1;
         while(i <= _root.save.questRewardQuan)
         {
            _root.getArenaWeapon(300,"Sword",186,false,300,3,0,10,0,0,300,130000000,1,0,10,0,"Random","Random","",5000000,Infinity,true,true,true,false,false,0,"Pirate Sword","A Pirate Sword. It allows you to get extra Coins and Pixels as you damage the monsters - the higher level the Pirate Sword gets, the more Coins and Pixels you get. The worst part is that before you attack, you must shout the skill name in pirate language. That\'s why you attack so slowly with this.");
            i++;
         }
      }
      else if(_root.save.questReward == "Medium Buff Potion")
      {
         i = 1;
         while(i <= _root.save.questRewardQuan)
         {
            typeX = random(3) + 1;
            if(typeX == 1)
            {
               _root.getArenaPotion("Power Buff Potion",2,1800,1,0,66,150000,Infinity,"Medium Power Potion","Quest Reward");
            }
            else if(typeX == 2)
            {
               _root.getArenaPotion("Master Buff Potion",7,1800,1,0,66,150000,Infinity,"Medium Master Potion","Quest Reward");
            }
            else if(typeX == 3)
            {
               _root.getArenaPotion("Reward Buff Potion",12,1800,1,0,66,150000,Infinity,"Medium Reward Potion","Quest Reward");
            }
            i++;
         }
      }
      else if(_root.save.questReward == "Large Buff Potion")
      {
         i = 1;
         while(i <= _root.save.questRewardQuan)
         {
            typeX = random(3) + 1;
            if(typeX == 1)
            {
               _root.getArenaPotion("Power Buff Potion",3,5400,1,0,106,1000000,Infinity,"Large Power Potion","Quest Reward");
            }
            else if(typeX == 2)
            {
               _root.getArenaPotion("Master Buff Potion",8,5400,1,0,106,1000000,Infinity,"Large Master Potion","Quest Reward");
            }
            else if(typeX == 3)
            {
               _root.getArenaPotion("Reward Buff Potion",13,5400,1,0,106,1000000,Infinity,"Large Reward Potion","Quest Reward");
            }
            i++;
         }
      }
      else if(_root.save.questReward == "Mystery Enhancer")
      {
         i = 1;
         while(i <= _root.save.questRewardQuan)
         {
            if(Math.random() < 0.05 && _root.save.arenaLevel >= 500)
            {
               grade = 10;
            }
            else if(Math.random() < 0.15 && _root.save.arenaLevel >= 350)
            {
               grade = 9;
            }
            else if(Math.random() < 0.3 && _root.save.arenaLevel >= 250)
            {
               grade = 8;
            }
            else if(Math.random() < 0.5 && _root.save.arenaLevel >= 180)
            {
               grade = 7;
            }
            else if(Math.random() < 0.75 && _root.save.arenaLevel >= 120)
            {
               grade = 6;
            }
            else
            {
               grade = 4 + random(3);
            }
            if(Math.random() < 0.3)
            {
               typeX = 1;
            }
            else
            {
               typeX = 2;
            }
            if(typeX == 1)
            {
               _root.getArenaEnhancer("Weapon Mystery Enhancer",90 + grade,2 + grade,0,1000,"","","",0,0,0,Infinity,"Weapon Mystery Rock Lv. " + grade,"Quest Reward");
            }
            else if(typeX == 2)
            {
               _root.getArenaEnhancer("Armor Mystery Enhancer",190 + grade,2 + grade,0,1000,"","","",0,0,0,Infinity,"Armor Mystery Rock Lv. " + grade,"Quest Reward");
            }
            i++;
         }
      }
      else if(_root.save.questReward == "Random Career Potion")
      {
         _root.save.careerPotion += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Mega Career Potion")
      {
         _root.save.megaCareerPotion += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Energy Refill")
      {
         _root.save.awesomeRefill += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Regular Energy Drink")
      {
         _root.save.fishFound[7] += _root.save.questRewardQuan;
         _root.save.fishLeft[7] += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Elite Energy Drink")
      {
         _root.save.fishFound[8] += _root.save.questRewardQuan;
         _root.save.fishLeft[8] += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Regular Pet Food")
      {
         _root.save.fishFound[9] += _root.save.questRewardQuan;
         _root.save.fishLeft[9] += _root.save.questRewardQuan;
      }
      else if(_root.save.questReward == "Elite Pet Food")
      {
         _root.save.fishFound[10] += _root.save.questRewardQuan;
         _root.save.fishLeft[10] += _root.save.questRewardQuan;
      }
      _root.save.questTotal += 1;
      _root.save.questToday += 1;
      _root.save.questTargetDiff += _root.save.questDifficulty + 1;
      if(_root.save.questTargetDiff > 200)
      {
         _root.save.questTargetDiff = 200;
      }
      _parent.genQuest();
      if(_root.save.questRecord < _root.save.questToday)
      {
         _root.save.questRecord = _root.save.questToday;
      }
   }
}


