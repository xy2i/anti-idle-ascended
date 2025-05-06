//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Printer Battery";
}


on(release){
   if(_root.save.greenCoin >= 2)
   {
      _root.save.greenCoin -= 2;
      if(_root.save.printerCharge < 160)
      {
         _root.save.totalPrinterCharge += 160 - _root.save.printerCharge;
         _root.save.printerCharge = 160;
      }
      if(_root.save.printerCharge < 200 && _root.save.featureSuperBattery == true)
      {
         _root.save.totalPrinterCharge += 200 - _root.save.printerCharge;
         _root.save.printerCharge = 200;
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


