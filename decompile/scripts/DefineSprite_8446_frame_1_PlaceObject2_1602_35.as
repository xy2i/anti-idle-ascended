//! status=pending
on(release){
   temp = _parent.var7;
   if(!isNaN(temp))
   {
      _root.save.gardenPoint = Math.round(temp);
   }
}


