//! status=pending
function checkFrame()
{
   co = xc + _parent._parent.questScroll;
   if(_root.questVLink[ro][co] != true)
   {
      fr = 4;
   }
   else
   {
      fr = 2;
   }
   gotoAndStop(fr);
}
xc = Math.round((_X + 22) / 50);
ro = Math.round((_Y + 10) / 50);
checkFrame();
onEnterFrame = function()
{
   if(_parent._parent.cf > 0)
   {
      checkFrame();
   }
};
