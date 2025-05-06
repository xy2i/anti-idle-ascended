//! status=pending
_xscale = 130;
_yscale = 130;
onEnterFrame = function()
{
   if(_xscale > 100)
   {
      _xscale = _xscale - 2;
      _yscale = _yscale - 2;
   }
   else if(_alpha > 0)
   {
      _alpha = _alpha - 1;
   }
};
