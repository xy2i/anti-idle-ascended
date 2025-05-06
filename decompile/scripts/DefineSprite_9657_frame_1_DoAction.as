//! status=pending
function checkFrame()
{
   if(Math.round(_Y) == 375)
   {
      ID = Math.round((_X - 0) / 20) + 10 + _root.save.progModuleScroll;
   }
   if(Math.round(_Y) == 375 && (ID < 11 || ID > 110))
   {
      gotoAndStop(11);
   }
   else if(Math.round(_Y) == 375 && ID > _root.save.progModuleSlot + 11)
   {
      gotoAndStop(13);
   }
   else if(Math.round(_Y) == 375 && ID == _root.save.progModuleSlot + 11)
   {
      gotoAndStop(12);
   }
   else if(_root.save.progModuleTier[ID] <= 0)
   {
      gotoAndStop(11);
   }
   else
   {
      gotoAndStop(_root.save.progModuleSize[ID] + 1);
      modType.gotoAndStop(_root.save.progModuleType[ID]);
   }
}
ID = 0;
if(Math.round(_Y) == 315)
{
   ID = Math.round((_X - 210) / 20);
}
if(Math.round(_Y) == 375)
{
   ID = Math.round((_X - 0) / 20) + 10 + _root.save.progModuleScroll;
}
if(Math.round(_Y) == 455)
{
   ID = Math.round((_X - 0) / 20) + 110;
}
checkFrame();
alt = false;
onEnterFrame = function()
{
   alt = !alt;
   if(alt == true)
   {
      checkFrame();
   }
};
onRollOver = function()
{
   if(ID >= 11 && ID <= 110 && ID == _root.save.progModuleSlot + 11)
   {
      expandCost = (_root.save.progModuleSlot - 29) * 1000;
      _root.actiondescription = "Module Slots: <b>" + _root.save.progModuleSlot + "</b>\nClick here to unlock 1 more Module Slot for <b>" + _root.withComma(expandCost) + "</b> White Coins!";
   }
   else
   {
      tempTier = _root.save.progModuleTier[ID];
      if(tempTier > 0)
      {
         if(tempTier == 1)
         {
            tempCol = "#4488CC";
         }
         else if(tempTier == 2)
         {
            tempCol = "#00CCCC";
         }
         else if(tempTier == 3)
         {
            tempCol = "#00CC00";
         }
         else if(tempTier == 4)
         {
            tempCol = "#88FF00";
         }
         else if(tempTier == 5)
         {
            tempCol = "#FFFF00";
         }
         else if(tempTier == 6)
         {
            tempCol = "#FF8800";
         }
         else if(tempTier == 7)
         {
            tempCol = "#CC0000";
         }
         else if(tempTier == 8)
         {
            tempCol = "#8800CC";
         }
         else if(tempTier == 9)
         {
            tempCol = "#CC00FF";
         }
         else
         {
            tempCol = "#EEEEEE";
         }
         tm = _root.save.progModuleType[ID];
         modType.gotoAndStop(tm);
         tempDescA = "";
         tempDescB = "";
         if(tm == 1)
         {
            tempDescA = "gain ";
            tempDescB = "% more EXP. If multiple EXP Modules activate, effects stack additively.";
         }
         else if(tm == 2)
         {
            tempDescA = "gain ";
            tempDescB = "% more Coins. If multiple Coin Modules activate, effects stack additively.";
         }
         else if(tm == 3)
         {
            tempDescA = "gain ";
            tempDescB = " Green Coins.";
         }
         else if(tm == 4)
         {
            tempDescA = "gain ";
            tempDescB = " Blue Coins.";
         }
         else if(tm == 5)
         {
            tempDescA = "gain ";
            tempDescB = " White Coin.";
         }
         else if(tm == 6)
         {
            tempDescA = "gain ";
            tempDescB = "% Boost.";
         }
         else if(tm == 7)
         {
            tempDescA = "freeze Boost for ";
            tempDescB = " seconds. If Boost is already frozen, the activation chance of this Module is multiplied by 0.1.";
         }
         else if(tm == 8)
         {
            tempDescA = "gain ";
            tempDescB = " seconds of 1.5x EXP time.";
         }
         else if(tm == 9)
         {
            tempDescA = "gain ";
            tempDescB = " seconds of 1.5x Coin time.";
         }
         else if(tm == 10)
         {
            tempDescA = "increase the base Harvest Value of all trees in Home Garden (except Free Trees) and Another Garden by ";
            tempDescB = ". This amount is unaffected by Fertilizers. Each tree can gain up to 10,000,000 extra base Harvest Value from Modules.";
         }
         else if(tm == 11)
         {
            tempDescA = "gain ";
            tempDescB = " Pet Mana.";
         }
         else if(tm == 12)
         {
            tempDescA = "gain ";
            tempDescB = " Garden Points.";
         }
         else if(tm == 13)
         {
            tempDescA = "gain ";
            tempDescB = " Randomfruit.";
         }
         else if(tm == 14)
         {
            tempDescA = "recover HP equal to ";
            tempDescB = "% of HP Regen stat. Works only when you are in the Battle Arena.";
         }
         else if(tm == 15)
         {
            tempDescA = "recover MP equal to ";
            tempDescB = "% of MP Regen stat. Works only when you are in the Battle Arena.";
         }
         else if(tm == 16)
         {
            tempDescA = "gain ";
            tempDescB = "% Rage in the Battle Arena. Works only when you are in the Battle Arena.";
         }
         else if(tm == 17)
         {
            tempDescA = "gain Pixels equal to ";
            tempDescB = " multiplied by your Arena Rank.";
         }
         else if(tm == 18)
         {
            tempDescA = "gain Crafting Material equal to ";
            tempDescB = " multiplied by your Arena Rank.";
         }
         else if(tm == 19)
         {
            tempDescA = "gain ";
            tempDescB = " Superior Crafting Material.";
         }
         else if(tm == 20)
         {
            tempDescA = "gain ";
            tempDescB = " Unobtainium.";
         }
         else if(tm == 21)
         {
            tempDescA = "gain ";
            tempDescB = " Enhancer Fragments.";
         }
         else if(tm == 22)
         {
            tempDescA = "gain ";
            if(_root.save.vegetarianMode == true)
            {
               tempDescB = " Broccoli.";
            }
            else
            {
               tempDescB = " Bacon.";
            }
         }
         else if(tm == 23)
         {
            tempDescA = "gain ";
            tempDescB = " Crystal of Rarity.";
         }
         else if(tm == 24)
         {
            tempDescA = "gain ";
            tempDescB = " Crystal of Ultimate Rarity.";
         }
         else if(tm == 25)
         {
            tempDescA = "gain ";
            tempDescB = " Purple Button.";
         }
         else if(tm == 26)
         {
            tempDescA = "gain ";
            tempDescB = " Career EXP for a random Career. Not affected by Career activation and blessing. Effect is doubled for Lv. 100+ Careers.";
         }
         else if(tm == 27)
         {
            tempDescA = "gain ";
            tempDescB = " Arcade 100k Medal.";
         }
         else if(tm == 28)
         {
            tempDescA = "gain ";
            tempDescB = " Stadium Tokens.";
         }
         else if(tm == 29)
         {
            tempDescA = "gain ";
            tempDescB = " FCG Cash.";
         }
         else if(tm >= 30 && tm <= 39)
         {
            tempDescA = "gain ";
            tempDescB = " Lv. " + (tm - 29) + " LolMarket Gem.";
         }
         else if(tm == 40)
         {
            tempDescA = "reduce the waiting time for next Adventure Energy by ";
            tempDescB = " seconds. This Module works even if Adventure Energy is already at maximum or higher than maximum. Every 15 Adventure Energy over the limit will be converted to 1 Energy Refill.";
         }
         else if(tm == 41)
         {
            tempDescA = "gain ";
            tempDescB = " Special Pet Food.";
         }
         else if(tm == 42)
         {
            tempDescA = "recover ";
            tempDescB = " Fatigue in Fishing.";
         }
         else if(tm == 43)
         {
            tempDescA = "click the mute button.";
            tempDescB = "";
         }
         if(tempTier >= 9)
         {
            _root.actiondescription = "<b>" + _root.jewkB(_root.save.progModuleName[ID]) + "</b>\n<b>" + _root.jewkB("[Tier " + tempTier + "]") + "</b>";
         }
         else
         {
            _root.actiondescription = "<font color=\'" + tempCol + "\'><b>" + _root.save.progModuleName[ID] + "\n[Tier " + tempTier + "]</b></font>";
         }
         if(_root.save.progModuleShiny[ID] == 1)
         {
            _root.actiondescription += "\n<b><font color=\'#FFFF33\'>--- SHINY ---</font></b>";
         }
         dupeModule = false;
         if(ID >= 1 && ID <= 9)
         {
            aID = 1;
            while(aID <= 9)
            {
               if(aID != ID && _root.save.progModuleType[ID] == _root.save.progModuleType[aID])
               {
                  dupeModule = true;
                  aID = 10;
               }
               aID++;
            }
         }
         if(dupeModule == true)
         {
            if(_root.save.progModuleEffect[ID] > 0)
            {
               _root.actiondescription += "\n\nWhenever you claim a reward, <b><font color=\'#FF0000\'>" + Math.floor(_root.save.progModuleChance[ID] * 0.9) / 100 + "%</font></b> chance <font color=\'#999999\'>(" + Math.floor(_root.save.progModuleChance[ID] * 1) / 100 + "% - " + Math.ceil(_root.save.progModuleChance[ID] * 0.1) / 100 + "%)</font> to " + tempDescA + "<b><font color=\'#0099FF\'>" + _root.withComma(_root.save.progModuleEffect[ID]) + "</font></b>" + tempDescB;
            }
            else
            {
               _root.actiondescription += "\n\nWhenever you claim a reward, <b><font color=\'#FF0000\'>" + Math.floor(_root.save.progModuleChance[ID] * 0.9) / 100 + "%</font></b> chance <font color=\'#999999\'>(" + Math.floor(_root.save.progModuleChance[ID] * 1) / 100 + "% - " + Math.ceil(_root.save.progModuleChance[ID] * 0.1) / 100 + "%)</font> to " + tempDescA + "";
            }
         }
         else if(_root.save.progModuleEffect[ID] > 0)
         {
            _root.actiondescription += "\n\nWhenever you claim a reward, <b><font color=\'#99FF00\'>" + _root.save.progModuleChance[ID] / 100 + "%</font></b> chance to " + tempDescA + "<b><font color=\'#0099FF\'>" + _root.withComma(_root.save.progModuleEffect[ID]) + "</font></b>" + tempDescB;
         }
         else
         {
            _root.actiondescription += "\n\nWhenever you claim a reward, <b><font color=\'#99FF00\'>" + _root.save.progModuleChance[ID] / 100 + "%</font></b> chance to " + tempDescA + "";
         }
         if(ID >= 111)
         {
            aID = 1;
            while(aID <= 9)
            {
               if(_root.save.progModuleType[ID] == _root.save.progModuleType[aID])
               {
                  _root.actiondescription += "\n\n<font color=\'#FF0000\'><b>You already have one Module of this type equipped. If you equip two Modules of the same type, the activation chance of each Module will be multiplied by 0.9.</b></font>";
                  aID = 10;
               }
               aID++;
            }
            _root.actiondescription += "\n\nCost: <b>" + _root.withComma(_root.save.progModuleCost[ID]) + "</b> White Coins";
            if(_root.save.progModuleShiny[ID] == 1)
            {
               shinyCost = Math.floor((30 + tempTier * 2 + tempTier * tempTier / 2) * _root.save.progModuleSize[ID]);
               if(tempTier == 9)
               {
                  shinyCost = 100 * _root.save.progModuleSize[ID];
               }
               _root.actiondescription += "\n<font color=\'#FFFF33\'>+ <b>" + _root.withComma(shinyCost) + "</b> Shiny Tokens</font>";
            }
         }
         else
         {
            if(ID >= 11 && ID <= _root.save.progModuleSlot + 10)
            {
               aID = 1;
               while(aID <= 9)
               {
                  if(_root.save.progModuleType[ID] == _root.save.progModuleType[aID])
                  {
                     _root.actiondescription += "\n\n<font color=\'#FF0000\'><b>You already have one Module of this type equipped. If you equip two Modules of the same type, the activation chance of each Module will be multiplied by 0.9.</b></font>";
                     aID = 10;
                  }
                  aID++;
               }
               _root.actiondescription += "\n\n<font color=\'#FFFF00\'>Click to equip this Module</font>";
            }
            else
            {
               aID = 1;
               while(aID <= 9)
               {
                  if(aID != ID && _root.save.progModuleType[ID] == _root.save.progModuleType[aID])
                  {
                     _root.actiondescription += "\n\n<font color=\'#FF0000\'><b>You have more than one Module of this type equipped. The activation chance of each Module will be multiplied by 0.9.</b></font>";
                     aID = 10;
                  }
                  aID++;
               }
               _root.actiondescription += "\n\n<font color=\'#FFCC00\'>Click to unequip this Module</font>";
            }
            _root.actiondescription += "\n\nSell for: <b>" + _root.withComma(Math.ceil(_root.save.progModuleCost[ID] * 0.5)) + "</b> White Coins";
            if(_root.save.progModuleTier[ID] >= 4 || _root.save.progModuleShiny[ID] == 1 || ID <= 9)
            {
               _root.actiondescription += "\n<font color=\'#FF6666\'>Shift + K + Click to sell</font>";
            }
            else
            {
               _root.actiondescription += "\n<font color=\'#FFCCCC\'>Shift + Click to sell</font>";
            }
         }
      }
   }
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOver = onRollOver;
onDragOut = onRollOut;
onRelease = function()
{
   if(ID >= 111)
   {
      _root.buyModule(ID);
   }
   else if(Key.isDown(16))
   {
      if(Key.isDown(75) || _root.save.progModuleTier[ID] < 4 && _root.save.progModuleShiny[ID] == 0 && ID >= 11 && ID <= _root.save.progModuleSlot + 30)
      {
         _root.sellModule(ID);
      }
   }
   else if(ID >= 11 && ID > _root.save.progModuleSlot + 11)
   {
      _root.actiondescription = "";
   }
   else if(ID >= 11 && ID == _root.save.progModuleSlot + 11)
   {
      expandCost = (_root.save.progModuleSlot - 29) * 1000;
      if(_root.save.whiteCoin >= expandCost)
      {
         _root.save.whiteCoin -= expandCost;
         _root.save.progModuleSlot += 1;
      }
      else
      {
         _root.showPopup("Error","You don\'t have enough White Coins.");
      }
      _root.actiondescription = "";
   }
   else if(ID >= 11 && ID <= _root.save.progModuleSlot + 10)
   {
      _root.equipModule(ID);
   }
   else
   {
      _root.unequipModule(ID);
   }
   _root.actiondescription = "";
   onRollOver();
};
