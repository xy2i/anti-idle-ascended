//! status=pending
on(release){
   if(_root.saveid == 23 || _root.saveid == 24)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else
   {
      _parent.gotoAndStop(6);
   }
}


onClipEvent(enterFrame){
   if(_root.save.arcadeToken < 2 && _root.save.rankedMode == true)
   {
      _alpha = 30;
   }
   else
   {
      _alpha = 100;
   }
}


