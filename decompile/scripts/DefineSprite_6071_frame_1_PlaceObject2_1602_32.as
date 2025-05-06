//! status=pending
on(release){
   if(_parent.shop._currentframe != 3)
   {
      _parent.shop.gotoAndStop(3);
   }
   else
   {
      _parent.shop.gotoAndStop(1);
   }
}


