//! status=pending
on(release){
   if(_root.save.banned >= 5)
   {
      _parent.gotoAndStop(4);
   }
   else
   {
      _root.showPopup("Locked","This feature is available after ascending 5 times.");
   }
}


