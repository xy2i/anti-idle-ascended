//! status=pending
on(release){
   if(_root.save.arenaLevel >= 20)
   {
      _parent._parent.kommanderDialog.gotoAndStop(2);
   }
   else
   {
      _root.showPopup("Rank 20 Required","Mission Kommander does not have missions for players below Rank 20. How about ranking up first?");
   }
}


