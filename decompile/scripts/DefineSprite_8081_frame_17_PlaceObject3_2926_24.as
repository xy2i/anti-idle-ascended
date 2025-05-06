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
      if(Math.random() < 0.02)
      {
         possibility = 1 + random(5);
         rarity = 3;
      }
      else if(Math.random() < 0.1)
      {
         possibility = 6 + random(9);
         rarity = 2;
      }
      else if(Math.random() < 0.7)
      {
         possibility = 16 + random(14);
         if(possibility >= 24 && _root.save.bannedB >= 1 && _root.save.arenaLevel < 500)
         {
            possibility = 16 + random(8);
         }
         if(possibility == 24 && Math.random() < 0.7 && _root.save.arenaAttack >= 65000)
         {
            possibility = 16 + random(8);
         }
         if(possibility == 25 && Math.random() < 0.7 && _root.save.arenaDefense >= 65000)
         {
            possibility = 16 + random(8);
         }
         if(possibility == 26 && Math.random() < 0.7 && _root.save.arenaMaxHealth >= 650000)
         {
            possibility = 16 + random(8);
         }
         if(possibility == 27 && Math.random() < 0.7 && _root.save.arenaMaxMana >= 260000)
         {
            possibility = 16 + random(8);
         }
         if(possibility == 28 && Math.random() < 0.7 && _root.save.arenaAccuracy >= 13000)
         {
            possibility = 16 + random(8);
         }
         if(possibility == 29 && Math.random() < 0.7 && _root.save.arenaEvasion >= 13000)
         {
            possibility = 16 + random(8);
         }
         rarity = 1;
      }
      else
      {
         possibility = 30 + random(2);
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
            _root.save.blueCoin += 7;
         }
         itemName = "7 Blue Coins (refund)";
      }
      if(possibility == 1)
      {
         _root.getArenaEnhancer("Weapon Bonus Adder",323,0,0,100,"","","Random",10,206,100000,Infinity,"[S] Weapon Bonus: Type C","Pixelated Mystery Box Reward");
         itemName = "[S] Weapon Bonus: Type C";
      }
      if(possibility == 2)
      {
         _root.getArenaEnhancer("Armor Bonus Adder",326,0,0,100,"","","Random",10,206,100000,Infinity,"[S] Armor Bonus: Type C","Pixelated Mystery Box Reward");
         itemName = "[S] Armor Bonus: Type C";
      }
      if(possibility == 3)
      {
         _root.getArenaEnhancer("Weapon Mystery Enhancer",100,12,0,1000,"","","",0,0,350000,Infinity,"Weapon Mystery Rock Lv. 10","Pixelated Mystery Box Reward");
         itemName = "Weapon Mystery Rock Lv. 10";
      }
      if(possibility == 4)
      {
         _root.getArenaEnhancer("Armor Mystery Enhancer",200,12,0,1000,"","","",0,0,350000,Infinity,"Armor Mystery Rock Lv. 10","Pixelated Mystery Box Reward");
         itemName = "Armor Mystery Rock Lv. 10";
      }
      if(possibility == 5)
      {
         _root.getArenaWeapon(250,"Mining Tool",315,false,0,6,0,15,0,0,4,2000000,1,0,9,106,"Drop Rate","Critical Damage","",1000000,Infinity,true,false,true,false,false,0,"Master\'s Pickaxe","Pixelated Mystery Box Reward");
         itemName = "Master\'s Pickaxe";
      }
      if(possibility == 6)
      {
         _root.getArenaEnhancer("Weapon Bonus Adder",321,0,0,100,"Random","","",10,26,100000,Infinity,"[S] Weapon Bonus: Type A","Pixelated Mystery Box Reward");
         itemName = "[S] Weapon Bonus: Type A";
      }
      if(possibility == 7)
      {
         _root.getArenaEnhancer("Weapon Bonus Adder",322,0,0,100,"","Random","",10,16,100000,Infinity,"[S] Weapon Bonus: Type B","Pixelated Mystery Box Reward");
         itemName = "[S] Weapon Bonus: Type B";
      }
      if(possibility == 8)
      {
         _root.getArenaEnhancer("Armor Bonus Adder",324,0,0,100,"Random","","",10,26,100000,Infinity,"[S] Armor Bonus: Type A","Pixelated Mystery Box Reward");
         itemName = "[S] Armor Bonus: Type A";
      }
      if(possibility == 9)
      {
         _root.getArenaEnhancer("Armor Bonus Adder",325,0,0,100,"","Random","",10,16,100000,Infinity,"[S] Armor Bonus: Type B","Pixelated Mystery Box Reward");
         itemName = "[S] Armor Bonus: Type B";
      }
      if(possibility == 10)
      {
         _root.getArenaWeapon(180,"Mining Tool",314,false,0,6,0,12,0,0,3,1500000,1,0,9,66,"Drop Rate","Critical Damage","",100000,Infinity,true,false,true,false,false,0,"Diamond Pickaxe","Pixelated Mystery Box Reward");
         itemName = "Diamond Pickaxe";
      }
      if(possibility == 11)
      {
         _root.getArenaEnhancer("Weapon Mystery Enhancer",99,11,0,1000,"","","",0,0,100000,Infinity,"Weapon Mystery Rock Lv. 9","Pixelated Mystery Box Reward");
         itemName = "Weapon Mystery Rock Lv. 9";
      }
      if(possibility == 12)
      {
         _root.getArenaEnhancer("Armor Mystery Enhancer",199,11,0,1000,"","","",0,0,100000,Infinity,"Armor Mystery Rock Lv. 9","Pixelated Mystery Box Reward");
         itemName = "Armor Mystery Rock Lv. 9";
      }
      if(possibility == 13)
      {
         _root.getArenaEnhancer("Weapon Attack Enhancer",10,50,0,1000,"","","",10,500,350000,Infinity,"Weapon Attack Rock Lv. 10","Pixelated Mystery Box Reward");
         itemName = "Weapon Attack Rock Lv. 10";
      }
      if(possibility == 14)
      {
         _root.getArenaEnhancer("Armor Defense Enhancer",120,50,0,1000,"","","",10,500,350000,Infinity,"Armor Defense Rock Lv. 10","Pixelated Mystery Box Reward");
         itemName = "Armor Defense Rock Lv. 10";
      }
      if(possibility == 16)
      {
         _root.getArenaPotion("Power Buff Potion",3,5400,1,0,106,1000000,Infinity,"Large Power Potion","Pixelated Mystery Box Reward");
         itemName = "Large Power Potion";
      }
      if(possibility == 17)
      {
         _root.getArenaPotion("Master Buff Potion",8,5400,1,0,106,1000000,Infinity,"Large Master Potion","Pixelated Mystery Box Reward");
         itemName = "Large Master Potion";
      }
      if(possibility == 18)
      {
         _root.getArenaPotion("Reward Buff Potion",13,5400,1,0,106,1000000,Infinity,"Large Reward Potion","Pixelated Mystery Box Reward");
         itemName = "Large Reward Potion";
      }
      if(possibility == 19)
      {
         _root.save.arenaUnobtainium += 25;
         itemName = "25 Unobtainium";
      }
      if(possibility == 20)
      {
         _root.save.arenaCrystal2 += 5;
         itemName = "5 Crystals of Ultimate Rarity";
      }
      if(possibility == 21)
      {
         _root.save.arenaCrystal1 += 20;
         itemName = "20 Crystals of Rarity";
      }
      if(possibility == 22)
      {
         _root.save.arenaSuperiorCraft += 125;
         itemName = "125 Superior Crafting Material";
      }
      if(possibility == 23)
      {
         _root.save.arenaEnhancerFragment += 1000;
         itemName = "1,000 Enhancer Fragments";
      }
      if(possibility == 24)
      {
         _root.save.arenaAttack += 100;
         itemName = "100 Attack Power";
      }
      if(possibility == 25)
      {
         _root.save.arenaDefense += 100;
         itemName = "100 Defense Power";
      }
      if(possibility == 26)
      {
         _root.save.arenaMaxHealth += 1000;
         itemName = "1,000 MaxHP";
      }
      if(possibility == 27)
      {
         _root.save.arenaMaxMana += 400;
         itemName = "400 MaxMP";
      }
      if(possibility == 28)
      {
         _root.save.arenaAccuracy += 20;
         itemName = "20 Accuracy";
      }
      if(possibility == 29)
      {
         _root.save.arenaEvasion += 20;
         itemName = "20 Evasion";
      }
      if(possibility == 30)
      {
         tempAmnt = _root.save.battlePoint * _root.save.battlePoint * 50;
         if(tempAmnt < 500000)
         {
            tempAmnt = 500000;
         }
         if(tempAmnt > 100000000)
         {
            tempAmnt = 100000000;
         }
         _root.save.arenaPixel += tempAmnt;
         itemName = _root.withComma(tempAmnt) + " Pixels";
      }
      if(possibility == 31)
      {
         tempAmnt = _root.save.battlePoint * _root.save.battlePoint * 5;
         if(tempAmnt < 50000)
         {
            tempAmnt = 50000;
         }
         if(tempAmnt > 10000000)
         {
            tempAmnt = 10000000;
         }
         _root.save.arenaCraft += tempAmnt;
         itemName = _root.withComma(tempAmnt) + " Crafting Material";
      }
      if(doFr < 300)
      {
         _root.dispNews(124 + rarity,"Gained: " + itemName + "!");
      }
      levelMult = Math.ceil(_root.save.bestLevel / 100);
      if(_root.save.bestLevel >= 9001 || isNaN(levelMult))
      {
         levelMult = 100;
      }
      boxExp = levelMult * 5000;
      if(_root.save.bannedB >= 1 && _root.save.arenaLevel < 500)
      {
         boxExp = 0;
      }
      _root.save.arenaExp += boxExp;
      if(isNaN(_root.save["mysteryBoxCollect" + boxID][possibility]))
      {
         _root.save["mysteryBoxCollect" + boxID][possibility] = 0;
      }
      _root.save["mysteryBoxCollect" + boxID][possibility] += 1;
   }
   boxID = 3;
   doFr = 0;
}


