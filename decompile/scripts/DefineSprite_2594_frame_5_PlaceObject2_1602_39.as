//! status=pending
on(release){
   if(_parent.challengeObjective != "" && _parent.challengeRule1 != "" && _parent.challengeRule2 != "")
   {
      _parent.nextFrame();
   }
   else
   {
      _root.showPopup("Error","Please make sure you have filled in all required boxes.");
   }
}


