//! status=pending
stop();
_xscale = 0;
targetScale = 0;
onEnterFrame = function()
{
   _xscale = _xscale + (targetScale - _xscale) / 5;
};
