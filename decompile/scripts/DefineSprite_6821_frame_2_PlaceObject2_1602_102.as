//! status=pending
on(release){
   if(_root.saveid == 24)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else if(_root.save.featureArcadePack == true)
   {
      _parent.gotoAndStop(7);
   }
   else
   {
      _root.showPopup("Arcade Pack Required","You need to purchase the Arcade Pack to play this game.");
   }
}


onClipEvent(enterFrame){
   if(_root.save.arcadeToken < 4 && _root.save.rankedMode == true || _root.save.featureArcadePack != true)
   {
      _alpha = 30;
   }
   else
   {
      _alpha = 100;
   }
}


