//! status=pending
on(release){
   temp = _parent.var16;
   if(!isNaN(temp))
   {
      _root.save.arcadeToken = Math.round(temp);
   }
}


