//! status=pending
on(release){
   if(_root.save.arenaLevel >= 10)
   {
      _parent.gotoAndStop(12);
   }
   else
   {
      _root.showPopup("Access Denied","You have to reach Arena Rank 10 to access this feature.");
   }
}


onClipEvent(load){
   if(_root.save.arenaLevel < 10)
   {
      _alpha = 30;
   }
}


