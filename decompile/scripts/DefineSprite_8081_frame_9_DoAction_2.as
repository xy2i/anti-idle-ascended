//! status=pending
onEnterFrame = function()
{
   printerPowerText.text = "Printer Power: " + _root.withComma(_root.moneyToPrint) + " x " + _root.withComma(_root.save.printerCharge);
   printerLevelText.text = _root.save.printerLevel;
   printerMoneyText.text = _root.withComma(_root.save.totalPrinterMoney);
   if(_root.save.totalPrinterMillion >= 1)
   {
      dig = [0,0,0,0,0,0];
      tmp = _root.save.totalPrinterMoney;
      i = 0;
      while(i <= 5)
      {
         dig[i] = tmp % 10;
         tmp = Math.floor(tmp / 10);
         dig[i] += "";
         i++;
      }
      printerMoneyText.text = _root.withComma(_root.save.totalPrinterMillion) + "," + dig[5] + dig[4] + dig[3] + "," + dig[2] + dig[1] + dig[0];
   }
};
