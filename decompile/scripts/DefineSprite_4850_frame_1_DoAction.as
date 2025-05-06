//! status=pending
stop();
onEnterFrame = function()
{
   if(_root.noSpec == true && _alpha > 0)
   {
      _alpha = _alpha - 10;
      if(_alpha <= 0)
      {
         gotoAndStop(1);
         _root.noSpec = false;
      }
   }
   else if(_root.noSpec == false && _alpha < 100)
   {
      _alpha = _alpha + 10;
   }
};
