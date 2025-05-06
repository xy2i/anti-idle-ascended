//! status=pending
on(release){
   _root.challengeDeadline = _root.challengeTime[_parent._parent.auView];
   _root.saveid = 20 + _parent._parent.auView;
   _root.gotoAndStop(19);
}


