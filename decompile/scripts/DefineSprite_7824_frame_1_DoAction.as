//! status=pending
stop();
onEnterFrame = function()
{
   if(_root.save.fishRod == rodID)
   {
      gotoAndStop(3);
   }
   else if(_root.save.fishRodUnlock[rodID] > 0)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
};
onRollOver = function()
{
   if(_root.save.fishRodUnlock[rodID] > 0)
   {
      _root.actiondescription = rodDesc;
   }
   else
   {
      _root.actiondescription = rodUnlock;
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
   if(_root.save.fishRodUnlock[rodID] > 0)
   {
      _root.save.fishRod = rodID;
   }
};
