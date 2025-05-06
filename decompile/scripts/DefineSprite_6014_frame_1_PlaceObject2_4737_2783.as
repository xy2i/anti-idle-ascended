//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "";
   if(_root.save.arenaBuffType != 0)
   {
      _root.actiondescription = "<b>Buff Effects:</b>";
      if(_root.save.arenaBuffType == 1)
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Attack: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Defense: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>MaxHP: <b>+" + Math.floor(150 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>MaxMP: <b>+" + Math.floor(250 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Accuracy: <b>+" + Math.floor(75 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Evasion: <b>+" + Math.floor(75 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n\n<font color=\'#FFFF00\'>The duration of this buff is affected by Potion Efficiency.</font>";
      }
      else if(_root.save.arenaBuffType == 2)
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Mastery: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage Taken: <b>-" + Math.floor(20 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>HP Regen: <b>+" + Math.floor(2500 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>MP Regen: <b>+" + Math.floor(1250 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Hit Chance: <b>+" + Math.floor(20 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Dodge Chance: <b>+" + Math.floor(20 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n\n<font color=\'#FFFF00\'>The duration of this buff is affected by Potion Efficiency.</font>";
      }
      else if(_root.save.arenaBuffType == 3)
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>EXP: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Coin: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Pixel: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Drop Rate: <b>+" + Math.floor(100 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n\n<font color=\'#FFFF00\'>The duration of this buff is affected by Potion Efficiency.</font>";
      }
      else if(_root.save.arenaBuffType == 5)
      {
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Rage Depletion: <b>-" + Math.floor(30 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Rage Attack: <b>+" + Math.floor(60 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Rage Speed: <b>+" + Math.floor(90 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage vs. Non-Bosses: <b>+" + Math.floor(60 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>Damage vs. Bosses: <b>+" + Math.floor(60 * _root.buffMultiplier) + "%</b></font>";
      }
      else if(_root.save.arenaBuffType == 6)
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>EXP: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#FFCC33\'>All Elements: <b>+" + Math.floor(150 * _root.buffMultiplier) + "%</b></font>";
      }
      else if(_root.save.arenaBuffType == 7)
      {
         _root.actiondescription += "\nInvincibility";
      }
      else if(_root.save.arenaBuffType == 9)
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Magnetizes most loot drops</font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Drop Rate: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Rare Monster Rate: <b>+" + Math.floor(100 * _root.buffMultiplier) + "%</b></font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Epic Monster Rate: <b>+" + Math.floor(100 * _root.buffMultiplier) + "%</b></font>";
      }
      else if(_root.save.arenaBuffType == 10)
      {
         _root.actiondescription += "\n<font color=\'#99FF33\'>Magnetizes monsters</font>";
         _root.actiondescription += "\n<font color=\'#99FF33\'>Spawn Rate: <b>+" + Math.floor(50 * _root.buffMultiplier) + "%</b></font>";
      }
      else
      {
         yourName = _root.kongregate_username;
         if(_root.kongregate_username == undefined || _root.kongregate_username == "Guest")
         {
            yourName = _root.save.displayName;
         }
         _root.actiondescription += "\nYou are as awesome as " + yourName + "!";
      }
      _root.actiondescription += "\n\nShift + Click to cancel buff";
   }
}


on(release){
   if(Key.isDown(16))
   {
      _root.save.arenaBuffType = 0;
      _root.save.arenaBuffDuration = 0;
      del = 10;
      _root.actiondescription = "";
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   del += 1;
   if(del >= 10)
   {
      del = 0;
      buffText.text = _root.convertSec(_root.save.arenaBuffDuration);
      if(_root.save.arenaBuffType == 0)
      {
         buffText.text = "";
      }
   }
}


onClipEvent(load){
   del = 0;
}


