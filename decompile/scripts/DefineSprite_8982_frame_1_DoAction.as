//! status=pending
function checkFrame()
{
   perkUnlocked = false;
   perkGet = false;
   if(_root.save.permaBanPenalty[preReq1] == _root.permaBanMax || _root.save.permaBanPenalty[preReq2] == _root.permaBanMax || _root.save.permaBanPenalty[preReq3] == _root.permaBanMax || ID == 1 || ID == 26 || ID == 36)
   {
      perkUnlocked = true;
   }
   if(pointType == 1)
   {
      perkColor = "CCFF33";
      pointName = "MEDIUM";
   }
   if(pointType == 2)
   {
      perkColor = "FFCC33";
      pointName = "HARD";
   }
   if(pointType == 3)
   {
      perkColor = "CC33FF";
      pointName = "IMPOSSIBLE";
   }
   if(perkUnlocked == false)
   {
      perkColor = "CCCCCC";
   }
   perkLevel = _root.save.permaBanPenalty[ID];
   perkCost = perkCostOri;
   if(perkLevel == 1)
   {
      perkCost = perkCostOri * 3;
   }
   if(perkLevel == 2)
   {
      perkCost = perkCostOri * 16;
   }
   if(_root.permaBanMax == 4)
   {
      gotoAndStop(7);
   }
   else if(perkLevel >= _root.permaBanMax)
   {
      gotoAndStop(pointType + 3);
   }
   else if(perkUnlocked == true)
   {
      gotoAndStop(pointType);
   }
   else
   {
      gotoAndStop(8);
   }
}
if(isNaN(perkCostOri))
{
   perkCostOri = perkCost;
}
onEnterFrame = function()
{
   checkFrame();
};
onRollOver = function()
{
   checkFrame();
   if(perkLevel >= _root.permaBanMax || _root.permaBanMax == 4)
   {
      _root.actiondescription = "<font color=\'#" + perkColor + "\'><b>PERK #" + ID + "</b></font>";
      _root.actiondescription += "\n\n<font color=\'#" + perkColor + "\'>Current Level: <b>" + perkLevel + "</b></font>";
      _root.actiondescription += "\n\n" + this["perkDesc" + perkLevel];
   }
   else if(perkLevel >= 1 && perkUnlocked == true)
   {
      _root.actiondescription = "<font color=\'#" + perkColor + "\'><b>PERK #" + ID + "</b></font>";
      _root.actiondescription += "\n\n<font color=\'#" + perkColor + "\'>Current Level: <b>" + perkLevel + "</b></font>";
      _root.actiondescription += "\n" + this["perkDesc" + perkLevel];
      _root.actiondescription += "\n\n<font color=\'#" + perkColor + "\'>Next Level: <b>" + (perkLevel + 1) + "</b></font>";
      _root.actiondescription += "\n<font color=\'#CCCCCC\'>" + this["perkDesc" + (perkLevel + 1)] + "</font>";
      _root.actiondescription += "\n\n<font color=\'#FFFF00\'>You can now upgrade this perk.\nCost: <b><font color=\'#" + perkColor + "\'>" + perkCost + " [" + pointName + "]</font></b></font>";
   }
   else if(perkLevel >= 1 && perkUnlocked != true)
   {
      _root.actiondescription = "<font color=\'#" + perkColor + "\'><b>PERK #" + ID + "</b></font>";
      _root.actiondescription += "\n\n<font color=\'#" + perkColor + "\'>Current Level: <b>" + perkLevel + "</b></font>";
      _root.actiondescription += "\n" + this["perkDesc" + perkLevel];
      _root.actiondescription += "\n\n<font color=\'#" + perkColor + "\'>Next Level: <b>" + (perkLevel + 1) + "</b></font>";
      _root.actiondescription += "\n<font color=\'#CCCCCC\'>" + this["perkDesc" + (perkLevel + 1)] + "</font>";
      _root.actiondescription += "\n\n<font color=\'#FFFFFF\'>You need to upgrade an adjacent perk to upgrade this perk.\nCost: <b><font color=\'#" + perkColor + "\'>" + perkCost + " [" + pointName + "]</font></b></font>";
   }
   else if(perkLevel == 0 && perkUnlocked == true)
   {
      _root.actiondescription = "<font color=\'#" + perkColor + "\'><b>PERK #" + ID + "</b></font>";
      _root.actiondescription += "\n\n<font color=\'#" + perkColor + "\'>Next Level: <b>" + (perkLevel + 1) + "</b></font>";
      _root.actiondescription += "\n<font color=\'#CCCCCC\'>" + this["perkDesc" + (perkLevel + 1)] + "</font>";
      _root.actiondescription += "\n\n<font color=\'#FFFF00\'>You can now activate this perk.\nCost: <b><font color=\'#" + perkColor + "\'>" + perkCost + " [" + pointName + "]</font></b></font>";
   }
   else if(perkLevel == 0 && perkUnlocked != true)
   {
      _root.actiondescription = "<font color=\'#" + perkColor + "\'><b>PERK #" + ID + "</b></font>";
      _root.actiondescription += "\n\n<font color=\'#" + perkColor + "\'>Next Level: <b>" + (perkLevel + 1) + "</b></font>";
      _root.actiondescription += "\n<font color=\'#CCCCCC\'>" + this["perkDesc" + (perkLevel + 1)] + "</font>";
      _root.actiondescription += "\n\n<font color=\'#FFFFFF\'>You need to activate an adjacent perk to activate this perk.\nCost: <b><font color=\'#" + perkColor + "\'>" + perkCost + " [" + pointName + "]</font></b></font>";
   }
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOver = onRollOver;
onDragOut = onRollOut;
onRelease = function()
{
   checkFrame();
   if(perkLevel < _root.permaBanMax && perkLevel < 3)
   {
      if(pointType == 1 && _root.save.permaStupidity >= perkCost && perkUnlocked == true)
      {
         _root.save.permaStupidity -= perkCost;
         _root.save.permaBanPenalty[ID] += 1;
      }
      else if(pointType == 2 && _root.save.permaStupidityHard >= perkCost && perkUnlocked == true)
      {
         _root.save.permaStupidityHard -= perkCost;
         _root.save.permaBanPenalty[ID] += 1;
      }
      else if(pointType == 3 && _root.save.permaStupidityImpossible >= perkCost && perkUnlocked == true)
      {
         _root.save.permaStupidityImpossible -= perkCost;
         _root.save.permaBanPenalty[ID] += 1;
      }
      else if(perkUnlocked == true)
      {
         _root.showPopup("Notice","You don\'t have enough Perk Points.");
      }
      else
      {
         _root.showPopup("Notice","This perk is locked.");
      }
      _root.actiondescription = "";
   }
};
