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
      if(Math.random() < 0.01)
      {
         possibility = 1 + random(2);
         rarity = 3;
      }
      else if(Math.random() < 0.04)
      {
         possibility = 3 + random(2);
         rarity = 2;
      }
      else
      {
         possibility = 5 + random(21);
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
            _root.save.blueCoin += 5;
         }
         itemName = "5 Blue Coins (refund)";
      }
      if(possibility == 1)
      {
         _root.getArenaEnhancer("Weapon Mystery Enhancer",99,11,0,1000,"","","",0,100,1000000,Infinity,"Weapon Mystery Rock Lv. 9","Awesome Crate Reward");
         itemName = "Weapon Mystery Rock Lv. 9";
      }
      else if(possibility == 2)
      {
         _root.getArenaEnhancer("Armor Mystery Enhancer",199,11,0,1000,"","","",0,100,1000000,Infinity,"Armor Mystery Rock Lv. 9","Awesome Crate Reward");
         itemName = "Armor Mystery Rock Lv. 9";
      }
      else if(possibility == 3)
      {
         _root.save.mysteryBox[1] += 25;
         itemName = "25 Explosion Crates";
      }
      else if(possibility == 4)
      {
         _root.save.mysteryBox[3] += 15;
         itemName = "15 Pixelated Mystery Boxes";
      }
      else if(possibility == 5)
      {
         _root.save.gardenFertilizer += 1;
         itemName = "Fertilizer";
      }
      else if(possibility == 6)
      {
         _root.getArenaEnhancer("Weapon Critical Enhancer",69,9,0,100,"","","",0,0,100000,Infinity,"Weapon Critical Rock Lv. 9","Awesome Crate Reward",false);
         itemName = "Weapon Critical Rock Lv. 9";
      }
      else if(possibility == 7)
      {
         _root.getArenaEnhancer("Weapon Dexterity Enhancer",79,9,0,100,"","","",0,0,100000,Infinity,"Weapon Dexterity Rock Lv. 9","Awesome Crate Reward",false);
         itemName = "Weapon Dexterity Rock Lv. 9";
      }
      else if(possibility == 8)
      {
         _root.getArenaEnhancer("Weapon Health Enhancer",89,9,0,100,"","","",0,0,100000,Infinity,"Weapon Health Rock Lv. 9","Awesome Crate Reward",false);
         itemName = "Weapon Health Rock Lv. 9";
      }
      else if(possibility == 9)
      {
         _root.getArenaEnhancer("Weapon Bonus Adder",322,0,0,100,"","Random","",10,16,50000,Infinity,"Weapon Bonus: Type B","Awesome Crate Reward");
         itemName = "Weapon Bonus: Type B";
      }
      else if(possibility == 10)
      {
         _root.getArenaEnhancer("Armor Critical Enhancer",169,9,0,100,"","","",0,0,100000,Infinity,"Armor Critical Rock Lv. 9","Awesome Crate Reward",false);
         itemName = "Armor Critical Rock Lv. 9";
      }
      else if(possibility == 11)
      {
         _root.getArenaEnhancer("Armor Dexterity Enhancer",179,9,0,100,"","","",0,0,100000,Infinity,"Armor Dexterity Rock Lv. 9","Awesome Crate Reward",false);
         itemName = "Armor Dexterity Rock Lv. 9";
      }
      else if(possibility == 12)
      {
         _root.getArenaEnhancer("Armor Health Enhancer",189,9,0,100,"","","",0,0,100000,Infinity,"Armor Health Rock Lv. 9","Awesome Crate Reward",false);
         itemName = "Armor Health Rock Lv. 9";
      }
      else if(possibility == 13)
      {
         _root.save.buttonPurple += 100;
         itemName = "100 Purple Buttons";
      }
      else if(possibility == 14)
      {
         _root.save.arcade100kMedal += 100;
         itemName = "100 Arcade 100k Medals";
      }
      else if(possibility == 15)
      {
         _root.save.stadiumToken += 10000;
         itemName = "10,000 Stadium Tokens";
      }
      else if(possibility == 16)
      {
         _root.save.careerPotion += 1;
         itemName = "Random Career Potion";
      }
      else if(possibility == 17)
      {
         _root.save.fishFound[1] += 2;
         _root.save.fishLeft[1] += 2;
         itemName = "2 Bronze Treasure Boxes";
      }
      else if(possibility == 18)
      {
         _root.save.fishFound[4] += 2;
         _root.save.fishLeft[4] += 2;
         itemName = "2 Bronze Keys";
      }
      else if(possibility == 19)
      {
         _root.save.fishFound[8] += 1;
         _root.save.fishLeft[8] += 1;
         itemName = "Elite Energy Drink";
      }
      else if(possibility == 20)
      {
         _root.save.fishFound[10] += 1;
         _root.save.fishLeft[10] += 1;
         itemName = "Elite Pet Food";
      }
      else if(possibility == 21)
      {
         _root.save.arenaSuperiorCraft += 20;
         itemName = "20 Superior Crafting Material";
      }
      else if(possibility == 22)
      {
         _root.save.arenaCrystal1 += 4;
         itemName = "4 Crystals of Rarity";
      }
      else if(possibility == 23)
      {
         _root.save.arenaCrystal2 += 1;
         itemName = "Crystal of Ultimate Rarity";
      }
      else if(possibility == 24)
      {
         _root.save.questToken += 200;
         itemName = "200 Quest Tokens";
      }
      else if(possibility == 25)
      {
         _root.save.questToken += 100;
         itemName = "100 Quest Tokens";
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
   boxID = 7;
   doFr = 0;
}


