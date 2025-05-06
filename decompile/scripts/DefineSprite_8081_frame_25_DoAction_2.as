//! status=pending
onEnterFrame = function()
{
   if(Key.isDown(16) && Key.isDown(76))
   {
      _root.save.lockedFile = true;
      _root.gotoAndStop(18);
   }
};
