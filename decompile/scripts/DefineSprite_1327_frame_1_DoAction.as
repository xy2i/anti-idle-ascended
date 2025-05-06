//! status=pending
rota = 0;
rotSpeed = 0;
onEnterFrame = function()
{
   rota += 7.5;
   if(rota > 360)
   {
      rota -= 360;
   }
   _rotation = rota;
};
