//! status=pending
on(release){
   if(_parent.shop._currentframe != 2)
   {
      _parent.shop.gotoAndStop(2);
   }
   else
   {
      _parent.shop.gotoAndStop(1);
   }
}


