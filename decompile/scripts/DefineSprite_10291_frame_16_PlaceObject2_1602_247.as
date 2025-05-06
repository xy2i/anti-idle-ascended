//! status=pending
on(release){
   if(_root.saveid == 24)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else if(_root.save.featureSpecialShop == true)
   {
      _parent.gotoAndStop(19);
   }
   else
   {
      _parent.gotoAndStop(23);
   }
}


