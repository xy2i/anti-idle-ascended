//! status=pending
bcOffset = 0;
bcMaxOffset = _root.newsCount - 22;
onEnterFrame = function()
{
   if(_root.scrollingDir == -1)
   {
      bcOffset -= 3;
      if(bcOffset < 0)
      {
         bcOffset = 0;
      }
   }
   if(_root.scrollingDir == 1)
   {
      bcOffset += 3;
      if(bcOffset > bcMaxOffset)
      {
         bcOffset = bcMaxOffset;
      }
   }
};
