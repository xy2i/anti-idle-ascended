//! status=pending
on(release){
   temp = _parent.var3;
   if(!isNaN(temp))
   {
      _root.save.greenCoin = Math.round(temp);
   }
}


