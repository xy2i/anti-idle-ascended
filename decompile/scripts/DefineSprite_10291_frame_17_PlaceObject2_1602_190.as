//! status=pending
on(release){
   if(_root.save.questCount < _root.save.questNeed && _root.save.blueCoin >= _parent.cost2 && Key.isDown(16))
   {
      _root.save.questCount = _root.save.questNeed;
      _root.save.blueCoin -= _parent.cost2;
      _root.save.questTargetDiff -= _root.save.questDifficulty * 5;
      if(_root.save.questTargetDiff < 10)
      {
         _root.save.questTargetDiff = 10;
      }
      _root.save.questInstaToday += 1;
   }
}


