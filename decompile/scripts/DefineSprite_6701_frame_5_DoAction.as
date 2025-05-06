//! status=pending
onEnterFrame = function()
{
   if(_root.arcadeAwesome + _root.arcadeGood + _root.arcadeLateMiss >= _root.mmrSongNoteCount[_root.mmrDifficulty])
   {
      if(_root.arcadeGood == 0 && _root.arcadeMiss == 0)
      {
         gotoAndStop(4);
      }
      else if(_root.arcadeMiss == 0)
      {
         gotoAndStop(3);
      }
      else
      {
         gotoAndStop(2);
      }
   }
};
