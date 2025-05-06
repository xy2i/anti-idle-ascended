//! status=pending
on(release){
   if(_parent.elapsed >= 2)
   {
      if(_parent.specType == 1)
      {
         special = _root.save.arenaSuperiorCraft;
      }
      if(_parent.specType == 2)
      {
         special = _root.save.arenaProofTraining;
      }
      if(_parent.specType == 3)
      {
         special = _root.save.arenaProofMission;
      }
      if(_parent.specType == 4)
      {
         special = _root.save.arenaChaoticFragment;
      }
      if(_parent.specType == 5)
      {
         special = _root.save.arenaUnobtainium;
      }
      if(_parent.specType == 6)
      {
         special = _root.save.arenaEnhancerFragment;
      }
      if(_parent.specType == 7)
      {
         special = _root.save.arenaBacon;
      }
      if(_parent.specType == 8)
      {
         special = _root.save.arenaSampleCraft;
      }
      if(_parent.specType == 9)
      {
         special = _root.save.arenaTukkonium;
      }
      if(_root.save.arenaTutorial == 0)
      {
         _root.save.arenaTutorial = 1;
      }
      if(_root.emptyWeaponSlot > 0 && _parent.type == "Weapon" || _root.emptyArmorSlot > 0 && _parent.type == "Armor" || _root.emptyEnhancerSlot > 0 && _parent.type == "Enhancer" || _root.emptyPotionSlot > 0 && _parent.type == "Potion" || _root.emptyAccessorySlot > 0 && _parent.type == "Accessory" || _root.emptyChipSlot > 0 && _parent.type == "Chip")
      {
         if(_root.save.arenaCraft >= _parent.costCraft && _root.save.arenaPixel >= _parent.costPixel && special >= _parent.costSpec)
         {
            _root.save.arenaCraft -= _parent.costCraft;
            _root.save.arenaCraftUsed += _parent.costCraft;
            _root.save.arenaPixel -= _parent.costPixel;
            _root.save.arenaCrystal1 -= _parent.crystal1Apply;
            _root.save.arenaCrystal2 -= _parent.crystal2Apply;
            _root.gainCareerEXP(4,_parent.careerExp,true);
            if(_parent.specType == 1)
            {
               _root.save.arenaSuperiorCraft -= _parent.costSpec;
            }
            if(_parent.specType == 2)
            {
               _root.save.arenaProofTraining -= _parent.costSpec;
            }
            if(_parent.specType == 3)
            {
               _root.save.arenaProofMission -= _parent.costSpec;
            }
            if(_parent.specType == 4)
            {
               _root.save.arenaChaoticFragment -= _parent.costSpec;
            }
            if(_parent.specType == 5)
            {
               _root.save.arenaUnobtainium -= _parent.costSpec;
            }
            if(_parent.specType == 6)
            {
               _root.save.arenaEnhancerFragment -= _parent.costSpec;
            }
            if(_parent.specType == 7)
            {
               _root.save.arenaBacon -= _parent.costSpec;
            }
            if(_parent.specType == 8)
            {
               _root.save.arenaSampleCraft -= _parent.costSpec;
            }
            if(_parent.specType == 9)
            {
               _root.save.arenaTukkonium -= _parent.costSpec;
            }
            if(_parent.type == "Weapon")
            {
               enhance = _parent.enhance;
               bonusPow = 0;
               frame = _parent.frame;
               name = _parent.name;
               reqRank = _parent.reqRank;
               subtype = _parent.subtype;
               range = _parent.range;
               attack = _parent.attack;
               speed = _parent.speed;
               defense = _parent.defense;
               bonus = _parent.bonus;
               ability = _parent.ability;
               moreBonus = _parent.moreBonus;
               maxLevel = _parent.maxLevel;
               expTNL = _parent.expTNL;
               sell = _parent.sell;
               expiry = _parent.expiry;
               noBonus = _parent.noBonus;
               noLife = _parent.noLife;
               noFuse = _parent.noFuse;
               noUnique = _parent.noUnique;
               spirit = _parent.spirit;
               crit = _parent.crit;
               dexterity = _parent.dexterity;
               health = _parent.health;
               desc = _parent.desc;
               unob = _parent.unob;
               setID = _parent.setID;
               attToGet = Math.floor((_parent.crystal1Apply * 0.5 + _parent.crystal2Apply) * (0.9 + Math.random() * 0.2) + 0.001);
               if(noUnique == true)
               {
                  attToGet = Math.floor(_parent.crystal1Apply * 0.5 + _parent.crystal2Apply + 0.001);
               }
               defToGet = Math.floor(_parent.crystal1Apply * 0.1 + _parent.crystal2Apply * 0.3 + 0.001);
               spdToGet = Math.floor(_parent.crystal2Apply * 0.01 + 0.001);
               critToGet = Math.floor(_parent.crystal2Apply * 0.05 + 0.001);
               dexToGet = Math.floor(_parent.crystal2Apply * 0.05 + 0.001);
               hpToGet = Math.floor(_parent.crystal2Apply * 0.05 + 0.001);
               bonusPow = Math.round(attToGet + defToGet * 5 / 12 + spdToGet * 20 + critToGet * 5 + dexToGet * 5 + hpToGet * 5);
               attack += attToGet;
               speed += spdToGet;
               defense += defToGet;
               crit += critToGet;
               dexterity += dexToGet;
               health += hpToGet;
               _root.getArenaWeapon(reqRank,subtype,frame,range,attack,speed,defense,crit,dexterity,health,maxLevel,expTNL,1,0,enhance,bonusPow + _parent.bonusPow,bonus,ability,moreBonus,sell,expiry,noBonus,noLife,noFuse,noUnique,spirit,unob,name,desc,false,setID);
            }
            else if(_parent.type == "Armor")
            {
               enhance = _parent.enhance;
               bonusPow = 0;
               frame = _parent.frame;
               name = _parent.name;
               reqRank = _parent.reqRank;
               subtype = _parent.subtype;
               attack = _parent.attack;
               speed = _parent.speed;
               defense = _parent.defense;
               bonus = _parent.bonus;
               ability = _parent.ability;
               moreBonus = _parent.moreBonus;
               maxLevel = _parent.maxLevel;
               expTNL = _parent.expTNL;
               sell = _parent.sell;
               expiry = _parent.expiry;
               noBonus = _parent.noBonus;
               noLife = _parent.noLife;
               noFuse = _parent.noFuse;
               noUnique = _parent.noUnique;
               spirit = _parent.spirit;
               crit = _parent.crit;
               dexterity = _parent.dexterity;
               health = _parent.health;
               desc = _parent.desc;
               unob = _parent.unob;
               setID = _parent.setID;
               defToGet = Math.floor((_parent.crystal1Apply * 0.5 + _parent.crystal2Apply) * (0.9 + Math.random() * 0.2) + 0.001);
               if(noUnique == true)
               {
                  defToGet = Math.floor(_parent.crystal1Apply * 0.5 + _parent.crystal2Apply + 0.001);
               }
               attToGet = Math.floor(_parent.crystal1Apply * 0.05 + _parent.crystal2Apply * 0.15 + 0.001);
               spdToGet = Math.floor(_parent.crystal2Apply * 0.01 + 0.001);
               critToGet = Math.floor(_parent.crystal2Apply * 0.05 + 0.001);
               dexToGet = Math.floor(_parent.crystal2Apply * 0.05 + 0.001);
               hpToGet = Math.floor(_parent.crystal2Apply * 0.05 + 0.001);
               bonusPow = Math.round(attToGet * 5 / 2 + defToGet + spdToGet * 20 + critToGet * 5 + dexToGet * 5 + hpToGet * 5);
               attack += attToGet;
               speed += spdToGet;
               defense += defToGet;
               crit += critToGet;
               dexterity += dexToGet;
               health += hpToGet;
               _root.getArenaArmor(reqRank,subtype,frame,attack,speed,defense,crit,dexterity,health,maxLevel,expTNL,1,0,enhance,bonusPow * 2 + _parent.bonusPow,bonus,ability,moreBonus,sell,expiry,noBonus,noLife,noFuse,noUnique,spirit,unob,name,desc,false,setID);
            }
            else if(_parent.type == "Accessory")
            {
               enhance = _parent.enhance;
               bonusPow = 0;
               frame = _parent.frame;
               name = _parent.name;
               reqRank = _parent.reqRank;
               subtype = _parent.subtype;
               attack = _parent.attack;
               speed = _parent.speed;
               defense = _parent.defense;
               bonus = _parent.bonus;
               ability = _parent.ability;
               moreBonus = _parent.moreBonus;
               maxLevel = _parent.maxLevel;
               expTNL = _parent.expTNL;
               sell = _parent.sell;
               expiry = _parent.expiry;
               noBonus = _parent.noBonus;
               noLife = _parent.noLife;
               noFuse = _parent.noFuse;
               noUnique = _parent.noUnique;
               spirit = _parent.spirit;
               crit = _parent.crit;
               dexterity = _parent.dexterity;
               health = _parent.health;
               desc = _parent.desc;
               unob = _parent.unob;
               setID = _parent.setID;
               defToGet = Math.floor((_parent.crystal1Apply * 0.5 + _parent.crystal2Apply) * (0.9 + Math.random() * 0.2));
               if(noUnique == true)
               {
                  defToGet = Math.floor(_parent.crystal1Apply * 0.5 + _parent.crystal2Apply);
               }
               attToGet = Math.floor(_parent.crystal1Apply * 0.05 + _parent.crystal2Apply * 0.15);
               spdToGet = Math.floor(_parent.crystal2Apply * 0.01);
               critToGet = Math.floor(_parent.crystal2Apply * 0.05);
               dexToGet = Math.floor(_parent.crystal2Apply * 0.05);
               hpToGet = Math.floor(_parent.crystal2Apply * 0.05);
               bonusPow = Math.round(attToGet * 5 / 2 + defToGet + spdToGet * 20 + critToGet * 5 + dexToGet * 5 + hpToGet * 5);
               attack += attToGet;
               speed += spdToGet;
               defense += defToGet;
               crit += critToGet;
               dexterity += dexToGet;
               health += hpToGet;
               _root.getArenaAccessory(reqRank,subtype,frame,attack,speed,defense,crit,dexterity,health,maxLevel,expTNL,1,0,enhance,bonusPow * 2 + _parent.bonusPow,bonus,ability,moreBonus,sell,expiry,noBonus,noLife,noUnique,spirit,unob,name,desc,false,setID);
            }
            else if(_parent.type == "Enhancer")
            {
               enhance = _parent.enhance;
               frame = _parent.frame;
               name = _parent.name;
               subtype = _parent.subtype;
               power = _parent.power;
               curse = 0;
               success = 100;
               bonus = _parent.bonus;
               ability = _parent.ability;
               moreBonus = _parent.moreBonus;
               sell = _parent.sell;
               expiry = _parent.expiry;
               desc = _parent.desc;
               _root.getArenaEnhancer(subtype,frame,power,curse,success,bonus,ability,moreBonus,enhance,_parent.bonusPow,sell,expiry,name,desc,false,setID);
            }
            else if(_parent.type == "Potion")
            {
               enhance = _parent.enhance;
               frame = _parent.frame;
               name = _parent.name;
               subtype = _parent.subtype;
               attack = _parent.attack;
               defense = _parent.defense;
               sell = _parent.sell;
               expiry = _parent.expiry;
               desc = _parent.desc;
               _root.getArenaPotion(subtype,frame,attack,defense,enhance,_parent.bonusPow,sell,expiry,name,desc);
            }
            else if(_parent.type == "Chip")
            {
               enhance = _parent.enhance;
               frame = _parent.frame;
               name = _parent.name;
               subtype = _parent.subtype;
               attack = _parent.attack;
               defense = _parent.defense;
               sell = _parent.sell;
               expiry = _parent.expiry;
               desc = _parent.desc;
               _root.getArenaChip(subtype,frame,attack,defense,enhance,_parent.bonusPow,sell,expiry,name,desc);
            }
         }
         else
         {
            _root.showPopup("Cannot Craft","Please double-check if you have enough Pixels, Crafting Material and other required items to craft.");
         }
      }
      else
      {
         _root.showPopup("Inventory Full!","Your inventory is full. Please sell some items then try again.");
      }
      _parent.checkCraftStat();
   }
}


