//! status=pending
stop();
if(_root.save.rewardClaim >= 5)
{
   gotoAndStop(2);
}
onEnterFrame = function()
{
   if(_root.save.rewardClaim >= 5)
   {
      _alpha = _alpha - 2;
      if(_alpha < 10)
      {
         gotoAndStop(2);
      }
   }
};
