//! status=pending
function checkItem()
{
   maxBuyA = itemLimit - itemOwned;
   if(currency == 1)
   {
      maxBuyB = Math.floor(_root.save.coin / cost);
   }
   else if(currency == 2)
   {
      maxBuyB = Math.floor(_root.save.greenCoin / cost);
   }
   else if(currency == 3)
   {
      maxBuyB = Math.floor(_root.save.blueCoin / cost);
   }
   if(isNaN(maxBuyB))
   {
      maxBuyB = 0;
   }
   maxBuy = Math.min(maxBuyA,maxBuyB);
   quantity = Math.floor(quantityText.text * 1);
   if(isNaN(quantity))
   {
      quantity = 1;
   }
   if(quantity > maxBuy)
   {
      quantity = maxBuy;
   }
   if(quantity < 0)
   {
      quantity = 0;
   }
   quantityText.text = quantity;
   p1.text = _root.withComma(cost);
   p2.text = "x " + _root.withComma(quantity);
   totalCost = Math.round(cost * quantity);
   p3.text = _root.withComma(totalCost);
   if(currency == 1)
   {
      p4.text = _root.withComma(_root.save.coin - totalCost);
      p1.textColor = 16776960;
      p3.textColor = 16776960;
      p4.textColor = 16776960;
   }
   else if(currency == 2)
   {
      p4.text = _root.withComma(_root.save.greenCoin - totalCost);
      p1.textColor = 65280;
      p3.textColor = 65280;
      p4.textColor = 65280;
   }
   else if(currency == 3)
   {
      p4.text = _root.withComma(_root.save.blueCoin - totalCost);
      p1.textColor = 39423;
      p3.textColor = 39423;
      p4.textColor = 39423;
   }
}
loadItem(itemToBuy);
quantityText.restrict = "0-9";
itemNameText.text = itemName;
if(itemOwned != -1)
{
   itemOwnedText.text = "[You have: " + _root.withComma(itemOwned) + "]";
}
else
{
   itemOwnedText.text = "";
}
quantityText.text = 1;
Selection.setFocus(quantityText);
checkItem();
onEnterFrame = function()
{
   checkItem();
};
