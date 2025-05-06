//! status=pending
onClipEvent(enterFrame){
   ID = 5 + (_root.specialShopPage - 1) * 5;
   gotoAndStop(ID);
   stock = _root.save.specialStock[ID];
   if(stock <= 0)
   {
      _alpha = 30;
   }
   else
   {
      _alpha = 100;
   }
   if(owned < 0)
   {
      ownedText.text = "";
   }
   else if(cap > 0)
   {
      ownedText.text = _root.withComma(owned) + " / " + _root.withComma(cap);
   }
   else
   {
      ownedText.text = _root.withComma(owned);
   }
   stockText.text = _root.withComma(stock);
   qtText.text = _root.withComma(qtCost);
   etText.text = _root.withComma(etCost);
}


