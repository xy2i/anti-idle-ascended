//! status=pending
on(release){
   temp = _parent.var4;
   if(!isNaN(temp))
   {
      _root.save.blueCoin = Math.round(temp);
   }
}


