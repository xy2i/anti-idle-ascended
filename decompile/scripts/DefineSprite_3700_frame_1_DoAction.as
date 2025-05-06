//! status=pending
rot = 0;
rSpeed = 0;
dir = 1;
onEnterFrame = function()
{
   rot += rSpeed;
   rSpeed += dir / 50;
   if(rSpeed > 0.4)
   {
      dir = -1;
   }
   if(rSpeed < -0.4)
   {
      dir = 1;
   }
   _rotation = rot;
};
