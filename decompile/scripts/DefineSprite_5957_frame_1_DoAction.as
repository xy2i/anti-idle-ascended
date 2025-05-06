//! status=pending
function checkEntry()
{
   ID = _parent.ID;
   killCount = _root.save.arenaBestiary[ID];
   entryLevel = 0;
   bestiaryBonus = 0;
   bonusText = "";
   if(!isNaN(killCount))
   {
      if(killCount >= 1)
      {
         entryLevel = 1;
         bestiaryBonus = 0;
         bonusText = "<font color=\'#999999\'>New bonus at Level 4</font>";
      }
      if(killCount >= 10)
      {
         entryLevel = 2;
         bestiaryBonus = 10;
         bonusText = "<font color=\'#999999\'>New bonus at Level 4</font>";
      }
      if(killCount >= 100)
      {
         entryLevel = 3;
         bestiaryBonus = 20;
         bonusText = "<font color=\'#999999\'>New bonus at Level 4</font>";
      }
      if(killCount >= 1000)
      {
         entryLevel = 4;
         bestiaryBonus = 30;
         bonusText = "<font color=\'#00FFFF\'>Item Drop Rate 1.5x</font>";
      }
      if(killCount >= 10000)
      {
         entryLevel = 5;
         bestiaryBonus = 40;
         bonusText = "<font color=\'#99FF00\'>Item Drop Rate 2.0x</font>";
      }
      if(killCount >= 100000)
      {
         entryLevel = 6;
         bestiaryBonus = 50;
         bonusText = "<font color=\'#FFFF00\'>Item Drop Rate 3.0x</font>";
      }
      allyBonus = 0;
      if(!isNaN(_root.save.arenaAllyEXP[ID]))
      {
         allyBonus = Math.ceil(_root.save.arenaAllyEXP[ID] / 1000);
         if(_root.save.arenaAllyEXP[ID] >= 10000)
         {
            allyBonus = 20;
         }
      }
      bestiaryBonus = Math.floor((100 + bestiaryBonus) * (100 + allyBonus) / 10 - 1000) / 10;
   }
   gotoAndStop(entryLevel + 1);
   if(entryLevel == 6 && killCount >= 1000000)
   {
      gotoAndStop(8);
   }
   level = _root.enemyList[ID].level;
   hp = _root.enemyList[ID].hp;
   exp = _root.enemyList[ID].exp;
   if(_root.save.arenaHardcore == true)
   {
      level = Math.floor(level * 1.3);
      if(level > 9001)
      {
         level = 9001;
      }
      hp = Math.floor(hp * 3.5);
      exp = Math.floor(exp * 1.5);
   }
}
stop();
checkEntry();
onEnterFrame = function()
{
   if(curPage != _root.bestiaryPage)
   {
      checkEntry();
   }
};
onRollOver = function()
{
   checkEntry();
   if(entryLevel > 0)
   {
      _parent.enemyPreview.gotoAndStop(ID);
      extKillText = "";
      if(!isNaN(_root.save.arenaBestiaryExtra[ID]) && _root.save.arenaBestiaryExtra[ID] > 0)
      {
         extKillText = "\n<font color=\'#999999\'>(" + _root.withComma(_root.save.arenaBestiary[ID] - _root.save.arenaBestiaryExtra[ID]) + " + " + _root.withComma(_root.save.arenaBestiaryExtra[ID]) + ")</font>";
      }
      extUltraText = "";
      if(!isNaN(_root.save.arenaBestiaryUlt3[ID]) && _root.save.arenaBestiaryUlt3[ID] > 0)
      {
         extUltraText += "\n<font color=\'#FF9999\'><b>ULTRA-3 form defeated!</b> (v" + _root.save.arenaBestiaryUlt3V[ID] + ")</font>";
         if(_root.save.arenaBestiaryUlt3F[ID] != undefined)
         {
            extUltraText += "\n<font color=\'#FF9999\'>First kill: " + _root.save.arenaBestiaryUlt3F[ID] + "</font>";
         }
      }
      if(!isNaN(_root.save.arenaBestiaryUlt2[ID]) && _root.save.arenaBestiaryUlt2[ID] > 0)
      {
         extUltraText += "\n<font color=\'#FF9999\'><b>ULTRA-2 form defeated!</b> (v" + _root.save.arenaBestiaryUlt2V[ID] + ")</font>";
         if(_root.save.arenaBestiaryUlt2F[ID] != undefined)
         {
            extUltraText += "\n<font color=\'#FF9999\'>First kill: " + _root.save.arenaBestiaryUlt2F[ID] + "</font>";
         }
      }
      if(!isNaN(_root.save.arenaBestiaryUlt1[ID]) && _root.save.arenaBestiaryUlt1[ID] > 0)
      {
         extUltraText += "\n<font color=\'#FF9999\'><b>ULTRA-1 form defeated!</b> (v" + _root.save.arenaBestiaryUlt1V[ID] + ")</font>";
         if(_root.save.arenaBestiaryUlt1F[ID] != undefined)
         {
            extUltraText += "\n<font color=\'#FF9999\'>First kill: " + _root.save.arenaBestiaryUlt1F[ID] + "</font>";
         }
      }
      _root.actiondescription = "<b>" + _root.enemyList[ID].name + "</b>\nLevel: <b>" + _root.withComma(level) + "</b>\nHP: <b>" + _root.withComma(hp) + "</b>\nEXP: <b>" + _root.withComma(exp) + "</b> + " + bestiaryBonus + "%\n_________\nKilled: <b>" + _root.withComma(killCount) + "</b>" + extKillText + extUltraText + "\n[Entry Level <b>" + entryLevel + "</b>]\n" + bonusText + "\n_________\nHold left mouse button to view more info";
   }
};
onRollOut = function()
{
   _parent.enemyPreview.gotoAndStop(1);
   _root.actiondescription = "";
};
onDragOut = function()
{
   _root.actiondescription = "";
};
onPress = function()
{
   if(entryLevel > 0)
   {
      _root.bestiarySelect = ID;
      _parent._parent._parent.bestiaryDetail.gotoAndStop(2);
      _root.actiondescription = "";
   }
};
onRelease = function()
{
   _parent._parent._parent.bestiaryDetail.gotoAndStop(1);
   if(entryLevel > 0)
   {
      extKillText = "";
      if(!isNaN(_root.save.arenaBestiaryExtra[ID]) && _root.save.arenaBestiaryExtra[ID] > 0)
      {
         extKillText = "\n<font color=\'#999999\'>(" + _root.withComma(_root.save.arenaBestiary[ID] - _root.save.arenaBestiaryExtra[ID]) + " + " + _root.withComma(_root.save.arenaBestiaryExtra[ID]) + ")</font>";
      }
      extUltraText = "";
      if(!isNaN(_root.save.arenaBestiaryUlt3[ID]) && _root.save.arenaBestiaryUlt3[ID] > 0)
      {
         extUltraText += "\n<font color=\'#FF9999\'><b>ULTRA-3 form defeated!</b> (v" + _root.save.arenaBestiaryUlt3V[ID] + ")</font>";
         if(_root.save.arenaBestiaryUlt3F[ID] != undefined)
         {
            extUltraText += "\n<font color=\'#FF9999\'>First kill: " + _root.save.arenaBestiaryUlt3F[ID] + "</font>";
         }
      }
      if(!isNaN(_root.save.arenaBestiaryUlt2[ID]) && _root.save.arenaBestiaryUlt2[ID] > 0)
      {
         extUltraText += "\n<font color=\'#FF9999\'><b>ULTRA-2 form defeated!</b> (v" + _root.save.arenaBestiaryUlt2V[ID] + ")</font>";
         if(_root.save.arenaBestiaryUlt2F[ID] != undefined)
         {
            extUltraText += "\n<font color=\'#FF9999\'>First kill: " + _root.save.arenaBestiaryUlt2F[ID] + "</font>";
         }
      }
      if(!isNaN(_root.save.arenaBestiaryUlt1[ID]) && _root.save.arenaBestiaryUlt1[ID] > 0)
      {
         extUltraText += "\n<font color=\'#FF9999\'><b>ULTRA-1 form defeated!</b> (v" + _root.save.arenaBestiaryUlt1V[ID] + ")</font>";
         if(_root.save.arenaBestiaryUlt1F[ID] != undefined)
         {
            extUltraText += "\n<font color=\'#FF9999\'>First kill: " + _root.save.arenaBestiaryUlt1F[ID] + "</font>";
         }
      }
      _root.actiondescription = "<b>" + _root.enemyList[ID].name + "</b>\nLevel: <b>" + _root.withComma(level) + "</b>\nHP: <b>" + _root.withComma(hp) + "</b>\nEXP: <b>" + _root.withComma(exp) + "</b> + " + bestiaryBonus + "%\n_________\nKilled: <b>" + _root.withComma(killCount) + "</b>" + extKillText + extUltraText + "\n[Entry Level <b>" + entryLevel + "</b>]\n" + bonusText + "\n_________\nHold left mouse button to view more info";
   }
};
onReleaseOutside = function()
{
   _parent._parent._parent.bestiaryDetail.gotoAndStop(1);
};
if(_root.save.featureBestiary != true)
{
   onRollOver = null;
   onRollOut = null;
   onDragOut = null;
   onPress = null;
   onRelease = null;
   onReleaseOutside = null;
}
