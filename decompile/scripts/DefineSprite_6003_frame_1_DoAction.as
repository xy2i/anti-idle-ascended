//! status=pending
allyFiltered = false;
allyOffset = _root.save.arenaAlly - 1;
allyMaxOffset = _root.totalMonster - 12;
allyArray = [zeroItem];
recheckAlly = 0;
if(allyOffset < 0)
{
   allyOffset = 0;
}
if(allyMaxOffset < 1)
{
   allyMaxOffset = 1;
}
if(allyOffset > allyMaxOffset)
{
   allyOffset = allyMaxOffset;
}
onEnterFrame = function()
{
   if(_root.scrollingDir == -1)
   {
      _root.actiondescription = "";
      allyOffset -= 3;
      if(allyOffset < 0)
      {
         allyOffset = 0;
      }
   }
   if(_root.scrollingDir == 1)
   {
      _root.actiondescription = "";
      allyOffset += 3;
      if(allyOffset > allyMaxOffset)
      {
         allyOffset = allyMaxOffset;
      }
   }
   if(recheckAlly > 0)
   {
      recheckAlly -= 1;
   }
};
