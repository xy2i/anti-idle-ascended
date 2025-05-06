//! status=pending
if(_root.save.totalPrinterCharge > 0)
{
   gotoAndStop(2);
}
else
{
   gotoAndStop(1);
}
onEnterFrame = function()
{
   if(_root.save.totalPrinterCharge > 0)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
};
