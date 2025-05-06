//! status=pending
if(_root.save.questType == "Result")
{
   if(_root.save.questSubtype == "Success")
   {
      _root.save.questCount += 1;
   }
}
if(_root.save.questType == "Junk" && _root.fishCurrent >= 11 && _root.fishCurrent <= 30)
{
   if(_root.save.questSubtype == "Any")
   {
      _root.save.questCount += 1;
   }
   if(_root.save.questSubtype == "Lv. 5+" && _root.fishCurrent >= 15)
   {
      _root.save.questCount += 1;
   }
   if(_root.save.questSubtype == "Lv. 10+" && _root.fishCurrent >= 20)
   {
      _root.save.questCount += 1;
   }
   if(_root.save.questSubtype == "Lv. 20+" && _root.fishCurrent >= 25)
   {
      _root.save.questCount += 1;
   }
   if(_root.save.questSubtype == "Lv. 30" && _root.fishCurrent >= 30)
   {
      _root.save.questCount += 1;
   }
}
if(_root.save.questType == "Fish" && (_root.fishCurrent >= 31 && _root.fishCurrent <= 50 || _root.save.fishCurrent >= 71))
{
   if(_root.save.questSubtype == "Any")
   {
      _root.save.questCount += 1;
   }
   if(_root.save.questSubtype == "Lv. 5+" && _root.fishCurrent >= 35)
   {
      _root.save.questCount += 1;
   }
   if(_root.save.questSubtype == "Lv. 10+" && _root.fishCurrent >= 40)
   {
      _root.save.questCount += 1;
   }
   if(_root.save.questSubtype == "Lv. 20+" && _root.fishCurrent >= 45)
   {
      _root.save.questCount += 1;
   }
   if(_root.save.questSubtype == "Lv. 30" && _root.fishCurrent >= 50)
   {
      _root.save.questCount += 1;
   }
}
if(_root.save.questType == "Special Item")
{
   if(_root.fishCurrent <= 10 || _root.fishCurrent >= 52)
   {
      if(_root.save.questSubtype == "Any")
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Treasure Box" && _root.fishCurrent >= 1 && _root.fishCurrent <= 3)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Key" && _root.fishCurrent >= 4 && _root.fishCurrent <= 6)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Energy Drink" && _root.fishCurrent >= 7 && _root.fishCurrent <= 8)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Pet Food" && _root.fishCurrent >= 9 && _root.fishCurrent <= 10)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Energy Refill" && _root.fishCurrent == 52)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Fertilizer" && _root.fishCurrent == 53)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Mega Fertilizer" && _root.fishCurrent == 54)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Mystery Box" && _root.fishCurrent >= 55 && _root.fishCurrent <= 58)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Explosion Crate" && _root.fishCurrent == 55)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Awesome Crate" && _root.fishCurrent == 56)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Chaos Crate" && _root.fishCurrent == 57)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Legendary Box" && _root.fishCurrent == 58)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "White Coin" && _root.fishCurrent == 59)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Regular Boost Potion" && _root.fishCurrent == 60)
      {
         _root.save.questCount += 1;
      }
      if(_root.save.questSubtype == "Mega Boost Potion" && _root.fishCurrent == 61)
      {
         _root.save.questCount += 1;
      }
   }
}
