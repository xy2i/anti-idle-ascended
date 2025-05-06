//! status=pending
way = -1;
onEnterFrame = function()
{
   _Y = _Y + way * (_Y + 325) / 10;
   if(_Y > -160)
   {
      _Y = -160;
      way = -1;
   }
   if(_Y < -320)
   {
      _Y = -320;
      way = 1;
   }
};
