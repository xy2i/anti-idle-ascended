//! status=pending
function checkCraftStat()
{
   ID = craftCurrent;
   if(craftType == 1)
   {
      type = "Weapon";
      name = _root.craftWeapon[ID].name;
      reqRank = _root.craftWeapon[ID].reqRank;
      subtype = _root.craftWeapon[ID].subtype;
      frame = _root.craftWeapon[ID].frame;
      range = _root.craftWeapon[ID].range;
      attack = _root.craftWeapon[ID].attack;
      speed = _root.craftWeapon[ID].speed;
      defense = _root.craftWeapon[ID].defense;
      bonus = _root.craftWeapon[ID].bonus;
      ability = _root.craftWeapon[ID].ability;
      moreBonus = _root.craftWeapon[ID].moreBonus;
      maxLevel = _root.craftWeapon[ID].maxLevel;
      expTNL = _root.craftWeapon[ID].expTNL;
      enhance = _root.craftWeapon[ID].enhance;
      bonusPow = _root.craftWeapon[ID].bonusPow;
      sell = _root.craftWeapon[ID].sell;
      expiry = _root.craftWeapon[ID].expiry;
      noBonus = _root.craftWeapon[ID].noBonus;
      noLife = _root.craftWeapon[ID].noLife;
      noFuse = _root.craftWeapon[ID].noFuse;
      noUnique = _root.craftWeapon[ID].noUnique;
      spirit = _root.craftWeapon[ID].spirit;
      crit = _root.craftWeapon[ID].crit;
      dexterity = _root.craftWeapon[ID].dexterity;
      health = _root.craftWeapon[ID].health;
      unob = _root.craftWeapon[ID].unob;
      desc = _root.craftWeapon[ID].desc;
      careerExp = _root.craftWeapon[ID].careerExp;
      costPixel = _root.craftWeapon[ID].costPixel;
      costCraft = _root.craftWeapon[ID].costCraft;
      costSpec = _root.craftWeapon[ID].costSpec;
   }
   else if(craftType == 2)
   {
      type = "Armor";
      name = _root.craftArmor[ID].name;
      reqRank = _root.craftArmor[ID].reqRank;
      subtype = _root.craftArmor[ID].subtype;
      frame = _root.craftArmor[ID].frame;
      attack = _root.craftArmor[ID].attack;
      speed = _root.craftArmor[ID].speed;
      defense = _root.craftArmor[ID].defense;
      bonus = _root.craftArmor[ID].bonus;
      ability = _root.craftArmor[ID].ability;
      moreBonus = _root.craftArmor[ID].moreBonus;
      maxLevel = _root.craftArmor[ID].maxLevel;
      expTNL = _root.craftArmor[ID].expTNL;
      enhance = _root.craftArmor[ID].enhance;
      bonusPow = _root.craftArmor[ID].bonusPow;
      sell = _root.craftArmor[ID].sell;
      expiry = _root.craftArmor[ID].expiry;
      noBonus = _root.craftArmor[ID].noBonus;
      noLife = _root.craftArmor[ID].noLife;
      noFuse = _root.craftArmor[ID].noFuse;
      noUnique = _root.craftArmor[ID].noUnique;
      spirit = _root.craftArmor[ID].spirit;
      crit = _root.craftArmor[ID].crit;
      dexterity = _root.craftArmor[ID].dexterity;
      health = _root.craftArmor[ID].health;
      unob = _root.craftArmor[ID].unob;
      desc = _root.craftArmor[ID].desc;
      careerExp = _root.craftArmor[ID].careerExp;
      costPixel = _root.craftArmor[ID].costPixel;
      costCraft = _root.craftArmor[ID].costCraft;
      costSpec = _root.craftArmor[ID].costSpec;
   }
   else if(craftType == 3)
   {
      type = "Enhancer";
      name = _root.craftEnhancer[ID].name;
      reqRank = 1;
      subtype = _root.craftEnhancer[ID].subtype;
      frame = _root.craftEnhancer[ID].frame;
      power = _root.craftEnhancer[ID].power;
      curse = _root.craftEnhancer[ID].curse;
      success = _root.craftEnhancer[ID].success;
      bonus = _root.craftEnhancer[ID].bonus;
      ability = _root.craftEnhancer[ID].ability;
      moreBonus = _root.craftEnhancer[ID].moreBonus;
      enhance = _root.craftEnhancer[ID].enhance;
      bonusPow = _root.craftEnhancer[ID].bonusPow;
      sell = _root.craftEnhancer[ID].sell;
      expiry = _root.craftEnhancer[ID].expiry;
      noBonus = false;
      noLife = false;
      noFuse = false;
      noUnique = false;
      spirit = false;
      unob = 0;
      desc = _root.craftEnhancer[ID].desc;
      maxLevel = 1;
      careerExp = _root.craftEnhancer[ID].careerExp;
      costPixel = _root.craftEnhancer[ID].costPixel;
      costCraft = _root.craftEnhancer[ID].costCraft;
      costSpec = _root.craftEnhancer[ID].costSpec;
   }
   else if(craftType == 4)
   {
      type = "Potion";
      name = _root.craftPotion[ID].name;
      reqRank = 1;
      subtype = _root.craftPotion[ID].subtype;
      frame = _root.craftPotion[ID].frame;
      attack = _root.craftPotion[ID].attack;
      defense = _root.craftPotion[ID].defense;
      maxLevel = 1;
      enhance = _root.craftPotion[ID].enhance;
      bonusPow = _root.craftPotion[ID].bonusPow;
      sell = _root.craftPotion[ID].sell;
      expiry = _root.craftPotion[ID].expiry;
      bonus = "";
      ability = "";
      moreBonus = "";
      noBonus = false;
      noLife = false;
      noFuse = false;
      noUnique = false;
      spirit = false;
      unob = 0;
      desc = _root.craftPotion[ID].desc;
      careerExp = _root.craftPotion[ID].careerExp;
      costPixel = _root.craftPotion[ID].costPixel;
      costCraft = _root.craftPotion[ID].costCraft;
      costSpec = _root.craftPotion[ID].costSpec;
   }
   else if(craftType == 5)
   {
      type = "Accessory";
      name = _root.craftAccessory[ID].name;
      reqRank = _root.craftAccessory[ID].reqRank;
      subtype = _root.craftAccessory[ID].subtype;
      frame = _root.craftAccessory[ID].frame;
      attack = _root.craftAccessory[ID].attack;
      speed = _root.craftAccessory[ID].speed;
      defense = _root.craftAccessory[ID].defense;
      bonus = _root.craftAccessory[ID].bonus;
      ability = _root.craftAccessory[ID].ability;
      moreBonus = _root.craftAccessory[ID].moreBonus;
      maxLevel = _root.craftAccessory[ID].maxLevel;
      expTNL = _root.craftAccessory[ID].expTNL;
      enhance = _root.craftAccessory[ID].enhance;
      bonusPow = _root.craftAccessory[ID].bonusPow;
      sell = _root.craftAccessory[ID].sell;
      expiry = _root.craftAccessory[ID].expiry;
      noBonus = _root.craftAccessory[ID].noBonus;
      noLife = _root.craftAccessory[ID].noLife;
      noFuse = _root.craftAccessory[ID].noFuse;
      noUnique = _root.craftAccessory[ID].noUnique;
      spirit = _root.craftAccessory[ID].spirit;
      crit = _root.craftAccessory[ID].crit;
      dexterity = _root.craftAccessory[ID].dexterity;
      health = _root.craftAccessory[ID].health;
      desc = _root.craftAccessory[ID].desc;
      unob = _root.craftAccessory[ID].unob;
      careerExp = _root.craftAccessory[ID].careerExp;
      costPixel = _root.craftAccessory[ID].costPixel;
      costCraft = _root.craftAccessory[ID].costCraft;
      costSpec = _root.craftAccessory[ID].costSpec;
   }
   else if(craftType == 6)
   {
      type = "Accessory";
      name = _root.craftMedal[ID].name;
      reqRank = _root.craftMedal[ID].reqRank;
      subtype = _root.craftMedal[ID].subtype;
      frame = _root.craftMedal[ID].frame;
      attack = _root.craftMedal[ID].attack;
      speed = _root.craftMedal[ID].speed;
      defense = _root.craftMedal[ID].defense;
      bonus = _root.craftMedal[ID].bonus;
      ability = _root.craftMedal[ID].ability;
      moreBonus = _root.craftMedal[ID].moreBonus;
      maxLevel = _root.craftMedal[ID].maxLevel;
      expTNL = _root.craftMedal[ID].expTNL;
      enhance = _root.craftMedal[ID].enhance;
      bonusPow = _root.craftMedal[ID].bonusPow;
      sell = _root.craftMedal[ID].sell;
      expiry = _root.craftMedal[ID].expiry;
      noBonus = _root.craftMedal[ID].noBonus;
      noLife = _root.craftMedal[ID].noLife;
      noFuse = _root.craftMedal[ID].noFuse;
      noUnique = _root.craftMedal[ID].noUnique;
      spirit = _root.craftMedal[ID].spirit;
      crit = _root.craftMedal[ID].crit;
      dexterity = _root.craftMedal[ID].dexterity;
      health = _root.craftMedal[ID].health;
      unob = _root.craftMedal[ID].unob;
      desc = _root.craftMedal[ID].desc;
      careerExp = _root.craftMedal[ID].careerExp;
      costPixel = _root.craftMedal[ID].costPixel;
      costCraft = _root.craftMedal[ID].costCraft;
      costSpec = _root.craftMedal[ID].costSpec;
   }
   else if(craftType == 7)
   {
      type = "Chip";
      name = _root.craftChip[ID].name;
      reqRank = 1;
      subtype = _root.craftChip[ID].subtype;
      frame = _root.craftChip[ID].frame;
      attack = _root.craftChip[ID].attack;
      defense = _root.craftChip[ID].defense;
      maxLevel = 1;
      enhance = _root.craftChip[ID].enhance;
      bonusPow = _root.craftChip[ID].bonusPow;
      sell = _root.craftChip[ID].sell;
      expiry = _root.craftChip[ID].expiry;
      bonus = "";
      ability = "";
      moreBonus = "";
      noBonus = false;
      noLife = false;
      noFuse = false;
      noUnique = false;
      spirit = false;
      unob = 0;
      desc = _root.craftChip[ID].desc;
      careerExp = _root.craftChip[ID].careerExp;
      costPixel = _root.craftChip[ID].costPixel;
      costCraft = _root.craftChip[ID].costCraft;
      costSpec = _root.craftChip[ID].costSpec;
   }
   if(_root.save.careerLevel[4] >= 200)
   {
      costPixel = Math.ceil(costPixel * 0.7);
      costCraft = Math.ceil(costCraft * 0.7);
      costSpec = Math.ceil(costSpec * 0.7);
   }
   if(name == undefined)
   {
      name = "N/A";
   }
   if(desc == "This medal\'s name depends on your Anti-Idle title when you craft it. Don\'t ask how that works.")
   {
      setID = 0;
   }
   else if(desc == "Thank you for your donation and your continued support!")
   {
      setID = 0;
   }
   else if(type == "Weapon" || type == "Armor" || type == "Accessory")
   {
      setID = _root.checkArenaSet(name);
   }
   else
   {
      setID = 0;
   }
   if(craftRecipe == 1)
   {
      crystal1Max = 0;
      crystal2Max = 0;
   }
   else if(craftRecipe == 2)
   {
      crystal1Max = 50;
      crystal2Max = 50;
   }
   else if(craftRecipe == 3)
   {
      crystal1Max = 100;
      crystal2Max = 100;
   }
   else if(craftRecipe == 4)
   {
      crystal1Max = 250;
      crystal2Max = 250;
   }
   else if(craftRecipe == 5)
   {
      crystal1Max = 500;
      crystal2Max = 500;
   }
   if(type == "Weapon" && attack == 0 || type == "Enhancer" || type == "Potion" || subtype == "Medal" || name == "Dark Ruler")
   {
      crystal1Max = 0;
      crystal2Max = 0;
   }
   if(_root.save.careerLevel[4] < 100)
   {
      crystal1Max = Math.floor(crystal1Max / 2);
      crystal2Max = Math.floor(crystal2Max / 2);
   }
   c1Text.text = crystal1Apply + " / " + crystal1Max;
   c2Text.text = crystal2Apply + " / " + crystal2Max;
   c1oText.text = "You have: " + _root.withComma(_root.save.arenaCrystal1);
   c2oText.text = "You have: " + _root.withComma(_root.save.arenaCrystal2);
   pixelText.text = _root.withComma(- costPixel);
   craftText.text = _root.withComma(- costCraft);
   specText.text = _root.withComma(- costSpec);
   careerText.text = "+" + _root.withComma(careerExp);
   if(_root.save.careerActive[4] <= 0 && _root.save.careerBoost[4] <= 0)
   {
      careerText.text = "[N/A]";
   }
}
_root.toCheck = true;
_root.gCheck = true;
elapsed = 0;
antiSaveScum = 0;
craftType = 1;
craftOffset = 0;
craftRecipe = 1;
craftMaxOffset = _root.craftWeapon.length - 13;
if(craftMaxOffset < 1)
{
   craftMaxOffset = 1;
}
craftCurrent = 2;
crystal1Apply = 0;
crystal2Apply = 0;
specType = 1;
checkCraftStat();
stickName = _root.kongregate_username + "\'s Tree Stick";
if(_root.kongregate_username == undefined || _root.kongregate_username == "Guest")
{
   stickName = _root.save.displayName + "\'s Tree Stick";
}
_root.craftWeapon[5].name = stickName;
onEnterFrame = function()
{
   elapsed += 1;
   if(_root.scrollingDir == -1)
   {
      craftOffset -= 3;
      if(craftOffset < 0)
      {
         craftOffset = 0;
      }
   }
   if(_root.scrollingDir == 1)
   {
      craftOffset += 3;
      if(craftOffset > craftMaxOffset)
      {
         craftOffset = craftMaxOffset;
      }
   }
   if(crystal1Apply > _root.save.arenaCrystal1)
   {
      crystal1Apply = _root.save.arenaCrystal1;
      checkCraftStat();
   }
   if(crystal2Apply > _root.save.arenaCrystal2)
   {
      crystal2Apply = _root.save.arenaCrystal2;
      checkCraftStat();
   }
};
