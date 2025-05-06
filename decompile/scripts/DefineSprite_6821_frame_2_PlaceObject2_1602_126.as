//! status=pending
on(dragOver,rollOver){
   _root.actiondescription = "Buy 5 Arcade Tokens for 1,000,000 Green Coins?\n\nYour Arcade Tokens will be refilled for free when the day ends.";
}


on(release){
   if(_root.save.greenCoin >= 1000000 && _root.save.arcadeToken < 95)
   {
      _root.save.greenCoin -= 1000000;
      _root.save.arcadeToken += 5;
      _root.save.arcadeBuyCount += 1;
      _parent.checkGlobal();
   }
}


on(rollOut,dragOut){
   _root.actiondescription = "";
}


onClipEvent(enterFrame){
   if(_root.save.greenCoin >= 1000000 && _root.save.arcadeToken < 95)
   {
      _alpha = 100;
   }
   else
   {
      _alpha = 30;
   }
}


