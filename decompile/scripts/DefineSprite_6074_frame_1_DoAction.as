//! status=pending
if(_root.save.buttonPress > 0)
{
   gotoAndStop(2);
}
else
{
   gotoAndStop(1);
}
onEnterFrame = function()
{
   if(_root.save.buttonPress > 0)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
};
