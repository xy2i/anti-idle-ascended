//! status=pending
del = 0;
onEnterFrame = function()
{
   if(Math.random() < 0.01 * _root.save.arenaCorruptWmDifficulty)
   {
      _X = random(99) * 5;
      if(Math.random() < 0.5)
      {
         _Y = 0;
         _height = random(30) * 5 + 25;
      }
      else
      {
         _Y = random(30) * 5 + 25;
         _height = 200 - _Y;
      }
      _width = random(2) * 5 + 5;
      del = 3 + random(2);
      fr = 3 + random(9);
      gotoAndStop(fr);
   }
   if(del > 0)
   {
      del -= 1;
      if(del == 0 && _currentframe != 2)
      {
         gotoAndStop(2);
      }
   }
};
