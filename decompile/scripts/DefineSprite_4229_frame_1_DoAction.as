//! status=pending
laserCount = 0;
del = 100;
onEnterFrame = function()
{
   if(_currentframe == 2)
   {
      del += 1;
   }
   reqDel = 210 - laserCount * 10;
   if(reqDel < 70)
   {
      reqDel = 70;
   }
   if(del >= reqDel && _currentframe == 2)
   {
      gotoAndPlay(3);
   }
};
