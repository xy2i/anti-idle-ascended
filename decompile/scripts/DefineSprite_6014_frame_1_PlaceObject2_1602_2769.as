//! status=pending
on(release){
   if(_parent.popScreen._currentframe != 3)
   {
      _parent.popScreen.gotoAndStop(3);
   }
   else
   {
      _parent.popScreen.gotoAndStop(1);
   }
}


