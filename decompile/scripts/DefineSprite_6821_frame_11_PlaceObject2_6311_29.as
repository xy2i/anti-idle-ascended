//! status=pending
on(release){
   _root.mmrDifficulty = diff;
}


onClipEvent(enterFrame){
   songId = _root.mmrSong;
   if(_root.mmrSong == 0)
   {
      songId = _root.mmrSongHash;
   }
   diffText.text = Math.floor(_root.mmrSongDifficulty[diff] / 2);
   if(_root.mmrSongDifficulty[diff] % 2 == 1)
   {
      diffPlusText.text = "+";
   }
   else
   {
      diffPlusText.text = "";
   }
   if(isNaN(_root.save.highMMRSpecial[songId * 10 + diff]))
   {
      _root.save.highMMRSpecial[songId * 10 + diff] = 0;
   }
   scr = _root.save.highMMRSpecial[songId * 10 + diff];
   highScoreText.text = _root.withComma(scr);
   rank = 0;
   z = 1;
   while(z <= 12)
   {
      if(scr >= _root.mmrRankArr[z])
      {
         rank = z;
      }
      z++;
   }
   if(rank > 0)
   {
      rankDisp.gotoAndStop(rank);
   }
   else
   {
      rankDisp.gotoAndStop(13);
   }
   if(_root.save.fcMMRSpecial[songId * 10 + diff] == 2)
   {
      fcDisp.gotoAndStop(2);
   }
   else if(_root.save.fcMMRSpecial[songId * 10 + diff] == 1)
   {
      fcDisp.gotoAndStop(1);
   }
   else
   {
      fcDisp.gotoAndStop(3);
   }
   if(_root.mmrDifficulty == diff)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


onClipEvent(load){
   diff = 1;
   gotoAndStop(diff);
}


