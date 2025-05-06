//! status=pending
on(release){
   if(_root.save.arenaLevel >= 80 || _root.save.bannedB >= 1)
   {
      _parent.gotoAndStop(13);
   }
   else
   {
      _root.showPopup("Access Denied","You have to reach Arena Rank 80 to access this feature.");
   }
}


onClipEvent(load){
   if(_root.save.arenaLevel < 80 && _root.save.bannedB == 0)
   {
      _alpha = 30;
   }
}


