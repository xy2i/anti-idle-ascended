//! status=pending
on(release){
   if(_root.save.gardenPoint >= 1500)
   {
      _root.save.gardenPoint -= 1500;
      _root.save.gardenFruit += 10;
   }
}


