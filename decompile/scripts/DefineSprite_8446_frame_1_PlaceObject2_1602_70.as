//! status=pending
on(release){
   temp = _parent.var14;
   if(!isNaN(temp))
   {
      _root.save.totalPrinterMoney = Math.round(temp);
   }
}


