//! status=pending
stop();
onRollOver = function()
{
   gotoAndStop(2);
};
onRollOut = function()
{
   gotoAndStop(1);
};
onPress = function()
{
   gotoAndStop(3);
};
onDragOver = onPress;
onDragOut = onRollOut;
onReleaseOutside = onRollOut;
