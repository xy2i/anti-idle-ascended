//! status=pending
on(release){
   if(_root.save.questCount < _root.save.questNeed && _root.save.greenCoin >= _parent.cost1 && Key.isDown(16))
   {
      _root.save.greenCoin -= _parent.cost1;
      _root.save.questSkipToday += 1;
      _root.save.questTargetDiff -= _root.save.questDifficulty * 5;
      if(_root.save.questTargetDiff < 10)
      {
         _root.save.questTargetDiff = 10;
      }
      _parent.genQuest();
   }
}


