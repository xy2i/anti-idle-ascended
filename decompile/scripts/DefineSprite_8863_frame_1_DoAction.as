//! status=pending
function checkFrame()
{
   if(_root.save.careerBoost[careerID] > 0)
   {
      fr = 3;
   }
   else if(_root.save.careerActive[careerID] > 0)
   {
      fr = 2;
   }
   else
   {
      fr = 1;
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}
stop();
checkFrame();
del = 0;
onEnterFrame = function()
{
   del += 1;
   if(del > 3)
   {
      del = 0;
      checkFrame();
   }
};
