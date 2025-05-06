//! status=pending
on(release){
   if(_root.save.arenaLevel >= 40)
   {
      if(_root.save.vegetarianMode == true)
      {
         _parent._parent.kommanderDialog.gotoAndStop(4);
      }
      else
      {
         _parent._parent.kommanderDialog.gotoAndStop(3);
      }
   }
   else if(_root.save.vegetarianMode == true)
   {
      _root.showPopup("Rank 40 Required","Robroccoli refuses to talk to anyone below Rank 40.");
   }
   else
   {
      _root.showPopup("Rank 40 Required","Robacon refuses to talk to anyone below Rank 40.");
   }
}


