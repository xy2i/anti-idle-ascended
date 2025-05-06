//! status=pending
onEnterFrame = function()
{
   if(_root.scrollingDir == -1)
   {
      songOffset -= 2;
      if(songOffset < 0)
      {
         songOffset = 0;
      }
   }
   if(_root.scrollingDir == 1)
   {
      songOffset += 2;
      if(songOffset > songMaxOffset)
      {
         songOffset = songMaxOffset;
      }
   }
};
