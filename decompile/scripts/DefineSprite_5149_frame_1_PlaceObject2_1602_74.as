//! status=pending
on(release){
   if(_root.saveid == 24)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else
   {
      _root.arenaSwap1 = 0;
      _root.enhancerToUse = 0;
      _parent.enhButton.gotoAndStop(2);
      _root.invTab = 2;
      _root.toCheck = true;
      _root.gCheck = true;
   }
}


