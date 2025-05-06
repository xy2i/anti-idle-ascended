//! status=pending
on(release){
   temp = _parent.var17;
   if(!isNaN(temp))
   {
      _root.save.stadiumToken = Math.round(temp);
   }
}


