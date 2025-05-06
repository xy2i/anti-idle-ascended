//! status=pending
on(release){
   temp = _parent.var13;
   if(!isNaN(temp))
   {
      _root.save.buttonBreak = Math.round(temp);
   }
}


