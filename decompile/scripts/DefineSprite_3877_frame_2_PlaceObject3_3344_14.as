//! status=pending
on(release){
   if(_root.save.arenaLevel >= 5)
   {
      _parent._parent.kommanderDialog.gotoAndStop(6);
   }
   else
   {
      _root.showPopup("Rank 5 Required","Magnet refuses to talk to anyone below Rank 5.");
   }
}


