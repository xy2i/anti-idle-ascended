//! status=pending
on(release){
   if(_root.save.eventToken >= _parent.costE && _root.save.au < _parent._parent.auView)
   {
      _root.save.eventToken -= _parent.costE;
      _root.save.au = _parent._parent.auView;
      _root.showPopup("Unlocked","You have gained early access to this update. You may need to refresh the game for some changes to take effect.");
   }
   else
   {
      _root.showPopup("Error","You don\'t have enough Event Tokens.");
   }
}


