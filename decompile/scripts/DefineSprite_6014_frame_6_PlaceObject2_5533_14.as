//! status=pending
on(release){
   if(_root.save.arenaPixel >= 1000000)
   {
      _root.save.arenaPixel -= 1000000;
      _root.save.featureBestiary = true;
      _parent.gotoAndStop(5);
   }
   else
   {
      _root.showPopup("Not enough Pixels!","You don\'t have enough Pixels to buy the Bestiary.");
   }
}


