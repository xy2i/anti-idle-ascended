//! status=pending
on(release){
   if(_root.saveid == 21)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else
   {
      _parent.gotoAndStop(9);
   }
}


