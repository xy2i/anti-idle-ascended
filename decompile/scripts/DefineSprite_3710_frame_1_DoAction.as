//! status=pending
rot = 100;
dir = -1;
onEnterFrame = function()
{
   rot += dir * 5;
   if(rot > 300)
   {
      dir = -1;
   }
   if(rot < 60)
   {
      dir = 1;
   }
   _alpha = rot;
   if(_alpha > 150)
   {
      _alpha = 150;
   }
   if(_alpha < 60)
   {
      _alpha = 60;
   }
};
