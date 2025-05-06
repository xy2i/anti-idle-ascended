//! status=pending
function checkFrame()
{
   if(_root.robaconActive == true && _root.save.showRobaconEXP == true)
   {
      fr = 3;
      if(_xmouse > 0 && _xmouse < 280 && _ymouse > 0 && _ymouse < 20)
      {
         fr = 2;
      }
   }
   else
   {
      fr = 2;
      if(_xmouse > 0 && _xmouse < 280 && _ymouse > 0 && _ymouse < 20 && _root.robaconActive == true)
      {
         fr = 3;
      }
   }
   if(_currentframe != fr)
   {
      gotoAndStop(fr);
   }
}
alt = false;
onEnterFrame = function()
{
   alt = !alt;
   if(alt == true)
   {
      checkFrame();
      disp();
   }
};
checkFrame();
