//! status=pending
stop();
desc = "";
thisSelect = false;
thisReward = _parent.possibleReward[random(_parent.possibleReward.length)];
loc = Math.round((_X - 25) / 50 + (_Y - 290) / 50 * 12);
if(loc == _parent.attendanceLoc && _root.save.consecutiveDays >= 7)
{
   thisReward = 41;
}
if(loc == _parent.attendanceLoc2 && _root.save.consecutiveDays >= 30)
{
   thisReward = 41;
}
onEnterFrame = function()
{
   if(_parent.flipLeft == 0 && thisSelect == false)
   {
      cover.gotoAndStop(2);
      gotoAndStop(thisReward);
   }
};
onRollOver = function()
{
   if(_currentframe != 1)
   {
      _root.actiondescription = "<font color=\'#FFFF00\'><b>" + itemName + "</b></font>\n" + itemDesc;
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
   if(_parent.flipLeft > 0 && thisSelect == false)
   {
      _parent.flipLeft -= 1;
      thisSelect = true;
      gotoAndStop(thisReward);
   }
};
