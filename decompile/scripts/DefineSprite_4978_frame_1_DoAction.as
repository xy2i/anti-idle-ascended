//! status=pending
stop();
if(_root.save.robaconLevel >= reqRank)
{
   gotoAndStop(2);
}
onRollOver = function()
{
   if(_root.save.robaconLevel >= reqRank)
   {
      _root.actiondescription = desc;
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
