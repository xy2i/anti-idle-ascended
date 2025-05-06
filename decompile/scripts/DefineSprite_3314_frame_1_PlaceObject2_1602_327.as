//! status=pending
on(release){
   if(_root.save.gardenCapacity >= 25)
   {
      _parent.gotoAndStop(2);
   }
   else
   {
      _root.showPopup("Access Denied","You need to unlock all plots in this Garden to unlock Another Garden.");
   }
}


