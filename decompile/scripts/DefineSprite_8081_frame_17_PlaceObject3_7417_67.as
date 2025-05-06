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
         itr = 2;
      }
      if(doFr >= 301)
      {
         itr = 5;
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
      if(Math.random() < 0.003)
      {
         possibility = 1 + random(6);
         rarity = 3;
      }
      else if(Math.random() < 0.03)
      {
         possibility = 7 + random(10);
         rarity = 2;
      }
      else
      {
         possibility = 17 + random(14);
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
            _root.save.blueCoin += 30;
         }
         itemName = "30 Blue Coins (refund)";
      }
      if(possibility == 1)
      {
         _root.getArenaEnhancer("Weapon Growth Rock",302,12,0,100,"","","",0,706,100000000,Infinity,"Crisis Weapon Growth Rock","Apocalypse Crate Reward",true);
         itemName = "Crisis Weapon Growth Rock";
      }
      else if(possibility == 2)
      {
         _root.getArenaEnhancer("Weapon Unobtainium Enhancer",355,5,0,100,"","","",0,706,0,Infinity,"[S] Weapon Unobtainium Enhancer Lv. 5","Apocalypse Crate Reward",true);
         itemName = "[S] Weapon Unobtainium Enhancer Lv. 5";
      }
      else if(possibility == 3)
      {
         _root.getArenaEnhancer("Armor Unobtainium Enhancer",365,5,0,100,"","","",0,706,0,Infinity,"[S] Armor Unobtainium Enhancer Lv. 5","Apocalypse Crate Reward",true);
         itemName = "[S] Armor Unobtainium Enhancer Lv. 5";
      }
      else if(possibility == 4)
      {
         _root.getArenaEnhancer("Weapon Bonus Adder",323,0,0,100,"","","Random",0,406,50000,Infinity,"[S] [I] Weapon Bonus: Type C","Apocalypse Crate Reward",true);
         itemName = "[S] [I] Weapon Bonus: Type C";
      }
      else if(possibility == 5)
      {
         _root.getArenaEnhancer("Armor Bonus Adder",326,0,0,100,"","","Random",0,406,50000,Infinity,"[S] [I] Armor Bonus: Type C","Apocalypse Crate Reward",true);
         itemName = "[S] [I] Armor Bonus: Type C";
      }
      else if(possibility == 6)
      {
         _root.getArenaEnhancer("Accessory Bonus Adder",329,0,0,100,"","","Random",0,406,50000,Infinity,"[S] [I] Accessory Bonus: Type C","Apocalypse Crate Reward",true);
         itemName = "[S] [I] Accessory Bonus: Type C";
      }
      else if(possibility == 7)
      {
         _root.getArenaEnhancer("Weapon Mystery Enhancer",100,20,0,100,"","","",0,16,10000000,Infinity,"Fairy Weapon Enhancer","Can only be used on Fairy Godmother Wand.\n\nApocalypse Crate Reward",true);
         itemName = "Fairy Weapon Enhancer";
      }
      else if(possibility == 8)
      {
         _root.getArenaEnhancer("Armor Mystery Enhancer",200,20,0,100,"","","",0,16,10000000,Infinity,"Fairy Armor Enhancer","Can only be used on Fairy Godfather Armor and Fairy Godmother Armor.\n\nApocalypse Crate Reward",true);
         itemName = "Fairy Armor Enhancer";
      }
      else if(possibility == 9)
      {
         _root.getArenaEnhancer("Accessory Attack Enhancer",331,50,0,100,"","","",0,706,10000000,Infinity,"Dominator Gem Enhancer","Can only be used on Dominator Gem.\n\nApocalypse Crate Reward",true);
         itemName = "Dominator Gem Enhancer";
      }
      else if(possibility == 10)
      {
         _root.getArenaEnhancer("Accessory Attack Enhancer",331,50,0,100,"","","",0,706,10000000,Infinity,"Mega Triangle Gem Enhancer","Can only be used on Mega Triangle Gem.\n\nApocalypse Crate Reward",true);
         itemName = "Mega Triangle Gem Enhancer";
      }
      else if(possibility == 11)
      {
         _root.getArenaEnhancer("Armor Growth Rock",451,100,0,100,"","","",0,706,0,Infinity,"Humblebee Armor Upgrade","Raises the Max Level of Humblebee Armor by 100. Adds 1 to the enhancement count. Cannot be used if the item\'s Max Level is already 284 or higher.\n\nApocalypse Crate Reward");
         itemName = "Humblebee Armor Upgrade";
      }
      else if(possibility == 12)
      {
         _root.getArenaArmor(218,"Hat",150,123,7,1000,35,25,75,42,30000000,1,0,0,706,"Epic Monster Rate","Weaken Effect","Attack Power",100000000,Infinity,false,false,false,false,false,0,"Knightmare Hat","Apocalypse Crate Reward",false);
         itemName = "Knightmare Hat";
      }
      else if(possibility == 13)
      {
         _root.getArenaArmor(218,"Shirt",150,123,7,1000,75,25,25,42,30000000,1,0,0,706,"Epic Monster Rate","Weaken Effect","Attack Power",100000000,Infinity,false,false,false,false,false,0,"Knightmare Shirt","Apocalypse Crate Reward",false);
         itemName = "Knightmare Shirt";
      }
      else if(possibility == 14)
      {
         _root.getArenaArmor(218,"Gloves",150,134,7,1000,75,41,25,42,30000000,1,0,0,706,"Epic Monster Rate","Weaken Effect","Attack Power",100000000,Infinity,false,false,false,false,false,0,"Knightmare Gloves","Apocalypse Crate Reward",false);
         itemName = "Knightmare Gloves";
      }
      else if(possibility == 15)
      {
         _root.getArenaArmor(218,"Pants",150,123,7,1000,75,25,25,42,30000000,1,0,0,706,"Epic Monster Rate","Weaken Effect","Attack Power",100000000,Infinity,false,false,false,false,false,0,"Knightmare Pants","Apocalypse Crate Reward",false);
         itemName = "Knightmare Pants";
      }
      else if(possibility == 16)
      {
         _root.getArenaArmor(218,"Shoes",150,123,10,1000,35,75,25,42,30000000,1,0,0,706,"Epic Monster Rate","Weaken Effect","Attack Power",100000000,Infinity,false,false,false,false,false,0,"Knightmare Shoes","Apocalypse Crate Reward",false);
         itemName = "Knightmare Shoes";
      }
      else if(possibility == 17)
      {
         _root.getArenaEnhancer("Armor Unique Enhancer",410,1800,0,100,"","","",0,706,1000000,Infinity,"Crystal Unique Enhancer MAX","Can only be used on Crystal Armor.\n\nApocalypse Crate Reward");
         itemName = "Crystal Unique Enhancer MAX";
      }
      else if(possibility == 18)
      {
         _root.getArenaEnhancer("Mystery Enhancer Identifier",221,0,0,100,"","","",0,300,0,Infinity,"Mystery Enhancer Identifier","Apocalypse Crate Reward");
         itemName = "Mystery Enhancer Identifier";
      }
      else if(possibility == 19)
      {
         _root.getArenaEnhancer("Weapon Mystery Enhancer",100,12,0,100,"","","",0,0,3500000,Infinity,"Weapon Mystery Rock Lv. 10","Apocalypse Crate Reward");
         itemName = "Weapon Mystery Rock Lv. 10";
      }
      else if(possibility == 20)
      {
         _root.getArenaEnhancer("Armor Mystery Enhancer",200,12,0,100,"","","",0,0,3500000,Infinity,"Armor Mystery Rock Lv. 10","Apocalypse Crate Reward");
         itemName = "Armor Mystery Rock Lv. 10";
      }
      else if(possibility == 21)
      {
         corruptBonusB = "Random";
         if(Math.random() < 0.2)
         {
            corruptBonusB = "Instant Kill";
         }
         if(Math.random() < 0.2)
         {
            corruptBonusB = "Boss Damage";
         }
         if(Math.random() < 0.3)
         {
            corruptBonusB = "Potion Efficiency";
         }
         if(Math.random() < 0.3)
         {
            corruptBonusB = "Negate Effect";
         }
         if(Math.random() < 0.3)
         {
            corruptBonusB = "Magic Resist";
         }
         if(Math.random() < 0.4)
         {
            corruptBonusB = "Poison Damage";
         }
         _root.getArenaEnhancer("Armor Bonus Adder",330,0,0,100,"",corruptBonusB,"",0,500,500000,Infinity,"Corrupted Bonus Rock","A rock that can add bonuses that are impossible otherwise. Too bad, it seems to be corrupted.\n\nApocalypse Crate Reward");
         itemName = "Corrupted Bonus Rock";
      }
      else if(possibility == 22)
      {
         _root.getArenaEnhancer("Weapon Finalizer",424,500,0,100,"","","",0,706,250000,Infinity,"Weapon Finalizer (Rank 500)","Apocalypse Crate Reward");
         itemName = "Weapon Finalizer (Rank 500)";
      }
      else if(possibility == 23)
      {
         _root.getArenaEnhancer("Armor Finalizer",425,500,0,100,"","","",0,706,250000,Infinity,"Armor Finalizer (Rank 500)","Apocalypse Crate Reward");
         itemName = "Armor Finalizer (Rank 500)";
      }
      else if(possibility == 24)
      {
         _root.save.mysteryBox[4] += 1;
         itemName = "Legendary Box";
      }
      else if(possibility == 25)
      {
         _root.save.ripoffCard[4] += 1;
         itemName = "Elite Fisher Card";
      }
      else if(possibility == 26)
      {
         _root.save.gardenMegaFertilizer += 3;
         itemName = "3 Mega Fertilizers";
      }
      else if(possibility == 27)
      {
         _root.save.megaCareerPotion += 3;
         itemName = "3 Mega Career Potions";
      }
      else if(possibility == 28)
      {
         _root.save.fcgCash += 3000;
         itemName = "3,000 FCG Cash";
      }
      else if(possibility == 29)
      {
         _root.save.arenaEnhancerFragment += 3000;
         itemName = "3,000 Enhancer Fragments";
      }
      else if(possibility == 30)
      {
         _root.save.greenCoin += 3000000;
         _root.save.greenCoinSauce[41] += 3000000;
         _root.save.greenCoinSauce[40] += 3000000;
         _root.save.greenCoinTotal[41] += 3000000;
         _root.save.greenCoinTotal[40] += 3000000;
         _root.save.greenCoinGraph[7] += 3000000;
         _root.save.greenCoinGraph2[7] += 3000000;
         itemName = "3,000,000 Green Coins";
      }
      _root.dispNews(124 + rarity,"Gained: " + itemName + "!");
      if(isNaN(_root.save["mysteryBoxCollect" + boxID][possibility]))
      {
         _root.save["mysteryBoxCollect" + boxID][possibility] = 0;
      }
      _root.save["mysteryBoxCollect" + boxID][possibility] += 1;
   }
   boxID = 9;
   doFr = 0;
}


