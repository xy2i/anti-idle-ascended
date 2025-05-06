//! status=pending
on(release){
   if(_root.save.arenaLevel >= 500 && _root.save.featureBattleArena == true)
   {
      if(_root.house._currentframe != 7 || _root.house.arena._currentframe != 1)
      {
         _root.save.arenaZone = 13;
         _root.house.gotoAndStop(7);
         _root.house.arena.gotoAndStop(1);
         _parent._parent.gotoAndStop(1);
      }
      else
      {
         _root.showPopup("Quick Move Unavailable","Please leave the Battle Arena to be moved to your destination.");
      }
   }
   else
   {
      _root.showPopup("Quick Move Unavailable","Quick Move is currently not available for this quest.");
   }
}


