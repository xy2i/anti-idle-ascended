//! status=pending
on(release){
   temp = _parent.var15;
   if(!isNaN(temp))
   {
      _root.save.printerCharge = Math.round(temp);
      _root.save.totalPrinterCharge = Math.round(temp);
   }
}


