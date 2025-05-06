//! status=pending
onRelease = function()
{
   _root.save.mbma = 1337;
   _root.save.userTitle = achNameX.text;
};
onRollOver = function()
{
   _root.actiondescription = "Set as Title";
};
onRollOut = function()
{
   _root.actiondescription = "";
};
onDragOut = function()
{
   _root.actiondescription = "";
};
