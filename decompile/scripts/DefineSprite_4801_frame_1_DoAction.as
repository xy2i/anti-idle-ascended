//! status=pending
stop();
del = 0;
onEnterFrame = function()
{
   if(fr != _currentframe)
   {
      del += 1;
      if(del > 1 || fr != 4)
      {
         gotoAndStop(fr);
         del = 0;
      }
   }
   else
   {
      del = 0;
   }
};
