//! status=pending
on(release){
   if(_root.save.gardenPoint >= 100000)
   {
      _root.save.gardenPoint -= 100000;
      _root.save.gardenFruit += 750;
   }
}


