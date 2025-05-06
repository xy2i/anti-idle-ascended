//! status=pending
on(release){
   temp = _parent.var19;
   if(!isNaN(temp))
   {
      _root.save.fcgCash = Math.round(temp);
   }
}


