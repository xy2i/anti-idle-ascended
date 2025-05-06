//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = _parent.cardDesc + "\n\nClick this button to activate effect for " + _parent.cardDuration + " hours\n(Cost: 1 Card)";
}


on(release){
   if(_root.save.ripoffCard[_parent.cardID] > 0 && _root.save[_parent.cardName + "Time"] < 359100)
   {
      _root.save.ripoffCard[_parent.cardID] -= 1;
      _root.save[_parent.cardName + "Time"] += _parent.cardDuration * 3600;
      if(_root.save[_parent.cardName + "Time"] > 360000)
      {
         _root.save[_parent.cardName + "Time"] = 360000;
      }
      _root.save.ripoffCardUsed += 1;
      _root.dispNews(128,"Card activated!");
   }
   _parent.checkCard();
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.ripoffCard[_parent.cardID] > 0 && _root.save[_parent.cardName + "Time"] < 359100)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


