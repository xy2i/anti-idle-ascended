//! status=pending
on(release){
   if(_root.save.coin >= 2000000000 && _parent.petName != "")
   {
      _root.save.coin -= 2000000000;
      _root.save.petName = _parent.petName;
      _parent.gotoAndStop(14);
   }
   else
   {
      _parent.gotoAndStop(14);
   }
}


