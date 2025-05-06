//! status=pending
on(release){
   temp = _parent.var10;
   if(!isNaN(temp))
   {
      _root.save.arenaPixel = Math.round(temp);
   }
}


