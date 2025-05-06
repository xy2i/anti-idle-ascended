//! status=pending
on(release){
   temp = _parent.var2;
   if(!isNaN(temp))
   {
      _root.save.coin = Math.round(temp);
   }
}


