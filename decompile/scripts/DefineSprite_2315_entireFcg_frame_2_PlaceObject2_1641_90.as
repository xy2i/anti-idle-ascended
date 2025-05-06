//! status=pending
on(release){
   if(_root.save.fcgRandomDeck == false)
   {
      _root.save.fcgRandomDeck = true;
   }
   else
   {
      _root.save.fcgRandomDeck = false;
   }
}


onClipEvent(enterFrame){
   if(_root.save.fcgRandomDeck == true)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}


