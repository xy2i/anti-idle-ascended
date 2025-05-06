//! status=pending
on(release){
   if(_root.save.mysteryBox[boxID] > 0 && !isNaN(_root.save.mysteryBox[boxID]) && _parent.popScreen._currentframe == 1 && _root.optionsScreen._currentframe == 1)
   {
      _root.save.mysteryBox[boxID] -= 1;
      openBox();
   }
}


onClipEvent(enterFrame){
   if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true) && _parent.popScreen._currentframe == 1 && _root.optionsScreen._currentframe == 1)
   {
      doFr += 1;
      if(Key.isDown(17))
      {
         doFr = 1;
      }
      itr = 1;
      if(doFr >= 101)
      {
         itr = 5;
      }
      if(doFr >= 301)
      {
         itr = 25;
         if(doFr == 301)
         {
            _root.dispNews(1,"Rewards are not displayed to reduce lag.");
            _root.dispNews(1,"Opening boxes at high speed.");
         }
      }
      if(itr > _root.save.mysteryBox[boxID])
      {
         itr = _root.save.mysteryBox[boxID];
      }
      if(isNaN(_root.save.mysteryBox[boxID]))
      {
         itr = 0;
      }
      _root.save.mysteryBox[boxID] -= itr;
      while(itr > 0)
      {
         itr -= 1;
         openBox();
      }
   }
   else
   {
      doFr = 0;
   }
}


