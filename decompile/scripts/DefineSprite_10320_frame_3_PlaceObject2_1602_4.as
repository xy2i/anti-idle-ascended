//! status=pending
on(release){
   if(_root.save.whiteCoin >= _parent.medCost)
   {
      _root.save.whiteCoin -= _parent.medCost;
      _root.save.curAttMedPend = _parent.medalMissed;
      _parent.gotoAndStop(4);
   }
   else
   {
      _root.showPopup("Error","You don\'t have enough White Coins.");
   }
}


