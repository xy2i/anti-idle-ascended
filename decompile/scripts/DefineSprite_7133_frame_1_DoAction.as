//! status=pending
function checkStuff()
{
   sellRatio = 0.9;
   if(_root.save.permaBanPenalty[32] == 3)
   {
      sellRatio = 0.95;
   }
   else if(_root.save.permaBanPenalty[32] == 2)
   {
      sellRatio = 0.93;
   }
   else if(_root.save.permaBanPenalty[32] == 1)
   {
      sellRatio = 0.92;
   }
   ownedText.text = _root.withComma(_root.save.lolGems[gemLevel]);
   if(_root.save.lolGems[gemLevel] >= 100000)
   {
      ownedText.text = _root.withComma(_root.save.lolGems[gemLevel] / 1000) + "k+";
   }
   if(_root.save.lolGems[gemLevel] >= 1000000)
   {
      ownedText.text = _root.withComma(_root.save.lolGems[gemLevel] / 1000000) + "M+";
   }
   if(_root.save.lolGems[gemLevel] >= 1000000000)
   {
      ownedText.text = "999M+";
   }
   buyText.text = _root.withComma(_root.save.lolPrice[gemLevel]);
   sellText.text = _root.withComma(_root.save.lolPrice[gemLevel] * sellRatio);
   profit = Math.floor((_root.save.lolPrice[gemLevel] * sellRatio * _root.save.lolGems[gemLevel] - _root.save.lolSpent[gemLevel]) / _root.save.lolGems[gemLevel]);
   if(_root.save.lolGems[gemLevel] == 0)
   {
      profit = 0;
   }
   profitText.text = _root.withComma(profit);
   demandText.text = _root.save.lolDemand[gemLevel];
   if(_root.save.greenCoin >= _root.save.lolPrice[gemLevel])
   {
      buyText.textColor = 16776960;
   }
   else
   {
      buyText.textColor = 10066329;
   }
   if(_root.save.lolGems[gemLevel] >= _root.save.lolCapacity)
   {
      ownedText.textColor = 16763904;
      buyText.textColor = 10066329;
   }
   else if(_root.save.lolGems[gemLevel] > 0)
   {
      ownedText.textColor = 16777215;
   }
   else
   {
      ownedText.textColor = 10066329;
   }
   if(_root.save.lolGems[gemLevel] > 0)
   {
      sellText.textColor = 16776960;
   }
   else
   {
      sellText.textColor = 10066329;
   }
   demandText.textColor = 16750848;
   if(_root.save.lolDemand[gemLevel] > 0)
   {
      demandText.text = "+" + demandText.text;
      demandText.textColor = 10092288;
   }
   else if(_root.save.lolDemand[gemLevel] == 0)
   {
      demandText.textColor = 16776960;
   }
   profitText.textColor = 16750848;
   if(profit > 0)
   {
      profitText.text = "+" + profitText.text;
      profitText.textColor = 10092288;
   }
   else if(profit == 0)
   {
      profitText.textColor = 16776960;
   }
   if(_root.save.lolGems[gemLevel] == 0)
   {
      profitText.textColor = 10066329;
   }
}
checkStuff();
onEnterFrame = function()
{
   if(buyText.text != _root.withComma(_root.save.lolPrice[gemLevel]) || Math.random() < 0.1)
   {
      checkStuff();
   }
};
