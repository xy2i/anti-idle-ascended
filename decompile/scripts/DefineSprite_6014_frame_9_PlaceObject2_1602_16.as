//! status=pending
on(release){
   if(_root.save.arenaLevel >= 20)
   {
      _parent.gotoAndStop(10);
   }
   else
   {
      _root.showPopup("Access Denied","You have to reach Arena Rank 20 to access this feature.");
   }
}


onClipEvent(load){
   if(_root.save.arenaLevel < 20)
   {
      _alpha = 30;
   }
}


