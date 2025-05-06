//! status=pending
function checkFrame()
{
   if(_root.save.arenaLevel >= 10 || _root.saveid >= 10)
   {
      fr = 5;
   }
   else if(_parent.arena._currentframe != 1)
   {
      fr = 6;
   }
   else
   {
      fr = 1;
      if(_root.save.arenaZone >= 1)
      {
         fr = 2;
         if(_root.save.arenaLevel >= 2)
         {
            fr = 3;
            if(_root.save.arenaTotalSkill > 0)
            {
               fr = 4;
            }
         }
      }
   }
   gotoAndStop(fr);
}
onEnterFrame = function()
{
   checkFrame();
};
checkFrame();
