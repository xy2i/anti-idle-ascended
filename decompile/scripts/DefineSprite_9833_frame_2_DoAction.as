//! status=pending
function checkItem()
{
   maxBuyA = Math.floor(_root.save.botEnergy / _root.cyborgActTime[selectedTask]);
   maxBuyB = Math.floor(_root.save.botPoint / _root.cyborgActCost[selectedTask]);
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
   nameText.text = _root.cyborgActLongName[selectedTask];
   quantityText.text = quantity;
   totalEnergy = Math.round(_root.cyborgActTime[selectedTask] * quantity);
   totalCost = Math.round(_root.cyborgActCost[selectedTask] * quantity);
   p1.text = _root.convertSecFull(totalEnergy);
   p2.text = "-" + _root.withComma(totalCost);
}
quantityText.restrict = "0-9";
quantityText.text = 1;
Selection.setFocus(quantityText);
checkItem();
onEnterFrame = function()
{
   checkItem();
};
