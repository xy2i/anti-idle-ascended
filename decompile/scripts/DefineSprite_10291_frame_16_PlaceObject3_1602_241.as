//! status=pending
on(release){
   if(_parent.questCount >= _parent.questNeed && (_root.save.mainQuestRank[_parent.ID] < 4 || isNaN(_root.save.mainQuestRank[_parent.ID])))
   {
      _root.save.mainQuestRank[_parent.ID] += 1;
      if(isNaN(_root.save.mainQuestRank[_parent.ID]))
      {
         _root.save.mainQuestRank[_parent.ID] = 1;
      }
      if(_root.mainQuestList[_root.selectT].eventQuest == false && _root.mainQuestList[_root.selectT].dailyQuest == false)
      {
         if(_root.save.mainQuestRank[_parent.ID] == 1)
         {
            _root.save.mainQuestC += 1;
         }
         if(_root.save.mainQuestRank[_parent.ID] == 2)
         {
            _root.save.mainQuestB += 1;
         }
         if(_root.save.mainQuestRank[_parent.ID] == 3)
         {
            _root.save.mainQuestA += 1;
         }
         if(_root.save.mainQuestRank[_parent.ID] == 4)
         {
            _root.save.mainQuestS += 1;
         }
      }
      _root.save.questToken += _parent.qtReward;
      _root.save.eventToken += _parent.etReward;
      _parent.questNeed = Infinity;
      _parent.questCheck = 2;
   }
}


onClipEvent(enterFrame){
   if(_parent.questCount >= _parent.questNeed && (_root.save.mainQuestRank[_parent.ID] < 4 || isNaN(_root.save.mainQuestRank[_parent.ID])))
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


