//! status=pending
stop();
_alpha = 100;
onEnterFrame = function()
{
   _alpha = _alpha - 20 / _root.fps;
   if(_alpha <= 0)
   {
      gotoAndStop(2);
   }
};
