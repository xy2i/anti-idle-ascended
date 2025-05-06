//! status=pending
on(release){
   if(_root.save.gardenCapacity >= 50)
   {
      _parent.gotoAndStop(3);
   }
   else
   {
      _root.showPopup("Access Denied","You need to unlock all plots in Another Garden to unlock Another Another Garden.");
   }
}


