//! status=pending
on(release){
   if(_root.save.questToken >= _parent.costQ && _root.save.au < _parent._parent.auView)
   {
      _root.save.questToken -= _parent.costQ;
      _root.save.au = _parent._parent.auView;
      _root.showPopup("Unlocked","You have gained early access to this update. You may need to refresh the game for some changes to take effect.");
   }
   else
   {
      _root.showPopup("Error","You don\'t have enough Quest Tokens.");
   }
}


