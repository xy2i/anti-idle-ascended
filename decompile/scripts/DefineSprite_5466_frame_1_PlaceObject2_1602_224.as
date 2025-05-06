//! status=pending
on(release){
   if(_parent._parent.popScreen._currentframe != 2)
   {
      _parent._parent.popScreen.gotoAndStop(2);
   }
   else
   {
      _parent._parent.popScreen.gotoAndStop(1);
   }
}


