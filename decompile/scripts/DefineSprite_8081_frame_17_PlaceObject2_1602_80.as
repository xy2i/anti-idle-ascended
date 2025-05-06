//! status=pending
on(release){
   if(_root.save.featureBattleArena == true)
   {
      if(_parent.popScreen._currentframe != 2)
      {
         _parent.popScreen.gotoAndStop(2);
      }
      else
      {
         _parent.popScreen.gotoAndStop(1);
      }
   }
   else
   {
      _root.showPopup("Battle Arena Required","You have to purchase the Battle Arena feature in the Feature Shop to access your Battle Arena inventory.");
   }
}


