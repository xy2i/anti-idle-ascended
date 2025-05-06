//! status=pending
nameText.text = _root.careerName[_root.save.curBusiness];
onlineMult = 100;
activityMult = _root.save.curBusinessActivity / (_root.save.curBusinessOnline * 2 + 1800) * 100;
if(activityMult < 25)
{
   activityMult = 25;
}
if(activityMult > 100)
{
   activityMult = 100;
}
careerMult = _root.save.careerLevel[_root.save.curBusiness];
if(careerMult < 25)
{
   careerMult = 25;
}
if(careerMult > 100)
{
   careerMult = 100;
}
finalScore = Math.floor((Math.pow(_root.save.curBusinessActivity,1.01) * 10 + Math.pow(_root.save.curBusinessOnline,1.01) * 5 + Math.pow(_root.save.curBusinessOffline,1.01)) * onlineMult * activityMult * careerMult / 40000000);
if(finalScore > 100000000)
{
   finalScore = 100000000;
}
coinBonus = Math.floor(finalScore * 9999 * _root.save.level / 9001);
expBonus = Math.floor(finalScore * 6999 * _root.save.level / 9001);
if(_root.save.level == 9000)
{
   expBonus = Math.floor(expBonus * 0.5);
}
if(_root.save.level == 9001)
{
   expBonus = Math.floor(expBonus * 0.05);
}
if(_root.save.level == 9002)
{
   expBonus = 0;
}
careerBonus = Math.floor(finalScore * 1);
_root.save.coinLag += coinBonus;
_root.save.coinSauce[41] += coinBonus;
_root.save.coinTotal[41] += coinBonus;
_root.save.coinSauce[40] += coinBonus;
_root.save.coinTotal[40] += coinBonus;
_root.save.coinGraph[7] += Math.floor(coinBonus);
_root.save.coinGraph2[7] += Math.floor(coinBonus);
_root.save.expLag += expBonus;
_root.save.expSauce[41] += expBonus;
_root.save.expSauceAsc[41] += expBonus;
_root.save.expTotal[41] += expBonus;
_root.save.expSauce[40] += expBonus;
_root.save.expSauceAsc[40] += expBonus;
_root.save.expTotal[40] += expBonus;
_root.save.expGraph[7] += Math.floor(expBonus);
_root.save.expGraph2[7] += Math.floor(expBonus);
_root.gainCareerEXP(_root.save.curBusiness,careerBonus,false);
rewardText1.text = _root.withComma(coinBonus);
rewardText2.text = _root.withComma(expBonus);
rewardText3.text = _root.withComma(careerBonus);
rewardText4.text = "";
if(finalScore >= 1000)
{
   rewardText4.text = "You have gained:";
   if(_root.save.curBusiness == 1)
   {
      if(finalScore >= 1000)
      {
         rewardToGet = Math.floor(finalScore / 2);
         if(finalScore >= 10000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.3);
         }
         if(finalScore >= 100000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.5);
         }
         rewardToGet = Math.ceil(rewardToGet / 2500);
         _root.save.mysteryBox[5] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Progress Box]";
      }
      if(finalScore >= 10000)
      {
         rewardToGet = Math.ceil(finalScore / 50000);
         _root.save.boostPotion += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Regular Boost Potion]";
      }
      if(finalScore >= 100000)
      {
         rewardToGet = Math.ceil(finalScore / 500000);
         _root.save.megaBoostPotion += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Mega Boost Potion]";
      }
      if(finalScore >= 1000000)
      {
         rewardToGet = Math.floor(finalScore / 1000000);
         _root.save.ripoffCard[5] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Idlebot Card]";
         _root.save.ripoffCard[8] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Battery Charger Card]";
      }
   }
   else if(_root.save.curBusiness == 2)
   {
      if(finalScore >= 1000)
      {
         rewardToGet = Math.floor(finalScore / 25);
         if(finalScore >= 10000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.3);
         }
         if(finalScore >= 100000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.5);
         }
         _root.save.gardenPoint += rewardToGet;
         _root.save.gardenEXP += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Garden Point]";
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Garden EXP]";
      }
      if(finalScore >= 10000)
      {
         rewardToGet = Math.floor(finalScore / 500);
         _root.save.gardenFruit += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Randomfruit]";
         rewardToGet = Math.floor(finalScore / 10000);
         if(rewardToGet > 999)
         {
            rewardToGet = 999;
         }
         _root.save.gardenFertilizer += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Fertilizer]";
      }
      if(finalScore >= 100000)
      {
         rewardToGet = Math.floor(finalScore / 100000);
         if(rewardToGet > 999)
         {
            rewardToGet = 999;
         }
         _root.save.gardenMegaFertilizer += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Mega Fertilizer]";
      }
      if(finalScore >= 1000000)
      {
         rewardToGet = Math.floor(finalScore / 1000000);
         _root.save.ripoffCard[6] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Autoharvest Card]";
      }
   }
   else if(_root.save.curBusiness == 3)
   {
      if(finalScore >= 1000)
      {
         rewardToGet = Math.floor(finalScore * 25);
         if(finalScore >= 10000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.3);
         }
         if(finalScore >= 100000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.5);
         }
         if(_root.save.bannedB >= 1 && _root.save.arenaLevel < 500)
         {
            rewardToGet = Math.floor(rewardToGet * 0.001);
         }
         _root.save.arenaExp += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Arena EXP]";
      }
      if(finalScore >= 10000)
      {
         rewardToGet = Math.floor(finalScore * 250);
         if(finalScore >= 100000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.3);
         }
         if(finalScore >= 1000000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.5);
         }
         _root.save.arenaPixel += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Pixel]";
      }
      if(finalScore >= 100000)
      {
         rewardToGet = Math.floor(finalScore / 100000) + 5;
         if(rewardToGet > 1000)
         {
            rewardToGet = 1000;
         }
         if(_root.save.fighterMakerReward == true)
         {
            if(Math.random() < 0.3333333333333333)
            {
               _root.getArenaPotion("Power Buff Potion",4,5400,rewardToGet,0,500,0,Infinity,"Special Power Crystal","Business Reward");
               rewardText4.text += "\n* [Special Power Crystal] (" + _root.withComma(rewardToGet) + " uses)";
            }
            else if(Math.random() < 0.5)
            {
               _root.getArenaPotion("Master Buff Potion",9,5400,rewardToGet,0,500,0,Infinity,"Special Master Crystal","Business Reward");
               rewardText4.text += "\n* [Special Master Crystal] (" + _root.withComma(rewardToGet) + " uses)";
            }
            else
            {
               _root.getArenaPotion("Reward Buff Potion",14,5400,rewardToGet,0,500,0,Infinity,"Special Reward Crystal","Business Reward");
               rewardText4.text += "\n* [Special Reward Crystal] (" + _root.withComma(rewardToGet) + " uses)";
            }
         }
      }
      if(finalScore >= 1000000)
      {
         rewardToGet = Math.floor(finalScore / 100000) + 5;
         if(rewardToGet > 1000)
         {
            rewardToGet = 1000;
         }
         if(_root.save.fighterMakerReward == true)
         {
            _root.getArenaPotion("Loot Magnet",17,3600,rewardToGet,0,500,0,Infinity,"Loot Magnet","Business Reward");
            rewardText4.text += "\n* [Loot Magnet] (" + _root.withComma(rewardToGet) + " uses)";
         }
      }
   }
   else if(_root.save.curBusiness == 4)
   {
      if(finalScore >= 1000)
      {
         if(Math.random() < 0.3)
         {
            rewardToGet = Math.floor(finalScore / 100);
            if(finalScore >= 10000)
            {
               rewardToGet = Math.floor(rewardToGet * 1.3);
            }
            if(finalScore >= 100000)
            {
               rewardToGet = Math.floor(rewardToGet * 1.5);
            }
            _root.save.arenaEnhancerFragment += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Enhancer Fragment]";
         }
         else
         {
            rewardToGet = Math.floor(finalScore * 25);
            if(finalScore >= 10000)
            {
               rewardToGet = Math.floor(rewardToGet * 1.3);
            }
            if(finalScore >= 100000)
            {
               rewardToGet = Math.floor(rewardToGet * 1.5);
            }
            _root.save.arenaCraft += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Crafting Material]";
         }
      }
      if(finalScore >= 10000)
      {
         if(Math.random() < 0.3)
         {
            rewardToGet = Math.ceil(finalScore / 2500);
            if(rewardToGet > 9999)
            {
               rewardToGet = 9999;
            }
            _root.save.arenaCrystal1 += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Crystal of Rarity]";
         }
         else
         {
            rewardToGet = Math.floor(finalScore / 500);
            _root.save.arenaSuperiorCraft += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Superior Crafting Material]";
         }
      }
      if(finalScore >= 100000)
      {
         if(Math.random() < 0.3)
         {
            rewardToGet = Math.floor(finalScore / 10000);
            if(rewardToGet > 9999)
            {
               rewardToGet = 9999;
            }
            _root.save.arenaCrystal2 += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Crystal of Ultimate Rarity]";
         }
         else
         {
            rewardToGet = Math.floor(finalScore / 2500);
            _root.save.arenaUnobtainium += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Unobtainium]";
         }
      }
      if(finalScore >= 1000000)
      {
         if(Math.random() < 0.2)
         {
            rewardToGet = Math.floor(finalScore / 1000000);
            if(rewardToGet > 100)
            {
               rewardToGet = 100;
            }
            tempFrame = 390 + rewardToGet;
            if(tempFrame > 400)
            {
               tempFrame = 400;
            }
            if(_root.save.fighterMakerReward == true)
            {
               _root.getArenaEnhancer("Weapon Unique Enhancer",tempFrame,rewardToGet,0,100,"","","",10,1000,0,Infinity,"Weapon Unique Enhancer Lv. " + rewardToGet,"Business Reward");
               rewardText4.text += "\n* [Weapon Unique Enhancer] (" + _root.withComma(rewardToGet) + " ATT)";
            }
         }
         else if(Math.random() < 0.5)
         {
            rewardToGet = Math.floor(finalScore / 1000000);
            if(rewardToGet > 100)
            {
               rewardToGet = 100;
            }
            tempFrame = 400 + rewardToGet;
            if(tempFrame > 410)
            {
               tempFrame = 410;
            }
            if(_root.save.fighterMakerReward == true)
            {
               _root.getArenaEnhancer("Armor Unique Enhancer",tempFrame,rewardToGet,0,100,"","","",10,1000,0,Infinity,"Armor Unique Enhancer Lv. " + rewardToGet,"Business Reward");
               rewardText4.text += "\n* [Armor Unique Enhancer] (" + _root.withComma(rewardToGet) + " DEF)";
            }
         }
         else
         {
            rewardToGet = Math.floor(finalScore / 1000000);
            if(_root.save.fighterMakerReward == true)
            {
               _root.getArenaEnhancer("Mystery Enhancer Identifier",221,0,0,100,"","","",10,300,0,rewardToGet * 86400000,"[I] Mystery Enhancer Identifier","Business Reward");
               rewardText4.text += "\n* [I] [Mystery Enhancer Identifier] (" + _root.withComma(rewardToGet) + " days)";
            }
         }
      }
   }
   else if(_root.save.curBusiness == 5)
   {
      if(finalScore >= 1000)
      {
         rewardToGet = Math.floor(finalScore / 500);
         if(finalScore >= 10000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.3);
         }
         if(finalScore >= 100000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.5);
         }
         _root.save.buttonPurple += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Purple Button]";
      }
      if(finalScore >= 10000)
      {
         rewardToGet = Math.floor(finalScore / 5000);
         _root.save.mysteryBox[7] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Awesome Crate]";
         rewardToGet = Math.floor(finalScore / 4000);
         _root.save.mysteryBox[1] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Explosion Crate]";
      }
      if(finalScore >= 100000)
      {
         rewardToGet = Math.floor(finalScore / 100000);
         _root.save.mysteryBox[4] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Legendary Box]";
         rewardToGet = Math.floor(finalScore / 25000);
         _root.save.mysteryBox[8] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Chaos Crate]";
      }
      if(finalScore >= 1000000)
      {
         rewardToGet = Math.floor(finalScore / 1000000);
         _root.save.ripoffCard[7] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Invincibility Stars Card]";
      }
   }
   else if(_root.save.curBusiness == 6)
   {
      if(finalScore >= 1000)
      {
         rewardToGet = Math.floor(finalScore / 500);
         if(finalScore >= 10000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.3);
         }
         if(finalScore >= 100000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.5);
         }
         if(finalScore >= 1000000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.5);
         }
         _root.save.arcade100kMedal += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Arcade 100k Medal]";
      }
   }
   else if(_root.save.curBusiness == 7)
   {
      if(finalScore >= 1000)
      {
         rewardToGet = Math.floor(finalScore / 10);
         if(finalScore >= 10000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.3);
         }
         if(finalScore >= 100000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.5);
         }
         _root.save.stadiumToken += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Stadium Token]";
      }
      if(finalScore >= 1000000)
      {
         rewardToGet = Math.floor(finalScore / 1000000);
         if(rewardToGet > 100)
         {
            rewardToGet = 100;
         }
         _root.save.ripoffCard[9] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Stadium Pro Card]";
      }
   }
   else if(_root.save.curBusiness == 8)
   {
      if(finalScore >= 1000)
      {
         rewardToGet = Math.floor(finalScore / 10);
         if(finalScore >= 10000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.3);
         }
         if(finalScore >= 100000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.5);
         }
         _root.save.fcgCash += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [FCG Cash]";
         rewardToGet = Math.floor(rewardToGet / 10);
         _root.save.fcgExp += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [FCG EXP]";
      }
      if(finalScore >= 100000)
      {
         if(Math.random() < 0.3)
         {
            rewardToGet = Math.ceil(finalScore / 250000);
            if(rewardToGet > 99)
            {
               rewardToGet = 99;
            }
            _root.save.fcgOwned[232] += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [(Upgraded) Awesome Face]";
         }
         else if(Math.random() < 0.5)
         {
            rewardToGet = Math.ceil(finalScore / 250000);
            if(rewardToGet > 99)
            {
               rewardToGet = 99;
            }
            _root.save.fcgOwned[246] += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [(Upgraded) Code Fu]";
         }
         else
         {
            rewardToGet = Math.ceil(finalScore / 250000);
            if(rewardToGet > 99)
            {
               rewardToGet = 99;
            }
            _root.save.fcgOwned[248] += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [(Upgraded) Mystery Card]";
         }
      }
      if(finalScore >= 1000000)
      {
         rewardToGet = Math.floor(finalScore / 1000000);
         _root.save.ripoffCard[10] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [TukkunFCG Power User Card]";
      }
   }
   else if(_root.save.curBusiness == 9)
   {
      if(finalScore >= 1000)
      {
         rewardToGet = Math.floor(finalScore * 10);
         if(finalScore >= 10000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.3);
         }
         if(finalScore >= 100000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.5);
         }
         _root.save.greenCoin += rewardToGet;
         _root.save.greenCoinSauce[13] += Math.floor(rewardToGet);
         _root.save.greenCoinSauce[40] += Math.floor(rewardToGet);
         _root.save.greenCoinTotal[13] += Math.floor(rewardToGet);
         _root.save.greenCoinTotal[40] += Math.floor(rewardToGet);
         _root.save.greenCoinGraph[7] += Math.floor(rewardToGet);
         _root.save.greenCoinGraph2[7] += Math.floor(rewardToGet);
         _root.save.lolProfit += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Green Coin (Profit)]";
      }
      if(finalScore >= 10000)
      {
         rewardToGet = Math.ceil(finalScore / 5000);
         _root.save.lolGems[10] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Lv. 10 LolMarket Gem]";
      }
      if(finalScore >= 1000000)
      {
         rewardToGet = Math.ceil(finalScore / 1000000);
         _root.save.ripoffCard[11] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Demand Master Card]";
      }
   }
   else if(_root.save.curBusiness == 10)
   {
      if(finalScore >= 1000)
      {
         rewardToGet = Math.floor(finalScore / 500);
         if(_root.save.awesomeReputation < -50)
         {
            rewardToGet *= -1;
         }
         _root.save.awesomeReputation += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Reputation]";
      }
      if(finalScore >= 10000)
      {
         rewardToGet = Math.ceil(finalScore / 10000) * 20;
         _root.save.specialPetFood += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Special Pet Food]";
      }
      if(finalScore >= 200000)
      {
         rewardToGet = Math.floor(finalScore / 200000);
         if(rewardToGet > 999)
         {
            rewardToGet = 999;
         }
         _root.save.awesomeRefill += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Energy Refill]";
      }
      if(finalScore >= 1000000)
      {
         rewardToGet = Math.floor(finalScore / 1000000);
         _root.save.ripoffCard[12] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Quick Adventures Card]";
      }
   }
   else if(_root.save.curBusiness == 11)
   {
      if(finalScore >= 1000)
      {
         rewardToGet = Math.floor(finalScore / 750);
         if(finalScore >= 10000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.3);
         }
         if(finalScore >= 100000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.5);
         }
         if(Math.random() < 0.5)
         {
            _root.save.gardenFruit += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Randomfruit]";
         }
         else
         {
            _root.save.arenaBacon += rewardToGet;
            if(_root.save.vegetarianMode == true)
            {
               rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Broccoli]";
            }
            else
            {
               rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Bacon]";
            }
         }
      }
      if(finalScore >= 10000)
      {
         rewardToGet = Math.ceil(finalScore / 15000) * 20;
         _root.save.specialPetFood += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Special Pet Food]";
      }
      if(finalScore >= 100000)
      {
         rewardToGet = Math.floor(finalScore / 100000);
         if(Math.random() < 0.3 || finalScore >= 1000000)
         {
            _root.save.fishFound[10] += rewardToGet;
            _root.save.fishLeft[10] += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Elite Pet Food]";
         }
         else
         {
            _root.save.fishFound[9] += rewardToGet;
            _root.save.fishLeft[9] += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Regular Pet Food]";
         }
      }
      if(finalScore >= 1000000)
      {
         pl = Math.floor((_root.save.petStat[1] + _root.save.petStat[2] + _root.save.petStat[3] + _root.save.petStat[4] + _root.save.petStat[5] + _root.save.petStat[6] + _root.save.petStat[7] + _root.save.petStat[8]) / 8);
         petMaxMana = Math.floor((100 + Math.min(pl,100) + Math.max(Math.floor(pl * (pl - 100) / 25),0)) * Math.max(1,pl / 10 - 10));
         petMaxHealth = 100 + Math.min(pl,100) + Math.max(Math.floor(pl * (pl - 100) / 25),0);
         rewardToGet = Math.floor(finalScore / 1000);
         if(rewardToGet > petMaxMana - _root.save.petMana)
         {
            rewardToGet = petMaxMana - _root.save.petMana;
         }
         _root.save.petFullness = petMaxHealth;
         _root.save.petHealth = petMaxHealth;
         _root.save.petMana += rewardToGet;
         rewardText4.text += "\n* Pet Fullness / Health refilled!";
         if(rewardToGet > 0)
         {
            rewardText4.text += "\n* Pet Mana recovered by " + _root.withComma(rewardToGet);
         }
      }
   }
   else if(_root.save.curBusiness == 12)
   {
      if(finalScore >= 1000)
      {
         rewardToGet = Math.floor(finalScore / 50);
         if(finalScore >= 10000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.3);
         }
         if(finalScore >= 100000)
         {
            rewardToGet = Math.floor(rewardToGet * 1.5);
         }
         _root.save.fishExp += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Fishing Mastery]";
      }
      if(finalScore >= 10000)
      {
         rewardToGet = Math.ceil(finalScore / 50000);
         if(Math.random() < 0.3)
         {
            _root.save.fishFound[10] += rewardToGet;
            _root.save.fishLeft[10] += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Elite Pet Food]";
         }
         else
         {
            _root.save.fishFound[8] += rewardToGet;
            _root.save.fishLeft[8] += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Elite Energy Drink]";
         }
      }
      if(finalScore >= 100000)
      {
         rewardToGet = Math.floor(finalScore / 100000);
         if(Math.random() < 0.3)
         {
            _root.save.fishFound[3] += rewardToGet;
            _root.save.fishLeft[3] += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Golden Treasure Box]";
         }
         else
         {
            _root.save.fishFound[6] += rewardToGet;
            _root.save.fishLeft[6] += rewardToGet;
            rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Golden Key]";
         }
      }
      if(finalScore >= 1000000)
      {
         rewardToGet = Math.floor(finalScore / 1000000);
         _root.save.ripoffCard[4] += rewardToGet;
         rewardText4.text += "\n* " + _root.withComma(rewardToGet) + " [Elite Fisher Card]";
      }
   }
}
feedback.gotoAndStop(1);
if(finalScore >= 1000)
{
   feedback.gotoAndStop(2);
}
if(finalScore >= 10000)
{
   feedback.gotoAndStop(3);
}
if(finalScore >= 100000)
{
   feedback.gotoAndStop(4);
}
if(finalScore >= 1000000)
{
   feedback.gotoAndStop(5);
}
if(_root.save.businessHigh < finalScore)
{
   _root.save.businessHigh = finalScore;
}
_root.save.businessTotal += finalScore;
_root.save.businessEXP[_root.save.curBusiness] += finalScore;
_root.save.curBusiness = 0;
_root.save.curBusinessActivity = 0;
_root.save.curBusinessOnline = 0;
_root.save.curBusinessOffline = 0;
