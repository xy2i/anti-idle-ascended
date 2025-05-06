//! status=pending
on(release){
   temp = _parent.var20;
   if(!isNaN(temp))
   {
      _root.save.lolProfit = Math.round(temp);
   }
}


