//! status=pending
on(release){
   if(Key.isDown(16))
   {
      _root.save.gardenBreed1 = 0;
      _root.save.gardenBreed2 = 0;
      _root.save.gardenResearch = 0;
      _parent.gotoAndStop(1);
   }
}


