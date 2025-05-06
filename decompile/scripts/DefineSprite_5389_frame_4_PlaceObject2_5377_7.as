//! status=pending
onClipEvent(enterFrame){
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      runeID = 1;
      runeName = "Rune of Health";
      runeLevel = _root.save.arenaRuneLevel[runeID];
      runeEffect = "Effect:";
      runeEffect += "\n<font color=\'#FFCC33\'>MaxHP: <b>+" + Math.floor((50 + 1 * runeLevel) * _parent.runeMult) + "%</b></font>";
      runeEffect += "\n<font color=\'#FFCC33\'>Defense: <b>+" + Math.floor((50 + 1 * runeLevel) * _parent.runeMult) + "%</b></font>";
      runeEffect += "\n<font color=\'#FFCC33\'>HP Regen: <b>+" + Math.floor((2500 + 25 * runeLevel) * _parent.runeMult) + "%</b></font>";
      runeEffect += "\n<font color=\'#FFCC33\'>During combat, recover HP every frame instead of every 4 frames</font>";
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


