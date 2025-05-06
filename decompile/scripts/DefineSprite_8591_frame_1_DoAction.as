//! status=pending
stop();
onEnterFrame = function()
{
   nameText.text = sauceName;
   if(_root.save.mainStatPage == 2)
   {
      if(_parent.sauceMode == "EXP")
      {
         sauceValue = _root.save.expSauce[sauceID];
         totalValue = _root.save.expSauce[40];
         fr = 1;
         sText = "EXP";
      }
      else if(_parent.sauceMode == "Coins")
      {
         sauceValue = _root.save.coinSauce[sauceID];
         totalValue = _root.save.coinSauce[40];
         fr = 1;
         sText = "Coins";
      }
      else if(_parent.sauceMode == "Green Coins")
      {
         sauceValue = _root.save.greenCoinSauce[sauceID];
         totalValue = _root.save.greenCoinSauce[40];
         fr = 1;
         sText = "Green Coins";
      }
      else if(_parent.sauceMode == "Blue Coins")
      {
         sauceValue = _root.save.blueCoinSauce[sauceID];
         totalValue = _root.save.blueCoinSauce[40];
         fr = 1;
         sText = "Blue Coins";
      }
      else if(_parent.sauceMode == "White Coins")
      {
         sauceValue = _root.save.whiteCoinSauce[sauceID];
         totalValue = _root.save.whiteCoinSauce[40];
         fr = 1;
         sText = "White Coins";
      }
      else
      {
         sauceValue = 0;
         totalValue = 0;
         fr = 1;
         sText = "";
      }
   }
   if(_root.save.mainStatPage == 3)
   {
      if(_parent.sauceMode == "EXP")
      {
         sauceValue = _root.save.expTotal[sauceID];
         totalValue = _root.save.expTotal[40];
         fr = 1;
         sText = "EXP";
      }
      else if(_parent.sauceMode == "Coins")
      {
         sauceValue = _root.save.coinTotal[sauceID];
         totalValue = _root.save.coinTotal[40];
         fr = 1;
         sText = "Coins";
      }
      else if(_parent.sauceMode == "Green Coins")
      {
         sauceValue = _root.save.greenCoinTotal[sauceID];
         totalValue = _root.save.greenCoinTotal[40];
         fr = 1;
         sText = "Green Coins";
      }
      else if(_parent.sauceMode == "Blue Coins")
      {
         sauceValue = _root.save.blueCoinTotal[sauceID];
         totalValue = _root.save.blueCoinTotal[40];
         fr = 1;
         sText = "Blue Coins";
      }
      else if(_parent.sauceMode == "White Coins")
      {
         sauceValue = _root.save.whiteCoinTotal[sauceID];
         totalValue = _root.save.whiteCoinTotal[40];
         fr = 1;
         sText = "White Coins";
      }
      else
      {
         sauceValue = 0;
         totalValue = 0;
         fr = 1;
         sText = "";
      }
   }
   if(_parent.sauceMode == "Ascension EXP")
   {
      sauceValue = _root.save.expSauceAsc[sauceID];
      totalValue = _root.save.expSauceAsc[40];
      fr = 2;
      sText = "EXP";
   }
   gotoAndStop(fr);
   valueText.text = _root.withComma(sauceValue) + " " + sText;
   multDisp = Math.floor(_root.sauceMult(sauceID) * 100) / 100;
   if(multDisp == Math.floor(multDisp))
   {
      multDisp += ".00x";
   }
   else if(multDisp * 10 == Math.floor(multDisp * 10))
   {
      multDisp += "0x";
   }
   else
   {
      multDisp += "x";
   }
   multText.text = multDisp;
   tempPct = Math.round(sauceValue / totalValue * 1000) / 10;
   if(isNaN(tempPct) || tempPct < 0)
   {
      tempPct = 0;
   }
   if(tempPct > 100)
   {
      tempPct = 100;
   }
   barInside._xscale = 100 - tempPct;
   if(tempPct == Math.round(tempPct))
   {
      tempPct += ".0";
   }
   pctText.text = tempPct + "%";
};
