//! status=pending
on(dragOver,rollOver){
   if(_root.save.printerLevel < 400)
   {
      _root.actiondescription = "Upgrade Money Printer with <b>" + _root.withComma(costCoin) + "</b> Coins!\n[Required Level: " + _root.withComma(reqLevel) + "]";
   }
}


on(release){
   if(_root.save.coin >= costCoin && _root.save.bestLevel >= reqLevel && _root.save.printerLevel < 400)
   {
      _root.save.coin -= costCoin;
      _root.save.printerLevel += 1;
      _root.dispNews(77,"Money Printer upgraded to Lv. " + _root.save.printerLevel + "! (-" + _root.withComma(costCoin) + " Coins)");
      costCoin = (_root.save.printerLevel + 1) * (_root.save.printerLevel + 1) * 10000;
      reqLevel = 20 + _root.save.printerLevel * 20;
      _root.actiondescription = "Upgrade Money Printer with <b>" + _root.withComma(costCoin) + "</b> Coins!\n[Required Level: " + _root.withComma(reqLevel) + "]";
      if(_root.save.printerLevel >= 400)
      {
         _root.actiondescription = "";
      }
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   costCoin = (_root.save.printerLevel + 1) * (_root.save.printerLevel + 1) * 10000;
   reqLevel = 20 + _root.save.printerLevel * 20;
   if(_root.saveid == 24 && _root.save.printerLevel >= 13)
   {
      reqLevel = 99999;
   }
   if(reqLevel < 60)
   {
      reqLevel = 60;
   }
   if(_root.save.printerLevel >= 400)
   {
      _alpha = 30;
   }
   else if(_root.save.coin < costCoin || _root.save.bestLevel < reqLevel)
   {
      _alpha = 30;
   }
   else
   {
      _alpha = 100;
   }
}


onClipEvent(load){
   _alpha = 0;
}


