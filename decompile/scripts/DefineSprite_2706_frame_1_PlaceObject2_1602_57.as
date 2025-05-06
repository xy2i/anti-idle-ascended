//! status=pending
on(release){
   if(_alpha > 50)
   {
      _root.house.gotoAndStop(23);
   }
   else if(_root.saveid >= 20)
   {
      _root.showPopup("Access Denied","This feature is disabled in Challenge Mode.");
   }
   else
   {
      _root.showPopup("Level 100 Required","You have to reach level 100 to use this feature. Keep playing!");
   }
}


onClipEvent(load){
   if(_root.save.bestLevel >= 100 && _root.saveid < 20)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


