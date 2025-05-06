//! status=pending
onClipEvent(enterFrame){
   checkFrame();
}


onClipEvent(load){
   function checkFrame()
   {
      if(_root.save.inventorySpirit[_root.save.arenaWeapon] == false)
      {
         runeID = 2;
         runeName = "Rune of Mana";
         runeLevel = _root.save.arenaRuneLevel[runeID];
         runeEffect = "Effect:";
         runeEffect += "\n<font color=\'#FFCC33\'>MaxMP: <b>+" + Math.floor((50 + 0.5 * runeLevel) * _parent.runeMult) + "%</b></font>";
         runeEffect += "\n<font color=\'#FFCC33\'>MP Regen: <b>+" + Math.floor((2500 + 25 * runeLevel) * _parent.runeMult) + "%</b></font>";
         runeEffect += "\n<font color=\'#FFCC33\'>During combat, recover MP every frame instead of every 4 frames</font>";
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
      else
      {
         runeID = 2;
         runeName = "Rune of Spirit";
         runeLevel = _root.save.arenaRuneLevel[runeID];
         runeEffect = "Effect:";
         runeEffect += "\n<font color=\'#FFCC33\'>Max Spirit: <b>+" + Math.floor((100 + 1 * runeLevel) * _parent.runeMult) + "</b></font>";
         runeEffect += "\n<font color=\'#FFCC33\'>Gain 2 additional Spirit charges per second</font>";
         runeDuration = _root.save.arenaRuneDuration[runeID];
         if(runeDuration > 0)
         {
            fr = runeID * 14;
         }
         else
         {
            fr = runeID * 13;
         }
         if(_currentframe != fr)
         {
            gotoAndStop(fr);
         }
      }
   }
   checkFrame();
}


