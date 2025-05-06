//! status=pending
on(release){
   if(_root.saveid == 23 || _root.saveid == 24)
   {
      _root.showPopup("NOOOOOOOOO!","A strange force prevents you from going to the World Map.");
   }
   else if(_root.save.featureIdleMode == true)
   {
      _root.house.gotoAndStop(5);
   }
   else
   {
      _root.showPopup("Purchase Idle Mode","Purchase Idle Mode in the Feature Shop first.");
   }
}


