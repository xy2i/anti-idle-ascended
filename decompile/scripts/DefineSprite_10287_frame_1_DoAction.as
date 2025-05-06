//! status=pending
_alpha = 30;
onEnterFrame = function()
{
   gotoAndStop(_root.saveGlobal[thisKey]);
   if(_parent.curKey == thisKey)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
};
onRelease = function()
{
   _parent.curKey = thisKey;
   _parent.downKey = 0;
};
