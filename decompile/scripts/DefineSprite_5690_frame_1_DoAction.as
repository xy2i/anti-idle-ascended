//! status=pending
function checkCraft()
{
   tempOffset = _parent.craftOffset;
   tempType = _parent.craftType;
   ID = _Y / 20 + _parent.craftOffset + 1;
   if(_parent.craftType == 1)
   {
      name = _root.craftWeapon[ID].name;
      reqRank = _root.craftWeapon[ID].reqRank;
      costPixel = _root.craftWeapon[ID].costPixel;
      costCraft = _root.craftWeapon[ID].costCraft;
      costSpec = _root.craftWeapon[ID].costSpec;
      recipeType = _root.craftWeapon[ID].recipeType;
      recipeReq = _root.craftWeapon[ID].recipeReq;
      recipeLimit = _root.craftWeapon[ID].recipeLimit;
      expiry = _root.craftWeapon[ID].expiry;
      enhance = _root.craftWeapon[ID].enhance;
   }
   else if(_parent.craftType == 2)
   {
      name = _root.craftArmor[ID].name;
      reqRank = _root.craftArmor[ID].reqRank;
      costPixel = _root.craftArmor[ID].costPixel;
      costCraft = _root.craftArmor[ID].costCraft;
      costSpec = _root.craftArmor[ID].costSpec;
      recipeType = _root.craftArmor[ID].recipeType;
      recipeReq = _root.craftArmor[ID].recipeReq;
      recipeLimit = _root.craftArmor[ID].recipeLimit;
      expiry = _root.craftArmor[ID].expiry;
      enhance = _root.craftArmor[ID].enhance;
   }
   else if(_parent.craftType == 5)
   {
      name = _root.craftAccessory[ID].name;
      reqRank = _root.craftAccessory[ID].reqRank;
      costPixel = _root.craftAccessory[ID].costPixel;
      costCraft = _root.craftAccessory[ID].costCraft;
      costSpec = _root.craftAccessory[ID].costSpec;
      recipeType = _root.craftAccessory[ID].recipeType;
      recipeReq = _root.craftAccessory[ID].recipeReq;
      recipeLimit = _root.craftAccessory[ID].recipeLimit;
      expiry = _root.craftAccessory[ID].expiry;
      enhance = _root.craftAccessory[ID].enhance;
   }
   else if(_parent.craftType == 6)
   {
      name = _root.craftMedal[ID].name;
      reqRank = _root.craftMedal[ID].reqRank;
      costPixel = _root.craftMedal[ID].costPixel;
      costCraft = _root.craftMedal[ID].costCraft;
      costSpec = _root.craftMedal[ID].costSpec;
      recipeType = _root.craftMedal[ID].recipeType;
      recipeReq = _root.craftMedal[ID].recipeReq;
      recipeLimit = _root.craftMedal[ID].recipeLimit;
      expiry = _root.craftMedal[ID].expiry;
      enhance = _root.craftMedal[ID].enhance;
   }
   else if(_parent.craftType == 3)
   {
      name = _root.craftEnhancer[ID].name;
      reqRank = 0;
      costPixel = _root.craftEnhancer[ID].costPixel;
      costCraft = _root.craftEnhancer[ID].costCraft;
      costSpec = _root.craftEnhancer[ID].costSpec;
      recipeType = _root.craftEnhancer[ID].recipeType;
      recipeReq = _root.craftEnhancer[ID].recipeReq;
      recipeLimit = _root.craftEnhancer[ID].recipeLimit;
      expiry = _root.craftEnhancer[ID].expiry;
      enhance = _root.craftEnhancer[ID].enhance;
   }
   else if(_parent.craftType == 4)
   {
      name = _root.craftPotion[ID].name;
      reqRank = 0;
      costPixel = _root.craftPotion[ID].costPixel;
      costCraft = _root.craftPotion[ID].costCraft;
      costSpec = _root.craftPotion[ID].costSpec;
      recipeType = _root.craftPotion[ID].recipeType;
      recipeReq = _root.craftPotion[ID].recipeReq;
      recipeLimit = _root.craftPotion[ID].recipeLimit;
      expiry = _root.craftPotion[ID].expiry;
      enhance = _root.craftPotion[ID].enhance;
   }
   else if(_parent.craftType == 7)
   {
      name = _root.craftChip[ID].name;
      reqRank = 0;
      costPixel = _root.craftChip[ID].costPixel;
      costCraft = _root.craftChip[ID].costCraft;
      costSpec = _root.craftChip[ID].costSpec;
      recipeType = _root.craftChip[ID].recipeType;
      recipeReq = _root.craftChip[ID].recipeReq;
      recipeLimit = _root.craftChip[ID].recipeLimit;
      expiry = _root.craftChip[ID].expiry;
      enhance = _root.craftChip[ID].enhance;
   }
   if(_root.save.careerLevel[4] >= 200)
   {
      costPixel = Math.ceil(costPixel * 0.7);
      costCraft = Math.ceil(costCraft * 0.7);
      costSpec = Math.ceil(costSpec * 0.7);
   }
   recipe = 1;
   if(recipeType == 1)
   {
      recipe = 5;
   }
   else if(recipeType == 3)
   {
      recipe = 1;
      if(_root.save.bestLevel >= 500)
      {
         recipe = 2;
      }
      if(_root.save.bestLevel >= 1000)
      {
         recipe = 3;
      }
      if(_root.save.bestLevel >= 2000)
      {
         recipe = 4;
      }
      if(_root.save.bestLevel >= 3000)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 2)
   {
      recipe = 1;
      if(_root.save.arenaCraftUsed >= 50000)
      {
         recipe = 2;
      }
      if(_root.save.arenaCraftUsed >= 1000000)
      {
         recipe = 3;
      }
      if(_root.save.arenaCraftUsed >= 20000000)
      {
         recipe = 4;
      }
      if(_root.save.arenaCraftUsed >= 500000000)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 4)
   {
      recipe = 1;
      if(_root.save.recipeLevel >= 1)
      {
         recipe = 2;
      }
      if(_root.save.recipeLevel >= 2)
      {
         recipe = 3;
      }
      if(_root.save.recipeLevel >= 3)
      {
         recipe = 4;
      }
      if(_root.save.recipeLevel >= 4)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 5)
   {
      recipe = 1;
      if(_root.save.secretRecipeLevel >= 1)
      {
         recipe = 2;
      }
      if(_root.save.secretRecipeLevel >= 2)
      {
         recipe = 3;
      }
      if(_root.save.secretRecipeLevel >= 3)
      {
         recipe = 4;
      }
      if(_root.save.secretRecipeLevel >= 4)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 6)
   {
      recipe = 1;
      if(_root.save.careerLevel[4] >= 1)
      {
         recipe = 2;
      }
      if(_root.save.careerLevel[4] >= 25)
      {
         recipe = 3;
      }
      if(_root.save.careerLevel[4] >= 50)
      {
         recipe = 4;
      }
      if(_root.save.careerLevel[4] >= 100)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 7)
   {
      recipe = 1;
      if(_root.save.arenaKommanderComplete >= 1)
      {
         recipe = 2;
      }
      if(_root.save.arenaKommanderComplete >= 5)
      {
         recipe = 3;
      }
      if(_root.save.arenaKommanderComplete >= 30)
      {
         recipe = 4;
      }
      if(_root.save.arenaKommanderComplete >= 100)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 8)
   {
      recipe = 1;
      if(!isNaN(_root.save.arenaBestiary[295]) && _root.save.arenaBestiary[295] >= 1)
      {
         recipe = 2;
      }
      if(!isNaN(_root.save.arenaBestiary[295]) && _root.save.arenaBestiary[295] >= 10 && _root.save.raidMegaboss >= 270000)
      {
         recipe = 3;
      }
      if(!isNaN(_root.save.arenaBestiary[295]) && _root.save.arenaBestiary[295] >= 60 && _root.save.raidMegaboss >= 315000)
      {
         recipe = 4;
      }
      if(!isNaN(_root.save.arenaBestiary[295]) && _root.save.arenaBestiary[295] >= 200 && _root.save.raidMegaboss >= 360000)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 9)
   {
      recipe = 1;
      if(!isNaN(_root.save.arenaBestiary[350]) && _root.save.arenaBestiary[350] >= 1)
      {
         recipe = 2;
      }
      if(!isNaN(_root.save.arenaBestiary[350]) && _root.save.arenaBestiary[350] >= 10 && _root.save.raidTower >= 120000000)
      {
         recipe = 3;
      }
      if(!isNaN(_root.save.arenaBestiary[350]) && _root.save.arenaBestiary[350] >= 60 && _root.save.raidTower >= 360000000)
      {
         recipe = 4;
      }
      if(!isNaN(_root.save.arenaBestiary[350]) && _root.save.arenaBestiary[350] >= 200 && _root.save.raidTower >= 1080000000)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 10)
   {
      recipe = 1;
      if(!isNaN(_root.save.arenaBestiary[275]) && _root.save.arenaBestiary[275] >= 1)
      {
         recipe = 2;
      }
      if(!isNaN(_root.save.arenaBestiary[275]) && _root.save.arenaBestiary[275] >= 10)
      {
         recipe = 3;
      }
      if(!isNaN(_root.save.arenaBestiary[275]) && _root.save.arenaBestiary[275] >= 60)
      {
         recipe = 4;
      }
      if(!isNaN(_root.save.arenaBestiary[275]) && _root.save.arenaBestiary[275] >= 200)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 11)
   {
      recipe = 1;
      if(_root.save.raidPyramid >= 90000)
      {
         recipe = 2;
      }
      if(_root.save.raidPyramid >= 810000)
      {
         recipe = 3;
      }
      if(_root.save.raidPyramid >= 7290000)
      {
         recipe = 4;
      }
      if(_root.save.raidPyramid >= 65610000)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 12)
   {
      recipe = 1;
      if(_root.save.arenaZoneKill[23] >= 50)
      {
         recipe = 2;
      }
      if(_root.save.arenaZoneKill[23] >= 500)
      {
         recipe = 3;
      }
      if(_root.save.arenaZoneKill[23] >= 5000)
      {
         recipe = 4;
      }
      if(_root.save.arenaZoneKill[23] >= 50000)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 13)
   {
      recipe = 1;
      if(_root.save.arenaDefendComplete >= 1)
      {
         recipe = 2;
      }
      if(_root.save.arenaDefendComplete >= 5)
      {
         recipe = 3;
      }
      if(_root.save.arenaDefendComplete >= 30)
      {
         recipe = 4;
      }
      if(_root.save.arenaDefendComplete >= 100)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 14)
   {
      recipe = 1;
      if(_root.save.arenaPrehistoricComplete >= 1)
      {
         recipe = 2;
      }
      if(_root.save.arenaPrehistoricComplete >= 5)
      {
         recipe = 3;
      }
      if(_root.save.arenaPrehistoricComplete >= 30)
      {
         recipe = 4;
      }
      if(_root.save.arenaPrehistoricComplete >= 100)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 15)
   {
      recipe = 1;
      if(_root.save.raidDungeon >= 1100)
      {
         recipe = 2;
      }
      if(_root.save.raidDungeon >= 1800)
      {
         recipe = 3;
      }
      if(_root.save.raidDungeon >= 2500)
      {
         recipe = 4;
      }
      if(_root.save.raidDungeon >= 3200)
      {
         recipe = 5;
      }
   }
   else if(recipeType == 16)
   {
      recipe = 1;
   }
   else if(recipeType == 17)
   {
      recipe = 5;
   }
   else if(recipeType == 18)
   {
      recipe = 5;
   }
   else if(recipeType == 19)
   {
      recipe = 0;
      if(_root.save.bannedB >= 50)
      {
         recipe = 1;
      }
   }
   else if(recipeType == 20)
   {
      recipe = 1;
   }
   if(_root.saveid == 4)
   {
      recipe = 5;
   }
   if(_root.saveid == 24)
   {
      if(recipeType != 1 && recipeType != 3)
      {
         recipe = 0;
      }
   }
   if(recipeType == 21)
   {
      specType = 9;
      specCur = _root.save.arenaTukkonium;
   }
   else if(recipeType == 20)
   {
      specType = 8;
      specCur = _root.save.arenaSampleCraft;
   }
   else if(recipeType == 19)
   {
      specType = 1;
      specCur = _root.save.arenaSuperiorCraft;
   }
   else if(recipeType == 18)
   {
      specType = 7;
      specCur = _root.save.arenaBacon;
   }
   else if(recipeType == 17)
   {
      specType = 6;
      specCur = _root.save.arenaEnhancerFragment;
   }
   else if(recipeType == 16)
   {
      specType = 5;
      specCur = _root.save.arenaUnobtainium;
   }
   else if(recipeType == 15)
   {
      specType = 4;
      specCur = _root.save.arenaChaoticFragment;
   }
   else if(recipeType == 7 || recipeType == 11 || recipeType == 12 || recipeType == 13 || recipeType == 14)
   {
      specType = 3;
      specCur = _root.save.arenaProofMission;
   }
   else if(recipeType == 8 || recipeType == 9)
   {
      specType = 2;
      specCur = _root.save.arenaProofTraining;
   }
   else
   {
      specType = 1;
      specCur = _root.save.arenaSuperiorCraft;
   }
   if(name == undefined)
   {
      gotoAndStop(6);
   }
   else if(recipe < recipeReq)
   {
      gotoAndStop(5);
   }
   else if(_parent.craftCurrent == ID)
   {
      gotoAndStop(3);
   }
   else if(_root.save.arenaPixel < costPixel || _root.save.arenaCraft < costCraft || specCur < costSpec)
   {
      gotoAndStop(1);
   }
   else if(_root.save.arenaLevel < reqRank && reqRank > 0)
   {
      gotoAndStop(4);
   }
   else
   {
      gotoAndStop(2);
   }
   nameText.text = name;
   rankText.text = reqRank;
   if(reqRank == 0)
   {
      rankText.text = "";
   }
   if(_currentframe <= 5)
   {
      iconRecipe.gotoAndStop(recipe);
      if(recipe < recipeLimit)
      {
         iconRecipe.iconMax.gotoAndStop(2);
      }
      else
      {
         iconRecipe.iconMax.gotoAndStop(1);
      }
      if(expiry != Infinity)
      {
         iconTime.gotoAndStop(1);
      }
      else if(_parent.craftType != 4 && _parent.craftType != 6 && _parent.craftType != 7 && _root.save.arenaPixel >= costPixel && _root.save.arenaCraft >= costCraft && specCur >= costSpec && recipe >= recipeReq && name != undefined && (_root.save.arenaLevel >= reqRank || reqRank < 0))
      {
         if(name.indexOf("Meteoric") != -1 || name == "Dark Ruler" || name.indexOf("Emperor") != -1 || name.indexOf("Pendant of") != -1 || name.indexOf("Newbie") != -1 || name.indexOf("Stick") != -1 || name.indexOf("Bonus") != -1)
         {
            iconTime.gotoAndStop(3);
         }
         else if(costPixel >= _root.save.arenaPixel / 10 || costCraft >= _root.save.arenaCraft / 10 || reqRank >= Math.floor(_root.save.arenaLevel * 0.9 - 10) || reqRank >= 400 || name.indexOf("Mystery Rock Lv. 10") != -1 || name.indexOf("Unique Enhancer Lv. 5") != -1 || name.indexOf("Unobtainium Enhancer Lv. 5") != -1)
         {
            iconTime.gotoAndStop(3);
         }
         else
         {
            iconTime.gotoAndStop(3);
         }
      }
      else
      {
         iconTime.gotoAndStop(3);
      }
   }
   if(recipe < recipeReq)
   {
      iconTime.gotoAndStop(3);
      nameText.text = "Required: Recipe Level " + recipeReq;
   }
   if(recipeType == "Title")
   {
      gotoAndStop(7);
      iconTime.gotoAndStop(3);
      nameText.text = recipeReq;
   }
   if(recipeType == "Title 2")
   {
      gotoAndStop(8);
      iconTime.gotoAndStop(3);
      nameText.text = recipeReq;
   }
   if(recipe > recipeLimit)
   {
      recipe = recipeLimit;
   }
}
checkCraft();
onEnterFrame = function()
{
   if(tempOffset != _parent.craftOffset || tempType != _parent.craftType || _currentframe == 3)
   {
      checkCraft();
   }
};
onRelease = function()
{
   if(_currentframe <= 4 && _currentframe != 3)
   {
      _parent.craftCurrent = ID;
      _parent.craftRecipe = recipe;
      _parent.crystal1Apply = 0;
      _parent.crystal2Apply = 0;
      _parent.specType = specType;
   }
   checkCraft();
   _parent.checkCraftStat();
};
