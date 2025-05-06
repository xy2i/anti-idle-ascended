//! status=pending
on(release){
   if(_root.save.blueCoin >= 25000)
   {
      _root.save.blueCoin -= 25000;
      _root.save.restTime += 14400;
   }
}


