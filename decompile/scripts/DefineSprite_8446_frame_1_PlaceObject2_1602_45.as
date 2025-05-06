//! status=pending
on(release){
   temp = _parent.var9;
   if(!isNaN(temp))
   {
      _root.save.arenaExp = Math.round(temp);
   }
}


