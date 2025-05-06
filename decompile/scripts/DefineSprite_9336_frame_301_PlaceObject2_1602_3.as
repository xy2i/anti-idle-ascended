//! status=pending
on(release){
   if(_root.save.featureArcade == true)
   {
      _root.house.gotoAndStop(10);
      _root.house.mainArcade.gotoAndStop(10);
      _parent._parent.gotoAndStop(1);
   }
   else
   {
      _root.showPopup("Quick Move Unavailable","Quick Move is currently not available for this quest.");
   }
}


