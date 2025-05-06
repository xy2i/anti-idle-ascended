//! status=pending
function reset()
{
   _alpha = 100;
   _X = defX + (Math.random() - Math.random()) * 5;
   _Y = defY + (Math.random() - Math.random()) * 5;
}
defX = _X;
defY = _Y;
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
