//! status=pending
function loadItem()
{
   quantity = 1;
   if(itemToBuy == 1)
   {
      itemName = "Fertilizer";
      itemOwned = _root.save.gardenFertilizer;
      itemLimit = 9999;
   }
   if(itemToBuy == 2)
   {
      itemName = "Mega Fertilizer";
      itemOwned = _root.save.gardenMegaFertilizer;
      itemLimit = 9999;
   }
   if(itemToBuy == 3)
   {
      itemName = "Shiny Token";
      itemOwned = _root.save.shinyToken;
      itemLimit = 99999;
   }
   if(itemToBuy == 4)
   {
      itemName = "Crystal of Ultimate Rarity";
      itemOwned = _root.save.arenaCrystal2;
      itemLimit = 9999;
   }
   if(itemToBuy == 5)
   {
      itemName = "Energy Refill";
      itemOwned = _root.save.awesomeRefill;
      itemLimit = 9999;
   }
   if(itemToBuy == 6)
   {
      itemName = "Mega Career Potion";
      itemOwned = _root.save.megaCareerPotion;
      itemLimit = 9999;
   }
   if(itemToBuy == 7)
   {
      itemName = "Insta-Progress";
      itemOwned = -1;
      itemLimit = 99999999;
   }
   if(itemToBuy == 8)
   {
      itemName = "Explosion Crate";
      itemOwned = _root.save.mysteryBox[1];
      itemLimit = 999999;
   }
   if(itemToBuy == 9)
   {
      itemName = "Awesome Crate";
      itemOwned = _root.save.mysteryBox[7];
      itemLimit = 999999;
   }
   if(itemToBuy == 10)
   {
      itemName = "Chaos Crate";
      itemOwned = _root.save.mysteryBox[8];
      itemLimit = 999999;
   }
   if(itemToBuy == 11)
   {
      itemName = "Apocalypse Crate";
      itemOwned = _root.save.mysteryBox[9];
      itemLimit = 999999;
   }
   if(itemToBuy == 12)
   {
      itemName = "Progress Box";
      itemOwned = _root.save.mysteryBox[5];
      itemLimit = 999999;
   }
   if(itemToBuy == 13)
   {
      itemName = "Gambler\'s Box";
      itemOwned = _root.save.mysteryBox[2];
      itemLimit = 999999;
   }
   if(itemToBuy == 14)
   {
      itemName = "Pixelated Mystery Box";
      itemOwned = _root.save.mysteryBox[3];
      itemLimit = 999999;
   }
   if(itemToBuy == 15)
   {
      itemName = "Legendary Box";
      itemOwned = _root.save.mysteryBox[4];
      itemLimit = 999999;
   }
   if(itemToBuy == 16)
   {
      itemName = "Supply Crate";
      itemOwned = _root.save.mysteryBox[10];
      itemLimit = 999999;
   }
   if(itemToBuy == 17)
   {
      itemName = "Regular Boost Potion";
      itemOwned = _root.save.boostPotion;
      itemLimit = 9999;
   }
   if(itemToBuy == 18)
   {
      itemName = "Mega Boost Potion";
      itemOwned = _root.save.megaBoostPotion;
      itemLimit = 9999;
   }
}
function buyItem()
{
   totalCost = Math.round(cost * quantity);
   if(isNaN(totalCost) || totalCost < 0)
   {
      totalCost = Infinity;
   }
   paid = false;
   if(currency == 1 && _root.save.coin >= totalCost)
   {
      _root.save.coin -= totalCost;
      paid = true;
      _root.dispNews(14,_root.withComma(quantity) + " [" + itemName + "] successfully purchased! (-" + _root.withComma(totalCost) + " Coins)");
   }
   else if(currency == 2 && _root.save.greenCoin >= totalCost)
   {
      _root.save.greenCoin -= totalCost;
      paid = true;
      _root.dispNews(14,_root.withComma(quantity) + " [" + itemName + "] successfully purchased! (-" + _root.withComma(totalCost) + " Green Coins)");
   }
   else if(currency == 3 && _root.save.blueCoin >= totalCost)
   {
      _root.save.blueCoin -= totalCost;
      paid = true;
      _root.dispNews(14,_root.withComma(quantity) + " [" + itemName + "] successfully purchased! (-" + _root.withComma(totalCost) + " Blue Coins)");
   }
   if(paid == true)
   {
      if(itemToBuy == 1)
      {
         _root.save.gardenFertilizer += quantity;
      }
      if(itemToBuy == 2)
      {
         _root.save.gardenMegaFertilizer += quantity;
      }
      if(itemToBuy == 3)
      {
         _root.save.shinyToken += quantity;
      }
      if(itemToBuy == 4)
      {
         _root.save.arenaCrystal2 += quantity;
      }
      if(itemToBuy == 5)
      {
         _root.save.awesomeRefill += quantity;
      }
      if(itemToBuy == 6)
      {
         _root.save.megaCareerPotion += quantity;
      }
      if(itemToBuy == 7)
      {
         _root.progPercent += quantity * 100;
      }
      if(itemToBuy == 8)
      {
         _root.save.mysteryBox[1] += quantity;
      }
      if(itemToBuy == 9)
      {
         _root.save.mysteryBox[7] += quantity;
      }
      if(itemToBuy == 10)
      {
         _root.save.mysteryBox[8] += quantity;
      }
      if(itemToBuy == 11)
      {
         _root.save.mysteryBox[9] += quantity;
      }
      if(itemToBuy == 12)
      {
         _root.save.mysteryBox[5] += quantity;
      }
      if(itemToBuy == 13)
      {
         _root.save.mysteryBox[2] += quantity;
      }
      if(itemToBuy == 14)
      {
         _root.save.mysteryBox[3] += quantity;
      }
      if(itemToBuy == 15)
      {
         _root.save.mysteryBox[4] += quantity;
      }
      if(itemToBuy == 16)
      {
         _root.save.mysteryBox[10] += quantity;
      }
      if(itemToBuy == 17)
      {
         _root.save.boostPotion += quantity;
      }
      if(itemToBuy == 18)
      {
         _root.save.megaBoostPotion += quantity;
      }
   }
}
itemToBuy = 0;
currency = 0;
cost = 0;
quantity = 0;
itemName = "";
itemOwned = 0;
itemLimit = -1;
gotoAndStop(3);
