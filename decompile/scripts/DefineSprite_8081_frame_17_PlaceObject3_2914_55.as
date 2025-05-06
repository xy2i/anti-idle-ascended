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
      if(Math.random() < 0.0048)
      {
         possibility = 1 + random(8);
         rarity = 3;
      }
      else if(Math.random() < 0.048)
      {
         possibility = 9 + random(8);
         rarity = 2;
      }
      else
      {
         possibility = 17 + random(10);
         rarity = 1;
      }
      if(_root.save["mysteryBoxBan" + boxID][possibility] == true)
      {
         possibility = 0;
         rarity = 0;
      }
      if(possibility == 0)
      {
         if(_root.save.coinOvercap < 300)
         {
            _root.save.coinLag += 66666666;
         }
         itemName = "66,666,666 Coins (refund)";
      }
      if(possibility == 1)
      {
         _root.getArenaEnhancer("Weapon Unique Enhancer",400,66,0,100,"","","",0,706,6000000,604800000,"Weapon Unique Enhancer Lv. 66","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.\n\nChaos Crate Reward");
         itemName = "Weapon Unique Enhancer Lv. 66";
      }
      else if(possibility == 2)
      {
         _root.getArenaEnhancer("Armor Unique Enhancer",410,66,0,100,"","","",0,706,6000000,604800000,"Armor Unique Enhancer Lv. 66","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.\n\nChaos Crate Reward");
         itemName = "Armor Unique Enhancer Lv. 66";
      }
      else if(possibility == 3)
      {
         _root.getArenaEnhancer("Accessory Unique Enhancer",420,66,0,100,"","","",0,706,6000000,604800000,"Accessory Unique Enhancer Lv. 66","A unique enhancer. Unlike other enhancers, it doesn\'t add to the enhancement count of the item. However, it cannot be used on items that aren\'t fully enhanced and leveled.\n\nChaos Crate Reward");
         itemName = "Accessory Unique Enhancer Lv. 66";
      }
      else if(possibility == 4)
      {
         _root.getArenaArmor(288,"Hat",134,50,1,555,10,0,30,40,176000000,1,0,0,200,"Dark Element","Weaken Duration","",10000000,Infinity,false,true,false,false,false,6,"Chaos Hat","Chaos Crate Reward");
         itemName = "Chaos Hat";
      }
      else if(possibility == 5)
      {
         _root.getArenaArmor(288,"Shirt",134,50,1,581,10,30,0,40,176000000,1,0,0,200,"Dark Element","Weaken Duration","",10000000,Infinity,false,true,false,false,false,6,"Chaos Shirt","Chaos Crate Reward");
         itemName = "Chaos Shirt";
      }
      else if(possibility == 6)
      {
         _root.getArenaArmor(288,"Gloves",134,60,7,503,30,0,0,40,176000000,1,0,0,200,"Dark Element","Weaken Duration","",10000000,Infinity,false,true,false,false,false,6,"Chaos Gloves","Chaos Crate Reward");
         itemName = "Chaos Gloves";
      }
      else if(possibility == 7)
      {
         _root.getArenaArmor(288,"Pants",134,50,1,581,10,30,0,40,176000000,1,0,0,200,"Dark Element","Weaken Duration","",10000000,Infinity,false,true,false,false,false,6,"Chaos Pants","Chaos Crate Reward");
         itemName = "Chaos Pants";
      }
      else if(possibility == 8)
      {
         _root.getArenaArmor(288,"Shoes",134,60,3,503,30,0,0,40,176000000,1,0,0,200,"Dark Element","Weaken Duration","",10000000,Infinity,false,true,false,false,false,6,"Chaos Shoes","Chaos Crate Reward");
         itemName = "Chaos Shoes";
      }
      else if(possibility == 9)
      {
         _root.save.mysteryBox[1] += 66;
         itemName = "66 Explosion Crates";
      }
      else if(possibility == 10)
      {
         _root.save.mysteryBox[7] += 66;
         itemName = "66 Awesome Crates";
      }
      else if(possibility == 11)
      {
         _root.save.megaCareerPotion += 6;
         itemName = "6 Mega Career Potions";
      }
      else if(possibility == 12)
      {
         _root.save.gardenFertilizer += 66;
         itemName = "66 Fertilizers";
      }
      else if(possibility == 13)
      {
         _root.save.arenaNerfGem += 666;
         itemName = "666 To-be-Nerfed Gems";
      }
      else if(possibility == 14)
      {
         _root.save.awesomeRefill += 66;
         itemName = "66 Energy Refills";
      }
      else if(possibility == 15)
      {
         _root.save.fishFound[3] += 6;
         _root.save.fishLeft[3] += 6;
         itemName = "6 Golden Treasure Boxes";
      }
      else if(possibility == 16)
      {
         _root.save.fishFound[6] += 6;
         _root.save.fishLeft[6] += 6;
         itemName = "6 Golden Keys";
      }
      else if(possibility == 17)
      {
         _root.save.arenaChaoticFragment += 66;
         itemName = "66 Chaotic Fragments of Chaos";
      }
      else if(possibility == 18)
      {
         _root.save.arenaUnobtainium += 66;
         itemName = "66 Unobtainium";
      }
      else if(possibility == 19)
      {
         _root.save.arenaBacon += 66;
         itemName = "66 Bacon";
      }
      else if(possibility == 20)
      {
         _root.save.arenaCraft += 666666;
         itemName = "666,666 Crafting Material";
      }
      else if(possibility == 21)
      {
         if(_root.save.blueCoinOvercap < 300)
         {
            _root.save.blueCoin += 666;
         }
         itemName = "666 Blue Coins";
         _root.save.blueCoinSauce[41] += 666;
         _root.save.blueCoinSauce[40] += 666;
         _root.save.blueCoinTotal[41] += 666;
         _root.save.blueCoinTotal[40] += 666;
         _root.save.blueCoinGraph[7] += 666;
         _root.save.blueCoinGraph2[7] += 666;
      }
      else if(possibility == 22)
      {
         if(_root.save.greenCoinOvercap < 300)
         {
            _root.save.greenCoin += 666666;
            _root.save.greenCoinSauce[41] += 666666;
            _root.save.greenCoinSauce[40] += 666666;
            _root.save.greenCoinTotal[41] += 666666;
            _root.save.greenCoinTotal[40] += 666666;
            _root.save.greenCoinGraph[7] += 666666;
            _root.save.greenCoinGraph2[7] += 666666;
         }
         itemName = "666,666 Green Coins";
      }
      else if(possibility == 23)
      {
         _root.save.doubleExpTime += 360;
         itemName = "6 min. 1.5x EXP";
      }
      else if(possibility == 24)
      {
         _root.save.doubleCoinTime += 360;
         itemName = "6 min. 1.5x Coin";
      }
      else if(possibility == 25)
      {
         _root.save.fishFound[7] += 6;
         _root.save.fishLeft[7] += 6;
         itemName = "6 Regular Energy Drink";
      }
      else if(possibility == 26)
      {
         _root.save.fishFound[9] += 6;
         _root.save.fishLeft[9] += 6;
         itemName = "6 Regular Pet Food";
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
   boxID = 8;
   doFr = 0;
}


