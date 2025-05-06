//! status=pending
on(release){
   if(_root.saveid == 24)
   {
      _root.showPopup("NOOOOOOOOO!","You must resist your urges. You don\'t want to fail the challenge, do you?");
   }
   else if(_root.save.arenaLevel >= 50 || _root.save.bannedB >= 1)
   {
      _parent.gotoAndStop(15);
   }
   else
   {
      _root.showPopup("Access Denied","You have to reach Arena Rank 50 to access this feature.");
   }
}


onClipEvent(load){
   if(_root.save.arenaLevel < 50 && _root.save.bannedB == 0)
   {
      _alpha = 30;
   }
}


