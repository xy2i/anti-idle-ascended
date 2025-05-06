//! status=pending
function refreshInfo()
{
   num = _root.save.trackachnum;
   ID = _root.achList[num].ID;
   achName = _root.achList[num].name;
   achDesc = _root.achList[num].desc;
   achNeed = _root.achList[num].need;
   achRequired = _root.achList[num].amnt;
   if(_root.achList[num].where == "save")
   {
      achCurrent = _root.save[_root.achList[num].need];
   }
   else if(_root.achList[num].where == "root")
   {
      achCurrent = _root[_root.achList[num].need];
   }
   achProgress = _root.withComma(achCurrent) + " / " + _root.withComma(achRequired);
   if(_root.achList[num].type == "Max")
   {
      achPercent = Math.floor(achCurrent / achRequired * 1000) / 10;
   }
   else if(_root.achList[num].type == "Min")
   {
      achPercent = Math.floor(achRequired / achCurrent * 1000) / 10;
   }
   if(isNaN(achPercent))
   {
      achPercent = 100;
   }
   if(achPercent > 100)
   {
      achPercent = 100;
   }
   if(achPercent < 0)
   {
      achPercent = 0;
   }
   achReward = _root.achList[num].redCoin;
   if(_root.achList[num].name == undefined || _root.save.trackachnum == 0)
   {
      gotoAndStop(3);
   }
   else if(!isNaN(_root.save.achEarnTime[ID]))
   {
      _root.save.trackachnum = 0;
      gotoAndStop(3);
   }
   else if(_root.achList[num].secret == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
   achNameX.text = achName;
   achDescX.text = achDesc;
   achProgressX.text = achProgress;
   achPercentX.text = achPercent + "%";
}
refreshInfo();
del = 0;
onEnterFrame = function()
{
   del += 1;
   if(del >= 20)
   {
      del -= 20;
      refreshInfo();
   }
};
onRelease = function()
{
   _root.save.trackachnum = 0;
};
onRollOver = function()
{
   _root.actiondescription = "<b><font color=\'#FFFF00\'>Tracked Achievement</font></b>\nYou can track your achievement progress by clicking an achievement in the Achievements screen.\nClick here to cancel tracking.";
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOut = function()
{
   _root.actiondescription = "";
};
