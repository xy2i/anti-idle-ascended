//! status=pending
questCheck = 2;
questPage = Math.ceil(_root.selectT / 20);
utilT = 0;
utilDel = 0;
utilRunning = false;
onEnterFrame = function()
{
   questCheck -= 1;
   pageText.text = questPage;
   nameText.text = _root.mainQuestList[_root.selectT].questName;
   subNameText.text = "Required Level: " + _root.mainQuestList[_root.selectT].reqLevel;
   questImage.gotoAndStop(_root.mainQuestList[_root.selectT].questImage);
   tokenDisp.text = _root.withComma(_root.save.questToken);
   tokenDisp2.text = _root.withComma(_root.save.eventToken);
   ID = _root.mainQuestList[_root.selectT].questID;
   questRank = _root.save.mainQuestRank[ID];
   if(isNaN(questRank))
   {
      questRank = 0;
   }
   if(questRank > 4)
   {
      questRank = 4;
   }
   if(_root.mainQuestList[_root.selectT].where == "save")
   {
      questCount = _root.save[_root.mainQuestList[_root.selectT].need];
   }
   else
   {
      questCount = _root[_root.mainQuestList[_root.selectT].need];
   }
   if(questCount < 0)
   {
      questCount = 0;
   }
   if(questRank == 0)
   {
      questNeed = _root.mainQuestList[_root.selectT].amnt1;
      qtReward = _root.mainQuestList[_root.selectT].questToken * 1;
      etReward = _root.mainQuestList[_root.selectT].eventToken * 1;
   }
   else if(questRank == 1)
   {
      questNeed = _root.mainQuestList[_root.selectT].amnt2;
      qtReward = _root.mainQuestList[_root.selectT].questToken * 3;
      etReward = _root.mainQuestList[_root.selectT].eventToken * 3;
   }
   else if(questRank == 2)
   {
      questNeed = _root.mainQuestList[_root.selectT].amnt3;
      qtReward = _root.mainQuestList[_root.selectT].questToken * 6;
      etReward = _root.mainQuestList[_root.selectT].eventToken * 6;
   }
   else if(questRank == 3)
   {
      questNeed = _root.mainQuestList[_root.selectT].amnt4;
      qtReward = _root.mainQuestList[_root.selectT].questToken * 10;
      etReward = _root.mainQuestList[_root.selectT].eventToken * 10;
   }
   else
   {
      questNeed = _root.mainQuestList[_root.selectT].amnt4;
      qtReward = _root.mainQuestList[_root.selectT].questToken * 20;
      etReward = _root.mainQuestList[_root.selectT].eventToken * 20;
   }
   rankImage.gotoAndStop(questRank + 1);
   curText.text = _root.withComma(questCount);
   reqText.text = _root.withComma(questNeed);
   qtText.text = _root.withComma(qtReward);
   etText.text = _root.withComma(etReward);
   if(questRank > 3)
   {
      reqText.text = "";
   }
   descText.text = _root.mainQuestList[_root.selectT].descA + "" + _root.withComma(questNeed) + "" + _root.mainQuestList[_root.selectT].descB;
   if(utilRunning == false && Key.isDown(16) && Key.isDown(85))
   {
      utilRunning = true;
   }
   if(utilRunning == true)
   {
      utilDel += 1;
      if(utilDel >= 3)
      {
         utilDel = 0;
         utilA = true;
         if(_root.save.bestLevel >= _root.mainQuestList[utilT].reqLevel)
         {
            if(!(_root.save.mainQuestRank[_root.mainQuestList[utilT].reqQuest] != undefined && _root.save.mainQuestRank[_root.mainQuestList[utilT].reqQuest] >= _root.mainQuestList[utilT].reqQuestRank || _root.mainQuestList[utilT].reqQuest == 0))
            {
               utilA = false;
            }
         }
         else
         {
            utilA = false;
         }
         if(_root.mainQuestList[utilT].expired == true)
         {
            utilA = false;
         }
         if(utilA == true && _root.selectT != utilT)
         {
            _root.selectT = utilT;
         }
         else if(utilA == true && questCount >= questNeed && questRank < 4 && !isNaN(qtReward) && !isNaN(etReward))
         {
            _root.save.mainQuestRank[ID] += 1;
            if(isNaN(_root.save.mainQuestRank[ID]))
            {
               _root.save.mainQuestRank[ID] = 1;
            }
            if(_root.mainQuestList[_root.selectT].eventQuest == false && _root.mainQuestList[_root.selectT].dailyQuest == false)
            {
               if(_root.save.mainQuestRank[ID] == 1)
               {
                  _root.save.mainQuestC += 1;
               }
               if(_root.save.mainQuestRank[ID] == 2)
               {
                  _root.save.mainQuestB += 1;
               }
               if(_root.save.mainQuestRank[ID] == 3)
               {
                  _root.save.mainQuestA += 1;
               }
               if(_root.save.mainQuestRank[ID] == 4)
               {
                  _root.save.mainQuestS += 1;
               }
            }
            _root.save.questToken += qtReward;
            _root.save.eventToken += etReward;
            questNeed = Infinity;
            questCheck = 2;
         }
         else
         {
            utilT += 1;
         }
         questCheck = 2;
         questPage = Math.ceil(_root.selectT / 20);
         if(utilT > _root.totalMainQuest)
         {
            utilRunning = false;
         }
      }
   }
   else
   {
      utilT = 0;
      utilDel = 0;
   }
};
