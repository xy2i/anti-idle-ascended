//! status=pending
onEnterFrame = function()
{
   del += 1;
   if(del == 10)
   {
      del = 0;
      gotoAndStop(2 + random(4));
   }
};
gotoAndStop(2 + random(4));
del = 0;
