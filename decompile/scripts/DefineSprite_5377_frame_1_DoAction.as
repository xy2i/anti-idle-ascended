//! status=pending
function checkTime()
{
   if(_root.save.arenaRuneDuration[runeID] > 0)
   {
      durationText.text = _root.convertSec(_root.save.arenaRuneDuration[runeID]);
      durationText.textColor = 16777215;
   }
   else
   {
      durationText.text = "00:00";
      durationText.textColor = 10066329;
   }
}
function checkDesc()
{
   _root.actiondescription = "<font color=\'#FFFF00\'><b>" + runeName + "</b></font>";
   _root.actiondescription += "\nLevel: <b>" + runeLevel + " / 100</b>";
   _root.actiondescription += "\n\n" + runeEffect;
   _root.actiondescription += "\n\nActivation cost (Owned / Required):";
   if(runeID <= 3)
   {
      _root.actiondescription += "\n\nCrystal of Rarity";
      if(_root.save.arenaCrystal1 >= 500)
      {
         _root.actiondescription += "\n<b><font color=\'#99FF33\'>" + _root.withComma(_root.save.arenaCrystal1) + "</font> / 500</b>";
         if(_root.save.arenaRuneDuration[runeID] <= 0)
         {
            _root.actiondescription += "\n\n<font color=\'#FFFF00\'>Click to activate</font>";
         }
         else
         {
            _root.actiondescription += "\n\n<font color=\'#FFFF00\'>Click to extend duration (maximum 100 minutes)</font>";
         }
      }
      else
      {
         _root.actiondescription += "\n<b><font color=\'#FF3333\'>" + _root.withComma(_root.save.arenaCrystal1) + "</font> / 500</b>";
      }
   }
   else
   {
      _root.actiondescription += "\n\nCrystal of Ultimate Rarity";
      if(_root.save.arenaCrystal2 >= 500)
      {
         _root.actiondescription += "\n<b><font color=\'#99FF33\'>" + _root.withComma(_root.save.arenaCrystal2) + "</font> / 500</b>";
         if(_root.save.arenaRuneDuration[runeID] <= 0)
         {
            _root.actiondescription += "\n\n<font color=\'#FFFF00\'>Click to activate</font>";
         }
         else
         {
            _root.actiondescription += "\n\n<font color=\'#FFFF00\'>Click to extend duration (maximum 100 minutes)</font>";
         }
      }
      else
      {
         _root.actiondescription += "\n<b><font color=\'#FF3333\'>" + _root.withComma(_root.save.arenaCrystal2) + "</font> / 500</b>";
      }
   }
   _root.actiondescription += "\n\nOnce activated, the effect of the Rune will last for <b>" + _root.withComma((600 + runeLevel * 6) * _parent.runeMult) + "</b> seconds.";
}
checkTime();
onEnterFrame = function()
{
   checkTime();
};
onRollOver = function()
{
   checkDesc();
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOver = onRollOver;
onDragOut = onRollOut;
onRelease = function()
{
   if(runeID <= 3)
   {
      if(_root.save.arenaCrystal1 >= 500)
      {
         _root.save.arenaCrystal1 -= 500;
         _root.save.arenaRuneDuration[runeID] += Math.floor((600 + runeLevel * 6) * _parent.runeMult);
      }
   }
   else if(_root.save.arenaCrystal2 >= 500)
   {
      _root.save.arenaCrystal2 -= 500;
      _root.save.arenaRuneDuration[runeID] += Math.floor((600 + runeLevel * 6) * _parent.runeMult);
   }
   if(_root.save.arenaRuneDuration[runeID] > 5999)
   {
      _root.save.arenaRuneDuration[runeID] = 5999;
   }
   checkDesc();
};
