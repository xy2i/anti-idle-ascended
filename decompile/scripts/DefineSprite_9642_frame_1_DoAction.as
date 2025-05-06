//! status=pending
function reset()
{
   _alpha = 100;
   _X = 18 + Math.random() * 4;
   _Y = 8 + Math.random() * 4;
}
_alpha = 0;
onEnterFrame = function()
{
   if(_alpha > 0)
   {
      _rotation = _rotation + 5;
      _alpha = _alpha - 2;
   }
   else if(Math.random() < 0.005)
   {
      reset();
   }
};
