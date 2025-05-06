//! status=pending
on(release){
   if(_root.save.whiteCoin >= 250)
   {
      _root.save.whiteCoin -= 250;
      _root.save.restTime += 14400;
   }
}


