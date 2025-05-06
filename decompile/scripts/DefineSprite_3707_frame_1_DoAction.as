//! status=pending
rot = 100;
dir = -1;
onEnterFrame = function()
{
   rot += dir * 5;
   if(rot > 200)
   {
      dir = -1;
   }
   if(rot < 0)
   {
      dir = 1;
   }
   _xscale = rot;
   if(_xscale > 80)
   {
      _xscale = 80;
   }
   if(_xscale < 10)
   {
      _xscale = 10;
   }
};
