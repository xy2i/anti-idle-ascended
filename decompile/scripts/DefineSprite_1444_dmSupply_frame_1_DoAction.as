//! status=pending
_X = x;
_Y = y;
healthGained = false;
onEnterFrame = function()
{
   _X = _X + (85 - _X) / 2;
   _Y = _Y + (230 - _Y) / 2;
   if(_Y >= 225 && _X <= 90 && _X >= 80 && healthGained != true)
   {
      healthGained = true;
      _root.save.arenaHealth += 1;
   }
   if(healthGained == true)
   {
      _alpha = _alpha - 10;
      if(_alpha <= 0)
      {
         unloadMovie(this);
         this.removeMovieClip();
      }
   }
};
