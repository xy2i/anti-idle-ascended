//! status=pending
onClipEvent(enterFrame){
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      runeID = 3;
      runeName = "Rune of Rage";
      runeLevel = _root.save.arenaRuneLevel[runeID];
      runeEffect = "Effect:";
      runeEffect += "\n<font color=\'#FFCC33\'>Rage Attack: <b>+" + Math.floor((5 + 0.05 * runeLevel) * _parent.runeMult) + "%</b></font>";
      runeEffect += "\n<font color=\'#FFCC33\'>Rage Speed: <b>+" + Math.floor((10 + 0.1 * runeLevel) * _parent.runeMult) + "%</b></font>";
      runeEffect += "\n<font color=\'#FFCC33\'>Permanent stay at 100% Rage</font>";
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


