//! status=pending
on(release){
   if(_root.save.featureSpecialShop == true)
   {
      _parent.gotoAndStop(19);
   }
   else
   {
      _parent.gotoAndStop(23);
   }
}


