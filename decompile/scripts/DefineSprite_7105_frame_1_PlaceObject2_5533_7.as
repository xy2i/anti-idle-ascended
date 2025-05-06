//! status=pending
on(release){
   if(_root.saveid == 23)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else
   {
      _root.stadiumCurMode = 2;
      _parent.modeSelect.gotoAndStop(2);
   }
}


