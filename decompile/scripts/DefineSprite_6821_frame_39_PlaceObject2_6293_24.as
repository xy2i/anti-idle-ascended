//! status=pending
onClipEvent(load){
   if(_root.arcadeAwesome + _root.arcadeGood + _root.arcadeLateMiss >= _root.mmrSongNoteCount[_root.mmrDifficulty])
   {
      if(_root.arcadeGood == 0 && _root.arcadeMiss == 0)
      {
         songId = _root.mmrSong;
         if(_root.mmrSong == 0)
         {
            songId = _root.mmrSongHash;
         }
         if(_root.save.fcMMRSpecial[songId * 10 + _root.mmrDifficulty] < 2 || isNaN(_root.save.fcMMRSpecial[songId * 10 + _root.mmrDifficulty]))
         {
            _root.save.fcMMRSpecial[songId * 10 + _root.mmrDifficulty] = 2;
         }
         gotoAndStop(2);
      }
      else if(_root.arcadeMiss == 0)
      {
         songId = _root.mmrSong;
         if(_root.mmrSong == 0)
         {
            songId = _root.mmrSongHash;
         }
         if(_root.save.fcMMRSpecial[songId * 10 + _root.mmrDifficulty] < 1 || isNaN(_root.save.fcMMRSpecial[songId * 10 + _root.mmrDifficulty]))
         {
            _root.save.fcMMRSpecial[songId * 10 + _root.mmrDifficulty] = 1;
         }
         gotoAndStop(1);
      }
      else
      {
         gotoAndStop(3);
      }
   }
   else
   {
      gotoAndStop(3);
   }
}


