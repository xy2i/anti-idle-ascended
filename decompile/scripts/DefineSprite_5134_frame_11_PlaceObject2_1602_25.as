//! status=pending
on(release){
   if(_root.save.arenaNerfGem >= 100)
   {
      _root.save.arenaNerfGem -= 100;
      openBox();
   }
}


onClipEvent(enterFrame){
   if(Key.isDown(16) && this.hitTest(_root.cursor._x,_root.cursor._y,true))
   {
      if(_root.save.arenaNerfGem >= 100)
      {
         _root.save.arenaNerfGem -= 100;
         openBox();
      }
   }
}


onClipEvent(load){
   function openBox()
   {
      chanceMult = Math.pow(0.9,_root.save.arenaNerfCount);
      if(Math.random() < 0.05)
      {
         possibility = 1;
      }
      else if(Math.random() < 0.2 * chanceMult)
      {
         possibility = 2 + random(5);
      }
      else if(Math.random() < 0.6 * chanceMult)
      {
         possibility = 9 + random(3);
      }
      else if(Math.random() < 1.2 * chanceMult)
      {
         possibility = 12 + random(3);
      }
      else if(Math.random() < 2 * chanceMult)
      {
         possibility = 15 + random(3);
      }
      else
      {
         possibility = 18;
      }
      if(_root.save.bannedB >= 1 && _root.save.arenaLevel < 500)
      {
         if(possibility == 9)
         {
            possibility = 10 + random(2);
         }
         if(possibility == 12)
         {
            possibility = 13 + random(2);
         }
         if(possibility == 15)
         {
            possibility = 16 + random(2);
         }
      }
      _root.save.arenaNerfNext -= 100;
      if(_root.save.arenaNerfNext <= 0)
      {
         _root.save.arenaNerfCount += 1;
         _root.save.arenaNerfNext = 1000 + 2000 * _root.save.arenaNerfCount;
      }
      if(possibility == 1)
      {
         if(_root.save.arenaSpookyKey != true)
         {
            _root.save.arenaSpookyKey = true;
            itemName = "Spooky Crypt Key";
         }
         else if(_root.save.bannedB >= 1 && _root.save.arenaLevel < 500)
         {
            _root.save.arenaUnobtainium += 10;
            itemName = "10 Unobtainium";
         }
         else
         {
            _root.save.arenaExp += 1000000;
            itemName = "1,000,000 Arena EXP";
         }
      }
      if(possibility == 2)
      {
         _root.save.arenaUnobtainium += 20;
         itemName = "20 Unobtainium";
      }
      if(possibility == 3)
      {
         _root.save.arenaCrystal2 += 5;
         itemName = "5 Crystals of Ultimate Rarity";
      }
      if(possibility == 4)
      {
         _root.save.arenaCrystal1 += 20;
         itemName = "20 Crystals of Rarity";
      }
      if(possibility == 5)
      {
         _root.save.arenaSuperiorCraft += 100;
         itemName = "100 Superior Crafting Material";
      }
      if(possibility == 6)
      {
         _root.save.arenaChaoticFragment += 10;
         itemName = "10 Chaotic Fragments of Chaos";
      }
      if(possibility == 9)
      {
         _root.save.arenaExp += 100000;
         itemName = "100,000 Arena EXP";
      }
      if(possibility == 10)
      {
         _root.save.arenaCraft += 500000;
         itemName = "500,000 Crafting Material";
      }
      if(possibility == 11)
      {
         _root.save.arenaPixel += 2500000;
         itemName = "2,500,000 Pixels";
      }
      if(possibility == 12)
      {
         _root.save.arenaExp += 50000;
         itemName = "50,000 Arena EXP";
      }
      if(possibility == 13)
      {
         _root.save.arenaCraft += 200000;
         itemName = "200,000 Crafting Material";
      }
      if(possibility == 14)
      {
         _root.save.arenaPixel += 1000000;
         itemName = "1,000,000 Pixels";
      }
      if(possibility == 15)
      {
         _root.save.arenaExp += 25000;
         itemName = "25,000 Arena EXP";
      }
      if(possibility == 16)
      {
         _root.save.arenaCraft += 100000;
         itemName = "100,000 Crafting Material";
      }
      if(possibility == 17)
      {
         _root.save.arenaPixel += 500000;
         itemName = "500,000 Pixels";
      }
      if(possibility == 18)
      {
         _root.save.arenaNerfGem += 10;
         itemName = "10 To-be-Nerfed Gems";
      }
      _root.dispNews(168,"Gained: " + itemName + "!");
      if(isNaN(_root.save["mysteryBoxCollect" + boxID][possibility]))
      {
         _root.save["mysteryBoxCollect" + boxID][possibility] = 0;
      }
      _root.save["mysteryBoxCollect" + boxID][possibility] += 1;
   }
   boxID = 9001;
}


