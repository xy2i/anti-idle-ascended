//! status=pending
on(release){
   if(_root.save.arenaPixel >= 500000000000)
   {
      _root.save.arenaPixel -= 500000000000;
      _root.save.arenaStorage4 = true;
      _parent.gotoAndStop(2);
   }
   else
   {
      _root.showPopup("Not Enough Pixels","You don\'t have enough Pixels.");
   }
}


