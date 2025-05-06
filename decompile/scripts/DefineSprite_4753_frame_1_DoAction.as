//! status=pending
_xscale = 0;
if(isNaN(maxScale))
{
   maxScale = 100;
}
onEnterFrame = function()
{
   if(targetScale < 0)
   {
      targetScale = 0;
   }
   if(targetScale > maxScale)
   {
      targetScale = maxScale;
   }
   _xscale = _xscale + (targetScale - _xscale) / 5;
};
