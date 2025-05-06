//! status=pending
on(release){
   if(_parent.b1 != true)
   {
      _parent.b1 = true;
   }
   else
   {
      _parent.b1 = false;
   }
}


