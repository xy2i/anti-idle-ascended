//! status=pending
yID = Math.round(_Y / 20);
onEnterFrame = function()
{
   if(_parent.barID != undefined)
   {
      gotoAndStop(_parent._parent.balanceBar[_parent.barID][yID]);
      if(_parent._parent.balanceBar[_parent.barID][yID] == 0)
      {
         gotoAndStop(6);
      }
      if(_root.save.arcadeDifficulty[7] == 4)
      {
         _alpha = _parent._parent.balanceAlp[_parent.barID][yID];
      }
   }
};
