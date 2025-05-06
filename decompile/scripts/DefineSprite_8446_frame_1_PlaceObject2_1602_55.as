//! status=pending
on(release){
   temp = _parent.var11;
   if(!isNaN(temp))
   {
      _root.save.arenaCraft = Math.round(temp);
   }
}


