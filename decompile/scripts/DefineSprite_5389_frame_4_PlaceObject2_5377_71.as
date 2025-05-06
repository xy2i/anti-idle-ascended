//! status=pending
onClipEvent(enterFrame){
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      runeID = 5;
      runeName = "Rune of Experience";
      runeLevel = _root.save.arenaRuneLevel[runeID];
      runeEffect = "Effect:";
      runeEffect += "\n<font color=\'#99FF33\'>EXP: <b>+" + Math.floor((30 + 0.3 * runeLevel) * _parent.runeMult) + "%</b></font>";
      runeDuration = _root.save.arenaRuneDuration[runeID];
      if(runeDuration > 0)
      {
         fr = runeID * 2;
      }
      else
      {
         fr = runeID * 2 - 1;
      }
      if(_currentframe != fr)
      {
         gotoAndStop(fr);
      }
   }
   checkFrame();
}