onClipEvent(load){
   function openBox()
   {
      if(Math.random() < 0.002)
      {
         possibility = 1;
         rarity = 3;
      }
      else if(Math.random() < 0.02)
      {
         possibility = 2 + random(4);
         rarity = 2;
      }
      else
      {
         possibility = 6 + random(31);
         rarity = 1;
      }
      if(_root.save["mysteryBoxBan" + boxID][possibility] == true)
      {
         possibility = 0;
         rarity = 0;
      }
      if(possibility == 0)
      {
         if(_root.save.blueCoinOvercap < 300)
         {
            _root.save.blueCoin += 4;
         }
         itemName = "4 Blue Coins (refund)";
      }
      if(possibility == 1)
      {
         _root.getArenaWeapon(90,"Grenades",176,true,1000,2,0,50,50,0,100,3000000,1,0,0,2,"Fire Element","Poison Chance","",5000000,Infinity,false,false,false,false,false,0,"Elite Grenades","Explosion Crate Reward");
         itemName = "Elite Grenades";
      }
      else if(possibility == 2)
      {
         _root.save.mysteryBox[4] += 1;
         itemName = "Legendary Box";
      }
      else if(possibility == 3)
      {
         _root.save.mysteryBox[3] += 5;
         itemName = "5 Pixelated Mystery Boxes";
      }
      else if(possibility == 4)
      {
         _root.save.mysteryBox[2] += 5;
         itemName = "5 Gambler\'s Boxes";
      }
      else if(possibility == 5)
      {
         _root.save.mysteryBox[5] += 25;
         itemName = "25 Progress Boxes";
      }
      else if(possibility == 6)
      {
         if(_root.save.blueCoinOvercap < 300)
         {
            _root.save.blueCoin += 1000;
            _root.save.blueCoinSauce[41] += 1000;
            _root.save.blueCoinSauce[40] += 1000;
            _root.save.blueCoinTotal[41] += 1000;
            _root.save.blueCoinTotal[40] += 1000;
            _root.save.blueCoinGraph[7] += 1000;
            _root.save.blueCoinGraph2[7] += 1000;
         }
         itemName = "1,000 Blue Coins";
      }
      else if(possibility == 7)
      {
         if(_root.save.blueCoinOvercap < 300)
         {
            _root.save.blueCoin += 500;
            _root.save.blueCoinSauce[41] += 500;
            _root.save.blueCoinSauce[40] += 500;
            _root.save.blueCoinTotal[41] += 500;
            _root.save.blueCoinTotal[40] += 500;
            _root.save.blueCoinGraph[7] += 500;
            _root.save.blueCoinGraph2[7] += 500;
         }
         itemName = "500 Blue Coins";
      }
      else if(possibility == 8)
      {
         if(_root.save.greenCoinOvercap < 300)
         {
            _root.save.greenCoin += 500000;
            _root.save.greenCoinSauce[41] += 500000;
            _root.save.greenCoinSauce[40] += 500000;
            _root.save.greenCoinTotal[41] += 500000;
            _root.save.greenCoinTotal[40] += 500000;
            _root.save.greenCoinGraph[7] += 500000;
            _root.save.greenCoinGraph2[7] += 500000;
         }
         itemName = "500,000 Green Coins";
      }
      else if(possibility == 9)
      {
         if(_root.save.greenCoinOvercap < 300)
         {
            _root.save.greenCoin += 250000;
            _root.save.greenCoinSauce[41] += 250000;
            _root.save.greenCoinSauce[40] += 250000;
            _root.save.greenCoinTotal[41] += 250000;
            _root.save.greenCoinTotal[40] += 250000;
            _root.save.greenCoinGraph[7] += 250000;
            _root.save.greenCoinGraph2[7] += 250000;
         }
         itemName = "250,000 Green Coins";
      }
      else if(possibility == 10)
      {
         _root.progPercent += 10000;
         itemName = "100 Insta-Progress";
      }
      else if(possibility == 11)
      {
         _root.progPercent += 5000;
         itemName = "50 Insta-Progress";
      }
      else if(possibility == 12)
      {
         _root.save.gardenPoint += 500;
         itemName = "500 Garden Points";
      }
      else if(possibility == 13)
      {
         _root.save.arenaPixel += 1000000;
         itemName = "1,000,000 Pixels";
      }
      else if(possibility == 14)
      {
         _root.save.arenaPixel += 500000;
         itemName = "500,000 Pixels";
      }
      else if(possibility == 15)
      {
         _root.save.arenaCraft += 100000;
         itemName = "100,000 Crafting Material";
      }
      else if(possibility == 16)
      {
         _root.save.arenaCraft += 50000;
         itemName = "50,000 Crafting Material";
      }
      else if(possibility == 17)
      {
         _root.getArenaEnhancer("Weapon Attack Enhancer",5,25,0,100,"","","",0,0,100000,Infinity,"Weapon Attack Rock Lv. 5","Explosion Crate Reward");
         itemName = "Weapon Attack Rock Lv. 5";
      }
      else if(possibility == 18)
      {
         _root.getArenaEnhancer("Armor Defense Enhancer",115,25,0,100,"","","",0,0,100000,Infinity,"Armor Defense Rock Lv. 5","Explosion Crate Reward");
         itemName = "Armor Defense Rock Lv. 5";
      }
      else if(possibility == 19)
      {
         _root.getArenaEnhancer("Weapon Speed Enhancer",52,2,0,100,"","","",0,0,350000,Infinity,"Weapon Speed Rock Lv. 2","Explosion Crate Reward");
         itemName = "Weapon Speed Rock Lv. 2";
      }
      else if(possibility == 20)
      {
         _root.getArenaArmor(88,"Hat",110,29,1,210,15,5,14,1,0,1,0,0,245,"Reward","Evasion","Random",40000,Infinity,false,false,false,false,false,0,"Enchanted Leather Hat","Explosion Crate Reward");
         itemName = "Enchanted Leather Hat";
      }
      else if(possibility == 21)
      {
         _root.getArenaArmor(88,"Shirt",110,29,1,210,19,5,5,1,0,1,0,0,245,"Reward","Evasion","Random",40000,Infinity,false,false,false,false,false,0,"Enchanted Leather Shirt","Explosion Crate Reward");
         itemName = "Enchanted Leather Shirt";
      }
      else if(possibility == 22)
      {
         _root.getArenaArmor(88,"Gloves",110,33,1,210,19,14,5,1,0,1,0,0,245,"Reward","Evasion","Random",40000,Infinity,false,false,false,false,false,0,"Enchanted Leather Gloves","Explosion Crate Reward");
         itemName = "Enchanted Leather Gloves";
      }
      else if(possibility == 23)
      {
         _root.getArenaArmor(88,"Pants",110,29,1,210,19,5,5,1,0,1,0,0,245,"Reward","Evasion","Random",40000,Infinity,false,false,false,false,false,0,"Enchanted Leather Pants","Explosion Crate Reward");
         itemName = "Enchanted Leather Pants";
      }
      else if(possibility == 24)
      {
         _root.getArenaArmor(88,"Shoes",110,33,3,210,15,14,5,1,0,1,0,0,245,"Reward","Evasion","Random",40000,Infinity,false,false,false,false,false,0,"Enchanted Leather Shoes","Explosion Crate Reward");
         itemName = "Enchanted Leather Shoes";
      }
      else if(possibility == 25)
      {
         _root.save.printerCharge += 400;
         itemName = "400 Battery Charges";
      }
      else if(possibility == 26)
      {
         _root.save.printerCharge += 200;
         itemName = "200 Battery Charges";
      }
      else if(possibility == 27)
      {
         _root.save.arcadeToken += 5;
         itemName = "5 Arcade Tokens";
      }
      else if(possibility == 28)
      {
         _root.save.stadiumToken += 500;
         itemName = "500 Stadium Tokens";
      }
      else if(possibility == 29)
      {
         _root.save.stadiumToken += 200;
         itemName = "200 Stadium Tokens";
      }
      else if(possibility == 30)
      {
         _root.save.fcgCash += 500;
         itemName = "500 FCG Cash";
      }
      else if(possibility == 31)
      {
         _root.save.fcgCash += 200;
         itemName = "200 FCG Cash";
      }
      else if(possibility == 32)
      {
         _root.save.lolGems[10] += 3;
         itemName = "3 Lv. 10 LolMarket Gems";
      }
      else if(possibility == 33)
      {
         _root.save.awesomeRefill += 1;
         itemName = "Energy Refill";
      }
      else if(possibility == 34)
      {
         _root.save.buttonPurple += 25;
         itemName = "25 Purple Buttons";
      }
      else if(possibility == 35)
      {
         _root.save.arcade100kMedal += 25;
         itemName = "25 Arcade 100k Medals";
      }
      else if(possibility == 36)
      {
         _root.save.specialPetFood += 25;
         itemName = "25 Special Pet Food";
      }
      if(doFr < 300)
      {
         _root.dispNews(124 + rarity,"Gained: " + itemName + "!");
      }
      if(isNaN(_root.save["mysteryBoxCollect" + boxID][possibility]))
      {
         _root.save["mysteryBoxCollect" + boxID][possibility] = 0;
      }
      _root.save["mysteryBoxCollect" + boxID][possibility] += 1;
   }
   boxID = 1;
   doFr = 0;
}


