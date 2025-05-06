//! status=pending
on(release){
   if(_root.save.reforgeMode > 1)
   {
      _root.save.reforgeMode -= 1;
   }
   else
   {
      _root.save.reforgeMode = 2;
   }
}


