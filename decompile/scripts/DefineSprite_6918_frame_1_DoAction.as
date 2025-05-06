//! status=pending
prevX = _X;
onEnterFrame = function()
{
   if(nameText._alpha > 0)
   {
      nameText._alpha -= 0.5;
   }
   dist = Math.abs(_X - prevX);
   if(dist > 100)
   {
      _X = 0;
      _Y = -200;
      curItem = "";
      slowDur = 0;
      stunDur = 0;
      darkDur = 0;
      xspeed = 0;
      yspeed = 0;
   }
   prevX = _X;
   if(_X < -250)
   {
      _X = -250;
   }
   if(_X > 6250)
   {
      _X = 6250;
   }
};
