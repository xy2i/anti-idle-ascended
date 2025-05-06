//! status=pending
on(dragOver,rollOver){
   if(_parent.sBattery == true)
   {
      _root.actiondescription = "<b><font color=\'#FFFF00\'>Super Battery</font></b>\nAllows you to charge your Money Printer everywhere. Isn\'t it convenient? It also gives your battery extra charges, which means more and faster Coins. Just like the Mini Garden, it costs you 2 Green Coins. But it\'s not like charging from the Money Printer screen doesn\'t cost 2 Green Coins anyway.";
   }
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


