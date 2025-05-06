//! status=pending
onEnterFrame = function()
{
   if(_root.save.featureIdleMode == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
};
