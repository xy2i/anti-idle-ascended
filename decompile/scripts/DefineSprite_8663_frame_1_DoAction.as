//! status=pending
function refreshInfo()
{
   tempNum = Math.floor(1 + (_Y - 0) / 20) + (_parent._parent.achPage - 1) * 14;
   if(_root.achMode != "All")
   {
      num = _parent._parent.achArray[tempNum];
   }
   else
   {
      num = tempNum;
   }
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
   rewardPct = _root.achList[num].redCoin / 100;
   if(rewardPct * 100 % 100 == 0)
   {
      rewardPct += ".00";
   }
   else if(rewardPct * 100 % 10 == 0)
   {
      rewardPct += "0";
   }
   achReward = "+" + rewardPct + "%";
   if(_root.achList[num].name == undefined)
   {
      gotoAndStop(5);
   }
   else if(!isNaN(_root.save.achEarnTime[ID]) && _root.achList[num].secret == true)
   {
      gotoAndStop(4);
   }
   else if(!isNaN(_root.save.achEarnTime[ID]))
   {
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
   achRewardX.text = achReward;
   ago = _root.systemtimenow - _root.save.achEarnTime[ID];
   if(ago > 172800000)
   {
      achEarntime.text = "Earned " + Math.floor(ago / 86400000) + " days ago!";
   }
   else if(ago > 86400000)
   {
      achEarntime.text = "Earned " + Math.floor(ago / 86400000) + " day ago!";
   }
   else if(ago > 7200000)
   {
      achEarntime.text = "Earned " + Math.floor(ago / 3600000) + " hours ago!";
   }
   else if(ago > 3600000)
   {
      achEarntime.text = "Earned " + Math.floor(ago / 3600000) + " hour ago!";
   }
   else if(ago > 120000)
   {
      achEarntime.text = "Earned " + Math.floor(ago / 60000) + " minutes ago!";
   }
   else
   {
      achEarntime.text = "Earned a few seconds ago!";
   }
}
refreshInfo();
onEnterFrame = function()
{
   if(_parent._parent.toRefresh >= 2)
   {
      refreshInfo();
   }
};
onRelease = function()
{
   _root.save.trackachnum = num;
};
onRollOver = function()
{
   _root.actiondescription = "Track Progress";
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOut = function()
{
   _root.actiondescription = "";
};
