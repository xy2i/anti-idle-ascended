//! status=pending
onEnterFrame = function()
{
   if(_alpha == 100)
   {
      _parent._alpha = 50;
   }
   else
   {
      _parent._alpha = 100;
   }
};
