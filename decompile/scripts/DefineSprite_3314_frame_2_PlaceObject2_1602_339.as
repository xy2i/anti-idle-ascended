//! status=pending
on(release){
   if(_root.save.gDifficulty < 3 || _root.save.level >= 3000)
   {
      _parent.anotherGardenSeed.gotoAndStop(4);
      _parent.anotherGardenSeed.targetX = 0;
   }
   else
   {
      _root.showPopup("Impossible Ascension","You have to reach level 3000 to access this screen.");
   }
}


