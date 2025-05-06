//! status=pending
stop();
_alpha = 200;
onEnterFrame = function()
{
   _alpha = _alpha - 0.3;
   if(_alpha < 1)
   {
      nextFrame();
   }
};
