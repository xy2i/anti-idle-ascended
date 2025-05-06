//! status=pending
on(release){
   if(_parent._parent.popScreen._currentframe != 3)
   {
      _parent._parent.popScreen.gotoAndStop(3);
   }
   else
   {
      _parent._parent.popScreen.gotoAndStop(1);
   }
}


