//! status=pending
function checkQuest()
{
   flashButton.del = 40;
   flashButton.time = 1;
   T = Math.round((_Y - 10) / 20 + (_parent.questPage - 1) * 20);
   if(_root.selectT == T)
   {
      _X = 20;
   }
   else
   {
      _X = 10;
   }
   if(_root.mainQuestList[T].questName == undefined)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
      questName.text = _root.mainQuestList[T].questName;
      if(_root.mainQuestList[T].where == "save")
      {
         questCount = _root.save[_root.mainQuestList[T].need];
      }
      else
      {
         questCount = _root[_root.mainQuestList[T].need];
      }
      ID = _root.mainQuestList[T].questID;
      questAvailable = true;
      if(_root.save.mainQuestRank[ID] == 4)
      {
         bg.gotoAndStop(6);
         questNeed = -1;
      }
      else if(_root.save.mainQuestRank[ID] == 3)
      {
         bg.gotoAndStop(5);
         questNeed = _root.mainQuestList[T].amnt4;
      }
      else if(_root.save.mainQuestRank[ID] == 2)
      {
         bg.gotoAndStop(4);
         questNeed = _root.mainQuestList[T].amnt3;
      }
      else if(_root.save.mainQuestRank[ID] == 1)
      {
         bg.gotoAndStop(3);
         questNeed = _root.mainQuestList[T].amnt2;
      }
      else if(_root.save.bestLevel >= _root.mainQuestList[T].reqLevel)
      {
         if(_root.save.mainQuestRank[_root.mainQuestList[T].reqQuest] != undefined && _root.save.mainQuestRank[_root.mainQuestList[T].reqQuest] >= _root.mainQuestList[T].reqQuestRank || _root.mainQuestList[T].reqQuest == 0)
         {
            bg.gotoAndStop(2);
            questNeed = _root.mainQuestList[T].amnt1;
         }
         else
         {
            bg.gotoAndStop(1);
            questAvailable = false;
            questNeed = -1;
         }
      }
      else
      {
         bg.gotoAndStop(1);
         questAvailable = false;
         questNeed = -1;
      }
      if(_root.mainQuestList[T].expired == true)
      {
         seal.gotoAndStop(4);
         questAvailable = false;
         questNeed = -1;
      }
      else if(_root.mainQuestList[T].eventQuest == true)
      {
         seal.gotoAndStop(3);
      }
      else if(_root.mainQuestList[T].dailyQuest == true)
      {
         seal.gotoAndStop(2);
      }
      else
      {
         seal.gotoAndStop(1);
      }
      if(_root.save.au < 2)
      {
         if(_root.mainQuestList[T].questID >= 52 && _root.mainQuestList[T].questID <= 56)
         {
            seal.gotoAndStop(5);
            questAvailable = false;
            questNeed = -1;
         }
      }
   }
}
stop();
checkQuest();
onEnterFrame = function()
{
   if(_parent.questCheck > 0)
   {
      checkQuest();
   }
};
onRelease = function()
{
   if(questAvailable == true)
   {
      _parent.utilRunning = false;
      _root.selectT = T;
      _parent.questCheck = 2;
   }
};
