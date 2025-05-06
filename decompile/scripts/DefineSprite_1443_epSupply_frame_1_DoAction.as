//! status=pending
_X = x;
_Y = y;
healthGained = false;
if(isNaN(lootValue))
{
   lootValue = 0;
}
onEnterFrame = function()
{
   _X = _X + (480 - _X) / 2;
   _Y = _Y + (190 - _Y) / 2;
   if(_Y >= 185 && _X <= 490 && _X >= 470 && healthGained != true)
   {
      healthGained = true;
      _root.save.arenaEventPoint[_root.save.arenaEvent] += lootValue;
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
