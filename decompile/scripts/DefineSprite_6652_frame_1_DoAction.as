//! status=pending
onEnterFrame = function()
{
   if(_parent._parent.balanceFlash[_parent.barID] > 100)
   {
      _parent._parent.balanceFlash[_parent.barID] -= 1000 / _root.fps;
   }
   if(_parent._parent.balanceFlash[_parent.barID] < 100)
   {
      _parent._parent.balanceFlash[_parent.barID] = 100;
   }
   _alpha = _parent._parent.balanceFlash[_parent.barID];
};
