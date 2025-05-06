//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Shift + Click this button to trade <b>" + _parent.cardTradeRatio + "</b> of these Cards for 1 Supply Crate.";
}


on(release){
   if(Key.isDown(16) && _root.save.ripoffCard[_parent.cardID] >= _parent.cardTradeRatio)
   {
      _root.save.ripoffCard[_parent.cardID] -= _parent.cardTradeRatio;
      _root.save.mysteryBox[10] += 1;
      _root.dispNews(130,"Successfully traded Cards for 1 Supply Crate.");
   }
   _parent.checkCard();
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(Key.isDown(16) && _root.save.ripoffCard[_parent.cardID] >= _parent.cardTradeRatio)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


