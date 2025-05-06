//! status=pending
on(release){
   if(_root.save.inventoryMoreBonus[1301] != "" && _root.save.inventoryMoreBonus[1301] != undefined && _root.save.inventoryNoBonus[1301] != true && _root.save.inventoryExist[1301] == 1 && _root.save.arenaBonusChange > 0)
   {
      _root.save.arenaBonusChange -= 1;
      bonusToGet = random(11) + 1;
      if(bonusToGet == 1)
      {
         tempBonus = "Equipment Attack";
      }
      if(bonusToGet == 2)
      {
         tempBonus = "Equipment Defense";
      }
      if(bonusToGet == 3)
      {
         tempBonus = "Attack Power";
      }
      if(bonusToGet == 4)
      {
         tempBonus = "Defense Power";
      }
      if(bonusToGet == 5)
      {
         tempBonus = "MaxHP";
      }
      if(bonusToGet == 6)
      {
         tempBonus = "MaxMP";
      }
      if(bonusToGet == 7)
      {
         tempBonus = "Accuracy";
      }
      if(bonusToGet == 8)
      {
         tempBonus = "Evasion";
      }
      if(bonusToGet == 9)
      {
         tempBonus = "EXP / Boss Kill";
      }
      if(bonusToGet == 10)
      {
         tempBonus = "EXP / Rare Kill";
      }
      if(bonusToGet == 11)
      {
         tempBonus = "EXP / Epic Kill";
      }
      if(_root.save.arenaMoreBonusPreference1 != "None" && _root.save.inventoryMoreBonus[1301] != _root.save.arenaMoreBonusPreference1 && Math.random() < 0.2)
      {
         tempBonus = _root.save.arenaMoreBonusPreference1;
      }
      else if(_root.save.arenaMoreBonusPreference2 != "None" && _root.save.inventoryMoreBonus[1301] != _root.save.arenaMoreBonusPreference2 && Math.random() < 0.07)
      {
         tempBonus = _root.save.arenaMoreBonusPreference2;
      }
      if(_root.save.inventoryMoreBonus[1301] != tempBonus)
      {
         _root.save.inventoryMoreBonus[1301] = tempBonus;
      }
      else
      {
         _root.save.arenaBonusChange += 2;
         _root.showPopup("Jackpot!","You got the exact same bonus as before. You can use the machine a few extra times today!");
      }
   }
}


