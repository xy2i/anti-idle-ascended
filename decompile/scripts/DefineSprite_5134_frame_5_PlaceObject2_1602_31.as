//! status=pending
on(release){
   if(_root.save.inventoryBonus[1301] != "" && _root.save.inventoryBonus[1301].indexOf("Auto Buff") == -1 && (_root.save.inventoryBonus[1301].indexOf("Ignore") == -1 || _root.save.inventoryType[1301] != "Enhancer") && _root.save.inventoryBonus[1301] != undefined && _root.save.inventoryNoBonus[1301] != true && _root.save.inventoryExist[1301] == 1 && _root.save.arenaBonusChange > 0)
   {
      _root.save.arenaBonusChange -= 1;
      bonusToGet = random(22) + 1;
      if(bonusToGet == 1 || bonusToGet == 2)
      {
         tempBonus = "Reward";
      }
      if(bonusToGet == 3 || bonusToGet == 4)
      {
         tempBonus = "EXP";
      }
      if(bonusToGet == 5 || bonusToGet == 6)
      {
         tempBonus = "Coin";
      }
      if(bonusToGet == 7 || bonusToGet == 8)
      {
         tempBonus = "Pixel";
      }
      if(bonusToGet == 9 || bonusToGet == 10)
      {
         tempBonus = "Drop Rate";
      }
      if(bonusToGet == 11 || bonusToGet == 12)
      {
         tempBonus = "Spawn Rate";
      }
      if(bonusToGet == 13)
      {
         tempBonus = "Fire Element";
      }
      if(bonusToGet == 14)
      {
         tempBonus = "Ice Element";
      }
      if(bonusToGet == 15)
      {
         tempBonus = "Wind Element";
      }
      if(bonusToGet == 16)
      {
         tempBonus = "Earth Element";
      }
      if(bonusToGet == 17)
      {
         tempBonus = "Thunder Element";
      }
      if(bonusToGet == 18)
      {
         tempBonus = "Water Element";
      }
      if(bonusToGet == 19)
      {
         tempBonus = "Light Element";
      }
      if(bonusToGet == 20)
      {
         tempBonus = "Dark Element";
      }
      if(bonusToGet == 21)
      {
         tempBonus = "Rare Monster Rate";
      }
      if(bonusToGet == 22)
      {
         tempBonus = "Epic Monster Rate";
      }
      if(_root.save.arenaBonusPreference1 != "None" && _root.save.inventoryBonus[1301] != _root.save.arenaBonusPreference1 && Math.random() < 0.2)
      {
         tempBonus = _root.save.arenaBonusPreference1;
      }
      else if(_root.save.arenaBonusPreference2 != "None" && _root.save.inventoryBonus[1301] != _root.save.arenaBonusPreference2 && Math.random() < 0.07)
      {
         tempBonus = _root.save.arenaBonusPreference2;
      }
      if(_root.save.inventoryBonus[1301] != tempBonus)
      {
         _root.save.inventoryBonus[1301] = tempBonus;
      }
      else
      {
         _root.save.arenaBonusChange += 3;
         _root.showPopup("Jackpot!","You got the exact same bonus as before. You can use the machine a few extra times today!");
      }
   }
}


