//! status=pending
on(release){
   if(_root.save.arenaLevel >= 35)
   {
      _parent.gotoAndStop(11);
   }
   else
   {
      _root.showPopup("Access Denied","You have to reach Arena Rank 35 to access this feature.");
   }
}


onClipEvent(load){
   if(_root.save.arenaLevel < 35)
   {
      _alpha = 30;
   }
}


