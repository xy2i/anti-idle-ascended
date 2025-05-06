//! status=pending
function checkFrame()
{
   co = xc + _parent._parent.questScroll;
   if(_root.questHLink[ro][co] != true)
   {
      fr = 4;
   }
   else
   {
      fr = 2;
   }
   gotoAndStop(fr);
}
xc = Math.round((_X + 0) / 50);
ro = Math.round((_Y + 32) / 50);
checkFrame();
onEnterFrame = function()
{
   if(_parent._parent.cf > 0)
   {
      checkFrame();
   }
};
