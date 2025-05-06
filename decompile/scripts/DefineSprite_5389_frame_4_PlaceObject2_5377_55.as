//! status=pending
onClipEvent(enterFrame){
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      runeID = 4;
      runeName = "Rune of Encounter";
      runeLevel = _root.save.arenaRuneLevel[runeID];
      runeEffect = "Effect:";
      runeEffect += "\n<font color=\'#99FF33\'>Spawn Rate: <b>+" + Math.floor((10 + 0.1 * runeLevel) * _parent.runeMult) + "%</b></font>";
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


