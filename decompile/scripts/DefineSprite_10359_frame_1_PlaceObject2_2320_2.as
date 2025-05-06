//! status=pending
onClipEvent(enterFrame){
   targetScale = curStep / maxStep * 100;
   _xscale = _xscale + (targetScale - _xscale) / 5;
   curStep += 1;
   if(curStep == 1)
   {
      if(isNaN(_root.saveOld.level) || _root.saveOld.level < 6 || _root.saveOld.level > 9000 || _root.justRestart == true)
      {
         curStep = 30;
      }
   }
   if(curStep == 2)
   {
      if(_root.saveOld.thisgamepwns != 1)
      {
         _root.save.safeHacking = true;
      }
      _root.justExplosion = true;
      _root.save.preExplosion = true;
      _root.save.level = _root.saveOld.level;
      _root.save.currentExp = _root.saveOld.exp;
      _root.save.totalExp = _root.saveOld.exptotal;
      _root.save.coin = Math.floor(_root.saveOld.coin + _root.saveOld.coinmax * 0.3 + 50000);
      _root.save.greenCoin = _root.saveOld.mastery;
      _root.save.coinMax = _root.saveOld.coinmax;
      _root.save.greenCoinMax = _root.saveOld.maxmastery;
   }
   if(curStep == 3)
   {
      _root.save.totalPlays = _root.saveOld.preloads;
      _root.save.firstPlayed = _root.saveOld.firstplayed;
      _root.save.lastPlayed = _root.saveOld.lastplayed;
      _root.save.totalPlayTime = Math.floor(_root.saveOld.totaltime / 1000);
      _root.save.ascendPlayTime = Math.floor(_root.saveOld.totaltime / 1000);
      _root.save.longestSession = Math.floor(_root.saveOld.bestsession / 1000);
      _root.save.longestQuit = _root.saveOld.maxtimeoff;
   }
   if(curStep == 4)
   {
      _root.save.rewardClaim = _root.saveOld.claim;
      _root.save.rewardClaimAuto = _root.saveOld.claimauto;
      _root.save.rewardClaimManual = _root.saveOld.claimnoauto;
      _root.save.progSpeedAuto = Math.floor(_root.saveOld.idlemult * 100);
      _root.save.progSpeedManual = Math.floor(_root.saveOld.nidlemult * 100);
      _root.save.progStore = _root.saveOld.progstore;
      _root.save.blueCoin = Math.floor(_root.saveOld.claimnoauto / 25) + _root.saveOld.level * 5;
   }
   if(curStep == 5)
   {
      _root.save.boostProg = Math.floor(_root.saveOld.progmult * 100);
      _root.save.boostExp = Math.floor(_root.saveOld.expmult * 100);
      _root.save.boostCoin = Math.floor(_root.saveOld.coinmult * 100);
      _root.save.boostMax = Math.round(_root.saveOld.maxboost - _root.saveOld.zebra / 100 - _root.saveOld.aiset) * 100;
      _root.save.boostMin = Math.round(_root.saveOld.minboost * 100);
      _root.save.boostZebra = _root.saveOld.zebra;
      _root.save.boostTemp = Math.round(_root.saveOld.aiset * 100);
      _root.save.boostPurchased = _root.saveOld.boostpurchased;
   }
   if(curStep == 6)
   {
      if(_root.saveOld.automodeunlock == true)
      {
         _root.save.featureIdleMode = true;
      }
      if(_root.saveOld.boostgen == true)
      {
         _root.save.featureBoostGen = true;
      }
      if(_root.saveOld.garden == true)
      {
         _root.save.featureGarden = true;
      }
      if(_root.saveOld.arena == true)
      {
         _root.save.featureBattleArena = true;
      }
      if(_root.saveOld.buttonmachine == true)
      {
         _root.save.featureButtonMachine = true;
      }
      if(_root.saveOld.moneyprinter == true)
      {
         _root.save.featureMoneyPrinter = true;
      }
      if(_root.saveOld.mysteryshop == true)
      {
         _root.save.featureMysteryShop = true;
      }
      if(_root.saveOld.arcade == true)
      {
         _root.save.featureArcade = true;
      }
      if(_root.saveOld.stadium == true)
      {
         _root.save.featureStadium = true;
      }
      if(_root.saveOld.antspray == true)
      {
         _root.save.featureAutoSprayer = true;
      }
      if(_root.saveOld.epiclicense == true)
      {
         _root.save.featureEpicLicense = true;
      }
      if(_root.saveOld.tukkunfcg == true)
      {
         _root.save.featureTukkunFCG = true;
      }
      if(_root.saveOld.stockmarket == true)
      {
         _root.save.featureLolMarket = true;
      }
      if(_root.saveOld.awesomeadventures == true)
      {
         _root.save.featureAwesomeAdventures = true;
      }
      if(_root.saveOld.minigarden == true)
      {
         _root.save.featureMiniGarden = true;
      }
      if(_root.saveOld.bestiary == true)
      {
         _root.save.featureBestiary = true;
      }
      if(_root.saveOld.viptravel == true)
      {
         _root.save.featureTravelingTicket = true;
      }
      if(_root.saveOld.superbattery == true)
      {
         _root.save.featureSuperBattery = true;
      }
      if(_root.saveOld.arcadepack == true)
      {
         _root.save.featureArcadePack = true;
      }
      if(_root.saveOld.antspray2 == true)
      {
         _root.save.featureManualSprayer = true;
      }
      if(_root.saveOld.minipet == true)
      {
         _root.save.featurePetFeedBar = true;
      }
      if(_root.saveOld.vipantspray == true)
      {
         _root.save.featurePremiumSprayer = true;
      }
      if(_root.saveOld.titleeditor == true)
      {
         _root.save.featureTitleEditor = true;
      }
      if(_root.saveOld.arena_weapon44owned == true)
      {
         _root.save.featureSecretShop = true;
      }
   }
   if(curStep == 7)
   {
      _root.save.harvestCount = _root.saveOld.harvest;
      _root.save.harvestCoin = _root.saveOld.harvestcoin;
      _root.save.gardenCapacity = _root.saveOld.gardenCapacity * _root.saveOld.gardenCapacity;
      if(isNaN(_root.save.gardenCapacity))
      {
         _root.save.gardenCapacity = 4;
      }
      _root.save.gardenPoint = _root.saveOld.harvest * 10;
      _root.save.gardenEXP = _root.saveOld.harvest * 10;
      expPerSlot = Math.floor(_root.save.gardenEXP / _root.save.gardenCapacity);
      t = 1;
      while(t <= _root.save.gardenCapacity)
      {
         _root.save.gardenSlotEXP[t] = Math.floor(_root.saveOld.harvest * 10 / _root.save.gardenCapacity);
         t++;
      }
   }
   if(curStep == 8)
   {
      if(!isNaN(_root.saveOld.arena_maxhealth))
      {
         _root.save.arenaMaxHealth = _root.saveOld.arena_maxhealth + Math.floor(_root.save.level * 4);
         _root.save.arenaMaxMana = _root.saveOld.arena_maxmana + Math.floor(_root.save.level * 2);
         _root.save.arenaAttack = _root.saveOld.arena_attack + Math.floor(_root.save.level * 1);
         _root.save.arenaDefense = _root.saveOld.arena_defense + Math.floor(_root.save.level * 1);
         _root.save.arenaAccuracy = _root.saveOld.arena_accuracy;
         _root.save.arenaEvasion = _root.saveOld.arena_evasion;
      }
      else
      {
         _root.save.arenaMaxHealth = Math.floor(_root.save.level * 14);
         _root.save.arenaMaxMana = Math.floor(_root.save.level * 7);
         _root.save.arenaAttack = Math.floor(_root.save.level * 2);
         _root.save.arenaDefense = Math.floor(_root.save.level * 2);
         _root.save.arenaAccuracy = Math.floor(_root.save.level * 1);
         _root.save.arenaEvasion = Math.floor(_root.save.level * 1);
      }
      _root.save.arenaLoot = _root.saveOld.loot;
      _root.save.arenaKill = _root.saveOld.arena_kill;
      _root.save.arenaKillWhite = _root.saveOld.arena_whitekill;
      _root.save.arenaKillRed = _root.saveOld.arena_redkill;
      _root.save.arenaKillPurple = Math.floor(_root.saveOld.arena_redkill / 5);
      _root.save.arenaPixel = Math.floor(_root.saveOld.arena_pixel + _root.saveOld.maxpixel * 1);
      _root.save.arenaCraft = _root.saveOld.piece1 + _root.saveOld.piece2 * 2 + _root.saveOld.piece3 * 3;
      _root.save.arenaDeath = _root.saveOld.arena_death;
      _root.save.arenaMaxCombo = _root.saveOld.maxcombo;
      _root.save.arenaMaxDamage = _root.saveOld.arena_maxdamage;
      _root.save.arenaMission = _root.saveOld.mission;
      _root.save.arenaPrehistoricComplete = _root.saveOld.enemy321killed;
      _root.save.arenaDefendComplete = _root.saveOld.missionpoint2;
      _root.save.arenaKommanderComplete = _root.saveOld.missionpoint + _root.saveOld.enemy295killed * 3;
      if(_root.save.arenaKommanderComplete > 25)
      {
         _root.save.arenaKommanderComplete = 25;
      }
      _root.save.arenaExp = Math.floor((_root.saveOld.zone1killed * 501 + _root.saveOld.zone2killed * 738 + _root.saveOld.zone3killed * 941 + _root.saveOld.zone4killed * 1201 + _root.saveOld.zone5killed * 1631 + _root.saveOld.zone6killed * 2217 + _root.saveOld.zone8killed * 2571 + _root.saveOld.zone9killed * 3154 + _root.saveOld.zone10killed * 4286 + _root.saveOld.zone11killed * 7154 + _root.saveOld.zone12killed * 9265 + _root.saveOld.zone13killed * 12051 + _root.saveOld.zone14killed * 2000 + _root.saveOld.zone15killed * 2563 + _root.saveOld.zone16killed * 4183 + _root.saveOld.zone17killed * 2000 + _root.saveOld.zone18killed * 27000 + _root.saveOld.zone19killed * 2500 + _root.saveOld.zone20killed * 600 + _root.saveOld.zone21killed * 3000 + _root.saveOld.zone23killed * 5000 + _root.saveOld.zone24killed * 3000 + _root.saveOld.zone25killed * 40000 + _root.saveOld.zone26killed * 4781 + _root.saveOld.zone27killed * 4781 + _root.saveOld.zone28killed * 4051 + _root.saveOld.zone30killed * 600 + _root.saveOld.zone44killed * 16000 + _root.saveOld.enemy275killed * 4000000 + _root.saveOld.enemy295killed * 3000000 + _root.saveOld.enemy321killed * 1000000) * 0.25);
   }
   if(curStep == 9)
   {
      i = 1;
      while(i <= 49)
      {
         if(!isNaN(_root.saveOld["zone" + i + "killed"]))
         {
            _root.save.arenaZoneKill[i] = _root.saveOld["zone" + i + "killed"];
         }
         i++;
      }
      i = 1;
      while(i <= 400)
      {
         if(_root.saveOld["enemy" + i + "killed"] > 0 && !isNaN(_root.saveOld["enemy" + i + "killed"]))
         {
            _root.save.arenaBestiary[i] = _root.saveOld["enemy" + i + "killed"];
         }
         i++;
      }
   }
   if(curStep == 10)
   {
      totalBonusPow = 0;
      bestWeaponPower = 0;
      bestWeaponAttack = 0;
      bestWeaponSpeed = 0;
      bestArmorDefense = 0;
      i = 1;
      while(i <= 48)
      {
         if(!isNaN(_root.saveOld["arena_inventory" + i + "_bonuspow"]))
         {
            totalBonusPow += _root.saveOld["arena_inventory" + i + "_bonuspow"];
            if(_root.saveOld["arena_inventory" + i + "_name"] == "Golden Trophy")
            {
               _root.addArenaWeapon("Epic Trophy",160,"Trophy",198,true,400,6,0,"Reward","HP",1,0,0,0,2000000,7776000000);
            }
            else if(_root.saveOld["arena_inventory" + i + "_name"] == "Bacon Sword (?)")
            {
               _root.addArenaWeapon("Bacon Sword",120,"Sword",197,false,300,7,0,"Reward","HP Regen",1,0,0,0,0,Infinity);
            }
            else if(_root.saveOld["arena_inventory" + i + "_name"] == "Lovely Hat" && _root.saveOld["arena_inventory" + i + "_bonuspow"] >= 66)
            {
               _root.addArenaArmor("Lovely Hat",30,"Hat",104,0,0,125,"","",20,300000,10,66,0,Infinity);
            }
            else if(_root.saveOld["arena_inventory" + i + "_name"] == "Lovely Shirt" && _root.saveOld["arena_inventory" + i + "_bonuspow"] >= 66)
            {
               _root.addArenaArmor("Lovely Shirt",30,"Shirt",104,0,0,125,"","",20,300000,10,66,0,Infinity);
            }
            else if(_root.saveOld["arena_inventory" + i + "_name"] == "Lovely Gloves" && _root.saveOld["arena_inventory" + i + "_bonuspow"] >= 66)
            {
               _root.addArenaArmor("Lovely Gloves",30,"Gloves",104,0,0,125,"","",20,300000,10,66,0,Infinity);
            }
            else if(_root.saveOld["arena_inventory" + i + "_name"] == "Lovely Pants" && _root.saveOld["arena_inventory" + i + "_bonuspow"] >= 66)
            {
               _root.addArenaArmor("Lovely Pants",30,"Pants",104,0,0,125,"","",20,300000,10,66,0,Infinity);
            }
            else if(_root.saveOld["arena_inventory" + i + "_name"] == "Lovely Shoes" && _root.saveOld["arena_inventory" + i + "_bonuspow"] >= 66)
            {
               _root.addArenaArmor("Lovely Shoes",30,"Shoes",104,0,0,125,"","",20,300000,10,66,0,Infinity);
            }
            else if(_root.saveOld["arena_inventory" + i + "_name"] == "Halloween Hat")
            {
               _root.addArenaArmor("Halloween Hat",94,"Hat",120,5,0,90,"","",10,2700000,10,66,0,Infinity);
            }
            else if(_root.saveOld["arena_inventory" + i + "_name"] == "Halloween Shirt")
            {
               _root.addArenaArmor("Halloween Shirt",94,"Shirt",120,5,0,90,"","",10,2700000,10,66,0,Infinity);
            }
            else if(_root.saveOld["arena_inventory" + i + "_name"] == "Halloween Gloves")
            {
               _root.addArenaArmor("Halloween Gloves",94,"Gloves",120,5,0,90,"","",10,2700000,10,66,0,Infinity);
            }
            else if(_root.saveOld["arena_inventory" + i + "_name"] == "Halloween Pants")
            {
               _root.addArenaArmor("Halloween Pants",94,"Pants",120,5,0,90,"","",10,2700000,10,66,0,Infinity);
            }
            else if(_root.saveOld["arena_inventory" + i + "_name"] == "Halloween Shoes")
            {
               _root.addArenaArmor("Halloween Shoes",94,"Shoes",120,5,0,90,"","",10,2700000,10,66,0,Infinity);
            }
            else if(_root.saveOld["arena_inventory" + i + "_name"] == "Anniversary Hat")
            {
               _root.addArenaArmor("Anniversary Hat",1,"Hat",120,7,1,100 + _root.saveOld["arena_inventory" + i + "_defense"],"EXP","Attack",6,10000000,10,100,0,Infinity);
            }
            else if(_root.saveOld["arena_inventory" + i + "_type"] == "weapon")
            {
               if(_root.saveOld["arena_inventory" + i + "_power"] * (_root.saveOld["arena_inventory" + i + "_speed"] + 2) > bestWeaponPower)
               {
                  bestWeaponAttack = _root.saveOld["arena_inventory" + i + "_power"];
                  bestWeaponSpeed = _root.saveOld["arena_inventory" + i + "_speed"];
                  bestWeaponPower = bestWeaponAttack * (bestWeaponSpeed + 2);
               }
               tempRange = false;
               if(_root.saveOld["arena_inventory" + i + "_range"] == "range")
               {
                  tempRange = true;
               }
               if(_root.emptyWeaponSlot > 1)
               {
                  _root.addArenaWeapon("[O] " + _root.saveOld["arena_inventory" + i + "_name"],1,_root.saveOld["arena_inventory" + i + "_subtype"],_root.saveOld["arena_inventory" + i + "_item"],tempRange,_root.saveOld["arena_inventory" + i + "_power"],_root.saveOld["arena_inventory" + i + "_speed"],0,"Random","Random",1,0,_root.saveOld["arena_inventory" + i + "_enhance"],_root.saveOld["arena_inventory" + i + "_bonuspow"],_root.saveOld["arena_inventory" + i + "_sell"],Infinity);
               }
            }
            else if(_root.saveOld["arena_inventory" + i + "_type"] != "enhance")
            {
               if(_root.saveOld["arena_inventory" + i + "_defense"] > bestArmorDefense)
               {
                  bestArmorDefense = _root.saveOld["arena_inventory" + i + "_defense"];
               }
               if(_root.saveOld["arena_inventory" + i + "_type"] == "hat")
               {
                  tempType = "Hat";
               }
               if(_root.saveOld["arena_inventory" + i + "_type"] == "shirt")
               {
                  tempType = "Shirt";
               }
               if(_root.saveOld["arena_inventory" + i + "_type"] == "gloves")
               {
                  tempType = "Gloves";
               }
               if(_root.saveOld["arena_inventory" + i + "_type"] == "pants")
               {
                  tempType = "Pants";
               }
               if(_root.saveOld["arena_inventory" + i + "_type"] == "shoes")
               {
                  tempType = "Shoes";
               }
               if(_root.emptyArmorSlot > 5)
               {
                  _root.addArenaArmor("[O] " + _root.saveOld["arena_inventory" + i + "_name"],1,tempType,_root.saveOld["arena_inventory" + i + "_item"],0,0,_root.saveOld["arena_inventory" + i + "_defense"],"Random","Random",1,0,_root.saveOld["arena_inventory" + i + "_enhance"],_root.saveOld["arena_inventory" + i + "_bonuspow"],0,Infinity);
               }
            }
         }
         i++;
      }
      if(_root.save.level >= 100)
      {
         _root.addArenaEnhancer("Relic","Weapon Attack Enhancer",48,175,0,1000,"","",0,66,50000 + totalBonusPow * 100,Infinity);
      }
      _root.addArenaWeapon("Pre-Explosion Trophy",130,"Trophy",198,true,Math.floor(bestWeaponAttack * 1.3),bestWeaponSpeed,0,"Random","Random",10,3200000,0,100,0,7776000000);
      if(_root.save.level >= 300)
      {
         _root.addArenaArmor("Pre-Explosion Hat",90,"Hat",101,6,0,Math.floor(bestArmorDefense * 1.3),"Random","Random",10,3200000,0,66,0,7776000000);
         _root.addArenaArmor("Pre-Explosion Shirt",90,"Shirt",101,6,0,Math.floor(bestArmorDefense * 1.6),"Random","Random",10,3200000,0,66,0,7776000000);
         _root.addArenaArmor("Pre-Explosion Gloves",90,"Gloves",101,12,0,Math.floor(bestArmorDefense * 1),"Random","Random",10,3200000,0,66,0,7776000000);
         _root.addArenaArmor("Pre-Explosion Pants",90,"Pants",101,6,0,Math.floor(bestArmorDefense * 1.6),"Random","Random",10,3200000,0,66,0,7776000000);
         _root.addArenaArmor("Pre-Explosion Shoes",90,"Shoes",101,6,1,Math.floor(bestArmorDefense * 1),"Random","Random",10,3200000,0,66,0,7776000000);
      }
      else if(_root.save.level >= 30)
      {
         _root.addArenaArmor("Pre-Explosion Hat",30,"Hat",101,3,0,Math.floor(bestArmorDefense * 1),"Random","Random",10,120000,0,66,0,Infinity);
         _root.addArenaArmor("Pre-Explosion Shirt",30,"Shirt",101,3,0,Math.floor(bestArmorDefense * 1.3),"Random","Random",10,120000,0,66,0,Infinity);
         _root.addArenaArmor("Pre-Explosion Gloves",30,"Gloves",101,6,0,Math.floor(bestArmorDefense * 0.7),"Random","Random",10,120000,0,66,0,Infinity);
         _root.addArenaArmor("Pre-Explosion Pants",30,"Pants",101,3,0,Math.floor(bestArmorDefense * 1.3),"Random","Random",10,120000,0,66,0,Infinity);
         _root.addArenaArmor("Pre-Explosion Shoes",30,"Shoes",101,3,1,Math.floor(bestArmorDefense * 1),"Random","Random",10,120000,0,66,0,Infinity);
      }
   }
   if(curStep == 11)
   {
      _root.save.buttonPress = _root.saveOld.mash;
      _root.save.buttonBreak = _root.saveOld.broken;
   }
   if(curStep == 12)
   {
      _root.save.printerLevel = _root.saveOld.moneyprinterlv;
      _root.save.totalPrinterMoney = _root.saveOld.printermoney;
      _root.save.totalPrinterCharge = _root.saveOld.batterycharge;
   }
   if(curStep == 13)
   {
      _root.save.lolCapacity = _root.saveOld.maxcargo;
      _root.save.lolProfit = _root.saveOld.stockscore;
      i = 1;
      while(i <= 6)
      {
         _root.save.lolGems[i] = _root.saveOld["stock" + i];
         i++;
      }
   }
   if(curStep == 14)
   {
      _root.save.awesomeMaxEnergy = _root.saveOld.maxenergy;
      _root.save.awesomeReputation = _root.saveOld.reputation;
   }
   if(curStep == 15)
   {
      _root.save.mysteryBox[1] = _root.saveOld.mysteryBox4;
      _root.save.mysteryBox[2] = _root.saveOld.mysteryBox7;
      _root.save.mysteryBox[3] = _root.saveOld.mysteryBox6;
      _root.save.mysteryBox[5] = _root.saveOld.mysteryBox5;
   }
   if(curStep == 16)
   {
      if(!isNaN(_root.saveOld.epicskill1))
      {
         _root.save.epicSkill[1] = _root.saveOld.epicskill1;
         _root.save.epicSkill[2] = _root.saveOld.epicskill2;
         _root.save.epicSkill[3] = _root.saveOld.epicskill3;
         _root.save.epicSkill[4] = _root.saveOld.epicskill4;
         _root.save.epicSkill[5] = _root.saveOld.epicskill5;
         _root.save.epicSkill[6] = _root.saveOld.epicskill6;
      }
   }
   if(curStep == 17)
   {
      _root.save.fcgLevel = _root.saveOld.fcgrank;
      _root.save.fcgExp = _root.saveOld.fcgexp;
      _root.save.fcgExpTotal = _root.saveOld.fcgexptotal;
      _root.save.fcgCash = _root.saveOld.electrum;
      _root.save.fcgMaxCash = _root.saveOld.maxelectrum;
      _root.save.fcgPlay = _root.saveOld.fcgplay;
      _root.save.fcgWin = _root.saveOld.fcgwin;
      _root.save.fcgLose = _root.saveOld.fcglose;
      _root.save.fcgStreak = _root.saveOld.fcgwinstreak;
      i = 1;
      while(i <= 400)
      {
         if(_root.saveOld["fcg" + i + "owned"] != undefined)
         {
            _root.save.fcgDeck[i] = _root.saveOld["fcg" + i + "used"];
            _root.save.fcgOwned[i] = _root.saveOld["fcg" + i + "owned"];
         }
         i++;
      }
      _root.save.fcgLevel0 = _root.saveOld.fcglv0;
      _root.save.fcgLevel1 = _root.saveOld.fcglv1;
      _root.save.fcgLevel2 = _root.saveOld.fcglv2;
      _root.save.fcgLevel3 = _root.saveOld.fcglv3;
      _root.save.fcgLevel4 = _root.saveOld.fcglv4;
      _root.save.fcgLevel5 = _root.saveOld.fcglv5;
      _root.save.fcgLevel6 = _root.saveOld.fcglv6;
      _root.save.fcgLevel7 = _root.saveOld.fcglv7;
      _root.save.fcgLevel8 = _root.saveOld.fcglv8;
   }
   if(curStep == 18)
   {
      i = 11;
      while(i <= 30)
      {
         if(_root.saveOld["arena_skill" + i + "maxlevel"] == 10)
         {
            _root.save.blueCoin += 100;
         }
         if(_root.saveOld["arena_skill" + i + "maxlevel"] == 20)
         {
            _root.save.blueCoin += 500;
         }
         if(_root.saveOld["arena_skill" + i + "maxlevel"] == 30)
         {
            _root.save.blueCoin += 2500;
         }
         i++;
      }
   }
   if(curStep == 19)
   {
      _root.save.stadiumToken = 1000 + _root.saveOld.stadiumwin * 40 + _root.saveOld.correctbet * 10;
   }
   if(curStep == 20)
   {
      if(_root.saveOld.cheat > 0)
      {
         _root.save.cheat = 1337;
      }
      if(_root.saveOld.tipview > 0)
      {
         _root.save.knowledge = _root.saveOld.tipview;
      }
      if(_root.saveOld.mada > 0)
      {
         _root.save.mada = 1337;
      }
      if(_root.saveOld.mbma > 0)
      {
         _root.save.mbma = 1337;
      }
      if(_root.saveOld.walkthru > 0)
      {
         _root.save.walkthru = 1337;
      }
      if(_root.saveOld.escaped > 0)
      {
         _root.save.escaped = 1337;
      }
      if(_root.saveOld.pwned > 0)
      {
         _root.save.pwned = 1337;
      }
      if(_root.saveOld.petfeederbadge > 0)
      {
         _root.save.petFeederBadge = _root.saveOld.petfeederbadge;
      }
      if(_root.saveOld.ghostcount > 0)
      {
         _root.save.ghostCount = _root.saveOld.ghostcount;
         _root.save.randomGhost = 1337;
      }
      if(_root.saveOld.hubertcount > 0)
      {
         _root.save.hubertCount = _root.saveOld.hubertcount;
      }
      if(_root.saveOld.losethegame > 0)
      {
         _root.save.theGame = _root.saveOld.losethegame;
      }
      if(_root.saveOld.pongmaster > 0)
      {
         _root.save.survivor = 1337;
      }
      if(_root.saveOld.highMMR1 >= 250000)
      {
         _root.save.rick = 1337;
      }
      _root.save.viewAchievement = _root.saveOld.achview;
      _root.save.viewStat = _root.saveOld.statview;
      _root.save.manualSave = _root.saveOld.manualsave;
   }
   if(curStep == 21)
   {
      _root.save.petFeedTotal = _root.saveOld.petfed;
      _root.save.petKillTotal = _root.saveOld.petkill;
   }
   if(curStep == 22)
   {
      _root.save.totalQuests = _root.saveOld.totalQuests;
      _root.save.dailyQuests = _root.saveOld.dailyQuests;
      _root.save.eventQuests = _root.saveOld.eventQuests;
   }
   if(curStep == 23)
   {
      if(_root.saveOld.token_firstday > 0)
      {
         _root.save.souvenir[1] = 500;
      }
      if(_root.saveOld.token_haiti > 0)
      {
         _root.save.souvenir[2] = 250;
      }
      if(_root.saveOld.token_newarena > 0)
      {
         _root.save.souvenir[3] = 250;
      }
      if(_root.saveOld.token_twishbmitfp > 0)
      {
         _root.save.souvenir[4] = 250;
      }
      if(_root.saveOld.token_halloween > 0)
      {
         _root.save.souvenir[5] = 100;
      }
      if(_root.saveOld.token_2mil > 0)
      {
         _root.save.souvenir[6] = 250;
      }
      if(_root.saveOld.token_anniv1 > 0)
      {
         _root.save.souvenir[7] = 1000;
      }
   }
   if(curStep == 24)
   {
      if(_root.saveOld.doubleexptime > 0)
      {
         _root.save.ripoffCard[1] += Math.floor(_root.saveOld.doubleexptime / 3600);
      }
      if(_root.saveOld.doublecointime > 0)
      {
         _root.save.ripoffCard[3] += Math.floor(_root.saveOld.doublecointime / 3600);
      }
      _root.save.ripoffCard[2] += 1;
      _root.save.ripoffCard[4] += 1;
   }
   if(curStep == 25)
   {
      if(!isNaN(_root.saveOld.timeDonated))
      {
         _root.save.mysteryBox[4] += _root.saveOld.timeDonated;
         _root.save.arenaPixel += _root.saveOld.timeDonated * 100000;
         _root.save.arenaExp += _root.saveOld.timeDonated * 100000;
      }
   }
   if(curStep == 26)
   {
      if(!isNaN(_root.saveOld.missionpoint))
      {
         _root.save.arenaProofMission += _root.saveOld.missionpoint * 2;
         _root.save.arenaProofMission += _root.saveOld.mission * 2;
         _root.save.arenaProofTraining += _root.saveOld.enemy295killed * 20 + _root.saveOld.zone29killed;
      }
   }
   if(curStep >= 30)
   {
      _root.save.compatible = 3;
      _root.gotoAndStop(12);
   }
}


onClipEvent(load){
   _xscale = 0;
   curStep = 0;
   maxStep = 30;
   _root.my_soOld = SharedObject.getLocal("v1861X","/");
   if(_root.saveid == 0)
   {
      _root.my_soOld = SharedObject.getLocal("v1861X","/");
   }
   if(_root.saveid == 1)
   {
      _root.my_soOld = SharedObject.getLocal("v1861X1","/");
   }
   if(_root.saveid == 2)
   {
      _root.my_soOld = SharedObject.getLocal("v1861X2","/");
   }
   if(_root.saveid == 3)
   {
      _root.my_soOld = SharedObject.getLocal("v1861X3","/");
   }
   _root.saveOld = _root.my_soOld.data;
}


