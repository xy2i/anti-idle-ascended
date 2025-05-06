//! status=pending
on(release){
   if(_root.save.stadiumFace == 1)
   {
      _root.save.stadiumFace = 5;
   }
   else
   {
      _root.save.stadiumFace -= 1;
   }
}


