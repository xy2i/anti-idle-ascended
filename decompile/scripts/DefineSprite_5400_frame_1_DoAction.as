//! status=pending
if(_root.save.arenaHardcore == true)
{
   zoneRecDamage *= 2.5;
   zoneRecResist *= 1.5;
   zoneRecAccuracy *= 1.5;
   zoneRecEvasion *= 1.5;
   zoneRecLevel *= 1.3;
   if(zoneRecLevel > 9001)
   {
      zoneRecLevel = 9001;
   }
}
zoneOver = 0;
critMult = 1 + _root.criticalChance * (_root.criticalDamage - 100) / 10000;
if(isNaN(critMult))
{
   critMult = 1;
}
zoneRecDamagePct = _root.maxDamage * ((Math.min(_root.save.battlePoint,500) + 100) / 100) * critMult / zoneRecDamage * (100 + _root.minMult);
if(zoneRecDamagePct >= 50)
{
   zoneRecDamagePct = 80 + zoneRecDamagePct * 0.2;
}
else if(zoneRecDamagePct >= 30)
{
   zoneRecDamagePct = 65 + zoneRecDamagePct * 0.5;
}
else if(zoneRecDamagePct >= 20)
{
   zoneRecDamagePct = 50 + zoneRecDamagePct * 1;
}
else if(zoneRecDamagePct >= 10)
{
   zoneRecDamagePct = 30 + zoneRecDamagePct * 2;
}
else
{
   zoneRecDamagePct = 0 + zoneRecDamagePct * 5;
}
if(zoneRecDamagePct > 100)
{
   zoneRecDamagePct = 100;
}
zoneRecResistPct = (_root.damageResist + _root.maxHealth * 100 / (100 - Math.min(_root.damageResistPct,95) / 100) / 10) / (zoneRecResist + 1) * 100;
if(zoneRecResistPct > 100)
{
   zoneRecResistPct = 100;
}
zoneRecAccuracyPct = _root.accuracy / zoneRecAccuracy * 100;
if(zoneRecAccuracyPct > 100)
{
   zoneRecAccuracyPct = 100;
}
else
{
   zoneRecAccuracyPct += (100 - zoneRecAccuracyPct) * _root.accuracyPct / 100;
}
DC = 1.1 - zoneRecEvasion / _root.evasion;
if(DC > 0.9)
{
   DC = 0.9;
}
if(DC < 0)
{
   DC = 0;
}
zoneRecEvasionPct = _root.evasionPct + (100 - _root.evasionPct) * DC + 10;
if(zoneRecEvasionPct > 100)
{
   zoneRecEvasionPct = 100;
}
zoneRecLevelPct = _root.save.level / zoneRecLevel * (100 - _root.save.gDifficulty * 10);
if(_root.save.level >= zoneRecLevel || _root.save.level >= 8999)
{
   zoneRecLevelPct = 100;
}
zoneTotalPct = Math.floor((zoneRecDamagePct * 2.5 + zoneRecResistPct * 3.5 + zoneRecAccuracyPct * 1.5 + zoneRecEvasionPct * 1 + zoneRecLevelPct * 1.5) / 10);
if(zoneTotalPct > zoneRecDamagePct * 3 + 15)
{
   zoneTotalPct = zoneRecDamagePct * 3 + 15;
}
if(zoneTotalPct > zoneRecAccuracyPct * 3 + 15)
{
   zoneTotalPct = zoneRecAccuracyPct * 3 + 15;
}
if(_root.save.arenaZone == zoneID)
{
   gotoAndStop(1);
}
else if(zoneSafe == true)
{
   gotoAndStop(7);
}
else if(noFactor == true)
{
   gotoAndStop(8);
}
else if(zoneTotalPct >= 95)
{
   gotoAndStop(2);
}
else if(zoneTotalPct >= 80)
{
   gotoAndStop(3);
}
else if(zoneTotalPct >= 65)
{
   gotoAndStop(4);
}
else if(zoneTotalPct >= 50)
{
   gotoAndStop(5);
}
else
{
   gotoAndStop(6);
}
onRollOver = function()
{
   _root.actiondescription = "<b>" + zoneName + "</b>";
   if(_root.save.arenaZoneKill[zoneID] > 0)
   {
      _root.actiondescription += "\nKill count: <b>" + _root.withComma(_root.save.arenaZoneKill[zoneID]) + "</b>";
   }
   if(_root.save.arenaLevel >= zoneReqRank)
   {
      _root.actiondescription += "\n\n<font color=\'#00FF00\'>Required Rank: <b>" + zoneReqRank + "</b></font>";
   }
   else
   {
      _root.actiondescription += "\n\n<font color=\'#FF0000\'>Required Rank: <b>" + zoneReqRank + "</b></font>\nYour Arena Rank is not high enough.";
   }
   if(noFactor != true && zoneSafe != true)
   {
      if(zoneRecLevelPct >= 100)
      {
         _root.actiondescription += "\n<font color=\'#FFFF00\'>Monster Level: <b>" + _root.withComma(zoneRecLevel) + "</b></font>";
      }
      else if(zoneRecLevelPct >= 70)
      {
         _root.actiondescription += "\n<font color=\'#FF9900\'>Monster Level: <b>" + _root.withComma(zoneRecLevel) + "</b></font>";
      }
      else
      {
         _root.actiondescription += "\n<font color=\'#FF0000\'>Monster Level: <b>" + _root.withComma(zoneRecLevel) + "</b></font>";
      }
      _root.actiondescription += "\n<b>";
      tempJ = zoneRecLevelPct;
      if(tempJ >= 100)
      {
         _root.actiondescription += "\n<font color=\'#CCFF00\'>LEV: ||||||||||</font>";
      }
      else if(tempJ >= 90)
      {
         _root.actiondescription += "\n<font color=\'#DDFF00\'>LEV: |||||||||<font color=\'#999999\'>|</font></font>";
      }
      else if(tempJ >= 80)
      {
         _root.actiondescription += "\n<font color=\'#EEFF00\'>LEV: ||||||||<font color=\'#999999\'>||</font></font>";
      }
      else if(tempJ >= 70)
      {
         _root.actiondescription += "\n<font color=\'#FFFF00\'>LEV: |||||||<font color=\'#999999\'>|||</font></font>";
      }
      else if(tempJ >= 60)
      {
         _root.actiondescription += "\n<font color=\'#FFDD00\'>LEV: ||||||<font color=\'#999999\'>||||</font></font>";
      }
      else if(tempJ >= 50)
      {
         _root.actiondescription += "\n<font color=\'#FFBB00\'>LEV: |||||<font color=\'#999999\'>|||||</font></font>";
      }
      else if(tempJ >= 40)
      {
         _root.actiondescription += "\n<font color=\'#FF9900\'>LEV: ||||<font color=\'#999999\'>||||||</font></font>";
      }
      else if(tempJ >= 30)
      {
         _root.actiondescription += "\n<font color=\'#FF7700\'>LEV: |||<font color=\'#999999\'>|||||||</font></font>";
      }
      else if(tempJ >= 20)
      {
         _root.actiondescription += "\n<font color=\'#FF5500\'>LEV: ||<font color=\'#999999\'>||||||||</font></font>";
      }
      else if(tempJ >= 10)
      {
         _root.actiondescription += "\n<font color=\'#FF3300\'>LEV: |<font color=\'#999999\'>|||||||||</font></font>";
      }
      else
      {
         _root.actiondescription += "\n<font color=\'#FF1100\'>LEV: <font color=\'#999999\'>||||||||||</font></font>";
      }
      tempJ = zoneRecDamagePct;
      if(tempJ >= 100)
      {
         _root.actiondescription += "\n<font color=\'#CCFF00\'>ATT: ||||||||||</font>";
      }
      else if(tempJ >= 90)
      {
         _root.actiondescription += "\n<font color=\'#DDFF00\'>ATT: |||||||||<font color=\'#999999\'>|</font></font>";
      }
      else if(tempJ >= 80)
      {
         _root.actiondescription += "\n<font color=\'#EEFF00\'>ATT: ||||||||<font color=\'#999999\'>||</font></font>";
      }
      else if(tempJ >= 70)
      {
         _root.actiondescription += "\n<font color=\'#FFFF00\'>ATT: |||||||<font color=\'#999999\'>|||</font></font>";
      }
      else if(tempJ >= 60)
      {
         _root.actiondescription += "\n<font color=\'#FFDD00\'>ATT: ||||||<font color=\'#999999\'>||||</font></font>";
      }
      else if(tempJ >= 50)
      {
         _root.actiondescription += "\n<font color=\'#FFBB00\'>ATT: |||||<font color=\'#999999\'>|||||</font></font>";
      }
      else if(tempJ >= 40)
      {
         _root.actiondescription += "\n<font color=\'#FF9900\'>ATT: ||||<font color=\'#999999\'>||||||</font></font>";
      }
      else if(tempJ >= 30)
      {
         _root.actiondescription += "\n<font color=\'#FF7700\'>ATT: |||<font color=\'#999999\'>|||||||</font></font>";
      }
      else if(tempJ >= 20)
      {
         _root.actiondescription += "\n<font color=\'#FF5500\'>ATT: ||<font color=\'#999999\'>||||||||</font></font>";
      }
      else if(tempJ >= 10)
      {
         _root.actiondescription += "\n<font color=\'#FF3300\'>ATT: |<font color=\'#999999\'>|||||||||</font></font>";
      }
      else
      {
         _root.actiondescription += "\n<font color=\'#FF1100\'>ATT: <font color=\'#999999\'>||||||||||</font></font>";
      }
      tempJ = zoneRecResistPct;
      if(tempJ >= 100)
      {
         _root.actiondescription += "\n<font color=\'#CCFF00\'>DEF: ||||||||||</font>";
      }
      else if(tempJ >= 90)
      {
         _root.actiondescription += "\n<font color=\'#DDFF00\'>DEF: |||||||||<font color=\'#999999\'>|</font></font>";
      }
      else if(tempJ >= 80)
      {
         _root.actiondescription += "\n<font color=\'#EEFF00\'>DEF: ||||||||<font color=\'#999999\'>||</font></font>";
      }
      else if(tempJ >= 70)
      {
         _root.actiondescription += "\n<font color=\'#FFFF00\'>DEF: |||||||<font color=\'#999999\'>|||</font></font>";
      }
      else if(tempJ >= 60)
      {
         _root.actiondescription += "\n<font color=\'#FFDD00\'>DEF: ||||||<font color=\'#999999\'>||||</font></font>";
      }
      else if(tempJ >= 50)
      {
         _root.actiondescription += "\n<font color=\'#FFBB00\'>DEF: |||||<font color=\'#999999\'>|||||</font></font>";
      }
      else if(tempJ >= 40)
      {
         _root.actiondescription += "\n<font color=\'#FF9900\'>DEF: ||||<font color=\'#999999\'>||||||</font></font>";
      }
      else if(tempJ >= 30)
      {
         _root.actiondescription += "\n<font color=\'#FF7700\'>DEF: |||<font color=\'#999999\'>|||||||</font></font>";
      }
      else if(tempJ >= 20)
      {
         _root.actiondescription += "\n<font color=\'#FF5500\'>DEF: ||<font color=\'#999999\'>||||||||</font></font>";
      }
      else if(tempJ >= 10)
      {
         _root.actiondescription += "\n<font color=\'#FF3300\'>DEF: |<font color=\'#999999\'>|||||||||</font></font>";
      }
      else
      {
         _root.actiondescription += "\n<font color=\'#FF1100\'>DEF: <font color=\'#999999\'>||||||||||</font></font>";
      }
      tempJ = zoneRecAccuracyPct;
      if(tempJ >= 100)
      {
         _root.actiondescription += "\n<font color=\'#CCFF00\'>ACC: ||||||||||</font>";
      }
      else if(tempJ >= 90)
      {
         _root.actiondescription += "\n<font color=\'#DDFF00\'>ACC: |||||||||<font color=\'#999999\'>|</font></font>";
      }
      else if(tempJ >= 80)
      {
         _root.actiondescription += "\n<font color=\'#EEFF00\'>ACC: ||||||||<font color=\'#999999\'>||</font></font>";
      }
      else if(tempJ >= 70)
      {
         _root.actiondescription += "\n<font color=\'#FFFF00\'>ACC: |||||||<font color=\'#999999\'>|||</font></font>";
      }
      else if(tempJ >= 60)
      {
         _root.actiondescription += "\n<font color=\'#FFDD00\'>ACC: ||||||<font color=\'#999999\'>||||</font></font>";
      }
      else if(tempJ >= 50)
      {
         _root.actiondescription += "\n<font color=\'#FFBB00\'>ACC: |||||<font color=\'#999999\'>|||||</font></font>";
      }
      else if(tempJ >= 40)
      {
         _root.actiondescription += "\n<font color=\'#FF9900\'>ACC: ||||<font color=\'#999999\'>||||||</font></font>";
      }
      else if(tempJ >= 30)
      {
         _root.actiondescription += "\n<font color=\'#FF7700\'>ACC: |||<font color=\'#999999\'>|||||||</font></font>";
      }
      else if(tempJ >= 20)
      {
         _root.actiondescription += "\n<font color=\'#FF5500\'>ACC: ||<font color=\'#999999\'>||||||||</font></font>";
      }
      else if(tempJ >= 10)
      {
         _root.actiondescription += "\n<font color=\'#FF3300\'>ACC: |<font color=\'#999999\'>|||||||||</font></font>";
      }
      else
      {
         _root.actiondescription += "\n<font color=\'#FF1100\'>ACC: <font color=\'#999999\'>||||||||||</font></font>";
      }
      tempJ = zoneRecEvasionPct;
      if(tempJ >= 100)
      {
         _root.actiondescription += "\n<font color=\'#CCFF00\'>EVA: ||||||||||</font>";
      }
      else if(tempJ >= 90)
      {
         _root.actiondescription += "\n<font color=\'#DDFF00\'>EVA: |||||||||<font color=\'#999999\'>|</font></font>";
      }
      else if(tempJ >= 80)
      {
         _root.actiondescription += "\n<font color=\'#EEFF00\'>EVA: ||||||||<font color=\'#999999\'>||</font></font>";
      }
      else if(tempJ >= 70)
      {
         _root.actiondescription += "\n<font color=\'#FFFF00\'>EVA: |||||||<font color=\'#999999\'>|||</font></font>";
      }
      else if(tempJ >= 60)
      {
         _root.actiondescription += "\n<font color=\'#FFDD00\'>EVA: ||||||<font color=\'#999999\'>||||</font></font>";
      }
      else if(tempJ >= 50)
      {
         _root.actiondescription += "\n<font color=\'#FFBB00\'>EVA: |||||<font color=\'#999999\'>|||||</font></font>";
      }
      else if(tempJ >= 40)
      {
         _root.actiondescription += "\n<font color=\'#FF9900\'>EVA: ||||<font color=\'#999999\'>||||||</font></font>";
      }
      else if(tempJ >= 30)
      {
         _root.actiondescription += "\n<font color=\'#FF7700\'>EVA: |||<font color=\'#999999\'>|||||||</font></font>";
      }
      else if(tempJ >= 20)
      {
         _root.actiondescription += "\n<font color=\'#FF5500\'>EVA: ||<font color=\'#999999\'>||||||||</font></font>";
      }
      else if(tempJ >= 10)
      {
         _root.actiondescription += "\n<font color=\'#FF3300\'>EVA: |<font color=\'#999999\'>|||||||||</font></font>";
      }
      else
      {
         _root.actiondescription += "\n<font color=\'#FF1100\'>EVA: <font color=\'#999999\'>||||||||||</font></font>";
      }
      tempJ = zoneTotalPct;
      if(tempJ >= 100)
      {
         _root.actiondescription += "\n<font color=\'#00CCFF\'>Overall Rating: " + Math.floor(tempJ) + "%</font>";
      }
      else if(tempJ >= 90)
      {
         _root.actiondescription += "\n<font color=\'#0099FF\'>Overall Rating: " + Math.floor(tempJ) + "%</font>";
      }
      else if(tempJ >= 80)
      {
         _root.actiondescription += "\n<font color=\'#0066FF\'>Overall Rating: " + Math.floor(tempJ) + "%</font>";
      }
      else if(tempJ >= 70)
      {
         _root.actiondescription += "\n<font color=\'#0033FF\'>Overall Rating: " + Math.floor(tempJ) + "%</font>";
      }
      else if(tempJ >= 60)
      {
         _root.actiondescription += "\n<font color=\'#0000FF\'>Overall Rating: " + Math.floor(tempJ) + "%</font>";
      }
      else if(tempJ >= 50)
      {
         _root.actiondescription += "\n<font color=\'#3300FF\'>Overall Rating: " + Math.floor(tempJ) + "%</font>";
      }
      else if(tempJ >= 40)
      {
         _root.actiondescription += "\n<font color=\'#6600FF\'>Overall Rating: " + Math.floor(tempJ) + "%</font>";
      }
      else if(tempJ >= 30)
      {
         _root.actiondescription += "\n<font color=\'#9900FF\'>Overall Rating: " + Math.floor(tempJ) + "%</font>";
      }
      else if(tempJ >= 20)
      {
         _root.actiondescription += "\n<font color=\'#CC00FF\'>Overall Rating: " + Math.floor(tempJ) + "%</font>";
      }
      else if(tempJ >= 10)
      {
         _root.actiondescription += "\n<font color=\'#FF00FF\'>Overall Rating: " + Math.floor(tempJ) + "%</font>";
      }
      else
      {
         _root.actiondescription += "\n<font color=\'#FF00CC\'>Overall Rating: " + Math.floor(tempJ) + "%</font>";
      }
      _root.actiondescription += "</b>";
   }
   _root.actiondescription += "\n";
   if(_root.save.arenaZone == zoneID)
   {
      _root.actiondescription += "\n<font color=\'#7D007D\'><b>You are here.</b></font>";
   }
   if(zoneSafe == true)
   {
      _root.actiondescription += "\n<font color=\'#999999\'>This is a safe zone.</font>";
   }
   else if(noFactor != true)
   {
      if(zoneTotalPct >= 95)
      {
         _root.actiondescription += "\n<font color=\'#009900\'>This area is too easy for you.</font>";
      }
      else if(zoneTotalPct >= 80)
      {
         _root.actiondescription += "\n<font color=\'#99FF00\'>This area is easy for you.</font>";
      }
      else if(zoneTotalPct >= 65)
      {
         _root.actiondescription += "\n<font color=\'#FFFF00\'>This area is recommended for you.</font>";
      }
      else if(zoneTotalPct >= 50)
      {
         _root.actiondescription += "\n<font color=\'#FF9900\'>This area is difficult for you.</font>";
      }
      else
      {
         _root.actiondescription += "\n<font color=\'#FF0000\'>This area is too difficult for you.</font>";
      }
   }
   canTeleport = true;
   if(zoneID == 20 || zoneID == 24 || zoneID == 25 || zoneID == 29 || zoneID >= 31 && zoneID <= 43 || zoneID == 47 || zoneID == 50 || zoneID >= 53 && zoneID <= 56 || zoneID == 59)
   {
      canTeleport = false;
   }
   else if(_root.save.arenaZone == 20 || _root.save.arenaZone == 24 || _root.save.arenaZone == 25 || _root.save.arenaZone == 29 || _root.save.arenaZone >= 31 && _root.save.arenaZone <= 43 || _root.save.arenaZone == 47 || _root.save.arenaZone == 50 || _root.save.arenaZone >= 53 && _root.save.arenaZone <= 56 || _root.save.arenaZone == 59 || _root.save.arenaZone == 69 || _root.save.arenaZone == 78 || _root.save.arenaZone == 79 || _root.save.arenaZone == 80 || _root.save.arenaZone == 81)
   {
      canTeleport = false;
   }
   else if(_root.save.arenaZoneFound[zoneID] != 1)
   {
      canTeleport = false;
   }
   if(canTeleport == true)
   {
      _root.actiondescription += "\n<b><font color=\'#0099FF\'>Click here to teleport.</font></b>";
   }
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOut = function()
{
   _root.actiondescription = "";
};
onRelease = function()
{
   canTeleport = true;
   if(zoneID == 20 || zoneID == 24 || zoneID == 25 || zoneID == 29 || zoneID >= 31 && zoneID <= 43 || zoneID == 47 || zoneID == 50 || zoneID >= 53 && zoneID <= 56 || zoneID == 59)
   {
      canTeleport = false;
      _root.showPopup("Cannot Teleport","You cannot teleport to this location.");
   }
   else if(_root.save.arenaZone == 20 || _root.save.arenaZone == 24 || _root.save.arenaZone == 25 || _root.save.arenaZone == 29 || _root.save.arenaZone >= 31 && _root.save.arenaZone <= 43 || _root.save.arenaZone == 47 || _root.save.arenaZone == 50 || _root.save.arenaZone >= 53 && _root.save.arenaZone <= 56 || _root.save.arenaZone == 59 || _root.save.arenaZone == 69 || _root.save.arenaZone == 78 || _root.save.arenaZone == 79 || _root.save.arenaZone == 80 || _root.save.arenaZone == 81)
   {
      canTeleport = false;
      _root.showPopup("Cannot Teleport","You cannot teleport from this location.");
   }
   else if(_root.save.arenaZoneFound[zoneID] != 1)
   {
      canTeleport = false;
      _root.showPopup("Cannot Teleport","You cannot teleport to a location you haven\'t discovered.");
   }
   else if(_root.save.arenaLevel < zoneReqRank)
   {
      canTeleport = false;
      _root.showPopup("Cannot Teleport","Your Rank is not high enough to teleport to this location.");
   }
   else if(_root.house.arena.enemy.enemyID != 0)
   {
      canTeleport = false;
      _root.showPopup("Cannot Teleport","You cannot teleport when there is a monster.");
   }
   if(canTeleport == true)
   {
      _root.house.arena.travel(zoneID);
      _root.actiondescription = "";
      _parent._parent.gotoAndStop(1);
   }
};
