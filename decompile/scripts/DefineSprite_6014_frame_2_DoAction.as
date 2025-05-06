//! status=pending
_root.spToUse = 1;
del = 0;
_root.arenaCombo = 0;
onEnterFrame = function()
{
   del += 1;
   if(del >= 40)
   {
      checkStat();
      del = 0;
   }
   _root.spToUse = 1;
   if(Key.isDown(32))
   {
      _root.spToUse = 5;
      if(Key.isDown(17))
      {
         _root.spToUse = 99;
      }
   }
};
