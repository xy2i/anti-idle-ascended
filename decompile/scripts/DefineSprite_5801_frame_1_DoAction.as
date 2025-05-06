//! status=pending
onEnterFrame = function()
{
   if(_root.save.arenaRing == ringID)
   {
      gotoAndStop(3);
   }
   else if(_root.save.arenaRingOwned[ringID] > 0)
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
   _root.actiondescription = ringDesc;
};
onDragOver = function()
{
   _root.actiondescription = ringDesc;
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
   if(_root.save.arenaRingOwned[ringID] > 0)
   {
      _root.save.arenaRing = ringID;
   }
};
