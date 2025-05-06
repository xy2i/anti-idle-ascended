//! status=pending
function performWeaponFusion()
{
   _root.getArenaWeapon(rReqRank,rSubtype,rFrame,rRange,rAttack,rSpeed,rDefense,rCrit,rDexterity,rHealth,rMaxLevel,rExpTNL,rLevel,0,rEnhance,rBonusPow,rBonus,rAbility,rMoreBonus,rSell,rExpiry,rNoBonus,true,true,rNoUnique,rSpirit,rUnob,rName,rDesc);
   _root.deleteArenaItem(397);
   _root.deleteArenaItem(398);
   _root.deleteArenaItem(1331);
}
function performArmorFusion()
{
   _root.getArenaArmor(rReqRank,rSubtype,rFrame,rAttack,rSpeed,rDefense,rCrit,rDexterity,rHealth,rMaxLevel,rExpTNL,rLevel,0,rEnhance,rBonusPow,rBonus,rAbility,rMoreBonus,rSell,rExpiry,rNoBonus,true,true,rNoUnique,rSpirit,rUnob,rName,rDesc);
   _root.deleteArenaItem(397);
   _root.deleteArenaItem(398);
   _root.deleteArenaItem(1331);
}
function performAccessoryFusion()
{
   _root.getArenaAccessory(rReqRank,rSubtype,rFrame,rAttack,rSpeed,rDefense,rCrit,rDexterity,rHealth,rMaxLevel,rExpTNL,rLevel,0,rEnhance,rBonusPow,rBonus,rAbility,rMoreBonus,rSell,rExpiry,rNoBonus,true,rNoUnique,rSpirit,rUnob,rName,rDesc);
   _root.deleteArenaItem(397);
   _root.deleteArenaItem(398);
   _root.deleteArenaItem(1331);
}
onEnterFrame = function()
{
   rType = "";
   if(_root.save.inventoryExist[397] == 1 && _root.save.inventoryExist[398] == 1 && _root.save.inventoryNoFuse[397] == false && _root.save.inventoryNoFuse[398] == false && _root.save.inventoryNoUnique[397] == false && _root.save.inventoryNoUnique[398] == false)
   {
      if(_root.save.inventoryType[397] == "Weapon" && _root.save.inventoryType[398] == "Weapon")
      {
         ID1 = 397;
         ID2 = 398;
         rType = "Weapon";
         rName = _root.save.inventoryName[ID1];
         rReqRank = Math.floor(_root.save.inventoryReqRank[ID1] * 0.5 + _root.save.inventoryReqRank[ID2] * 0.5);
         rSubtype = _root.save.inventorySubtype[ID1];
         rFrame = _root.save.inventoryFrame[ID1];
         rRange = _root.save.inventoryRange[ID1];
         rAttack = Math.floor(_root.save.inventoryAttack[ID1] * 0.63 + _root.save.inventoryAttack[ID2] * 0.54);
         rSpeed = Math.floor(_root.save.inventorySpeed[ID1] * 0.63 + _root.save.inventorySpeed[ID2] * 0.54);
         rDefense = Math.floor(_root.save.inventoryDefense[ID1] * 0.63 + _root.save.inventoryDefense[ID2] * 0.54);
         rCrit = Math.floor(_root.save.inventoryCrit[ID1] * 0.63 + _root.save.inventoryCrit[ID2] * 0.54);
         rDexterity = Math.floor(_root.save.inventoryDexterity[ID1] * 0.63 + _root.save.inventoryDexterity[ID2] * 0.54);
         rHealth = Math.floor(_root.save.inventoryHealth[ID1] * 0.63 + _root.save.inventoryHealth[ID2] * 0.54);
         rBonus = _root.save.inventoryBonus[ID1];
         rAbility = _root.save.inventoryAbility[ID1];
         rMoreBonus = _root.save.inventoryMoreBonus[ID1];
         rUnob = Math.floor(_root.save.inventoryUnob[ID1] * 0.5 + _root.save.inventoryUnob[ID2] * 0.5);
         rLevel = Math.floor(_root.save.inventoryLevel[ID1] * 0.5 + _root.save.inventoryLevel[ID2] * 0.5);
         rMaxLevel = Math.floor(_root.save.inventoryMaxLevel[ID1] * 0.63 + _root.save.inventoryMaxLevel[ID2] * 0.54);
         rExpTNL = Math.floor(_root.save.inventoryExpTNL[ID1] * 0.63 + _root.save.inventoryExpTNL[ID2] * 0.54);
         rEnhance = Math.floor(_root.save.inventoryEnhance[ID1] * 0.5 + _root.save.inventoryEnhance[ID2] * 0.5);
         rSell = Math.floor(_root.save.inventorySell[ID1] * 0.63 + _root.save.inventorySell[ID2] * 0.54);
         rExpiry = Infinity;
         if(_root.save.inventoryExpiry[ID1] - _root.systemtimenow < rExpiry)
         {
            rExpiry = _root.save.inventoryExpiry[ID1] - _root.systemtimenow;
         }
         if(_root.save.inventoryExpiry[ID2] - _root.systemtimenow < rExpiry)
         {
            rExpiry = _root.save.inventoryExpiry[ID2] - _root.systemtimenow;
         }
         rNoBonus = false;
         if(_root.save.inventoryNoBonus[ID1] == true || _root.save.inventoryNoBonus[ID2] == true)
         {
            rNoBonus = true;
         }
         rNoLife = false;
         if(_root.save.inventoryNoLife[ID1] == true || _root.save.inventoryNoLife[ID2] == true)
         {
            rNoLife = true;
         }
         rNoRecycle = true;
         rSpirit = false;
         if(_root.save.inventorySpirit[ID1] == true)
         {
            rSpirit = true;
         }
         rBonusPow = Math.floor(_root.save.inventoryBonusPow[ID1]);
         rBonusPow += Math.floor((rAttack - _root.save.inventoryAttack[ID1]) * 1);
         rBonusPow += Math.floor((rSpeed - _root.save.inventorySpeed[ID1]) * 20);
         rBonusPow += Math.floor((rDefense - _root.save.inventoryDefense[ID1]) * 2);
         rBonusPow += Math.floor((rCrit - _root.save.inventoryCrit[ID1]) * 10);
         rBonusPow += Math.floor((rDexterity - _root.save.inventoryDexterity[ID1]) * 10);
         rBonusPow += Math.floor((rHealth - _root.save.inventoryHealth[ID1]) * 10);
         rDesc = "Fused Item\nPrimary: " + _root.save.inventoryName[ID1] + "\nSecondary: " + _root.save.inventoryName[ID2];
         _root.previewFusedWeapon(rReqRank,rSubtype,rFrame,rRange,rAttack,rSpeed,rDefense,rCrit,rDexterity,rHealth,rMaxLevel,rExpTNL,rLevel,0,rEnhance,rBonusPow,rBonus,rAbility,rMoreBonus,rSell,rExpiry,rNoBonus,true,true,rNoUnique,rSpirit,rUnob,rName,rDesc);
      }
      else if(_root.save.inventoryType[397] == "Armor" && _root.save.inventoryType[398] == "Armor" && _root.save.inventorySubtype[397] == _root.save.inventorySubtype[398] && _root.save.inventoryNoUnique[397] == false && _root.save.inventoryNoUnique[398] == false)
      {
         ID1 = 397;
         ID2 = 398;
         rType = "Armor";
         rName = _root.save.inventoryName[ID1];
         rReqRank = Math.floor(_root.save.inventoryReqRank[ID1] * 0.5 + _root.save.inventoryReqRank[ID2] * 0.5);
         rSubtype = _root.save.inventorySubtype[ID1];
         rFrame = _root.save.inventoryFrame[ID1];
         rAttack = Math.floor(_root.save.inventoryAttack[ID1] * 0.63 + _root.save.inventoryAttack[ID2] * 0.54);
         rSpeed = Math.floor(_root.save.inventorySpeed[ID1] * 0.63 + _root.save.inventorySpeed[ID2] * 0.54);
         rDefense = Math.floor(_root.save.inventoryDefense[ID1] * 0.63 + _root.save.inventoryDefense[ID2] * 0.54);
         rCrit = Math.floor(_root.save.inventoryCrit[ID1] * 0.63 + _root.save.inventoryCrit[ID2] * 0.54);
         rDexterity = Math.floor(_root.save.inventoryDexterity[ID1] * 0.63 + _root.save.inventoryDexterity[ID2] * 0.54);
         rHealth = Math.floor(_root.save.inventoryHealth[ID1] * 0.63 + _root.save.inventoryHealth[ID2] * 0.54);
         rBonus = _root.save.inventoryBonus[ID1];
         rAbility = _root.save.inventoryAbility[ID1];
         rMoreBonus = _root.save.inventoryMoreBonus[ID1];
         rUnob = Math.floor(_root.save.inventoryUnob[ID1] * 0.5 + _root.save.inventoryUnob[ID2] * 0.5);
         rLevel = Math.floor(_root.save.inventoryLevel[ID1] * 0.5 + _root.save.inventoryLevel[ID2] * 0.5);
         rMaxLevel = Math.floor(_root.save.inventoryMaxLevel[ID1] * 0.7 + _root.save.inventoryMaxLevel[ID2] * 0.6);
         rExpTNL = Math.floor(_root.save.inventoryExpTNL[ID1] * 0.7 + _root.save.inventoryExpTNL[ID2] * 0.6);
         rEnhance = Math.floor(_root.save.inventoryEnhance[ID1] * 0.5 + _root.save.inventoryEnhance[ID2] * 0.5);
         rSell = Math.floor(_root.save.inventorySell[ID1] * 0.7 + _root.save.inventorySell[ID2] * 0.6);
         rExpiry = Infinity;
         if(_root.save.inventoryExpiry[ID1] - _root.systemtimenow < rExpiry)
         {
            rExpiry = _root.save.inventoryExpiry[ID1] - _root.systemtimenow;
         }
         if(_root.save.inventoryExpiry[ID2] - _root.systemtimenow < rExpiry)
         {
            rExpiry = _root.save.inventoryExpiry[ID2] - _root.systemtimenow;
         }
         rNoBonus = false;
         if(_root.save.inventoryNoBonus[ID1] == true || _root.save.inventoryNoBonus[ID2] == true)
         {
            rNoBonus = true;
         }
         rNoLife = false;
         if(_root.save.inventoryNoLife[ID1] == true || _root.save.inventoryNoLife[ID2] == true)
         {
            rNoLife = true;
         }
         rNoRecycle = true;
         rSpirit = false;
         if(_root.save.inventorySpirit[ID1] == true)
         {
            rSpirit = true;
         }
         rBonusPow = Math.floor(_root.save.inventoryBonusPow[ID1]);
         rBonusPow += Math.floor((rAttack - _root.save.inventoryAttack[ID1]) * 4);
         rBonusPow += Math.floor((rSpeed - _root.save.inventorySpeed[ID1]) * 40);
         rBonusPow += Math.floor((rDefense - _root.save.inventoryDefense[ID1]) * 2);
         rBonusPow += Math.floor((rCrit - _root.save.inventoryCrit[ID1]) * 10);
         rBonusPow += Math.floor((rDexterity - _root.save.inventoryDexterity[ID1]) * 10);
         rBonusPow += Math.floor((rHealth - _root.save.inventoryHealth[ID1]) * 10);
         rDesc = "Fused Item\nPrimary: " + _root.save.inventoryName[ID1] + "\nSecondary: " + _root.save.inventoryName[ID2];
         _root.previewFusedArmor(rReqRank,rSubtype,rFrame,rAttack,rSpeed,rDefense,rCrit,rDexterity,rHealth,rMaxLevel,rExpTNL,rLevel,0,rEnhance,rBonusPow,rBonus,rAbility,rMoreBonus,rSell,rExpiry,rNoBonus,true,true,rNoUnique,rSpirit,rUnob,rName,rDesc);
      }
      else if(_root.save.inventoryType[397] == "Accessory" && _root.save.inventoryType[398] == "Accessory" && _root.save.inventorySubtype[397] == _root.save.inventorySubtype[398] && _root.save.inventoryNoUnique[397] == false && _root.save.inventoryNoUnique[398] == false && _root.save.inventorySubtype[397] == "Trinket" && _root.save.inventoryFrame[397] == 18 && _root.save.inventoryFrame[398] == 18)
      {
         ID1 = 397;
         ID2 = 398;
         rType = "Accessory";
         rName = _root.save.inventoryName[ID1];
         rReqRank = Math.floor(_root.save.inventoryReqRank[ID1] * 0.5 + _root.save.inventoryReqRank[ID2] * 0.5);
         rSubtype = _root.save.inventorySubtype[ID1];
         rFrame = _root.save.inventoryFrame[ID1];
         rAttack = Math.floor(Math.sqrt(_root.save.inventoryAttack[ID1] * _root.save.inventoryAttack[ID1] + _root.save.inventoryAttack[ID2] * _root.save.inventoryAttack[ID2]));
         rSpeed = Math.floor(Math.sqrt(_root.save.inventorySpeed[ID1] * _root.save.inventorySpeed[ID1] + _root.save.inventorySpeed[ID2] * _root.save.inventorySpeed[ID2]));
         rDefense = Math.floor(Math.sqrt(_root.save.inventoryDefense[ID1] * _root.save.inventoryDefense[ID1] + _root.save.inventoryDefense[ID2] * _root.save.inventoryDefense[ID2]));
         rCrit = Math.floor(Math.sqrt(_root.save.inventoryCrit[ID1] * _root.save.inventoryCrit[ID1] + _root.save.inventoryCrit[ID2] * _root.save.inventoryCrit[ID2]));
         rDexterity = Math.floor(Math.sqrt(_root.save.inventoryDexterity[ID1] * _root.save.inventoryDexterity[ID1] + _root.save.inventoryDexterity[ID2] * _root.save.inventoryDexterity[ID2]));
         rHealth = Math.floor(Math.sqrt(_root.save.inventoryHealth[ID1] * _root.save.inventoryHealth[ID1] + _root.save.inventoryHealth[ID2] * _root.save.inventoryHealth[ID2]));
         if(rAttack > 3000)
         {
            rAttack = 3000;
         }
         if(rSpeed > 6)
         {
            rSpeed = 6;
         }
         if(rDefense > 30000)
         {
            rDefense = 30000;
         }
         if(rCrit > 300)
         {
            rCrit = 300;
         }
         if(rDexterity > 300)
         {
            rDexterity = 300;
         }
         if(rHealth > 300)
         {
            rHealth = 300;
         }
         rBonus = _root.save.inventoryBonus[ID1];
         rAbility = _root.save.inventoryAbility[ID1];
         rMoreBonus = _root.save.inventoryMoreBonus[ID1];
         rUnob = Math.floor(_root.save.inventoryUnob[ID1] * 0.5 + _root.save.inventoryUnob[ID2] * 0.5);
         rLevel = Math.floor(_root.save.inventoryLevel[ID1] * 0.5 + _root.save.inventoryLevel[ID2] * 0.5);
         rMaxLevel = Math.floor(_root.save.inventoryMaxLevel[ID1] * 0.7 + _root.save.inventoryMaxLevel[ID2] * 0.6);
         rExpTNL = Math.floor(_root.save.inventoryExpTNL[ID1] * 0.7 + _root.save.inventoryExpTNL[ID2] * 0.6);
         rEnhance = Math.floor(_root.save.inventoryEnhance[ID1] * 0.5 + _root.save.inventoryEnhance[ID2] * 0.5);
         rSell = Math.floor(_root.save.inventorySell[ID1] * 0.7 + _root.save.inventorySell[ID2] * 0.6);
         rExpiry = Infinity;
         if(_root.save.inventoryExpiry[ID1] - _root.systemtimenow < rExpiry)
         {
            rExpiry = _root.save.inventoryExpiry[ID1] - _root.systemtimenow;
         }
         if(_root.save.inventoryExpiry[ID2] - _root.systemtimenow < rExpiry)
         {
            rExpiry = _root.save.inventoryExpiry[ID2] - _root.systemtimenow;
         }
         rNoBonus = false;
         if(_root.save.inventoryNoBonus[ID1] == true || _root.save.inventoryNoBonus[ID2] == true)
         {
            rNoBonus = true;
         }
         rNoLife = false;
         if(_root.save.inventoryNoLife[ID1] == true || _root.save.inventoryNoLife[ID2] == true)
         {
            rNoLife = true;
         }
         rNoRecycle = true;
         rSpirit = false;
         if(_root.save.inventorySpirit[ID1] == true)
         {
            rSpirit = true;
         }
         rBonusPow = Math.floor(_root.save.inventoryBonusPow[ID1]);
         rBonusPow += Math.floor((rAttack - _root.save.inventoryAttack[ID1]) * 4);
         rBonusPow += Math.floor((rSpeed - _root.save.inventorySpeed[ID1]) * 40);
         rBonusPow += Math.floor((rDefense - _root.save.inventoryDefense[ID1]) * 2);
         rBonusPow += Math.floor((rCrit - _root.save.inventoryCrit[ID1]) * 10);
         rBonusPow += Math.floor((rDexterity - _root.save.inventoryDexterity[ID1]) * 10);
         rBonusPow += Math.floor((rHealth - _root.save.inventoryHealth[ID1]) * 10);
         if(rAttack == 3000 && rSpeed == 6 && rDefense == 30000 && rCrit == 300 && rDexterity == 300 && rHealth == 300)
         {
            rBonusPow = 100000;
         }
         rDesc = _root.save.inventoryDesc[ID1];
         _root.previewFusedAccessory(rReqRank,rSubtype,rFrame,rAttack,rSpeed,rDefense,rCrit,rDexterity,rHealth,rMaxLevel,rExpTNL,rLevel,0,rEnhance,rBonusPow,rBonus,rAbility,rMoreBonus,rSell,rExpiry,rNoBonus,true,false,rNoUnique,rSpirit,rUnob,rName,rDesc);
      }
      else
      {
         _root.deleteArenaItem(1331);
      }
   }
   else
   {
      _root.deleteArenaItem(1331);
   }
};
