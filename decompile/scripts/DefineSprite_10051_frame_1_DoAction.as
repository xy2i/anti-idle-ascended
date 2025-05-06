//! status=pending
function checkFrame()
{
   co = xc + _parent._parent.questScroll;
   if(isNaN(_root.questMap[ro][co]))
   {
      fr = 5;
   }
   else
   {
      fr = 2;
   }
   gotoAndStop(fr);
   mqNum.text = _root.questMap[ro][co];
}
xc = Math.round((_X + 40) / 50);
ro = Math.round((_Y + 50) / 50);
checkFrame();
onEnterFrame = function()
{
   if(_parent._parent.cf > 0)
   {
      checkFrame();
   }
};
