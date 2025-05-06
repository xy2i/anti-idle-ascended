//! status=pending
on(release){
   if(_parent.restockMenu._currentframe == 1)
   {
      _parent.restockMenu.gotoAndStop(2);
   }
   else
   {
      _parent.restockMenu.gotoAndStop(1);
   }
}


