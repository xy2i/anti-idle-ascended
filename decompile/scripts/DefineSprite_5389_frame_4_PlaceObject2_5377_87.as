//! status=pending
onClipEvent(enterFrame){
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      runeID = 6;
      runeName = "Rune of Greed";
      runeLevel = _root.save.arenaRuneLevel[runeID];
      runeEffect = "Effect:";
      runeEffect += "\n<font color=\'#99FF33\'>Coin: <b>+" + Math.floor((20 + 0.2 * runeLevel) * _parent.runeMult) + "%</b></font>";
      runeEffect += "\n<font color=\'#99FF33\'>Pixel: <b>+" + Math.floor((20 + 0.2 * runeLevel) * _parent.runeMult) + "%</b></font>";
      runeEffect += "\n<font color=\'#99FF33\'>Drop Rate: <b>+" + Math.floor((50 + 0.5 * runeLevel) * _parent.runeMult) + "%</b></font>";
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


